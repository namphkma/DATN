const puppeteer = require('puppeteer');
const cheerio = require('cheerio');
const db = require('./db');



const CREDS = {
  username: 'vcasiademo',
  password: 'pictures'
}

const siteUrl = 'https://visualcomfort.com';
const loginUrl = 'https://visualcomfort.com/trade-portal/';
const designUrl = 'https://visualcomfort.com/designers/';

const getDesignerInfo = async (page, link) => {

  await page.goto(`${siteUrl}${link}`, { waitUntil: 'networkidle0' });
  const designerDetailHtml = await page.content();

  const $ = cheerio.load(designerDetailHtml);


  const name = $('.grid_1 img').attr('alt');
  const avar = $('.grid_1 img').attr('src');
  const description = $('.grid_1 p').text();
  const styleContent = $('.row3 style').html();
  const imgCoverSrc = styleContent.substr(styleContent.indexOf('(') + 1, styleContent.indexOf(')') - styleContent.indexOf('(') - 1);

  return new Promise((resolve, reject) => {
    resolve({
      name,
      avar,
      desc: description,
      imgCover: imgCoverSrc
    })
  });
}

const getAllDesigner = async () => {
  //get All designers
  await page.goto(designUrl, { waitUntil: 'networkidle0' });
  const html = await page.content();

  const $ = cheerio.load(html);
  const links = $('.scroller-content a:first-child')
  for (let i = 0; i < links.length; i++) {
    const item = links[i];
    const link = $(item).attr('href');
    const designer = await getDesignerInfo(page, link);
    const rs = await db.addDesigner(designer);
    console.log('inserted', rs);
  }
}

const getListProduct = async (page, designer) => {
  
  const linkProd = `${designer.link}ProductList.aspx?Designer=${designer.name}`

  await page.goto(linkProd, { waitUntil: 'load', timeout: 0 });
  const html = await page.content();

  const $ = cheerio.load(html);
  const products = $('#dvScroll div.item');
  const links = [];
  for (let i = 0; i < products.length; i++) {
    const p = products[i];
    const l = $(p).parent().attr('href');
    const name = $(p).find('table.gridview160 .txt').text();
    const img = $(p).find('table.gridview160 img.lazy').attr('src');
    links.push({
      name,
      link: l,
      designer_id: designer.id,
      img
    });
  }
  
  return new Promise((resolve, reject) => {
    resolve(links)
  });
}

const getProductDetail = async (page, link) => {

  await page.goto(link, { waitUntil: 'load', timeout: 0 });
  const html = await page.content();

  const $ = cheerio.load(html);

  // get products
  const props = $('form > div.desc1 > p');
  
  const prod = {};
  for (let i = 0; i < props.length; i++) {
    if (i == 0) continue;
    const element = props[i];
    const itemText = $(element).text();
    if (itemText && itemText != '') {
      const itemSplit = itemText.split(':');
      prod[itemSplit[0].trim()] = itemSplit[1].trim();
    }
  }

  // get finsih
  const finishs = $('#selFinish > option');
  prod['finishes'] = [];
  for (let i = 0; i < finishs.length; i++) {
    const item = finishs[i];
    prod['finishes'].push({
      name: $(item).text(),
      value: $(item).val()
    })
  }

  // get shades
  const shade = $('#selShade > option');
  for (let i = 0; i < shade.length; i++) {
    const item = shade[i];
    prod['shade'] = {
      name: $(item).text(),
      value: $(item).val()
    }
  }       
  const avai = $('body > div:nth-child(5) > div > div.grid_6.bar6 > div > div:nth-child(5) > form > div > table > tbody > tr:nth-child(7) > td:nth-child(2) > div > table > tbody > tr:nth-child(2)').text().trim().split('\n').map(item => item.trim());
  prod['availability'] = avai;
  prod['larger'] = $('body > div:nth-child(5) > div > div.grid_6.bar6 > div > div:nth-child(4) > div.prod1 > div > div > p:nth-child(2) > a').attr('href');

  const related = $('#liquid1 > div > ul > li > a');
  const getItemCodeFromLink = link => {
    const listParam = link.split('?')[1].split('&');
    let code = '';
    listParam.forEach(item => {
      if (item.startsWith('ItemCode')) {
        code = item.split('=')[1];
      }
    })
    return code;
  }
  prod['related'] = [];
  for (let i = 0; i < related.length; i++) {
    const item = related[i];
    prod['related'].push(getItemCodeFromLink($(item).attr('href')));
  }

  prod['spec'] = $('#TsonFile').attr('href');
  prod['cad'] = $('#CBonFile').attr('href');
  prod['code'] =  getItemCodeFromLink(link);

  return prod;
}

(async () => {

  const browser = await puppeteer.launch({ headless: true, args: ['--no-sandbox'] });
  const page = await browser.newPage();

  await page.goto(loginUrl, { waitUntil: 'networkidle0' });
  await page.type('#ContentPlaceHolderDefault_Content_Login_3_TxtLogin', CREDS.username);
  await page.type('#ContentPlaceHolderDefault_Content_Login_3_TxtPassword', CREDS.password);

  await Promise.all([
    page.click('#ContentPlaceHolderDefault_Content_Login_3_BtnLogin'),
    page.waitForNavigation({ waitUntil: 'networkidle0' })
  ])

  const prods = await db.listProducts();
  for (let i = 0; i < prods.length; i++) {
    try {
      const p = prods[i];
      const rs = await getProductDetail(page, `${p.url}${p.link}`);
      console.log(`goto link ${p.url}${p.link}`)
      console.log(`Update product ${p.id} with data`)
      console.log(rs)
      const updateData = {};
      const propLabel = ['Height', 'Width', 'Base', 'Socket', 'Wattage', 'IP Rating', 'Canopy', 'Extension', 'Backplate', 'O/A Heigh', 'Fixture Height', 'finishes', 'shade', 'availability', 'larger', 'related', 'spec', 'cad', 'code'];
      const propKey   = ['height', 'width', 'base', 'socket', 'wattage', 'ip_rating', 'canopy', 'extension', 'backplate', 'oa_heigh', 'fixture_height', 'finishes', 'shade', 'availability', 'larger', 'related', 'spec', 'cad', 'item_code'];
      for (let index = 0; index < propLabel.length; index++) {
        const element = propLabel[index];
        
        if (rs[element] && rs[element] !== '') {
          if (typeof rs[element] === 'object') {
            updateData[propKey[index]] = JSON.stringify(rs[element])
          } else {
            updateData[propKey[index]] = rs[element]
          }
        }  
      }
      // console.log(updateData)
      await db.updateProduct(updateData, p.id);
      console.log('================================') 
    } catch (error) {
      console.log(error.message)
      console.log('================================') 
      continue;
    }
  }
  

  //   await getAllDesigner();

  // get list project by designer
  // const ds = await db.listDesigner();
  // for (let i = 0; i < ds.length; i++) {
  //   if (i < 5) continue;
  //   const designer = ds[i];
  //   console.log(designer);
  //   const links = await getListProduct(page, designer);
  //   const rs = await db.addProducts(links);
  //   console.log(rs);
  // }
  await browser.close();
})();
