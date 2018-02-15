import { IntelTypes } from 'nodules/types';
import { IntelConfig } from './IntelConfig';
const intel: IntelTypes.Intel = require('intel');

export class TerminalConfig extends IntelConfig {
    public get handlers(): Object {
        return {
            terminal: {
                'class': (intel as any).handlers.Console,
                'formatter': 'details',
                'level': (intel as any).ALL
            }
        };
    }

    protected get defaultHandler(): string {
        return 'terminal';
    }
}
