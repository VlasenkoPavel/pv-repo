### Installation

Create database:
```sh
psql -c "create user gorod with password '123qwe'" postgres
psql -c "create database sm_users owner gorod encoding 'UTF8' lc_collate 'ru_RU.UTF-8' LC_CTYPE 'ru_RU.UTF-8'
template template0;" postgres
```

Install dependencies:
```sh
yarn install

```

Build project:
```sh
yarn build-dev

```
or `yarn build` without watch.


Run migrations:
```sh
yarn migrate
```

Start project:
```sh
yarn start-dev

```
or `yarn start` without watch.


Build apidoc:
```sh
yarn apidoc

```

---

For deployment only!  
Place in /opt/environment.sh:
```sh
export SM_ENV=dev
```
