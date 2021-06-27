const {excuteQuery} = require('../model/MySql');
const isExistingUrl =  (url, connection)=>{
    return new Promise(async(resolve, reject) => {
        const select = 'SELECT * FROM url u'+
            ` WHERE u.path  = ?
              AND u.status = 'DONE'`
        const result = await excuteQuery(select, [url], connection);
        if(result.length > 0){
            resolve(true)
        }else {
            resolve(false);
        }

    })
}

const updateUrlById =  (id, data, connection)=>{
    return new Promise(async(resolve, reject) => {
        const select = 'UPDATE `datn`.`url` SET `domain` = ?, `path` = ?, `config` = ?, `status` = ?, `home_link` = ? WHERE (`id` = ?)'
        await excuteQuery(select, [data.url, data.path, data.config, data.status, data.home_link, id], connection);
        resolve({
            id,
            ...data
        })

    })
}

const insertUrl = (data) => {
    return new Promise(async (resolve, reject) => {
        try {
            const query = 'INSERT INTO `datn`.`url` (`domain`, `path`, `config`, `status`, `home_link`) VALUES (?, ?, ?, ?, ?)'
            const result = await excuteQuery(query, [data.url, data.path, data.config, data.status, data.home_link], connection);
            resolve({
                ...data,
                id: result.insertId
            })
        } catch (e) {
            reject(e)
        }
    })
}

const getUrlByPath = (path, connection) => {
    return new Promise(async (resolve, reject) => {
        try {
            const select = 'SELECT * FROM url u' +
                ` WHERE u.path  = ?`
            const result = await excuteQuery(select, [path], connection);
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

const getUrlByHomeLink = (home_link, connection) => {
    return new Promise(async (resolve, reject) => {
        try {
            const select = 'SELECT * FROM url u' +
                ` WHERE u.home_link  = ?`
            const result = await excuteQuery(select, [home_link], connection);
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

module.exports ={
    isExistingUrl,
    updateUrlById,
    insertUrl,
    getUrlByPath,
    getUrlByHomeLink,
    URL_STATUS: {
        ERROR: 'ERROR',
        PENDING: 'PENDING',
        DONE: 'DONE'
    }
}