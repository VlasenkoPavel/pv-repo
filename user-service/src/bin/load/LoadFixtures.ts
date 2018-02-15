import { Load } from './Load';
import { LoadUsers } from './fixtures';


export class LoadFixtures extends Load {

    /**
     * Load fixtures
     */
    public async load(): Promise<void> {
        await this.init();
        await new LoadUsers().load();
        await this.close();
    }
}

/**
 * RUN
 */
(async function() {
    const loader = new LoadFixtures();
    await loader.load();
})();
