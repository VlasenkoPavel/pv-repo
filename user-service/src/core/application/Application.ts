import * as express from 'express';
import * as path from 'path';
import { createExpressServer } from 'routing-controllers';
import { Launcher, ClusterLauncher } from './launcher';
import { Config, ConfigType, ServerConfig } from '../../components/config';
import { DebugForm } from 'nodules/debugForm';

const PUBLIC_PATH = path.join(__dirname, '../../../public/static');

class Application {

    private app: express.Application;
    private serverConfig: ServerConfig;

    constructor() {
        this.serverConfig = <ServerConfig>Config.getInstance().getConfig(ConfigType.Server);
    }

    public init(controllers?: Function[] | string[],
                middlewares?: Function[] | string[]): void {

        this.app = createExpressServer({
            defaultErrorHandler: false,
            controllers,
            middlewares
        });


        this.app.use(express.static(PUBLIC_PATH));

        const docPath = `${PUBLIC_PATH}/doc`;
        const debugForm = new DebugForm({
            docPath,
            disableVersioning: true
        });
        this.app.use('/', debugForm.router);
    }

    public start(): void {
        const launcher = this.createLauncher();
        launcher.launch();
    }

    protected createLauncher(): Launcher {
        return this.serverConfig.workers
            ? new ClusterLauncher(this.app)
            : new Launcher(this.app);
    }
}

export { Application };