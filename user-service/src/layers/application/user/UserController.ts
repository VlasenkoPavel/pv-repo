import { Response } from 'express';
import {
    JsonController,
    Param,
    QueryParams,
    Post,
    Get,
    Body,
    HttpCode,
    Res,
    Put
} from 'routing-controllers';

import { UserResponse, UserArrayResponse } from 'sber-marketing-types/user-service';

import { Config, ConfigType, ProjectConfig } from '../../../components/config';
import { User, IUserRepository, UserQuery } from '../../domain/user';
import { Success } from '../../../core/http-code';
import { AuthError } from '../../../core/http-error';
import {
    CreateUserForm,
    CreateUserFormTemp,
    UpdateUserForm,
    LoginParam
} from './validation';
import { UserViewOut } from './view';
import { getDomainRepository, RepositoryName } from '../../domain-repositories';

const config = <ProjectConfig>Config.getInstance().getConfig(ConfigType.Project);

const BASE_URL = '/user';

@JsonController(BASE_URL)
export class UserController {
    protected userRepository: IUserRepository = getDomainRepository(RepositoryName.UserRepository);

    /* tslint:disable:max-line-length */
    /**
     * @api {post} /user Create
     * @apiDescription Create new user UpdateUserPasswordFormwith password
     * @apiGroup Users

     * @apiParamExample {json} Example:
     * {
     *   "firstName": "Nicolas",
     *   "secondName": "Cage",
     *   "email": "nicola@net.ru",
     *   "phoneNumber": "+7(999) 999 99 99",
     *   "password": "123qwe"
     * }
     *
     * @apiSuccess (201) {Object} user
     *
     * @apiExample {curl} Example:
     *   curl -v -X POST -H "Content-Type: application/json" --data-binary '{"firstName":"Nicolas","secondName":"Cage","email": "nicola@net.ru","password": "123qwe"}' http://127.0.0.1:3003/user
     */
    /* tslint:enable:max-line-length */
    @Post('/')
    @HttpCode(Success.Created)
    public async create(
        @Body() createUserForm: CreateUserForm,
        @Res() res: Response
        ): Promise<UserResponse> {

        const user: User = await this.userRepository.create(createUserForm.getUserCreateAttributes());

        return UserViewOut.getUser(user);
    }

    /* tslint:disable:max-line-length */
    /**
     * @api {post} /user/temp CreateTemp
     * @apiDescription Create new user UpdateUserPasswordFormwith password
     * @apiGroup Users

     * @apiParamExample {json} Example:
     * {
     *   "id": 1,
     *   "firstName": "Nicolas",
     *   "secondName": "Cage",
     *   "email": "nicola@net.ru",
     *   "phoneNumber": "+7(999) 999 99 99",
     *   "password": "123qwe"
     * }
     *
     * @apiSuccess (201) {Object} user
     *
     * @apiExample {curl} Example:
     *   curl -v -X POST -H "Content-Type: application/json" --data-binary '{"firstName":"Nicolas","secondName":"Cage","email": "nicola@net.ru","password": "123qwe"}' http://127.0.0.1:3003/user
     */
    /* tslint:enable:max-line-length */
    @Post('/temp')
    @HttpCode(Success.Created)
    public async createTemp(
        @Body() createUserFormTemp: CreateUserFormTemp,
        @Res() res: Response
        ): Promise<UserResponse> {

        const user: User = await this.userRepository.createTemp(createUserFormTemp.getUserCreateAttributes());

        return UserViewOut.getUser(user);
    }


    /* tslint:disable:max-line-length */
    /**
     * @api {get} /user/:id GetUsersById
     * @apiGroup Users
     *
     * @apiParam {Number} id

     *
     * @apiSuccess {Object} userUpdateUserPasswordFormUpdateUserPasswordForm
     * @apiSuccess {String} user.firstName
     * @apiSuccess {String} user.lastName
     * @apiSuccess {String} user.email
     * @apiSuccess {String} clients.creationTime Format is "2016-01-30T14:55:01+03:00" (ISO-8601)
     * @apiSuccess {String} clients.updateTime Format is "2016-01-30T14:55:01+03:00" (ISO-8601)
     *userService
     * @apiSuccess (201) {Object} client
     *
     * @apiError (404) {String} code NotFound
     *
     * @apiExample {curl} Example:
     *  curl -v http://127.0.0.1:3003/user/1
     */
    /* tslint:enable:max-line-length */
    @Get('/:id')
    public async actionGet( @Param('id') id: number): Promise<UserResponse> {
        const user: User = await this.userRepository.getById(id);
        return UserViewOut.getUser(user);
    }

    /* tslint:disable:max-line-length */
    /**
     * @api {get} /user GetUsersList
     * @apiGroup Users
     *
     * @apiParamExample {json} Example:
     * {
     *   "ids": [2, 3],
     *   "substring": "ия ор"
     * }
     *
     * @apiSuccess {Object[]} user
     *
     * @apiExample {curl} Example:
     *  curl -v http://127.0.0.1:3003/user
     */
    /* tslint:enable:max-line-length */
    @Get('/')
    public async actionGetUserList(
        @QueryParams() params: UserQuery
        ): Promise<UserArrayResponse> {
        const users: User[] = await this.userRepository.list(params);
        return UserViewOut.getUserList(users);
    }


    /* tslint:disable:max-line-length */
    /**
     * @api {put} /user/:id UpdateUser
     * @apiDescription Only user data. For password should use UpdatePassword
     * @apiGroup Users
     *
     * @apiParam {Number} id
     *
     * @apiParam {Object} user Can send only attributes you want to update
     * @apiParam {String} [user.firstName]
     * @apiParam {String} [user.lastName]
     * @apiParam {String} [user.email]
     * @apiParam {String} [user.password]
     *
     *
     * @apiParamExample {json} Example:
     * {
     *   "firstName": "Nicolas",
     *   "secondName": "Cage",
     *   "email": "nicola@net.ru",
     *   "password": "123qwe"
     * }
     *
     * @apiSuccess (201) {Object} user
     *
     * @apiExample {curl} Example:
     *   curl -v -X PATCH -H "Content-Type: application/json" --data-binary '{"firstName":"Dmitriy"}' http://127.0.0.1:3003/user/1
     */
    /* tslint:enable:max-line-length */
    @Put('/:id')
    @HttpCode(Success.Created)
    public async update(
        @Param('id') id: number,
        @Body() updateUserForm: UpdateUserForm,
        @Res() res: Response
        ): Promise<UserResponse> {
        const user: User = await this.userRepository.getById(id);
        await user.setAttributes(updateUserForm);
        return UserViewOut.getUser(user);
    }

    /* tslint:disable:max-line-length */
    /**
     * @api {post} /user/auth/:email Login
     * @apiDescription Login by email and password
     * @apiGroup Users
     *
     * @apiParam {String} email User email
     * @apiParam {String} password User password
     *
     * @apiParamExample {json} Request-Example:
     *     {
     *         "password": "123qwe"
     *     }
     * @apiSuccess (200) {String} Location HTTP-header with link to user resource
     * @apiSuccess (200) {Object} user - data from authService
     * @apiSuccess (200) {String} user.firstName
     * @apiSuccess (200) {String} user.lastName
     * @apiSuccess (200) {String} user.email
     * @apiSuccess (200) {String} clients.creationTime Format is "2016-01-30T14:55:01+03:00" (ISO-8601)
     * @apiSuccess (200) {String} clients.updateTime Format is "2016-01-30T14:55:01+03:00" (ISO-8601)
     *
     * @apiSuccessExample {json} Success-Response:
     *     HTTP/1.1 200 OK
     *     Location: 'http://localhost:3002/user/1'
     *     {
     *         "id": 1,
     *         "firstName": "Nicolas",
     *         "secondName": "Cage",
     *         "email": "cage@net.ru",
     *         "creationTime": "2016-01-30T14:55:01+03:00",
     *         "updateTime": "2016-01-30T14:55:01+03:00"
     *     }
     *
     * @apiError (404) NotFoundError
     * @apiError (404) WrongPassword
     * @apiError (422) ValidationError
     *
     * @apiExample {cURL} Example usage:
     *  curl -v -X POST -H "Content-type: application/json" -d '{"password":"123qwe"}' http://0.0.0.0:3003/user/auth/test@test.com
     */
    /* tslint:enable:max-line-length */
    @Post('/auth/:email')
    public async actionLogin(
        @Param('email') email: string,
        @Body() { password }: LoginParam,
        @Res() res: Response
        ): Promise<UserResponse> {
        email = email.toLowerCase();
        const user = await this.userRepository.findOne({ email });

        const isPassValid = user.checkPassword(password);
        if (!isPassValid) {
            throw new AuthError(`WrongPassword`);
        }
        return UserViewOut.getUser(user);
    }

    /* tslint:disable:max-line-length */
    /**
     * @api {post} /user/auth/admin/:email AdminLogin
     * @apiDescription Login by email and password for admin
     * @apiGroup Users
     *
     * @apiParam {String} email AdminUser email
     * @apiParam {String} password AdminUser password
     *
     * @apiParamExample {json} Request-Example:
     *     {
     *         "password": "123qwe"
     *     }
     * @apiSuccess (200) {String} Location HTTP-header with link to user resource
     * @apiSuccess (200) {Object} user - data from authService
     * @apiSuccess (200) {String} user.firstName
     * @apiSuccess (200) {String} user.lastName
     * @apiSuccess (200) {String} user.email
     * @apiSuccess (200) {String} clients.creationTime Format is "2016-01-30T14:55:01+03:00" (ISO-8601)
     * @apiSuccess (200) {String} clients.updateTime Format is "2016-01-30T14:55:01+03:00" (ISO-8601)
     *
     * @apiSuccessExample {json} Success-Response:
     *     HTTP/1.1 200 OK
     *     Location: 'http://localhost:3002/user/1'
     *     {
     *         "id": 1,
     *         "firstName": "Nicolas",
     *         "secondName": "Cage",
     *         "email": "cage@net.ru",
     *         "creationTime": "2016-01-30T14:55:01+03:00",
     *         "updateTime": "2016-01-30T14:55:01+03:00"
     *     }
     *
     * @apiError (404) NotFoundError
     * @apiError (404) WrongPassword
     * @apiError (422) ValidationError
     * @apiError (403) AccessError
     *
     * @apiExample {cURL} Example usage:
     *  curl -v -X POST -H "Content-type: application/json" -d '{"password":"123qwe"}' http://0.0.0.0:3003/user/auth/admin/test@test.com
     */
    /* tslint:enable:max-line-length */
    @Post('/auth/admin/:email')
    public async actionAdminLogin(
        @Param('email') email: string,
        @Body() { password }: LoginParam,
        @Res() res: Response
        ): Promise<UserResponse> {

        if (config.admins.indexOf(email) == -1) {
            throw new AuthError(`NotAdmin`);
        }
        const user = await this.userRepository.findOne({ email });

        const isPassValid = user.checkPassword(password);
        if (!isPassValid) {
            throw new AuthError(`WrongPassword`);
        }
        return UserViewOut.getUser(user);
    }
}
