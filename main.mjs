import express from 'express';
import logger from 'morgan';

import indexRouter from './routes/index.mjs';
import paradasRouter from './routes/paradas.mjs';
import horariosRouter from './routes/horarios.mjs';

var app = express();


app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', 'http://localhost:4200'); // Replace with your allowed origin
  res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
  res.header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
  next();
});

app.use('/', indexRouter);
app.use('/paradas', paradasRouter);
app.use('/horarios', horariosRouter);

console.log(`Servidor en http://localhost:${process.env.PORT || 3000}`);

export default app;