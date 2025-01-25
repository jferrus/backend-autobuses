import express from 'express';
import {getAllNombreParadasLinea1ExceptoId} from '../utils/db.mjs'

var router = express.Router();

/* GET users listing. */
router.get('/excepto/:id', async function(req, res, next) {

  let id = req.params.id;

  if(!id) {
    id = 0;
  }

  const nombres = await getAllNombreParadasLinea1ExceptoId(id);

  res.status(200).json(nombres);
});

export default router;
