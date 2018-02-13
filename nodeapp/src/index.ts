// import "reflect-metadata";
// import { Aplication } from './aplication/aplication';

// const controllersDir = `${__dirname}/controllers`;
// console.log(controllersDir);

// const app = new Aplication;
// app.start(controllersDir);

import "reflect-metadata";
import { createConnection } from "typeorm";
import { Photo } from "./db/models/Photo";

createConnection({
    type: "postgres",
    host: "localhost",
    username: "pvlasenko",
    password: "ac3102",
    database: "nodeapp",
    entities: [
        Photo
    ],
    synchronize: true,
    logging: false
}).then(connection => {
    // here you can start to work with your entities
}).catch(error => console.log(error));
