const url = require("url");
const jwt = require("jsonwebtoken");
const authSecret = "signingKey";

const ssoRedirect = () => {
  return async function(req, res, next) {
    console.log('ssoRedirect')
    const { JWT_TOKEN } = req.cookies;
    console.log(req.cookies)
    if (JWT_TOKEN != null) {
      try {
        console.log(authSecret, JWT_TOKEN)
        const decoded = jwt.verify(JWT_TOKEN, authSecret, {algorithms:["HS256"]});
        console.log(decoded)
        req.session.user = decoded.sub;
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
