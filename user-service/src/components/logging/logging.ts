import { IntelTypes } from 'nodules/types';
import { TerminalConfig } from './TerminalConfig';
import { FileConfig } from './FileConfig';
const intel: IntelTypes.Intel = require('intel');

const config = (process.env.SM_ENV && process.env.SM_ENV == 'prod')
    ? new FileConfig()
    : new TerminalConfig();

intel.config({ ...config });

const Main = intel.getLogger('main');
const Express = intel.getLogger('express');

export { Main, Express };
