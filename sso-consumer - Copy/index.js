const app = require("./app");
const PORT = 3021;

app.listen(PORT, () => {
  console.info(`sso-consumer listening on port ${PORT}`);
});
