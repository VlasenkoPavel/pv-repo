"use strict";
// import "reflect-metadata";
// import { Aplication } from './aplication/aplication';
Object.defineProperty(exports, "__esModule", { value: true });
// const controllersDir = `${__dirname}/controllers`;
// console.log(controllersDir);
// const app = new Aplication;
// app.start(controllersDir);
require("reflect-metadata");
const typeorm_1 = require("typeorm");
const Photo_1 = require("./db/models/Photo");
typeorm_1.createConnection({
    type: "postgres",
    host: "localhost",
    username: "pvlasenko",
    password: "ac3102",
    database: "nodeapp",
    entities: [
        Photo_1.Photo
    ],
    synchronize: true,
    logging: false
}).then(connection => {
    // here you can start to work with your entities
}).catch(error => console.log(error));
