const {excuteQuery} = require('../model/MySql');

const insertTag = (name, connection)=>{
    return new Promise(async (resolve, reject) => {
        try {
            const query = 'INSERT INTO `datn`.`tags` (`name`) VALUES (?)'
            const result = await excuteQuery(query, [name], connection);
            resolve({
                name,
                id: result.insertId
            })
        } catch (e) {
            reject(e)
        }
    })
}

const getTagByName = (name, connection) => {
    return new Promise(async (resolve, reject) => {
        try {
            const select = 'SELECT * FROM tags t' +
                ` WHERE t.name  = ?`
            const result = await excuteQuery(select, [name], connection);
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

module.exports = {
    insertTag,
    getTagByName
}