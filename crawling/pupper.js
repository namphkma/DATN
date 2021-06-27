const puppeteer = require('puppeteer');
const cheerio = require('cheerio');
const {getUrlByHomeLink} = require("./service/UrlService");
const {insertUrl} = require("./service/UrlService");
const {updateUrlById} = require("./service/UrlService");
const {URL_STATUS} = require("./service/UrlService");
const {isExistingUrl, getUrlByPath} = require('./service/UrlService');
const {converTimeToDate} = require('./service/UltilService');
const {insertArticles} = require('./service/ArticleService')
const mysql      = require('mysql');

const connection = mysql.createConnection({
    host     : '125.212.235.151',
    user     : 'root',
    password : '123456',
    database : 'datn',
    port: '3336'
});

const optionPuppeteer = {
    // args: ['--proxy-server=socks5://127.0.0.1:9050'],
    headless: true
}

const jsonConfig = {
    title: {
        selector: "h1.dt-news__title",
    },
    subtitle: {
        selector: "div.dt-news__sapo h2"
    },
    content: {
        selector: "div.dt-news__content",
        children: ["p", "figure", "img"],
    },
    time: {
        selector: ".dt-news__time"
    }
}
const result = {
    title: "",
    subtitle: "",
    content: [],
    img: [],
    fullyContent: ""
}


const runCrawlingData = ((url, jsonConfig, tag) => {
    return new Promise(async(resolve, reject) => {
        let urlEntity = '';
        try {
            const browser = await puppeteer.launch(optionPuppeteer);
            const page = await browser.newPage();
            await page.goto(url);
            const rootUrl = page.url();
            if (await isExistingUrl(rootUrl, connection)) {
                console.warn("Url exist: ", rootUrl);
                await browser.close();
                return;
            }
            const html = await page.content();
            const $ = cheerio.load(html);
            await browser.close();
            const checkExistingUrl = await getUrlByPath(rootUrl, connection);
            if (checkExistingUrl) {
                urlEntity = await updateUrlById(checkExistingUrl.id, {
                    url: tag,
                    path: rootUrl,
                    config: '',
                    status: URL_STATUS.PENDING,
                    home_link: url
                }, connection)
            } else {
                urlEntity = await insertUrl({
                    url: tag,
                    path: rootUrl,
                    config: '',
                    status: URL_STATUS.PENDING,
                    home_link: url
                }, connection)
            }
            const title = $(jsonConfig.title.selector).text().trim();
            result.title = title;
            const subtitle = $(jsonConfig.subtitle.selector).text().trim();
            result.subtitle = subtitle;
            const content = $(jsonConfig.content.selector).children('p').toArray();
            const imgs = $(jsonConfig.content.selector).children('figure').children('img').toArray();
            const time = converTimeToDate($(jsonConfig.time.selector).text());
            imgs.forEach(img => {
                result.img.push(img.attribs["src"]);
            })

            content.forEach(element => {
                if (element.children) {
                    if (element.children[0].children) {
                        if (element.children[0].children[0].data) {
                            result.content.push(element.children[0].children[0].data);
                            result.fullyContent += element.children[0].children[0].data
                        }
                    } else {
                        result.content.push(element.children[0].data);
                        result.fullyContent += element.children[0].data
                    }

                }
            })
            result.tag = tag;
            result.url = rootUrl;
            result.time = time;

            await insertArticles(result, connection)
            console.log('success', url);
            resolve(true);
        } catch (e) {
            console.error('error', url);
            console.error(e)
            await updateUrlById(urlEntity.id, {
                url: tag,
                path: urlEntity.path,
                config: '',
                status: URL_STATUS.ERROR,
                home_link: url
            }, connection)
        }
    })
});

const runCrawlingGetSpecificNews = async (tagUrl, root) => {
    console.log(tagUrl)
    const browser = await puppeteer.launch(optionPuppeteer);
    const page = await browser.newPage();
    await page.goto(tagUrl);
    const html = await page.content();
    const $ = cheerio.load(html);
    await browser.close();
    const hrefs = $('.news-item__avatar').toArray();
    for (let i = 0; i < hrefs.length; i++) {
        const element = hrefs[i];
        const href = element.attribs['href']
        const urlInstance = await getUrlByHomeLink(root + href, connection);
        if (urlInstance && urlInstance.status === URL_STATUS.DONE) {
            console.log('ignore ', (root + href));
            continue;
        } else {
            await runCrawlingData(root + href, jsonConfig, root)
        }
    }
};


const runCrawlingGetTag = (async (webUrl) => {
    const browser = await puppeteer.launch(optionPuppeteer);
    const page = await browser.newPage();
    await page.goto(webUrl);
    const html = await page.content();
    const $ = cheerio.load(html);
    await browser.close();
    const hrefs = $('.site-menu > div > ol > li').children('a').toArray();
    for (let i = 0; i < hrefs.length; i++) {
        const element = hrefs[i];
        const href = element.attribs['href']
        if (href && href !== '/' && href.indexOf('javascript') === -1 && href.indexOf('video-page') === -1) {
            await runCrawlingGetSpecificNews(webUrl + href, webUrl);
        }
    }
});

// (async () => {
//     await runCrawlingData('https://dantri.com.vn/xa-hoi/bac-giang-do-cach-ly-xa-hoi-doi-voi-huyen-yen-dung-20210621212539024.htm', jsonConfig, 'http://dantri.com.vn')
// })();
(async () => {
    try {
        await runCrawlingGetTag('http://dantri.com.vn')
    }catch (e) {
        console.error(e)
    }finally {
        process.exit(1);
    }

})();
