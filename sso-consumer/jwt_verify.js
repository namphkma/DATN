const jwt = require("jsonwebtoken");

const verifyJwtToken = token =>
  new Promise((resolve, reject) => {
    console.log(new Buffer([...Buffer.from('signingKeyab', "base64")]))
    jwt.verify(
      token,
      new Buffer([...Buffer.from('signingKeyab', "base64")]),
      {algorithms: ["HS256"] },
      (err, decoded) => {
        if (err) return reject(err);
        return resolve(decoded);
      }
    );
  });
module.exports = Object.assign({}, { verifyJwtToken });
