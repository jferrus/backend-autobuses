import express from 'express';
import {getHorariosDesdeAhaciaB} from '../utils/db.mjs'
import log4js from 'log4js';

log4js.configure({
    appenders: { cheese: { type: "file", filename: "cheese.log" } },
    categories: { default: { appenders: ["cheese"], level: "error" } },
});
const logger = log4js.getLogger("cheese");

logger.level = "debug";
var router = express.Router();

/**
 * Muestra mediante el método GET una lista de horarios desde una parada A a una B.
 */
router.get('/origen/:id_origen/destino/:id_destino', async function(req, res, next) {

  const idOrigen = Number.parseInt(req.params.id_origen);
  const idDestino = Number.parseInt(req.params.id_destino);

  logger.info(`El id de origen es ${idOrigen} y el id de destino es ${idDestino}`);

  const nombres = await getHorariosDesdeAhaciaB(idOrigen, idDestino);

  res.status(200).json(nombres);
});

export default router;
