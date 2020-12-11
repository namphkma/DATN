const isAuthenticated = (req, res, next) => {
  const redirectURL = `${req.protocol}://${req.headers.host}${req.path}`;
  console.log('isAuthen')
  if (req.session.user == null) {
    return res.redirect(
      `http://localhost:8080/login?redirect=${redirectURL}`
    );
  }
  next();
};

module.exports = isAuthenticated;
