import express from 'express';
import {getHorariosLinea1DesdeAhaciaB, getHorariosLinea2DesdeAhaciaB} from '../utils/db.mjs'
import log4js from 'log4js';
import { param, validationResult } from 'express-validator';

log4js.configure({
    appenders: { cheese: { type: "file", filename: "cheese.log" } },
    categories: { default: { appenders: ["cheese"], level: "error" } },
});
const logger = log4js.getLogger("cheese");

logger.level = "debug";
var router = express.Router();

/**
 * Muestra mediante el método GET una lista de horarios de la linea 1 de TOGSA desde una parada A a una B.
 */
router.get('/linea1/origen/:id_origen/destino/:id_destino', 
param('id_origen').trim().notEmpty().isLength({min:1, max:3}).isNumeric().isInt(),
param('id_origen').trim().notEmpty().isLength({min:1, max:3}).isNumeric().isInt(),
async function(req, res, next) {

  const result = validationResult(req);
  if (result.isEmpty()) {

    const idOrigen = Number.parseInt(req.params.id_origen);
    const idDestino = Number.parseInt(req.params.id_destino);

    logger.info(`El id de origen es ${idOrigen} y el id de destino es ${idDestino}`);

    const nombres = await getHorariosLinea1DesdeAhaciaB(idOrigen, idDestino);

    res.status(200).json(nombres);
  } else {
    logger.error(result.array());
    res.status(500).json({'error': 'incorrect paramaters'});
  }
});


/**
 * Muestra mediante el método GET una lista de horarios de la linea 2 de TOGSA desde una parada A a una B.
 */
router.get('/linea2/origen/:id_origen/destino/:id_destino', 
  param('id_origen').trim().notEmpty().isLength({min:1, max:3}).isNumeric().isInt(),
  param('id_origen').trim().notEmpty().isLength({min:1, max:3}).isNumeric().isInt(),
  async function(req, res, next) {
  
    const result = validationResult(req);
    if (result.isEmpty()) {
  
      const idOrigen = Number.parseInt(req.params.id_origen);
      const idDestino = Number.parseInt(req.params.id_destino);
  
      logger.info(`El id de origen es ${idOrigen} y el id de destino es ${idDestino}`);
  
      const nombres = await getHorariosLinea2DesdeAhaciaB(idOrigen, idDestino);
  
      res.status(200).json(nombres);
    } else {
      logger.error(result.array());
      res.status(500).json({'error': 'incorrect paramaters'});
    }
  });
  
export default router;
