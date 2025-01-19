import express from 'express';
import logger from 'morgan';

import indexRouter from './routes/index.mjs';
import paradasRouter from './routes/paradas.mjs';

var app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));


app.use('/', indexRouter);
app.use('/paradas', paradasRouter);

console.log(`Servidor en http://localhost:${process.env.PORT || 3000}`);

export default app;