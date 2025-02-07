import express from 'express';
import {getHorariosDesdeAhaciaB} from '../utils/db.mjs'

var router = express.Router();

/**
 * Muestra mediante el método GET una lista de horarios desde una parada A a una B.
 */
router.get('/origen/:id_origen/destino/:id_destino', async function(req, res, next) {

  const idOrigen = Number.parseInt(req.params.id_origen);
  const idDestino = Number.parseInt(req.params.id_destino);

  const nombres = await getHorariosDesdeAhaciaB(idOrigen, idDestino);

  res.status(200).json(nombres);
});

export default router;
