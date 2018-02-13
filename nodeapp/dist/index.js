"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
require("reflect-metadata");
const aplication_1 = require("./aplication/aplication");
const controllersDir = `${__dirname}/controllers`;
const app = new aplication_1.Aplication(controllersDir);
app.start();
