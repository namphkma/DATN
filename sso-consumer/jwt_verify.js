const jwt = require("jsonwebtoken");

const verifyJwtToken = token =>
  new Promise((resolve, reject) => {
    console.log(token)
    jwt.verify(
      token,
      "signingKey",
      {algorithms: ["HS256"] },
      (err, decoded) => {
        if (err) return reject(err);
        return resolve(decoded);
      }
    );
  });
module.exports = Object.assign({}, { verifyJwtToken });
