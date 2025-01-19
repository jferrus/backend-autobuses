import express from 'express';
import logger from 'morgan';

import indexRouter from './routes/index.mjs';
import usersRouter from './routes/users.mjs';

var app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));


app.use('/', indexRouter);
app.use('/users', usersRouter);

console.log(`Servidor en http://localhost:${process.env.PORT || 3000}`);

export default app;