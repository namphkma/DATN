const express = require('express');
const router = express.Router();
const puppeteer = require('puppeteer');

/* GET home page. */
router.get('/', async (req, res, next) => {
  const browser = await puppeteer.launch({ headless: false });
  const page = await browser.newPage();
  await page.goto('https://dantri.com.vn/');
  const topMenu = await page.$('ol');
  console.log(topMenu);
  await browser.close();
  res.render('index', {title: 'Express'});
});

module.exports = router;
