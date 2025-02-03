import express from 'express';
import {getAllNombreParadasLinea1} from '../utils/db.mjs'

var router = express.Router();

/* GET users listing. */
router.get('/linea1', async function(req, res, next) {

  const nombres = await getAllNombreParadasLinea1();

  res.status(200).json(nombres);
});

export default router;
