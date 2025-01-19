import express from 'express';
import logger from 'morgan';
import log4js from 'log4js';

import indexRouter from './routes/index.mjs';
import usersRouter from './routes/users.mjs';


var app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

log4js.configure({
    appenders: { cheese: { type: "file", filename: "cheese.log" } },
    categories: { default: { appenders: ["cheese"], level: "error" } },
});

app.use('/', indexRouter);
app.use('/users', usersRouter);

export default app;