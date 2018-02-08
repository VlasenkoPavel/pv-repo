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

ALTER TABLE ONLY public.user_role_subordination DROP CONSTRAINT "user_role_subordination_subUserRoleId_fkey";
ALTER TABLE ONLY public.user_role_subordination DROP CONSTRAINT "user_role_subordination_parentUserRoleId_fkey";
ALTER TABLE ONLY public.user_role DROP CONSTRAINT "user_role_roleId_fkey";
ALTER TABLE ONLY public.role_right DROP CONSTRAINT "role_right_roleId_fkey";
ALTER TABLE ONLY public.role DROP CONSTRAINT "role_groupId_fkey";
ALTER TABLE ONLY public."group" DROP CONSTRAINT "group_parentGroupId_fkey";
ALTER TABLE ONLY public.user_role DROP CONSTRAINT "user_role_userId_roleId_key";
ALTER TABLE ONLY public.user_role_subordination DROP CONSTRAINT user_role_subordination_pkey;
ALTER TABLE ONLY public.user_role_subordination DROP CONSTRAINT "user_role_subordination_parentUserRoleId_subUserRoleId_key";
ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
ALTER TABLE ONLY public."user" DROP CONSTRAINT user_email_key;
ALTER TABLE ONLY public.role_right DROP CONSTRAINT "role_right_roleId_rightId_key";
ALTER TABLE ONLY public.role_right DROP CONSTRAINT role_right_pkey;
ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
ALTER TABLE ONLY public.role DROP CONSTRAINT "role_name_groupId_key";
ALTER TABLE ONLY public."group" DROP CONSTRAINT "parentGroupId_name";
ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
ALTER TABLE ONLY public."group" DROP CONSTRAINT group_pkey;
ALTER TABLE public.user_role_subordination ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_role ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.role_right ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."group" ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.user_role_subordination_id_seq;
DROP TABLE public.user_role_subordination;
DROP SEQUENCE public.user_role_id_seq;
DROP TABLE public.user_role;
DROP SEQUENCE public.user_id_seq;
DROP TABLE public."user";
DROP SEQUENCE public.role_right_id_seq;
DROP TABLE public.role_right;
DROP SEQUENCE public.role_id_seq;
DROP TABLE public.role;
DROP TABLE public.migrations;
DROP SEQUENCE public.group_id_seq;
DROP TABLE public."group";
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
-- Name: group; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE "group" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "parentGroupId" integer,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE "group" OWNER TO gorod;

--
-- Name: group_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE group_id_seq OWNER TO gorod;

--
-- Name: group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE group_id_seq OWNED BY "group".id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE migrations (
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE migrations OWNER TO gorod;

--
-- Name: role; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "groupId" integer,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE role OWNER TO gorod;

--
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE role_id_seq OWNER TO gorod;

--
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE role_id_seq OWNED BY role.id;


--
-- Name: role_right; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE role_right (
    id integer NOT NULL,
    "roleId" integer NOT NULL,
    "rightId" integer NOT NULL,
    attributes text[],
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE role_right OWNER TO gorod;

--
-- Name: role_right_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE role_right_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE role_right_id_seq OWNER TO gorod;

--
-- Name: role_right_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE role_right_id_seq OWNED BY role_right.id;


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
-- Name: user_role; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE user_role (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "roleId" integer NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE user_role OWNER TO gorod;

--
-- Name: user_role_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_role_id_seq OWNER TO gorod;

--
-- Name: user_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE user_role_id_seq OWNED BY user_role.id;


--
-- Name: user_role_subordination; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE user_role_subordination (
    id integer NOT NULL,
    "parentUserRoleId" integer NOT NULL,
    "subUserRoleId" integer NOT NULL,
    "subordinationPath" integer[] NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE user_role_subordination OWNER TO gorod;

--
-- Name: user_role_subordination_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE user_role_subordination_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_role_subordination_id_seq OWNER TO gorod;

--
-- Name: user_role_subordination_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE user_role_subordination_id_seq OWNED BY user_role_subordination.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY "group" ALTER COLUMN id SET DEFAULT nextval('group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY role ALTER COLUMN id SET DEFAULT nextval('role_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY role_right ALTER COLUMN id SET DEFAULT nextval('role_right_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY user_role ALTER COLUMN id SET DEFAULT nextval('user_role_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY user_role_subordination ALTER COLUMN id SET DEFAULT nextval('user_role_subordination_id_seq'::regclass);


--
-- Data for Name: group; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY "group" (id, name, "parentGroupId", "createTime", "updateTime") FROM stdin;
1	Marketing	\N	2017-12-13 17:57:32.802+03	2017-12-13 17:57:32.802+03
2	Сбербанк	1	2017-12-13 17:57:32.826+03	2017-12-13 17:57:32.826+03
11	Среднерусский банк	2	2017-12-13 17:57:32.839+03	2017-12-13 17:57:32.839+03
12	Байкальский банк	2	2017-12-13 17:57:32.84+03	2017-12-13 17:57:32.84+03
13	Волго-Вятский банк	2	2017-12-13 17:57:32.841+03	2017-12-13 17:57:32.841+03
14	Дальневосточный банк	2	2017-12-13 17:57:32.842+03	2017-12-13 17:57:32.842+03
15	Западно-Сибирский банк	2	2017-12-13 17:57:32.843+03	2017-12-13 17:57:32.843+03
16	Московский банк	2	2017-12-13 17:57:32.844+03	2017-12-13 17:57:32.844+03
17	Dentsu	1	2017-12-13 17:57:32.844+03	2017-12-13 17:57:32.844+03
18	SNS	17	2017-12-13 17:57:32.845+03	2017-12-13 17:57:32.845+03
4	Департамент маркетинга и коммуникаций	2	2017-12-13 17:57:32.831+03	2017-12-13 17:57:32.831+03
5	Поволжский банк	2	2017-12-13 17:57:32.832+03	2017-12-13 17:57:32.832+03
6	Северо-Западный банк	2	2017-12-13 17:57:32.833+03	2017-12-13 17:57:32.833+03
7	Сибирский банк	2	2017-12-13 17:57:32.834+03	2017-12-13 17:57:32.834+03
3	Уральский банк	2	2017-12-13 17:57:32.83+03	2017-12-13 17:57:32.83+03
9	Центрально-Чернозёмный банк	2	2017-12-13 17:57:32.836+03	2017-12-13 17:57:32.836+03
10	Юго-Западный банк	2	2017-12-13 17:57:32.837+03	2017-12-13 17:57:32.837+03
20	Dentsu smart	17	2017-12-13 17:57:32.847+03	2017-12-13 17:57:32.847+03
21	The story lab	17	2017-12-13 17:57:32.848+03	2017-12-13 17:57:32.848+03
19	Isobar/adwatch	17	2017-12-13 17:57:32.846+03	2017-12-13 17:57:32.846+03
22	Leo Burnett	1	2017-12-13 17:57:32.849+03	2017-12-13 17:57:32.849+03
27	BBDO	1	2018-01-30 09:13:13.239+03	2018-01-30 09:13:13.239+03
28	Smetana	1	2018-01-30 09:13:17.406+03	2018-01-30 09:13:17.406+03
29	Izobar	1	2018-01-30 09:13:21.251+03	2018-01-30 09:13:21.251+03
30	MOSAIC	1	2018-01-30 09:13:24.98+03	2018-01-30 09:13:24.98+03
31	iConText	1	2018-01-30 09:13:30.051+03	2018-01-30 09:13:30.051+03
32	Segmento	1	2018-01-30 09:13:59.34+03	2018-01-30 09:13:59.34+03
40	TestGroupClo	1	2018-01-30 12:25:30.847+03	2018-01-30 12:25:30.847+03
41	TestGroupPO	1	2018-01-30 12:26:09.804+03	2018-01-30 12:26:09.804+03
42	TestGroupJK	1	2018-01-30 13:29:31.526+03	2018-01-30 13:29:31.526+03
43	TestGroupRS	1	2018-01-30 13:44:15.725+03	2018-01-30 13:44:15.725+03
46	RSThree	43	2018-01-30 13:45:07.812+03	2018-01-30 13:45:07.812+03
33	TestGroupJO1	1	2018-01-30 11:44:36.784+03	2018-01-30 11:44:36.784+03
47	TestGroupAR	1	2018-01-30 13:57:00.705+03	2018-01-30 13:57:00.705+03
38	TestGroup	1	2018-01-30 12:06:54.278+03	2018-01-30 12:06:54.278+03
39	TestGroup1	1	2018-01-30 12:24:27.169+03	2018-01-30 12:24:27.169+03
49	TestGroup13	1	2018-01-30 14:58:18.755+03	2018-01-30 14:58:18.755+03
51	TestGroup15	1	2018-01-30 15:07:26.496+03	2018-01-30 15:07:26.496+03
67	Technical1	1	2018-01-30 15:12:02.658+03	2018-01-30 15:12:02.658+03
68	T1	67	2018-01-30 15:12:10.691+03	2018-01-30 15:12:10.691+03
69	T2	67	2018-01-30 15:12:13.234+03	2018-01-30 15:12:13.234+03
71	T21	69	2018-01-30 15:12:20.989+03	2018-01-30 15:12:20.989+03
77	T211	71	2018-01-30 15:34:13.441+03	2018-01-30 15:34:13.441+03
78	Technical3	1	2018-01-30 16:14:25.68+03	2018-01-30 16:14:25.68+03
79	Tad1	78	2018-01-30 16:14:29.489+03	2018-01-30 16:14:29.489+03
80	Tad2	78	2018-01-30 16:14:33.142+03	2018-01-30 16:14:33.142+03
81	Tech1	1	2018-01-30 16:42:01.439+03	2018-01-30 16:42:01.439+03
83	Tech2	1	2018-01-30 16:42:22.351+03	2018-01-30 16:42:22.351+03
84	T1	83	2018-01-30 16:42:32.044+03	2018-01-30 16:42:32.044+03
85	T2	83	2018-01-30 16:42:35.202+03	2018-01-30 16:42:35.202+03
86	T3	83	2018-01-30 16:42:38.227+03	2018-01-30 16:42:38.227+03
87	T21	85	2018-01-30 16:42:41.761+03	2018-01-30 16:42:41.761+03
88	T22	85	2018-01-30 16:42:45.246+03	2018-01-30 16:42:45.246+03
89	T23	85	2018-01-30 16:42:48.005+03	2018-01-30 16:42:48.005+03
90	T231	89	2018-01-30 16:42:53.168+03	2018-01-30 16:42:53.168+03
\.


--
-- Name: group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('group_id_seq', 93, true);


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY migrations ("timestamp", name) FROM stdin;
1511884003583	CreateGroup1511884003583
1511884971669	CreateRole1511884971669
1511885268048	CreateUserRole1511885268048
1511886598652	CreateUserRoleSubordination1511886598652
1513006525135	CreateRightsGroup1513006525135
1513007098130	CreateRight1513007098130
1513007403054	CreateRoleRight1513007403054
1516375273871	AddConstraint1516375273871
1516895368483	DropRoleRightFK1516895368483
1516897427601	DropRight1516897427601
1516897548333	DeleteRightsGroup1516897548333
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY role (id, name, "groupId", "createTime", "updateTime") FROM stdin;
2	Брендменеджер	4	2017-12-13 17:57:33.146+03	2017-12-13 17:57:33.146+03
4	Head of group	18	2017-12-13 17:57:33.147+03	2017-12-13 17:57:33.147+03
5	Head of group	19	2017-12-13 17:57:33.148+03	2017-12-13 17:57:33.148+03
15	Вице-президент	2	2018-01-30 09:29:01.207+03	2018-01-30 09:29:01.207+03
14	Руководитель	4	2018-01-30 08:11:23.075+03	2018-01-30 10:29:01.288+03
8	Исполнитель	18	2017-12-13 17:57:33.148+03	2018-01-30 10:40:39.814+03
16	Исполнитель	20	2018-01-30 10:41:29.286+03	2018-01-30 10:41:29.286+03
17	Head of group	20	2018-01-30 10:41:39.454+03	2018-01-30 10:41:39.454+03
18	Head of group	21	2018-01-30 10:41:43.687+03	2018-01-30 10:41:43.687+03
9	Исполнитель	19	2017-12-13 17:57:33.149+03	2018-01-30 10:41:54.257+03
19	Исполнитель	21	2018-01-30 10:41:58.136+03	2018-01-30 10:41:58.136+03
20	Супервайзер	27	2018-01-30 13:48:17.072+03	2018-01-30 13:48:17.072+03
21	Исполнитель	27	2018-01-31 13:47:51.234+03	2018-01-31 13:47:51.234+03
3	Супервайзер	17	2017-12-13 17:57:33.146+03	2018-01-31 15:23:51.988+03
\.


--
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('role_id_seq', 21, true);


--
-- Data for Name: role_right; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY role_right (id, "roleId", "rightId", attributes, "createTime", "updateTime") FROM stdin;
9	2	1	{own}	2017-12-13 17:57:33.602+03	2017-12-13 17:57:33.602+03
10	2	2	{own}	2017-12-13 17:57:33.602+03	2017-12-13 17:57:33.602+03
11	2	3	{own}	2017-12-13 17:57:33.602+03	2017-12-13 17:57:33.602+03
12	2	4	{own}	2017-12-13 17:57:33.603+03	2017-12-13 17:57:33.603+03
13	2	5	{own}	2017-12-13 17:57:33.603+03	2017-12-13 17:57:33.603+03
14	2	6	{own}	2017-12-13 17:57:33.603+03	2017-12-13 17:57:33.603+03
17	3	2	{task_group}	2017-12-13 17:57:33.603+03	2017-12-13 17:57:33.603+03
23	4	4	{task_group}	2017-12-13 17:57:33.604+03	2017-12-13 17:57:33.604+03
24	4	7	{task_group}	2017-12-13 17:57:33.604+03	2017-12-13 17:57:33.604+03
25	4	8	{task_group}	2017-12-13 17:57:33.604+03	2017-12-13 17:57:33.604+03
26	4	9	{task_group}	2017-12-13 17:57:33.605+03	2017-12-13 17:57:33.605+03
27	8	2	{task}	2017-12-13 17:57:33.605+03	2017-12-13 17:57:33.605+03
28	8	4	{task}	2017-12-13 17:57:33.605+03	2017-12-13 17:57:33.605+03
29	8	8	{task}	2017-12-13 17:57:33.605+03	2017-12-13 17:57:33.605+03
31	5	2	{task_group}	2017-12-13 17:57:33.605+03	2017-12-13 17:57:33.605+03
32	5	4	{task_group}	2017-12-13 17:57:33.605+03	2017-12-13 17:57:33.605+03
33	5	7	{task_group}	2017-12-13 17:57:33.606+03	2017-12-13 17:57:33.606+03
34	5	8	{task_group}	2017-12-13 17:57:33.606+03	2017-12-13 17:57:33.606+03
35	5	9	{task_group}	2017-12-13 17:57:33.606+03	2017-12-13 17:57:33.606+03
36	9	2	{task}	2017-12-13 17:57:33.606+03	2017-12-13 17:57:33.606+03
37	9	4	{task}	2017-12-13 17:57:33.606+03	2017-12-13 17:57:33.606+03
38	9	8	{task}	2017-12-13 17:57:33.607+03	2017-12-13 17:57:33.607+03
39	9	9	{task}	2017-12-13 17:57:33.607+03	2017-12-13 17:57:33.607+03
93	14	3	{own}	2018-01-30 10:29:58.097+03	2018-01-30 10:29:58.154+03
22	4	2	{task_group,task}	2017-12-13 17:57:33.604+03	2018-01-30 10:41:00.071+03
81	15	11	{own}	2018-01-30 09:29:16.819+03	2018-01-30 19:02:35.471+03
80	15	10	{own}	2018-01-30 09:29:16.297+03	2018-01-30 19:02:34.789+03
82	15	12	{own}	2018-01-30 09:29:17.312+03	2018-01-30 19:02:36.191+03
83	15	8	{own}	2018-01-30 09:29:17.83+03	2018-01-30 19:02:37.028+03
84	15	13	{own}	2018-01-30 09:29:18.407+03	2018-01-30 19:02:37.782+03
86	15	14	{own}	2018-01-30 09:29:19.47+03	2018-01-30 19:02:40.584+03
87	15	9	{own}	2018-01-30 09:29:19.968+03	2018-01-30 19:02:41.298+03
89	15	16	{own}	2018-01-30 09:29:21.466+03	2018-01-30 19:02:42.252+03
119	15	18	{own}	2018-01-30 13:13:34.442+03	2018-02-01 09:39:56.454+03
117	3	10	{}	2018-01-30 13:04:32.146+03	2018-01-30 16:34:20.79+03
85	15	17	{}	2018-01-30 09:29:18.958+03	2018-01-30 13:23:19.48+03
116	3	5	{task}	2018-01-30 12:56:35.791+03	2018-02-01 17:16:50.238+03
74	15	2	{own}	2018-01-30 09:29:03.942+03	2018-02-01 09:39:52.346+03
19	3	7	{task_group}	2017-12-13 17:57:33.604+03	2018-01-30 16:34:22.676+03
73	15	1	{own}	2018-01-30 09:29:02.664+03	2018-02-01 09:39:51.993+03
107	2	10	{own}	2018-01-30 11:15:49.218+03	2018-02-01 12:56:00.998+03
118	15	19	{own}	2018-01-30 13:13:33.181+03	2018-02-01 09:39:55.705+03
75	15	3	{own}	2018-01-30 09:29:08.397+03	2018-02-01 09:39:53.516+03
88	15	15	{}	2018-01-30 09:29:20.886+03	2018-01-30 13:23:21.046+03
79	15	7	{}	2018-01-30 09:29:15.632+03	2018-01-31 15:13:07.672+03
115	3	6	{}	2018-01-30 12:44:56.269+03	2018-01-30 16:34:13.079+03
96	14	10	{own}	2018-01-30 11:14:36.71+03	2018-02-01 16:18:54.425+03
121	3	11	{task_group}	2018-01-30 16:34:28.598+03	2018-01-30 16:34:28.654+03
122	3	12	{task_group}	2018-01-30 16:34:31.875+03	2018-01-30 16:34:31.954+03
123	3	13	{task_group}	2018-01-30 16:34:41.924+03	2018-01-30 16:34:42.011+03
78	15	6	{own}	2018-01-30 09:29:14.993+03	2018-01-30 19:02:31.111+03
21	3	9	{task_group}	2017-12-13 17:57:33.604+03	2018-01-31 11:36:12.073+03
77	15	5	{own}	2018-01-30 09:29:13.521+03	2018-02-01 09:39:54.803+03
76	15	4	{own}	2018-01-30 09:29:13.199+03	2018-02-01 09:39:53.995+03
110	2	13	{own}	2018-01-30 11:15:51.17+03	2018-02-01 12:52:48.812+03
109	2	12	{own}	2018-01-30 11:15:50.369+03	2018-02-01 12:55:40.306+03
112	2	14	{own}	2018-01-30 11:15:54.056+03	2018-02-01 12:56:05.241+03
106	2	7	{}	2018-01-30 11:15:48.669+03	2018-02-01 12:55:41.768+03
111	2	17	{}	2018-01-30 11:15:52.935+03	2018-02-01 12:55:44.435+03
15	2	8	{own}	2017-12-13 17:57:33.603+03	2018-02-01 12:55:45.271+03
113	2	16	{own}	2018-01-30 11:15:56.214+03	2018-02-01 12:56:09.746+03
16	2	9	{own}	2017-12-13 17:57:33.603+03	2018-02-01 12:55:47.854+03
114	2	15	{}	2018-01-30 11:15:56.635+03	2018-02-01 12:55:48.593+03
120	14	1	{own}	2018-01-30 13:25:35.799+03	2018-02-01 16:18:26.182+03
108	2	11	{own}	2018-01-30 11:15:49.926+03	2018-02-01 12:55:57.439+03
30	8	9	{task}	2017-12-13 17:57:33.605+03	2018-02-01 12:56:50.25+03
90	14	2	{own}	2018-01-30 10:29:54.998+03	2018-02-01 16:18:31.443+03
95	14	7	{}	2018-01-30 11:14:30.922+03	2018-02-01 16:18:56+03
98	14	12	{own}	2018-01-30 11:14:38.103+03	2018-02-01 16:19:01.349+03
100	14	13	{own}	2018-01-30 11:14:42.917+03	2018-02-01 16:19:03.494+03
102	14	14	{own}	2018-01-30 11:15:39.124+03	2018-02-01 16:19:07.793+03
99	14	8	{own}	2018-01-30 11:14:42.098+03	2018-02-01 16:19:04.546+03
101	14	17	{}	2018-01-30 11:15:38.648+03	2018-02-01 16:18:41.477+03
103	14	9	{own}	2018-01-30 11:15:39.696+03	2018-02-01 16:19:09.342+03
105	14	16	{own}	2018-01-30 11:15:40.544+03	2018-02-01 16:19:14.163+03
104	14	15	{}	2018-01-30 11:15:40.108+03	2018-02-01 16:18:46.903+03
92	14	5	{own}	2018-01-30 10:29:57.496+03	2018-02-01 16:19:26.751+03
94	14	6	{task_group,own}	2018-01-30 10:30:16.006+03	2018-02-01 16:18:49.995+03
97	14	11	{own}	2018-01-30 11:14:37.171+03	2018-02-01 16:18:57.788+03
91	14	4	{own}	2018-01-30 10:29:56.615+03	2018-02-01 16:19:25.271+03
18	3	4	{task_group}	2017-12-13 17:57:33.604+03	2018-02-01 17:16:50.717+03
20	3	8	{task_group}	2017-12-13 17:57:33.604+03	2018-02-01 17:16:48.958+03
127	3	19	{task_group}	2018-01-30 16:35:44.875+03	2018-01-30 16:35:44.923+03
126	3	16	{task_group}	2018-01-30 16:35:21.352+03	2018-01-31 11:36:13.415+03
128	3	3	{}	2018-01-31 14:20:55.725+03	2018-01-31 14:22:59.837+03
129	17	2	{task_group}	2018-01-31 15:24:45.887+03	2018-01-31 15:24:45.942+03
130	17	7	{task_group}	2018-01-31 15:24:53.931+03	2018-01-31 15:24:53.992+03
131	17	10	{task_group}	2018-01-31 15:24:58.007+03	2018-01-31 15:24:58.06+03
132	17	11	{task_group}	2018-01-31 15:24:58.555+03	2018-01-31 15:24:58.613+03
133	17	12	{task_group}	2018-01-31 15:24:59.153+03	2018-01-31 15:24:59.198+03
134	17	8	{task_group}	2018-01-31 15:25:00.089+03	2018-01-31 15:25:00.157+03
135	17	13	{task_group}	2018-01-31 15:25:00.875+03	2018-01-31 15:25:00.952+03
137	17	9	{task_group}	2018-01-31 15:25:07.041+03	2018-01-31 15:25:07.118+03
136	17	14	{}	2018-01-31 15:25:02.834+03	2018-01-31 15:25:11.081+03
138	17	16	{task_group}	2018-01-31 15:25:14.036+03	2018-01-31 15:25:14.104+03
139	16	2	{task}	2018-01-31 16:30:21.253+03	2018-01-31 16:30:21.371+03
140	16	12	{task}	2018-01-31 16:30:28.158+03	2018-01-31 16:30:28.204+03
141	16	8	{task}	2018-01-31 16:30:28.856+03	2018-01-31 16:30:28.901+03
142	16	13	{task}	2018-01-31 16:30:29.867+03	2018-01-31 16:30:29.951+03
143	16	17	{task}	2018-01-31 16:30:31.065+03	2018-01-31 16:30:31.1+03
144	16	9	{task}	2018-01-31 16:30:33.77+03	2018-01-31 16:30:33.812+03
145	16	15	{task}	2018-01-31 16:30:34.404+03	2018-01-31 16:30:34.442+03
146	16	16	{task}	2018-01-31 16:30:35.171+03	2018-01-31 16:30:35.236+03
147	4	12	{task_group}	2018-02-01 10:51:37.722+03	2018-02-01 10:51:38.45+03
149	2	18	{own}	2018-02-01 12:56:18.826+03	2018-02-01 12:56:18.905+03
150	2	19	{own}	2018-02-01 12:56:21.009+03	2018-02-01 12:56:21.077+03
151	8	15	{task}	2018-02-01 12:56:42.672+03	2018-02-01 12:56:42.756+03
152	8	16	{task}	2018-02-01 12:56:44.295+03	2018-02-01 12:56:44.383+03
148	8	12	{task}	2018-02-01 12:51:30.872+03	2018-02-01 12:57:12.307+03
153	8	17	{task}	2018-02-01 12:57:15.254+03	2018-02-01 12:57:15.595+03
154	8	13	{task}	2018-02-01 12:57:17.754+03	2018-02-01 12:57:17.808+03
124	3	17	{task_group}	2018-01-30 16:34:43.213+03	2018-02-01 14:45:46.88+03
155	14	18	{own}	2018-02-01 16:19:20.033+03	2018-02-01 16:19:20.114+03
156	14	19	{own}	2018-02-01 16:19:20.774+03	2018-02-01 16:19:20.817+03
125	3	15	{}	2018-01-30 16:35:02.915+03	2018-02-01 18:03:49.391+03
\.


--
-- Name: role_right_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('role_right_id_seq', 156, true);


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY "user" (id, "firstName", "middleName", "secondName", email, "phoneNumber", password, "createTime", "updateTime", status) FROM stdin;
1	Владислав	Геннадьевич	Крейнин	vgkreynin@sberbank.ru	+7 962 984 19 25	a0b812fdaf84b03d961f401d30885145c8518f6cf3f3560472dbbb338608e2005560b60e918d31187df449fb929777f78620816e943fa50f694efa5a794d387b89d32b907c3dfd08a78ea762c4a2d49155c6685d1bcc094f7f100d3414fc403190a8e9b93739443e386f86c1	2018-01-15 10:14:28.834	2018-01-15 10:14:28.834	active
2	Алексей	Валерьевич	Гиязов	AVGiyazov@sberbank.ru	+7 963 769 53 06	9aaf9591854c91c15ba4cba7e92a7b660c2e7ff79ac62dfd0fc1ab760b989aeaeb63b14b79fb7c1f3b3bb8f1a06abf3119703a105681a6067d63e97eac6e34f5336fd1aab08e9a70bbff2f1aa701fd7655746a7a914d8b9d964689794a170bb2d419f1e575425540bf1b55f4	2018-01-15 10:14:28.869	2018-01-15 10:14:28.869	active
3	Наталья	Ростиславовна	Игошина	NRIgoshina@sberbank.ru	+7 909 620 72 92	2d66acffc36a153703d23e2c3507d9a837481f0cf4a1b99b811875ae991ae932a119a633c9a534d88f8f910b0ddbdad9221520d2949288597cab8b988bab2e4bf365a5128b4fcf819961c0a78e4b92b23dd30d132884fcf1cbb41aa7b33dcecb636391e36522461be6231044	2018-01-15 10:14:28.884	2018-01-15 10:14:28.884	active
4	Екатерина	Михайловна	Дьяконова	EMDyakonova@sberbank.ru	+7 916 622 62 65	156ae8ff385b982914d33c926d3268ea2f4d31601ac7bb222738ffceb64642eadad38afea3f5d44679f6842ee780f4e21aca68fa0d998b8ab49826902a1d9f0680f6243618da168be75d11e32e03721517469f40ee679d53d9929978eafc0d641ccd5c1561e326d9998b0863	2018-01-15 10:14:28.9	2018-01-15 10:14:28.9	active
7	Оксана	Германовна	Бодягина	OG1Bodyagina@sberbank.ru	+7 915 092 96 21	051900896a563796d95244bbdff5dedb3446b6dc82e1fe3e504f7e5598c9c10d0506a8236debd908fb9505d690597ced6852d61a4520be984ce56b365e19bbc5b82b38739d22336df67e2cd114ef479b74a408be857d69a40d8663e3964f7910a515d94af27b1a35504fbc63	2018-01-15 10:14:28.944	2018-01-15 10:14:28.944	active
8	Елена	Сергеевна	Соболева	Soboleva.El.Se@sberbank.ru	+7 925 734 83 77	180147c6b2fb7b608a867d5d6bbc6e1eba24cbf184f316e0e4d3bb3d1c0b2c678a7377d416b8b503006e0e567ea6048f3ab08fdc2ae68af86f4326b355e5552bd07f328f216451d389c7f609072c768bb02b67ce92aa727152fb12691e99a597329ada9ebb2975499ace0258	2018-01-15 10:14:28.958	2018-01-15 10:14:28.958	active
9	Артем	Вячеславович	Максимов	avvmaksimov@gmail.com	+7 925 472 59 02	944b3db3bb5991d06faedacee081f867e787f3e3df53ce17df3f0c89852dd09d03a4bdbc3bb0d23e89e02367b13adf1edba65fa222c6acf711db2aa7fdf4b556db371ef74ac7a012ddb8f40080cc4d4c6950ac2a7997c1c3ec5fada8b8b4c70007b2b2f2553b4b80a0509e34	2018-01-15 10:14:28.978	2018-01-15 10:14:28.978	active
10	Денис	Андреевич	Кожаев	Kozhaev.De.An@sberbank.ru	+7 903 260 14 14	a1ab63f1f3d745920cd88ee7f0e7d9ddc4bb7db719b29a5d153f59634ef33fdaf6138e2b2b907dc9aed8dd8cb42f8df8e8e6dea2636ca916f59725ff104f8fe3dc9fb89bad6c7c0efb65327722affd6c61302756f59d22696ddf8c5c6343482825fe5ddc8b5f5619ad7a6e58	2018-01-15 10:14:28.995	2018-01-15 10:14:28.995	active
5	Станислав	Лидиевич	Клещельский	SLKleschelskiy@sberbank.ru	+7 905 743 27 27	6b63bbb83bfa5295172572ef5a8208ed37189f36e98d98f9c7c4d46224708048f69efd2e9b101f562e9bad8af272652ac4b2491d0bb9480df8d641da9f3528dd1f4e08c81648a3a8db30a446a4c34805050457616f3d8c7c260e6488c8b590b2e69f7e8ec11ae73e98c1110f	2018-01-15 10:14:28.915	2018-01-15 10:14:28.915	active
6	Виталий	Олегович	Шитов	VOShitov@sberbank.ru	+7 963 611 22 85	8a3ad5e4724e68486f1074c497af8ba2c1d49716f00856df3e880d957743bbb69ed0b2f06d76e9e7b15d4aa4c492eec96c0c555eb3a5775c0c0c9d418edf37f2b2afac6b2e235bccf2fb395793bb82b685b08a95b090bc8915489c50b73f48cac88f63402312a1b854815b84	2018-01-15 10:14:28.93	2018-01-15 10:14:28.93	active
11	Юлия	Александровна	Шабалина	YuAShabalina@sberbank.ru	+7 916 575 08 10	1eb073824b041e3f1fd957bc094b42a7099e309b41dd3ab1781ae299d9e73b016ba4f63faf674a6fe44bbdb2b4e1df9a4333182664981d772de49fe07eba9429fe8ed6a13e6541748aac5613be8a0ee6af6557bfe4d18339359dd38121c30525b1fa8448e7cce1dd2e302fcb	2018-01-15 10:14:29.01	2018-01-15 10:14:29.01	active
12	Александр	Викторович	Еграшин	Egrashin.A.V@sberbank.ru	'+7 968 041 41 11	d4a84caba1a936c24cd06ed544af724155d0288b6ddee09972236f11c9d09638c0a35e7b1746a503dd9727c7aa8d630a7fc619462580eac460de321f51106e85126cab65369e817e7bb02e5a8233740b3fd86b985e28a035e8032e01d810bbd8620e94ec4efcb203035a44ff	2018-01-15 10:14:29.025	2018-01-15 10:14:29.025	active
13	Анна	Валентиновна	Тульская	AVTulskaya@sberbank.ru	+7 965 251 24 91	face2c54d40e94428b74bfe887f7478158452be67a24f48612683b7399db11c29485dddf439e48a17970b927bc8d5897f39d062a97fb318cc6f92d3f56ac9f690e89a66fbf954ed9ff4b2b7eb8d017d8ab4ce5381865b7b5049007609cbb560798640efeca4e7b5609fcee3c	2018-01-15 10:14:29.038	2018-01-15 10:14:29.038	active
14	Admin	\N	Admin	admin	+0000000000	2fa550cab1c35710afedecb44269d25649b2c7e6a50e72759b6ea1be138ab067bb6bde4ba4efefde2023162047b0f8f854985f95b97e031365ea8b584bee419dc11758c34323a11da62b8263d416de681a528a26b141457a21d3e01b3e3271ec12302292cf7e5437750f7b81	2018-01-15 11:40:18.651	2018-01-15 11:40:18.651	active
\.


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('user_id_seq', 14, true);


--
-- Data for Name: user_role; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY user_role (id, "userId", "roleId", "createTime", "updateTime") FROM stdin;
8	2	3	2017-12-13 17:57:33.219+03	2017-12-13 17:57:33.219+03
9	3	4	2017-12-13 17:57:33.219+03	2017-12-13 17:57:33.219+03
10	4	8	2017-12-13 17:57:33.22+03	2017-12-13 17:57:33.22+03
11	5	8	2017-12-13 17:57:33.221+03	2017-12-13 17:57:33.221+03
12	6	8	2017-12-13 17:57:33.221+03	2017-12-13 17:57:33.221+03
13	7	8	2017-12-13 17:57:33.221+03	2017-12-13 17:57:33.221+03
14	9	9	2017-12-13 17:57:33.222+03	2017-12-13 17:57:33.222+03
15	10	9	2017-12-13 17:57:33.222+03	2017-12-13 17:57:33.222+03
18	29	15	2018-01-30 09:29:31.974+03	2018-01-30 09:29:31.974+03
19	8	5	2018-01-30 10:55:59.773+03	2018-01-30 10:55:59.773+03
20	19	19	2018-01-30 11:01:49.8+03	2018-01-30 11:01:49.8+03
21	17	18	2018-01-30 11:01:49.806+03	2018-01-30 11:01:49.806+03
22	18	19	2018-01-30 11:01:49.81+03	2018-01-30 11:01:49.81+03
23	11	17	2018-01-30 11:03:12.832+03	2018-01-30 11:03:12.832+03
24	13	16	2018-01-30 11:03:12.837+03	2018-01-30 11:03:12.837+03
25	14	16	2018-01-30 11:03:12.838+03	2018-01-30 11:03:12.838+03
26	15	16	2018-01-30 11:03:12.846+03	2018-01-30 11:03:12.846+03
27	12	16	2018-01-30 11:03:12.851+03	2018-01-30 11:03:12.851+03
28	16	16	2018-01-30 11:03:12.863+03	2018-01-30 11:03:12.863+03
29	26	14	2018-01-30 11:09:00.422+03	2018-01-30 11:09:00.422+03
30	23	2	2018-01-30 11:09:00.434+03	2018-01-30 11:09:00.434+03
31	21	2	2018-01-30 11:11:14.465+03	2018-01-30 11:11:14.465+03
32	20	2	2018-01-30 11:12:20.315+03	2018-01-30 11:12:20.315+03
33	24	2	2018-01-30 11:12:20.324+03	2018-01-30 11:12:20.324+03
34	25	2	2018-01-30 11:12:20.33+03	2018-01-30 11:12:20.33+03
35	22	2	2018-01-30 11:12:20.332+03	2018-01-30 11:12:20.332+03
36	28	20	2018-01-30 13:48:27.276+03	2018-01-30 13:48:27.276+03
\.


--
-- Name: user_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('user_role_id_seq', 37, true);


--
-- Data for Name: user_role_subordination; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY user_role_subordination (id, "parentUserRoleId", "subUserRoleId", "subordinationPath", "createTime", "updateTime") FROM stdin;
7	8	9	{8}	2017-12-13 17:57:33.363+03	2017-12-13 17:57:33.363+03
8	8	14	{8}	2017-12-13 17:57:33.363+03	2017-12-13 17:57:33.363+03
9	9	10	{8,9}	2017-12-13 17:57:33.364+03	2017-12-13 17:57:33.364+03
10	9	11	{8,9}	2017-12-13 17:57:33.364+03	2017-12-13 17:57:33.364+03
11	9	12	{8,9}	2017-12-13 17:57:33.364+03	2017-12-13 17:57:33.364+03
12	9	13	{8,9}	2017-12-13 17:57:33.364+03	2017-12-13 17:57:33.364+03
17	8	19	{8}	2018-01-30 10:56:33.882+03	2018-01-30 10:56:33.882+03
15	19	14	{8,19}	2018-01-30 10:56:13.641+03	2018-01-30 10:56:33.949+03
13	14	15	{8,19,8,14}	2017-12-13 17:57:33.364+03	2018-01-30 10:56:33.95+03
16	19	15	{8,19}	2018-01-30 10:56:16.632+03	2018-01-30 10:56:33.95+03
25	8	23	{8}	2018-01-30 11:05:12.567+03	2018-01-30 11:05:12.567+03
20	23	24	{8,23}	2018-01-30 11:03:24.618+03	2018-01-30 11:05:12.633+03
21	23	25	{8,23}	2018-01-30 11:03:27.471+03	2018-01-30 11:05:12.633+03
22	23	26	{8,23}	2018-01-30 11:03:34.47+03	2018-01-30 11:05:12.633+03
23	23	27	{8,23}	2018-01-30 11:03:37.51+03	2018-01-30 11:05:12.633+03
24	23	28	{8,23}	2018-01-30 11:03:39.697+03	2018-01-30 11:05:12.633+03
26	8	27	{8}	2018-01-30 11:05:18.515+03	2018-01-30 11:05:18.515+03
27	8	24	{8}	2018-01-30 11:05:23.456+03	2018-01-30 11:05:23.456+03
28	8	26	{8}	2018-01-30 11:05:28.791+03	2018-01-30 11:05:28.791+03
29	8	25	{8}	2018-01-30 11:05:32.777+03	2018-01-30 11:05:32.777+03
30	8	28	{8}	2018-01-30 11:05:37.561+03	2018-01-30 11:05:37.561+03
31	8	22	{8}	2018-01-30 11:05:43.467+03	2018-01-30 11:05:43.467+03
32	8	21	{8}	2018-01-30 11:05:48.137+03	2018-01-30 11:05:48.137+03
18	21	22	{8,21}	2018-01-30 11:02:07.736+03	2018-01-30 11:05:48.197+03
19	21	20	{8,21}	2018-01-30 11:02:11.156+03	2018-01-30 11:05:48.197+03
33	8	20	{8}	2018-01-30 11:05:52.995+03	2018-01-30 11:05:52.995+03
34	18	29	{18}	2018-01-30 11:09:36.026+03	2018-01-30 11:09:36.026+03
35	29	30	{18,29}	2018-01-30 11:09:49.177+03	2018-01-30 11:09:49.177+03
36	29	31	{18,29}	2018-01-30 11:12:35.446+03	2018-01-30 11:12:35.446+03
37	29	32	{18,29}	2018-01-30 11:12:38.365+03	2018-01-30 11:12:38.365+03
38	29	33	{18,29}	2018-01-30 11:12:40.629+03	2018-01-30 11:12:40.629+03
39	29	34	{18,29}	2018-01-30 11:12:42.456+03	2018-01-30 11:12:42.456+03
40	29	35	{18,29}	2018-01-30 11:12:45.005+03	2018-01-30 11:12:45.005+03
\.


--
-- Name: user_role_subordination_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('user_role_subordination_id_seq', 41, true);


--
-- Name: group_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY "group"
    ADD CONSTRAINT group_pkey PRIMARY KEY (id);


--
-- Name: migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY ("timestamp");


--
-- Name: parentGroupId_name; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY "group"
    ADD CONSTRAINT "parentGroupId_name" UNIQUE ("parentGroupId", name);


--
-- Name: role_name_groupId_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY role
    ADD CONSTRAINT "role_name_groupId_key" UNIQUE (name, "groupId");


--
-- Name: role_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- Name: role_right_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY role_right
    ADD CONSTRAINT role_right_pkey PRIMARY KEY (id);


--
-- Name: role_right_roleId_rightId_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY role_right
    ADD CONSTRAINT "role_right_roleId_rightId_key" UNIQUE ("roleId", "rightId");


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
-- Name: user_role_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id);


--
-- Name: user_role_subordination_parentUserRoleId_subUserRoleId_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY user_role_subordination
    ADD CONSTRAINT "user_role_subordination_parentUserRoleId_subUserRoleId_key" UNIQUE ("parentUserRoleId", "subUserRoleId");


--
-- Name: user_role_subordination_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY user_role_subordination
    ADD CONSTRAINT user_role_subordination_pkey PRIMARY KEY (id);


--
-- Name: user_role_userId_roleId_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT "user_role_userId_roleId_key" UNIQUE ("userId", "roleId");


--
-- Name: group_parentGroupId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY "group"
    ADD CONSTRAINT "group_parentGroupId_fkey" FOREIGN KEY ("parentGroupId") REFERENCES "group"(id);


--
-- Name: role_groupId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY role
    ADD CONSTRAINT "role_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES "group"(id);


--
-- Name: role_right_roleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY role_right
    ADD CONSTRAINT "role_right_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES role(id);


--
-- Name: user_role_roleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT "user_role_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES role(id);


--
-- Name: user_role_subordination_parentUserRoleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY user_role_subordination
    ADD CONSTRAINT "user_role_subordination_parentUserRoleId_fkey" FOREIGN KEY ("parentUserRoleId") REFERENCES user_role(id);


--
-- Name: user_role_subordination_subUserRoleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY user_role_subordination
    ADD CONSTRAINT "user_role_subordination_subUserRoleId_fkey" FOREIGN KEY ("subUserRoleId") REFERENCES user_role(id);


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

