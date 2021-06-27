
const excuteQuery = (query, param, connection) => {
    return new Promise((resolve, reject) => {
        connection.query(query, param ? param : [], (err, result) => {
            if (err) {
                reject(err)
            } else {
                resolve(result)
            }
        })
    })
}
module.exports = {
    excuteQuery
};