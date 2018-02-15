export enum ConfigType {
    Server = 'server',
    Db = 'db',
    Project = 'project'
}

export interface BaseConfig {}

export interface ServerConfig extends BaseConfig {
    env: string;
    cookieSecret: string;
    host: string;
    port: number;
    workers?: number;
}

export interface DbConfig extends BaseConfig {
    type: string;
    host: string;
    database: string;
    username: string;
    password: string;
}

export interface ProjectConfig extends BaseConfig {
    admins: string[];
}

export interface ConfigDictionary {
    [key: string]: BaseConfig;
}

