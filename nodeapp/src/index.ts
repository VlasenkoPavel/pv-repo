import "reflect-metadata";
import { Aplication } from './core/aplication/aplication';

const controllersDir = `${__dirname}/controllers`;
const app = new Aplication(controllersDir);
app.start();
