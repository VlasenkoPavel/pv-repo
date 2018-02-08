--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
ALTER TABLE ONLY public."user" DROP CONSTRAINT user_email_key;
ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.user_id_seq;
DROP TABLE public."user";
DROP TABLE public.migrations;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: migrations; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE migrations (
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE migrations OWNER TO gorod;

--
-- Name: user; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE "user" (
    id integer NOT NULL,
    "firstName" character varying NOT NULL,
    "middleName" character varying,
    "secondName" character varying NOT NULL,
    email character varying NOT NULL,
    "phoneNumber" character varying NOT NULL,
    password character varying NOT NULL,
    "createTime" timestamp without time zone NOT NULL,
    "updateTime" timestamp without time zone NOT NULL,
    status character varying
);


ALTER TABLE "user" OWNER TO gorod;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_id_seq OWNER TO gorod;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE user_id_seq OWNED BY "user".id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY migrations ("timestamp", name) FROM stdin;
1510827087390	CreateUserTable1510827087390
1511258721362	AddStatusColumn1511258721362
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY "user" (id, "firstName", "middleName", "secondName", email, "phoneNumber", password, "createTime", "updateTime", status) FROM stdin;
5	Анастасия	\N	Орлова	anastasiya.orlova@sns-digital.ru	+7 985 140 70 66	09fe621f0cc0fe96a3c0144021fdcf464f2de0bf4686f29ddcea17e9043fadfa6bf8b537285806cbb3da86e6b046c70cf15eb4f03f04df86d05d19d14db08f627c44af2b1fff40abff4cbed04e5efe25a7b2a0b8fecae1b31723d772fba625ae02aee4e055ea8736a7d34b5b	2017-12-11 09:39:54.089	2018-01-30 11:18:09.16	active
6	Анна	\N	Лучкова	anna.luchkova@sns-digital.ru	8 926 186 56 64	cbdf5ead184202e690e397fbfa2e8a619595906145cb2d16248522a1b4b3b5ab3687b025d4fb2b0b873acaafff6f75038b7887899192a7a9d755eab4038f1b05d930b110516afda4327888fd06d531548424df579833c59e917e7066c629334e4075be1b2b291e73124df24d	2017-12-11 09:39:54.103	2018-01-30 11:18:13.936	active
7	Вячеслав	\N	Дегтярев	elina.tarasiuk@sns-digital.ru	+7 903 011 04 19	f5da25ad677de85aad2f83c04a63feedef2c0dafab9222a9bca6887d2df593b28708ae0324af64a04a194c6fed81d84ebc277a6f115deb8c1aba98b169ce66d40e5fb59feb317cf9c076566047aa5fa67ea610eaaf42876eebf8a808387afc4f5906c373ec28bf614d413bc0	2017-12-11 09:39:54.117	2018-01-30 11:18:18.655	active
8	Анна	\N	Синева	anna.sineva@isobar.ru	8 (915) 353-31-04	338ad6a4f16e5a5fb4c7479545c6e89a61fcf970d481913633779121473d039b2dfc25018d537905ec2bc1dbf8ab62dc939cb042ab2322a550b4b92d61ccd5142625f964f14dc77dffb30c0800ceb076b17e18f62dbf74c83730ec144b732c6752e024309a79462d1a59bcc3	2017-12-11 09:39:54.131	2018-01-30 11:18:24.911	active
9	Мария	\N	Ивашутина	mariia.ivashutina@isobar.ru	+7 926 608 48 83	9974b50852ee787766841da6f77043db86da672eab55fe36cd9bb0ff9e217e766e9510ce21c5f191609db621e71a5acd0bf0e5ebf5b00581d6d02cd07be0bdc5aa3350be4ab37ce9d53588a9381ae415e02ffc6ff991902dd9983561f540a50771e1964b045999490dd04cd6	2017-12-11 09:39:54.145	2018-01-30 11:18:29.533	active
10	Дина	\N	Абдушелишвили	dina.abdushelishvili@adwatch.ru	8 926 537 88 65	0c44c00ea9910d234b290f5bc40595503e05bb896bf73bd02019e9cc5f2eab58623acc743af3c0bd87f4b3641f81d0ddb60efe70c39305b6373e41ea7afad1135e04d7b04a04ddd5765bcff494c64ace399dc13536df3c4bbbe1290ceccdd1ae18e5d015add9e679e42b8c61	2017-12-11 09:39:54.16	2018-01-30 11:18:33.215	active
11	Людмила	\N	Колоскова	liudmila.koloskova@dentsu-smart.ru	+7 903 244 98 92	a1f69f947b79ef430d3dd3866fae4d07fb32372e3d46bda7843efe46ba2ca32046d092e07a7d7085f7be0560afb2da129d5ebd35d8c03c3c8bb2ba0deecb0ad251ddcf07e5539f4353aaa13a87ae0bb10bbe0ae2d71f2b88d84893cc2f898c4d4d0cabdc0d710e78aca7978f	2017-12-11 09:39:54.177	2018-01-30 11:18:36.033	active
21	Виталий	Олегович	Шитов	voshitov@sberbank.ru	79636112285	19f7e649c15f476a7977edca082e5424a7bc6cb05a35df6153201bad57dc98477fb0f3d6f27049a66e57df4bf5b2b50ace93037ebf96549d317fb9f39a5935e6c1ad7c69f2b06c72cb4e9b2bfba36d20f6e3847b165afb8d66168195ea3b9da781335d64481a538f927ade83	2017-12-11 09:39:54.31	2018-01-30 11:18:39.966	active
22	Анна	Валентиновна	Тульская	avtulskaya@sberbank.ru	+79652512491	ce4600fa4165de7e8d31eb1cebece8a195b1231eedade05f19836cd917c7248bbf6820e20913287c10d6e6723ce22815abb2d523fac2bd11288baff3db01578a59e59f25f1afbeea35a03c3197f0df3ccaf63df99fd2234cfcf81c2278893609b06036c113308aa953d2d872	2017-12-11 09:39:54.325	2018-01-30 11:18:44.165	active
3	Артем		Аманов	artem.amanov@sns-digital.ru	+7 926 276 88 50	588faf19b062b04eb01f6ffbb35b4a14995f9631e5d2190080a225fc619f2d5e16f6fd07c74eb6c478dcfa938c9819f536339aee48424d012bf37d127a2835f19f7f35d4743b4602b4d696fc0c24c427ed0f45640ab705d6cea3044ce1f54690d81fcfd2f8bf8a91548e0eee	2017-12-11 09:39:54.059	2018-01-30 11:18:47.706	active
20	Алена	Сергеевна	Соболева	soboleva.el.se@sberbank.ru	+7 (925) 734-83-77	106c50bc2c777298e8b41c86d43532af25f57e5cd4ec0be16a1fbc0a3872cf20a794bd8c982e5e249d5a17eaf20b36978801e8f37108d7c6483c369077de12db168d61c2b2f18d2188463285febd6e69ef7fc1a1e813dd94582e9759d70628c41dac46839b9f5120e87054bd	2017-12-11 09:39:54.297	2018-01-30 11:18:51.114	active
23	Наталья	Ростиславовна	Игошина	nrigoshina@sberbank.ru	79066207292	fb2888682f605361d865573fd1aa414a2c9516bb7cc34e9ddf637df2bce39218852b3d2a1e0f9f23187b325701be5f9b447d13eae47e798cf6af33976acbb3381fb2b86866de5664c0d84561e1acdaee5fd0f6af42f75d49d40c5c2fd7bdf13522269fa7d38850059e51c0f2	2017-12-11 09:39:54.338	2018-01-30 11:18:54.864	active
17	Александр		Мовсесов	Alexandr.Movsesov@Storylab.ru	+7 919 100 40 20	719e58f6b0ac846426d013b4d6642df1e55f179c134b0392dfc25208dbb223f0a3fa898642d0a223c16055e48192ac02d46d70ce6009801e99838ddf224d102a8d6311154ac4b0ade47796698aff6899b7b3a628e55de201112a5b516022617e836226798beeb9dcb6dd1b3a	2017-12-11 09:39:54.255	2018-01-30 11:18:59.853	active
18	Алиса		Кольмина	Alisa.Kolmina@Storylab.ru	+7 916 306 00 09	c88a4ecab433010a655ca69478e71bbf909a0b7687574b2fe20083ed7f843e8dbd0b12141e8de18189dc6458ffa8b79add82f8761a3082115d08a9f6d79d179f000f331f7af54825481257a5e674d5e6406eee76ff3fff688c6affe75325c59808eae6b205215883f8a79f98	2017-12-11 09:39:54.269	2018-01-30 11:19:04.602	active
19	Полина		Кузьмичева	Polina.Kuzmicheva@storylab.ru	+7 925 110 28 96	28e8766668fee8a7d21a3e7fe986e6b93a288e096ad85cffb836a0b19c12775bf31857024190a7edc481574661568d602ad6ea44f68ecbce3517481bcccd2025ae9412086ed5d90ca609633b8f664ff1c6cdb3dd4f82f2d08e46360e341023a2f4a4ddaef20c77ca61ff6d96	2017-12-11 09:39:54.283	2018-01-30 11:19:10.341	active
13	Алсу		Хасанова	AKhasanova@dentsu-smart.ru	+7 925 881 61 05	5be5019b944d34c3f37af09d5b7b9df7efa429ba11d9f0939ed345ebf8539ea48a8e8bd4b4e3753909aec94d75d47d96a7112cf540d36a4a614d2a3e2d5d2d3f5231ab25073fc342816e5c8cde5639a379017a2d77d8bd7cd95fe2bb08af9ebd6d4859204f6f2eebd9716978	2017-12-11 09:39:54.203	2018-01-30 11:19:16.263	active
14	Яна		Асеева	YAseeva@dentsu-smart.ru	+7 929 633 38 33	52afbd49da7e11f028d11bdfc140e8aed1bbdae0620a1d0febe2676b5354d5b43aaa876457d5fc29dd645b7e5ee35417bcb58bc4a7e1a45121dfdd0c4ad599f04a3baf00a320dd9fe682e40cd55a7193471637b15aa5e5e1a6505898def874396948d9fe9a4197073105c357	2017-12-11 09:39:54.216	2018-01-30 11:19:20.718	active
15	Татьяна		Кастерова	Tatiana.Kasterova@dentsu-smart.ru	+7 963 999 74 42	bd511f4cc14f5524ab61ac67e9e09856adb20a9c8e53075cfbd4065f3779a8353bef97a7fa5d95c04d6f4575f615dcf617927d4847b848531507924c57c0b7c45b528e5e65fd7d2662b43cdfe7c8ece26ad8c764b37ad905ae3d058ec08dfa95f751a373c7cd326fc696b41e	2017-12-11 09:39:54.229	2018-01-30 11:19:29.667	active
16	Наталия		Цургаева	Natalia.Tsurgaeva@dentsu-smart.ru	+7 916 909 00 91	aca0db231231d989dd7d8f764f783203cc44f825c79366bead70547fe52523ee3f47ce62ef8df3001a0137f0128de12fde556df20d8bc8c234a10bbe97cb8fa5360afcc800897930d90f78a7ad19581482e5b60f624cf67dac2610e4b9a2dd26c0443ed7e21a69f9509ea17b	2017-12-11 09:39:54.242	2018-01-30 11:19:33.839	active
12	Екатерина		Атакишиева	Ekaterina.Atakishieva@dentsu-smart.ru	+7 925 881 41 66	da7fb91bf20dcf25a07b1bd37701a2269f36182c1b2220d012862460bd3b4c24dee1e3a7300ba7664877a617e8c41ef192bee5770a02127db10516fe63db4f3eb6a2fe3ce32e0d6d98035810c801f2970901116cfdab636b26df6b639a572190117ffc42b4c0b6028959fb53	2017-12-11 09:39:54.189	2018-01-30 11:19:38.041	active
30	Анна		Синева	Anna.Sineva@isobar.ru	+8 (915) 353-31-04	c35e4b851f01216606a7dc08c64e468e6b7bcbe764af86ea78cf857d65172a29af92dd164a0a8d9a1218ad6908d384cf39b8e8436a4d9c31f4d83a0fe01eb9c46be6124d4afc0b19d883946ecc87990597e36796c34175773ec1a43f110a38c49ceaf63952fbc79d002a10b5	2018-01-30 10:55:38.146	2018-01-30 11:20:20.018	active
24	Артём	Вячеславович	Максимов	avmaksimov.OUT@sberbank.ru	79254725902	8bff86328565251a12d4405f14b365111338fabd286507317dbb101839a6ee92a92d465e09b3f9c5c83dfe7ef6fa509b901dc1bfd38c000255e0169db631ed84bb9b84e3c4d45983326f11e1b4d13b253e730644b3be7ab51c4ff708cfc9c14cead4dc21458de878372298c3	2017-12-11 09:39:54.351	2018-01-30 11:19:46.406	active
25	Денис	Андреевич	Кожаев	kozhaev.de.an@sberbank.ru	79032601414	ca1f1735552ad194a12497404e24b7e37fc23b870dd08583a8fec6e8f54ec769d190aab07c1e7749c15f3d094212c7bf752885b449a24ef8f4c31d2dd29140e140b38bb606ac38fe3fbf5a86c4ea40acf3fb0a7ad80567ff24bba30d04a91f18ab0fb70d361d2dec29548ab4	2017-12-11 09:39:54.364	2018-01-30 11:19:50.617	active
27	Шекляев	\N	Михаил	sheck@dentsu.ru	79032600000	ebf8247230d3da9c7759bc0f4c766e5da81a7d2fc0146330f169ceb42cf1572c46f30ce83ad3cba43f86e4e92886e225f9a2b51c03c35c3feb5f3f7cbcc0fa813ead406a6ca848ac9de2c1bf43d8cf749d73b67c86018fe7364f325f790d39a1b65ab1a76c8be19d248da2a1	2017-12-11 09:45:43.621	2018-01-30 11:19:54.668	active
4	Григорий		Серегин	grigory.seregin@sns-digital.ru	89255657071	8f282740b946e2efd52463d1c077c07f11830279a5a13d467461d29d476ed69a0d205c6cb40bf1cccbfccb1a09d087e36af8c62377c41c54ec7300d393b4e4535255686f4462b01ccf4f233746512e9e014fc93d9554437f68b920f360da6fdf56e63afee4e5ea5f3feb215b	2017-12-11 09:39:54.074	2018-01-30 11:20:03.612	active
1	Admin	\N	Admin	admin	0	ea3d7f75e40974815636f8c93acbb2230ea238206156f5f6ebe23550c991372a138db10e757f41a17f253a3bd505519513693591501eb40d5c73f82fa52c5a5f520525a72c327be97124bd57ccc4c2902f3d1d87bdbf25894233edd0e7ec14b2f192390af7c1f36413fea789	2017-12-11 09:39:54.017	2018-01-30 11:20:06.902	active
29	Владислав	Геннадьевич	Крейнин	vgkreynin@sberbank.ru	+8 (888) 888-88-88	a0d1b547d81262160e4a243e557cf4a7fa42bf05d640d52c8066b428a2bcacf79da4b057e560b588e90f60eb1eb0d5ab3033d9703f84ecd41d80eeb2bbf81a67c93cdd45510af8307459dc2b1182005c1d1da46e4e765157640a5117b62924fe96f53c98e5cfd31b76b41ad1	2018-01-30 06:40:05.629	2018-01-30 11:20:15.846	active
28	Дима	Васильевич	Панов	dpanov@changers.team	+8 (800) 200-10-20	e39acc705631d2d1394d966e3e44c898fd00a22bfea53e90b962dfd6a33cf400346611006d7b81aa562e5f238446729cf5d0d4c2946752dc8aa8cbd7feed8980e415fd568b84e600da7636c0f91df88a4a5a124e0297168b40f1768a419b0410d6d9f9f89712505cb02f2ea6	2018-01-10 10:24:29.477	2018-01-30 11:45:45.765	active
2	Яна		Раскладка	yana.raskladka@sns-digital.ru	+7 926 226 21 06	0a0790723d9171a41178dd3ab525bccff20ad6119e41ad95587b9cb601209ec5b25e9a5d07758a5ee01989d6fff1f21f1c27ce46f070ecf29dc032b1e38648a048239f2513e22b6b238bde4469989b6cc468182ee109975b13b1d4c93216d44b8db672055c88122df0d8fb78	2017-12-11 09:39:54.042	2018-01-31 07:26:36.539	active
26	Гиязов		Алексей	gijazov.de.an@sberbank.ru	79032601400	c6f5ef6ad0f49ad269321417c48b0ab0629b072926b24d5483d5e4b57c61f9db17106b159c667d7e4e1e09273f982fe4baabcd79dd4aa5a9fc17b1a3882fb27833e625009e38e5c57eec1878c66dd126d30b1c017315f69e67c50ba1bc7242925c340f021599c28a88903769	2017-12-11 09:45:29.027	2018-02-02 14:12:07.011	active
\.


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('user_id_seq', 30, true);


--
-- Name: migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY ("timestamp");


--
-- Name: user_email_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_email_key UNIQUE (email);


--
-- Name: user_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

