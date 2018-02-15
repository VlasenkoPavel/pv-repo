import 'reflect-metadata';

import { Application } from './core/application';
import { UserController } from './layers/application/user';
import { middlewares } from './components/middlewares';

const app = new Application();

app.init([UserController], middlewares);
app.start();
