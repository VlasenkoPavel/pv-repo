import { userRepository } from './user';
import { RepositoryName } from './types';

const repositoryStorage = {
    [RepositoryName.UserRepository]: userRepository
};

function getDomainRepository(name: RepositoryName): any {
    return repositoryStorage[name];
}

export { getDomainRepository, RepositoryName };