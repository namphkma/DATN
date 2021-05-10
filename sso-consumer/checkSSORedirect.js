const url = require("url");
const jwt = require("jsonwebtoken");
const authSecret = "signingKey";
const {verifyJwtToken} = require("./jwt_verify")
const ssoRedirect = () => {
  return async function(req, res, next) {
    console.log('ssoRedirect')
    const { JWT_TOKEN } = req.cookies;
    console.log(req.cookies)
    if (JWT_TOKEN != null) {
      try {
        console.log(authSecret, JWT_TOKEN)
        const decoded = await verifyJwtToken(JWT_TOKEN)
        console.log(decoded)
        req.session.user = decoded.username;
        console.log(req.session.user)
        return next()
      } catch (err) {
        return next(err);
      }
    }

    return next();
  };
};

module.exports = ssoRedirect;
