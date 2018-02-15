import * as LogStream from 'logrotate-stream';
import { IntelTypes } from 'nodules/types';
import { TerminalConfig } from './TerminalConfig';
const intel: IntelTypes.Intel = require('intel');

export class FileConfig extends TerminalConfig {
    public get handlers(): Object {
        return {
            ...super.handlers,
            file: {
                'class': (intel as any).handlers.Stream,
                'formatter': 'details',
                'level': (intel as any).ALL,
                'stream': LogStream({
                    file: `/opt/sm-backend/shared/logs/sm-backend-${process.pid}.log`,
                    size: '50m',
                    keep: 5
                })
            }
        };
    }

    protected get defaultHandler(): string {
        return 'file';
    }
}
