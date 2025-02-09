import express from 'express';
import {getAllNombreParadasLinea1, getAllNombreParadasLinea2} from '../utils/db.mjs'

var router = express.Router();

/**
 * Muestra mediante el método GET todas las paradas de la linea 1 de TOGSA
 */
router.get('/linea1', async function(req, res, next) {

  const nombres = await getAllNombreParadasLinea1();

  res.status(200).json(nombres);
});

/**
 * Muestra mediante el método GET todas las paradas de la linea 1 de TOGSA
 */
router.get('/linea2', async function(req, res, next) {

  const nombres = await getAllNombreParadasLinea2();

  res.status(200).json(nombres);
});

export default router;
