const puppeteer = require('puppeteer');
const cheerio = require('cheerio');
const elasticsearch = require('elasticsearch');
const client = new elasticsearch.Client({
    host: '125.212.235.151:9200',
    log: 'trace',
    apiVersion: '7.2', // use the same version of your Elasticsearch instance
});
const jsonConfig = {
    title: {
        selector: "h1.dt-news__title",
    },
    subtitle: {
        selector: "div.dt-news__sapo h2"
    },
    content:{
        selector: "div.dt-news__content",
        children: ["p", "figure", "img"],
    }
}
const result = {
    title: "",
    subtitle: "",
    content: [],
    img:[],
    fullyContent: ""
}
const  url = 'https://dantri.com.vn/the-gioi/them-85-ca-mac-covid-19-moi-lao-dang-buoc-vao-dot-lay-nhiem-lich-su-20210430222936273.htm';
const runCrawlingData =  (async(url, jsonConfig, result) => {
    const browser = await puppeteer.launch({headless: false});
    const page = await browser.newPage();
    page.on('console', (msg) => console.log(msg.text()));
    await page.goto(url);
    const html = await page.content();
    const $ = cheerio.load(html);
    const title = $(jsonConfig.title.selector).text().trim();
    result.title = title;
    const subtitle = $(jsonConfig.subtitle.selector).text().trim();
    result.subtitle = subtitle;
    const content = $(jsonConfig.content.selector).children('p').toArray();
    const imgs = $(jsonConfig.content.selector).children('figure').children('img').toArray();
    imgs.forEach(img =>{
        result.img.push(img.attribs["src"]);
    })

    content.forEach(element =>{
        if(element.children){
            if(element.children[0].children){
                result.content.push(element.children[0].children[0].data);
                result.fullyContent += element.children[0].children[0].data
            }else{
                result.content.push(element.children[0].data);
                result.fullyContent += element.children[0].data
            }

        }
    })
    console.log(result)
    await browser.close();
});
runCrawlingData(url, jsonConfig, result);
const run =  (async( jsonConfig, result) => {
    const browser = await puppeteer.launch({headless: false});
    const page = await browser.newPage();
    page.on('console', (msg) => console.log(msg.text()));
    await page.goto('https://dantri.com.vn/');
    const html = await page.content();
    const $ = cheerio.load(html);
    const content = $('.site-menu > div > ol > li').children('a').toArray();
    content.forEach(element =>{
        const href = element.attribs['href']
        console.log(href);
    })
    await browser.close();
});

// run(url, jsonConfig, result).then(r => console.log(r));