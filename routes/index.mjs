import express from 'express';
import log4js from 'log4js';

log4js.configure({
    appenders: { cheese: { type: "file", filename: "cheese.log" } },
    categories: { default: { appenders: ["cheese"], level: "error" } },
});
const logger = log4js.getLogger("cheese");

logger.level = "debug";

//logger.info("Some message")

var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.status(200).json({title: 'Express' });
});

export default router;
