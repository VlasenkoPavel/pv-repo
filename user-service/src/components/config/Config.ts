import { ConfigBuilder } from 'nodules/configBuilder';
import { BaseConfig, ConfigDictionary, ConfigType } from './types';
import * as path from 'path';


const DEFAULT_ENV = 'dev';
const CONFIG_PATH = path.join(__dirname, '../../../config');

export class Config {

    private static instance: Config;
    protected builder: ConfigBuilder;
    protected env: string;
    protected configDic: ConfigDictionary;

    private constructor() {
        this.env = this.defineEnv();
        this.builder = this.createConfigBuilder(this.env);
        this.configDic = this.initConfigDic(this.builder);
    }

    public static getInstance(): Config {
        if (!this.instance) {
            this.instance = new Config();
        }

        return this.instance;
    }

    public getConfig(type: ConfigType): BaseConfig {
        return this.configDic[type];
    }

    protected createConfigBuilder(env: string): ConfigBuilder {
        this.builder = new ConfigBuilder(CONFIG_PATH);
        this.builder.setEnviroment(this.env);
        return this.builder;
    }

    protected defineEnv(): string {
        let env = process.env.SM_ENV;

        if (!env) {
            env = DEFAULT_ENV;
        }

        return env;
    }

    protected initConfigDic(builder: ConfigBuilder): ConfigDictionary {
        const configDic: ConfigDictionary = {};
        configDic[ConfigType.Server] = builder.getConfig(ConfigType.Server);
        configDic[ConfigType.Db] = builder.getConfig(ConfigType.Db);
        configDic[ConfigType.Project] = builder.getConfig(ConfigType.Project);
        return configDic;
    }
}