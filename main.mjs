import express from 'express';
import logger from 'morgan';
import cors from 'cors';

import indexRouter from './routes/index.mjs';
import paradasRouter from './routes/paradas.mjs';
import horariosRouter from './routes/horarios.mjs';
import comunTrayectosRouter from './routes/comunTrayectos.mjs';

var app = express();


app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

var corsOptions = {
  origin: process.env.SERVER_ALLOWED,
  optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204
}

app.use(cors(corsOptions))

app.use('/', indexRouter);
app.use('/paradas', paradasRouter);
app.use('/horarios', horariosRouter);
app.use('/comun-trayectos/', comunTrayectosRouter);


console.log(`Servidor en http://localhost:${process.env.PORT || 3000}`);

export default app;