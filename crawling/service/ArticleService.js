const {excuteQuery} = require('../model/MySql');
const {URL_STATUS, updateUrlById, getUrlByPath} = require('./UrlService')
const insertArticles = (article, connection) => {
    return new Promise(async (resolve, reject) => {
        let resultUrl = '';
        let resultArticleExtraData = '';
        try {
            const resultUrl = await getUrlByPath(article.url, connection);
            const articleObject = {
                title: article.title,
                extra_id: resultArticleExtraData.insertId,
                url_id: resultUrl.id,
                content: article.fullyContent,
                json_raw_content: JSON.stringify(article),
                images: JSON.stringify(article.img)
            }
            let resultArticle ='';
            const isArticlesExist = await getArticlesByUrlId(resultUrl.id, connection);
            if(isArticlesExist){
                resultArticle = await updateArticlesById(isArticlesExist.id, articleObject,connection);
            }else{
                resultArticle = await createArticles(articleObject, connection);
            }
            await updateUrlById(resultUrl.id, {
                url: article.tag,
                path: article.url,
                config: '',
                status: URL_STATUS.DONE
            }, connection)
            resolve(resultArticle);
        } catch (err) {
            if (resultUrl) {
                await updateUrlById(resultUrl.id, {
                    url: article.tag,
                    path: article.url,
                    config: '',
                    status: URL_STATUS.ERROR
                })
            }
            console.error(err);
            reject(err);
        }
    })
}
const getArticlesByUrlId = (url_id, connection) =>{
    return new Promise(async (resolve, reject) => {
        try {
            const select = 'SELECT * FROM articles a' +
                ` WHERE a.url_id  = ?`
            const result = await excuteQuery(select, [url_id], connection);
            if (result.length > 0) {
                const record = result[0]
                resolve({
                    ...record
                })
            } else {
                resolve(null);
            }
        } catch (e) {
            reject(e)
        }
    })
}

const updateArticlesById = (id, data,connection) => {
    return new Promise(async (resolve, reject) => {
        const select = 'UPDATE `datn`.`articles` SET `html_dir` = ?, `extra_id` = ?, `url_id` = ?, `title` = ?, `content` = ?, `images` = ?,`json_raw_content` = ? WHERE (`id` = ?)'
        await excuteQuery(select, [
            data.html_dir,
            data.extra_id,
            data.url_id,
            data.title,
            data.content,
            data.images,
            data.json_raw_content,
            id], connection);
        resolve({
            id,
            ...data
        })

    })
}

const createArticles = (data, connection) => {
    return new Promise(async (resolve, reject) => {
        const insertArticle = 'INSERT INTO datn.articles (`title`, `extra_id`, `url_id`, `content`, `json_raw_content`, `images`)' +
            ` VALUES (?, ?, ?, ?, ?, ?)`;
        const resultArticle = await excuteQuery(insertArticle, [
            data.title,
            data.extra_id,
            data.url_id,
            data.content,
            data.json_raw_content,
            data.images
        ], connection);
        resolve({
            id: resultArticle.insertId,
            ...data
        })
    })
}

module.exports = {
    insertArticles
}