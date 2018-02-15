import { Config, ConfigType, DbConfig } from '../components/config';

const dbConfig = <DbConfig>Config.getInstance().getConfig(ConfigType.Db);
process.stdout.write(JSON.stringify(dbConfig));