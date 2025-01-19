import express from 'express';

var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.status(200).json({usuario: 'usuario' });
});

export default router;
