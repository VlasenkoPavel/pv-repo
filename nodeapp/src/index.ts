import "reflect-metadata";
import { Aplication } from './aplication/aplication';

const controllersDir = `${__dirname}/controllers`;
console.log(controllersDir);

const app = new Aplication(controllersDir);
app.start();
