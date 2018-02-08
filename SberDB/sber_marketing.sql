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

ALTER TABLE ONLY public.brief_tool_board DROP CONSTRAINT "tool_board_adCampaignId_fkey";
ALTER TABLE ONLY public.task_update_history DROP CONSTRAINT "task_update_history_taskId_fkey";
ALTER TABLE ONLY public.task DROP CONSTRAINT "task_stageId_fkey";
ALTER TABLE ONLY public.task_file DROP CONSTRAINT "task_file_taskId_fkey";
ALTER TABLE ONLY public.stage DROP CONSTRAINT "stage_adCampaignId_fkey";
ALTER TABLE ONLY public.product DROP CONSTRAINT "product_divisionId_fkey";
ALTER TABLE ONLY public.executor_group DROP CONSTRAINT "executor_group_executorGroupUnionId_fkey";
ALTER TABLE ONLY public.brief_tool_board_template DROP CONSTRAINT "brief_tool_board_template_categoryId_fkey";
ALTER TABLE ONLY public.brief_tool_board DROP CONSTRAINT "brief_tool_board_templateId_fkey";
ALTER TABLE ONLY public.brief_target_audience DROP CONSTRAINT "brief_target_audience_templateId_fkey";
ALTER TABLE ONLY public.brief_target_audience DROP CONSTRAINT "brief_target_audience_adCampaignId_fkey";
ALTER TABLE ONLY public.brief_sales_channel DROP CONSTRAINT "brief_sales_channel_templateId_fkey";
ALTER TABLE ONLY public.brief_sales_channel DROP CONSTRAINT "brief_sales_channel_adCampaignId_fkey";
ALTER TABLE ONLY public.brief_product_information DROP CONSTRAINT "brief_product_information_adCampaignId_fkey";
ALTER TABLE ONLY public.brief DROP CONSTRAINT "brief_geographyId_fkey";
ALTER TABLE ONLY public.brief_file DROP CONSTRAINT "brief_file_adCampaignId_fkey";
ALTER TABLE ONLY public.brief_communication_focus DROP CONSTRAINT "brief_communication_focus_templateId_fkey";
ALTER TABLE ONLY public.brief_communication_focus DROP CONSTRAINT "brief_communication_focus_adCampaignId_fkey";
ALTER TABLE ONLY public.brief_business_goal DROP CONSTRAINT "brief_business_goal_templateId_fkey";
ALTER TABLE ONLY public.brief_business_goal DROP CONSTRAINT "brief_business_goal_adCampaignId_fkey";
ALTER TABLE ONLY public.brief DROP CONSTRAINT "brief_adCampaignId_fkey";
ALTER TABLE ONLY public.approver DROP CONSTRAINT "approver_taskId_fkey";
ALTER TABLE ONLY public.approver DROP CONSTRAINT "approver_prevApproverId_fkey";
ALTER TABLE ONLY public.ad_campaign_update_history DROP CONSTRAINT "ad_campaign_update_history_adCampaignId_fkey";
ALTER TABLE ONLY public.ad_campaign DROP CONSTRAINT "ad_campaign_productId_fkey";
ALTER TABLE ONLY public.ad_campaign_executor_group_union DROP CONSTRAINT "ad_campaign_executor_group_union_executorGroupUnionId_fkey";
ALTER TABLE ONLY public.ad_campaign_executor_group_union DROP CONSTRAINT "ad_campaign_executor_group_union_adCampaignId_fkey";
ALTER TABLE ONLY public.brief_tool_board_template DROP CONSTRAINT tool_board_template_pkey;
ALTER TABLE ONLY public.brief_tool_board_template DROP CONSTRAINT "tool_board_template_categoryId_name_key";
ALTER TABLE ONLY public.brief_tool_board DROP CONSTRAINT tool_board_pkey;
ALTER TABLE ONLY public.brief_tool_board_category DROP CONSTRAINT tool_board_category_pkey;
ALTER TABLE ONLY public.brief_tool_board_category DROP CONSTRAINT tool_board_category_name_key;
ALTER TABLE ONLY public.brief_tool_board DROP CONSTRAINT "tool_board_adCampaignId_templateId_key";
ALTER TABLE ONLY public.task_update_history DROP CONSTRAINT task_update_history_pkey;
ALTER TABLE ONLY public.task DROP CONSTRAINT task_pkey;
ALTER TABLE ONLY public.task_file DROP CONSTRAINT task_file_pkey;
ALTER TABLE ONLY public.brief_target_audience DROP CONSTRAINT target_audience_pkey;
ALTER TABLE ONLY public.brief_target_audience DROP CONSTRAINT "target_audience_adCampaignId_templateId_key";
ALTER TABLE ONLY public.stage DROP CONSTRAINT stage_pkey;
ALTER TABLE ONLY public.stage DROP CONSTRAINT "stage_adCampaignId_type_key";
ALTER TABLE ONLY public.brief_segment_template DROP CONSTRAINT segment_template_pkey;
ALTER TABLE ONLY public.brief_segment_template DROP CONSTRAINT segment_template_name_key;
ALTER TABLE ONLY public.brief_sales_channel_template DROP CONSTRAINT sales_channel_template_pkey;
ALTER TABLE ONLY public.brief_sales_channel_template DROP CONSTRAINT sales_channel_template_name_key;
ALTER TABLE ONLY public.brief_sales_channel DROP CONSTRAINT sales_channel_pkey;
ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
ALTER TABLE ONLY public.brief_product_information DROP CONSTRAINT product_information_pkey;
ALTER TABLE ONLY public.product DROP CONSTRAINT "product_divisionId_name_key";
ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
ALTER TABLE ONLY public.brief_geography_template DROP CONSTRAINT geography_template_pkey;
ALTER TABLE ONLY public.brief_geography_template DROP CONSTRAINT geography_template_name_key;
ALTER TABLE ONLY public.executor_group_union DROP CONSTRAINT executor_group_union_pkey;
ALTER TABLE ONLY public.executor_group_union DROP CONSTRAINT executor_group_union_name_key;
ALTER TABLE ONLY public.executor_group DROP CONSTRAINT executor_group_pkey;
ALTER TABLE ONLY public.executor_group DROP CONSTRAINT "executor_group_executorGroupUnionId_groupId_key";
ALTER TABLE ONLY public.division DROP CONSTRAINT division_pkey;
ALTER TABLE ONLY public.division DROP CONSTRAINT division_name_key;
ALTER TABLE ONLY public.date_comment_reading DROP CONSTRAINT date_comment_reading_pkey;
ALTER TABLE ONLY public.brief_communication_focus_template DROP CONSTRAINT communication_focus_template_pkey;
ALTER TABLE ONLY public.brief_communication_focus_template DROP CONSTRAINT communication_focus_template_name_key;
ALTER TABLE ONLY public.brief_communication_focus DROP CONSTRAINT communication_focus_pkey;
ALTER TABLE ONLY public.comment DROP CONSTRAINT comment_pkey;
ALTER TABLE ONLY public.brief_business_goal_template DROP CONSTRAINT business_goal_template_pkey;
ALTER TABLE ONLY public.brief_business_goal_template DROP CONSTRAINT business_goal_template_name_key;
ALTER TABLE ONLY public.brief_business_goal DROP CONSTRAINT business_goal_pkey;
ALTER TABLE ONLY public.brief_business_goal DROP CONSTRAINT "business_goal_adCampaignId_templateId_key";
ALTER TABLE ONLY public.brief DROP CONSTRAINT brief_pkey;
ALTER TABLE ONLY public.brief_file DROP CONSTRAINT brief_file_pkey;
ALTER TABLE ONLY public.approver DROP CONSTRAINT approver_pkey;
ALTER TABLE ONLY public.ad_campaign_update_history DROP CONSTRAINT ad_campaign_update_history_pkey;
ALTER TABLE ONLY public.ad_campaign DROP CONSTRAINT ad_campaign_pkey;
ALTER TABLE ONLY public.ad_campaign_executor_group_union DROP CONSTRAINT ad_campaign_executor_group_union_pkey;
ALTER TABLE ONLY public.ad_campaign_executor_group_union DROP CONSTRAINT "ad_campaign_executor_group_un_adCampaignId_executorGroupUni_key";
ALTER TABLE public.task_update_history ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.task_file ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.task ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.stage ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.executor_group_union ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.executor_group ALTER COLUMN "groupId" DROP DEFAULT;
ALTER TABLE public.executor_group ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.division ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.date_comment_reading ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.comment ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.brief_tool_board_template ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.brief_tool_board_category ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.brief_tool_board ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.brief_target_audience ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.brief_segment_template ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.brief_sales_channel_template ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.brief_sales_channel ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.brief_geography_template ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.brief_file ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.brief_communication_focus_template ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.brief_business_goal_template ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.brief_business_goal ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.approver ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.ad_campaign_update_history ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.ad_campaign_executor_group_union ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.ad_campaign ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.tool_board_template_id_seq;
DROP SEQUENCE public.tool_board_id_seq;
DROP SEQUENCE public.tool_board_category_id_seq;
DROP SEQUENCE public.task_update_history_id_seq;
DROP TABLE public.task_update_history;
DROP SEQUENCE public.task_id_seq;
DROP SEQUENCE public.task_file_id_seq;
DROP TABLE public.task_file;
DROP TABLE public.task;
DROP SEQUENCE public.target_audience_id_seq;
DROP SEQUENCE public.stage_id_seq;
DROP TABLE public.stage;
DROP SEQUENCE public.segment_template_id_seq;
DROP SEQUENCE public.sales_channel_template_id_seq;
DROP SEQUENCE public.sales_channel_id_seq;
DROP SEQUENCE public.product_id_seq;
DROP TABLE public.product;
DROP TABLE public.migrations;
DROP SEQUENCE public.geography_template_id_seq;
DROP SEQUENCE public.executor_group_union_id_seq;
DROP TABLE public.executor_group_union;
DROP SEQUENCE public.executor_group_id_seq;
DROP SEQUENCE public."executor_group_groupId_seq";
DROP TABLE public.executor_group;
DROP SEQUENCE public.division_id_seq;
DROP TABLE public.division;
DROP SEQUENCE public.date_comment_reading_id_seq;
DROP TABLE public.date_comment_reading;
DROP SEQUENCE public.communication_focus_template_id_seq;
DROP SEQUENCE public.comment_id_seq;
DROP TABLE public.comment;
DROP SEQUENCE public.business_goal_template_id_seq;
DROP SEQUENCE public.business_goal_id_seq;
DROP TABLE public.brief_tool_board_template;
DROP TABLE public.brief_tool_board_category;
DROP TABLE public.brief_tool_board;
DROP TABLE public.brief_target_audience;
DROP TABLE public.brief_segment_template;
DROP TABLE public.brief_sales_channel_template;
DROP TABLE public.brief_sales_channel;
DROP TABLE public.brief_product_information;
DROP TABLE public.brief_geography_template;
DROP SEQUENCE public.brief_file_id_seq;
DROP TABLE public.brief_file;
DROP TABLE public.brief_communication_focus_template;
DROP TABLE public.brief_communication_focus;
DROP TABLE public.brief_business_goal_template;
DROP TABLE public.brief_business_goal;
DROP TABLE public.brief;
DROP SEQUENCE public.approver_id_seq;
DROP TABLE public.approver;
DROP SEQUENCE public.ad_campaign_update_history_id_seq;
DROP TABLE public.ad_campaign_update_history;
DROP SEQUENCE public.ad_campaign_id_seq;
DROP SEQUENCE public.ad_campaign_executor_group_union_id_seq;
DROP TABLE public.ad_campaign_executor_group_union;
DROP TABLE public.ad_campaign;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: gorod
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO gorod;

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
-- Name: ad_campaign; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE ad_campaign (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "authorId" integer NOT NULL,
    "responsibleId" integer NOT NULL,
    "productId" integer,
    status character varying(255) NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE ad_campaign OWNER TO gorod;

--
-- Name: ad_campaign_executor_group_union; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE ad_campaign_executor_group_union (
    id integer NOT NULL,
    "adCampaignId" integer,
    "executorGroupUnionId" integer,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE ad_campaign_executor_group_union OWNER TO gorod;

--
-- Name: ad_campaign_executor_group_union_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE ad_campaign_executor_group_union_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ad_campaign_executor_group_union_id_seq OWNER TO gorod;

--
-- Name: ad_campaign_executor_group_union_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE ad_campaign_executor_group_union_id_seq OWNED BY ad_campaign_executor_group_union.id;


--
-- Name: ad_campaign_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE ad_campaign_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ad_campaign_id_seq OWNER TO gorod;

--
-- Name: ad_campaign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE ad_campaign_id_seq OWNED BY ad_campaign.id;


--
-- Name: ad_campaign_update_history; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE ad_campaign_update_history (
    id integer NOT NULL,
    "adCampaignId" integer,
    "userId" integer NOT NULL,
    type character varying(100) NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE ad_campaign_update_history OWNER TO gorod;

--
-- Name: ad_campaign_update_history_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE ad_campaign_update_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ad_campaign_update_history_id_seq OWNER TO gorod;

--
-- Name: ad_campaign_update_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE ad_campaign_update_history_id_seq OWNED BY ad_campaign_update_history.id;


--
-- Name: approver; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE approver (
    id integer NOT NULL,
    "taskId" integer NOT NULL,
    "prevApproverId" integer,
    "userRoleId" integer NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL,
    "isApproved" boolean
);


ALTER TABLE approver OWNER TO gorod;

--
-- Name: approver_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE approver_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE approver_id_seq OWNER TO gorod;

--
-- Name: approver_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE approver_id_seq OWNED BY approver.id;


--
-- Name: brief; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief (
    "adCampaignId" integer NOT NULL,
    status character varying(255) NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL,
    "creativeBudget" integer,
    "mediaPlanBudget" integer,
    "geographyId" integer,
    "geographyComment" text,
    "previousAdCampaigns" text,
    "requiredReporting" text
);


ALTER TABLE brief OWNER TO gorod;

--
-- Name: brief_business_goal; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_business_goal (
    id integer NOT NULL,
    "adCampaignId" integer NOT NULL,
    "templateId" integer NOT NULL,
    comment text NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE brief_business_goal OWNER TO gorod;

--
-- Name: brief_business_goal_template; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_business_goal_template (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    placeholder character varying(255),
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE brief_business_goal_template OWNER TO gorod;

--
-- Name: brief_communication_focus; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_communication_focus (
    "adCampaignId" integer NOT NULL,
    "templateId" integer NOT NULL,
    description text,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE brief_communication_focus OWNER TO gorod;

--
-- Name: brief_communication_focus_template; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_communication_focus_template (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "default" boolean NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE brief_communication_focus_template OWNER TO gorod;

--
-- Name: brief_file; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_file (
    id integer NOT NULL,
    "adCampaignId" integer NOT NULL,
    name character varying NOT NULL,
    "originName" character varying NOT NULL,
    type character varying NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL,
    category character varying
);


ALTER TABLE brief_file OWNER TO gorod;

--
-- Name: brief_file_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE brief_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE brief_file_id_seq OWNER TO gorod;

--
-- Name: brief_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE brief_file_id_seq OWNED BY brief_file.id;


--
-- Name: brief_geography_template; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_geography_template (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE brief_geography_template OWNER TO gorod;

--
-- Name: brief_product_information; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_product_information (
    "adCampaignId" integer NOT NULL,
    description text,
    usp text,
    site text,
    characteristics text,
    competitors text,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE brief_product_information OWNER TO gorod;

--
-- Name: brief_sales_channel; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_sales_channel (
    id integer NOT NULL,
    "adCampaignId" integer NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL,
    "templateId" integer NOT NULL
);


ALTER TABLE brief_sales_channel OWNER TO gorod;

--
-- Name: brief_sales_channel_template; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_sales_channel_template (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE brief_sales_channel_template OWNER TO gorod;

--
-- Name: brief_segment_template; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_segment_template (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE brief_segment_template OWNER TO gorod;

--
-- Name: brief_target_audience; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_target_audience (
    id integer NOT NULL,
    "adCampaignId" integer NOT NULL,
    "templateId" integer NOT NULL,
    insight text,
    "barriersAndMotivators" text,
    rtb text,
    "keyMessage" text,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE brief_target_audience OWNER TO gorod;

--
-- Name: brief_tool_board; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_tool_board (
    id integer NOT NULL,
    "adCampaignId" integer NOT NULL,
    "templateId" integer NOT NULL,
    comment text,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE brief_tool_board OWNER TO gorod;

--
-- Name: brief_tool_board_category; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_tool_board_category (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE brief_tool_board_category OWNER TO gorod;

--
-- Name: brief_tool_board_template; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE brief_tool_board_template (
    id integer NOT NULL,
    "categoryId" integer,
    name character varying(255) NOT NULL,
    "withComment" boolean NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE brief_tool_board_template OWNER TO gorod;

--
-- Name: business_goal_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE business_goal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE business_goal_id_seq OWNER TO gorod;

--
-- Name: business_goal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE business_goal_id_seq OWNED BY brief_business_goal.id;


--
-- Name: business_goal_template_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE business_goal_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE business_goal_template_id_seq OWNER TO gorod;

--
-- Name: business_goal_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE business_goal_template_id_seq OWNED BY brief_business_goal_template.id;


--
-- Name: comment; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE comment (
    id integer NOT NULL,
    "taskId" integer NOT NULL,
    "authorId" integer NOT NULL,
    type character varying(10) NOT NULL,
    text text,
    url character varying(255),
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE comment OWNER TO gorod;

--
-- Name: comment_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comment_id_seq OWNER TO gorod;

--
-- Name: comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE comment_id_seq OWNED BY comment.id;


--
-- Name: communication_focus_template_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE communication_focus_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE communication_focus_template_id_seq OWNER TO gorod;

--
-- Name: communication_focus_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE communication_focus_template_id_seq OWNED BY brief_communication_focus_template.id;


--
-- Name: date_comment_reading; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE date_comment_reading (
    id integer NOT NULL,
    "taskId" integer NOT NULL,
    "userId" integer NOT NULL,
    "lastReadingDate" timestamp with time zone NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE date_comment_reading OWNER TO gorod;

--
-- Name: date_comment_reading_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE date_comment_reading_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE date_comment_reading_id_seq OWNER TO gorod;

--
-- Name: date_comment_reading_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE date_comment_reading_id_seq OWNED BY date_comment_reading.id;


--
-- Name: division; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE division (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE division OWNER TO gorod;

--
-- Name: division_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE division_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE division_id_seq OWNER TO gorod;

--
-- Name: division_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE division_id_seq OWNED BY division.id;


--
-- Name: executor_group; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE executor_group (
    id integer NOT NULL,
    "executorGroupUnionId" integer,
    "groupId" integer NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE executor_group OWNER TO gorod;

--
-- Name: executor_group_groupId_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE "executor_group_groupId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "executor_group_groupId_seq" OWNER TO gorod;

--
-- Name: executor_group_groupId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE "executor_group_groupId_seq" OWNED BY executor_group."groupId";


--
-- Name: executor_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE executor_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE executor_group_id_seq OWNER TO gorod;

--
-- Name: executor_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE executor_group_id_seq OWNED BY executor_group.id;


--
-- Name: executor_group_union; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE executor_group_union (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE executor_group_union OWNER TO gorod;

--
-- Name: executor_group_union_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE executor_group_union_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE executor_group_union_id_seq OWNER TO gorod;

--
-- Name: executor_group_union_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE executor_group_union_id_seq OWNED BY executor_group_union.id;


--
-- Name: geography_template_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE geography_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE geography_template_id_seq OWNER TO gorod;

--
-- Name: geography_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE geography_template_id_seq OWNED BY brief_geography_template.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE migrations (
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE migrations OWNER TO gorod;

--
-- Name: product; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE product (
    id integer NOT NULL,
    "divisionId" integer,
    name character varying(255) NOT NULL,
    "imagePath" character varying(255),
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE product OWNER TO gorod;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_id_seq OWNER TO gorod;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE product_id_seq OWNED BY product.id;


--
-- Name: sales_channel_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE sales_channel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sales_channel_id_seq OWNER TO gorod;

--
-- Name: sales_channel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE sales_channel_id_seq OWNED BY brief_sales_channel.id;


--
-- Name: sales_channel_template_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE sales_channel_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sales_channel_template_id_seq OWNER TO gorod;

--
-- Name: sales_channel_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE sales_channel_template_id_seq OWNED BY brief_sales_channel_template.id;


--
-- Name: segment_template_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE segment_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE segment_template_id_seq OWNER TO gorod;

--
-- Name: segment_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE segment_template_id_seq OWNED BY brief_segment_template.id;


--
-- Name: stage; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE stage (
    id integer NOT NULL,
    "adCampaignId" integer,
    type character varying(255) NOT NULL,
    "beginDate" date NOT NULL,
    "endDate" date NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE stage OWNER TO gorod;

--
-- Name: stage_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE stage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stage_id_seq OWNER TO gorod;

--
-- Name: stage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE stage_id_seq OWNED BY stage.id;


--
-- Name: target_audience_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE target_audience_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE target_audience_id_seq OWNER TO gorod;

--
-- Name: target_audience_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE target_audience_id_seq OWNED BY brief_target_audience.id;


--
-- Name: task; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE task (
    id integer NOT NULL,
    "stageId" integer NOT NULL,
    status character varying(255) NOT NULL,
    title character varying(255),
    description text,
    deadline timestamp with time zone,
    budget integer,
    "authorId" integer NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL,
    "executionText" text,
    "groupExecutorId" integer,
    "userRoleExecutorId" integer
);


ALTER TABLE task OWNER TO gorod;

--
-- Name: task_file; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE task_file (
    id integer NOT NULL,
    "taskId" integer NOT NULL,
    name character varying NOT NULL,
    "originName" character varying NOT NULL,
    type character varying NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL,
    category character varying
);


ALTER TABLE task_file OWNER TO gorod;

--
-- Name: task_file_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE task_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE task_file_id_seq OWNER TO gorod;

--
-- Name: task_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE task_file_id_seq OWNED BY task_file.id;


--
-- Name: task_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE task_id_seq OWNER TO gorod;

--
-- Name: task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE task_id_seq OWNED BY task.id;


--
-- Name: task_update_history; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE task_update_history (
    id integer NOT NULL,
    "taskId" integer,
    "userId" integer NOT NULL,
    type character varying(100) NOT NULL,
    "createTime" timestamp with time zone NOT NULL,
    "updateTime" timestamp with time zone NOT NULL
);


ALTER TABLE task_update_history OWNER TO gorod;

--
-- Name: task_update_history_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE task_update_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE task_update_history_id_seq OWNER TO gorod;

--
-- Name: task_update_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE task_update_history_id_seq OWNED BY task_update_history.id;


--
-- Name: tool_board_category_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE tool_board_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tool_board_category_id_seq OWNER TO gorod;

--
-- Name: tool_board_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE tool_board_category_id_seq OWNED BY brief_tool_board_category.id;


--
-- Name: tool_board_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE tool_board_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tool_board_id_seq OWNER TO gorod;

--
-- Name: tool_board_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE tool_board_id_seq OWNED BY brief_tool_board.id;


--
-- Name: tool_board_template_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE tool_board_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tool_board_template_id_seq OWNER TO gorod;

--
-- Name: tool_board_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE tool_board_template_id_seq OWNED BY brief_tool_board_template.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY ad_campaign ALTER COLUMN id SET DEFAULT nextval('ad_campaign_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY ad_campaign_executor_group_union ALTER COLUMN id SET DEFAULT nextval('ad_campaign_executor_group_union_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY ad_campaign_update_history ALTER COLUMN id SET DEFAULT nextval('ad_campaign_update_history_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY approver ALTER COLUMN id SET DEFAULT nextval('approver_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_business_goal ALTER COLUMN id SET DEFAULT nextval('business_goal_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_business_goal_template ALTER COLUMN id SET DEFAULT nextval('business_goal_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_communication_focus_template ALTER COLUMN id SET DEFAULT nextval('communication_focus_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_file ALTER COLUMN id SET DEFAULT nextval('brief_file_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_geography_template ALTER COLUMN id SET DEFAULT nextval('geography_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_sales_channel ALTER COLUMN id SET DEFAULT nextval('sales_channel_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_sales_channel_template ALTER COLUMN id SET DEFAULT nextval('sales_channel_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_segment_template ALTER COLUMN id SET DEFAULT nextval('segment_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_target_audience ALTER COLUMN id SET DEFAULT nextval('target_audience_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_tool_board ALTER COLUMN id SET DEFAULT nextval('tool_board_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_tool_board_category ALTER COLUMN id SET DEFAULT nextval('tool_board_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_tool_board_template ALTER COLUMN id SET DEFAULT nextval('tool_board_template_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY comment ALTER COLUMN id SET DEFAULT nextval('comment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY date_comment_reading ALTER COLUMN id SET DEFAULT nextval('date_comment_reading_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY division ALTER COLUMN id SET DEFAULT nextval('division_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY executor_group ALTER COLUMN id SET DEFAULT nextval('executor_group_id_seq'::regclass);


--
-- Name: groupId; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY executor_group ALTER COLUMN "groupId" SET DEFAULT nextval('"executor_group_groupId_seq"'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY executor_group_union ALTER COLUMN id SET DEFAULT nextval('executor_group_union_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY product ALTER COLUMN id SET DEFAULT nextval('product_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY stage ALTER COLUMN id SET DEFAULT nextval('stage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY task ALTER COLUMN id SET DEFAULT nextval('task_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY task_file ALTER COLUMN id SET DEFAULT nextval('task_file_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY task_update_history ALTER COLUMN id SET DEFAULT nextval('task_update_history_id_seq'::regclass);


--
-- Data for Name: ad_campaign; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY ad_campaign (id, name, "authorId", "responsibleId", "productId", status, "createTime", "updateTime") FROM stdin;
2	test	1	1	1	active	2018-01-17 08:14:58.481+03	2018-01-17 08:14:58.481+03
3	РК1.	2	2	59	active	2018-01-17 12:52:27.929+03	2018-01-17 12:52:27.929+03
4	РК2.	2	4	9	active	2018-01-17 12:52:48.368+03	2018-01-17 12:52:48.368+03
5	РК3	2	3	41	active	2018-01-17 12:53:01.216+03	2018-01-17 12:53:01.216+03
6	РК4.	2	5	2	active	2018-01-17 12:53:19.369+03	2018-01-17 12:53:19.369+03
7	РК5.	2	6	15	active	2018-01-17 13:25:19.224+03	2018-01-17 13:25:19.224+03
8	права чтения брифа	1	10	9	active	2018-01-18 15:25:32.739+03	2018-01-18 15:25:32.739+03
9	fg	1	10	60	active	2018-01-18 15:40:32.764+03	2018-01-18 15:40:32.764+03
10	nicola	6	6	9	active	2018-01-19 08:18:48.266+03	2018-01-19 08:18:48.266+03
11	brief	6	6	60	active	2018-01-19 08:53:02.594+03	2018-01-19 08:53:02.594+03
12	Test	1	2	37	active	2018-01-24 17:29:48.239+03	2018-01-24 17:29:48.239+03
13	ФРК для проверки	1	2	9	active	2018-01-24 17:31:13.127+03	2018-01-24 17:31:13.127+03
15	ФРК #1	1	2	21	active	2018-01-30 09:49:23.815+03	2018-01-30 09:49:23.815+03
16	Тест. Список задач	18	18	59	active	2018-01-30 12:32:53.533+03	2018-01-30 12:32:53.533+03
17	РК	18	29	9	active	2018-01-30 12:41:08.781+03	2018-01-30 12:41:08.781+03
18	ААААА	18	18	9	active	2018-01-30 12:42:41.202+03	2018-01-30 12:42:41.202+03
19	ГиязРк	29	29	35	active	2018-01-30 13:26:47.189+03	2018-01-30 13:26:47.189+03
14	ФРК Супер Пупер	1	29	41	active	2018-01-29 05:35:08.978+03	2018-01-30 19:03:32.807+03
20	Новая	18	31	10	active	2018-01-31 06:28:41.677+03	2018-01-31 06:28:41.677+03
21	kreynin sovsem new RK	18	29	3	active	2018-01-31 12:32:17.849+03	2018-01-31 12:32:17.849+03
22	Новая РК	32	32	37	active	2018-02-01 06:13:43.085+03	2018-02-01 06:13:43.085+03
23	Бриф-тест	35	35	39	active	2018-02-01 07:48:15.755+03	2018-02-01 07:48:15.755+03
24	RK Check divisions	18	35	9	active	2018-02-01 07:49:19.254+03	2018-02-01 07:49:19.254+03
25	RK check divisions	18	35	10	active	2018-02-01 08:03:22.962+03	2018-02-01 08:03:22.962+03
26	Rk for divisions again	18	31	38	active	2018-02-01 08:06:58.98+03	2018-02-01 08:06:58.98+03
27	Final division check RK	18	35	26	active	2018-02-01 08:35:30.814+03	2018-02-01 08:35:30.814+03
28	TEST TEST TEST TEST	18	18	10	active	2018-02-01 11:47:59.141+03	2018-02-01 11:47:59.141+03
29	РК тульской	35	35	46	active	2018-02-01 12:40:21.201+03	2018-02-01 12:40:21.201+03
1	ФРК Стрелка	2	29	33	active	2018-01-16 07:14:47.685+03	2018-02-01 13:24:13.709+03
30	РК тульской - 2	35	35	17	active	2018-02-01 16:16:15.366+03	2018-02-01 16:16:15.366+03
31	TestBriefChange	18	18	59	active	2018-02-02 11:06:22.338+03	2018-02-02 11:06:22.338+03
32	Тревога тревога	35	35	13	active	2018-02-02 14:14:34.225+03	2018-02-02 14:14:34.225+03
\.


--
-- Data for Name: ad_campaign_executor_group_union; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY ad_campaign_executor_group_union (id, "adCampaignId", "executorGroupUnionId", "createTime", "updateTime") FROM stdin;
23	16	18	2018-01-30 12:32:53.659+03	2018-01-30 12:32:53.659+03
24	16	20	2018-01-30 12:32:53.659+03	2018-01-30 12:32:53.659+03
25	16	19	2018-01-30 12:40:32.922+03	2018-01-30 12:40:32.922+03
26	17	18	2018-01-30 12:41:08.89+03	2018-01-30 12:41:08.89+03
27	17	19	2018-01-30 12:41:08.89+03	2018-01-30 12:41:08.89+03
28	17	20	2018-01-30 12:41:08.89+03	2018-01-30 12:41:08.89+03
29	18	18	2018-01-30 12:42:41.309+03	2018-01-30 12:42:41.309+03
30	18	20	2018-01-30 12:42:41.31+03	2018-01-30 12:42:41.31+03
31	18	19	2018-01-30 12:53:28.785+03	2018-01-30 12:53:28.785+03
32	19	18	2018-01-30 13:26:47.303+03	2018-01-30 13:26:47.303+03
33	19	20	2018-01-30 13:26:47.303+03	2018-01-30 13:26:47.303+03
34	14	18	2018-01-30 13:37:33.161+03	2018-01-30 13:37:33.161+03
35	14	19	2018-01-30 13:37:33.161+03	2018-01-30 13:37:33.161+03
36	14	20	2018-01-30 13:37:33.161+03	2018-01-30 13:37:33.161+03
37	20	18	2018-01-31 06:28:41.774+03	2018-01-31 06:28:41.774+03
38	20	19	2018-01-31 06:28:41.775+03	2018-01-31 06:28:41.775+03
39	21	18	2018-01-31 12:32:17.937+03	2018-01-31 12:32:17.937+03
40	21	19	2018-01-31 12:32:17.937+03	2018-01-31 12:32:17.937+03
41	1	18	2018-01-31 12:51:20.605+03	2018-01-31 12:51:20.605+03
42	15	18	2018-01-31 15:12:59.807+03	2018-01-31 15:12:59.807+03
43	22	18	2018-02-01 06:13:43.223+03	2018-02-01 06:13:43.223+03
44	22	19	2018-02-01 06:13:43.223+03	2018-02-01 06:13:43.223+03
45	22	20	2018-02-01 06:13:43.223+03	2018-02-01 06:13:43.223+03
46	23	18	2018-02-01 07:48:15.869+03	2018-02-01 07:48:15.869+03
47	23	20	2018-02-01 07:48:15.87+03	2018-02-01 07:48:15.87+03
48	24	18	2018-02-01 07:49:19.401+03	2018-02-01 07:49:19.401+03
49	23	19	2018-02-01 07:53:04.463+03	2018-02-01 07:53:04.463+03
50	25	18	2018-02-01 08:03:23.072+03	2018-02-01 08:03:23.072+03
51	26	19	2018-02-01 08:06:59.105+03	2018-02-01 08:06:59.105+03
52	27	19	2018-02-01 08:35:30.93+03	2018-02-01 08:35:30.93+03
53	28	18	2018-02-01 11:47:59.253+03	2018-02-01 11:47:59.253+03
55	28	20	2018-02-01 11:47:59.253+03	2018-02-01 11:47:59.253+03
56	29	19	2018-02-01 12:40:21.322+03	2018-02-01 12:40:21.322+03
58	28	19	2018-02-01 15:03:14.826+03	2018-02-01 15:03:14.826+03
60	30	19	2018-02-01 16:16:15.452+03	2018-02-01 16:16:15.452+03
61	31	18	2018-02-02 11:06:22.454+03	2018-02-02 11:06:22.454+03
62	31	19	2018-02-02 11:06:22.454+03	2018-02-02 11:06:22.454+03
63	32	19	2018-02-02 14:14:34.306+03	2018-02-02 14:14:34.306+03
\.


--
-- Name: ad_campaign_executor_group_union_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('ad_campaign_executor_group_union_id_seq', 63, true);


--
-- Name: ad_campaign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('ad_campaign_id_seq', 32, true);


--
-- Data for Name: ad_campaign_update_history; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY ad_campaign_update_history (id, "adCampaignId", "userId", type, "createTime", "updateTime") FROM stdin;
1	1	2	AC_STAGE_DATE_CHANGE	2018-01-16 07:16:36.736+03	2018-01-16 07:16:36.736+03
2	1	2	AC_ATTRIBUTES_CHANGE	2018-01-16 07:16:36.758+03	2018-01-16 07:16:36.758+03
3	1	2	AC_STAGE_DATE_CHANGE	2018-01-16 07:16:41.17+03	2018-01-16 07:16:41.17+03
4	1	2	AC_ATTRIBUTES_CHANGE	2018-01-16 07:16:41.186+03	2018-01-16 07:16:41.186+03
5	1	2	AC_STAGE_DATE_CHANGE	2018-01-17 08:26:30.384+03	2018-01-17 08:26:30.384+03
6	1	2	AC_ATTRIBUTES_CHANGE	2018-01-17 08:26:30.46+03	2018-01-17 08:26:30.46+03
7	1	2	AC_STAGE_DATE_CHANGE	2018-01-17 08:27:11.416+03	2018-01-17 08:27:11.416+03
8	1	2	AC_ATTRIBUTES_CHANGE	2018-01-17 08:27:11.512+03	2018-01-17 08:27:11.512+03
9	1	2	AC_STAGE_DATE_CHANGE	2018-01-18 10:47:19.676+03	2018-01-18 10:47:19.676+03
10	1	2	AC_ATTRIBUTES_CHANGE	2018-01-18 10:47:19.697+03	2018-01-18 10:47:19.697+03
11	10	6	AC_EXECUTOR_GROUP_CHANGE	2018-01-19 08:52:03.972+03	2018-01-19 08:52:03.972+03
12	14	1	AC_STAGE_DATE_CHANGE	2018-01-30 09:58:57.621+03	2018-01-30 09:58:57.621+03
13	14	1	AC_ATTRIBUTES_CHANGE	2018-01-30 09:58:57.711+03	2018-01-30 09:58:57.711+03
14	16	18	AC_ATTRIBUTES_CHANGE	2018-01-30 12:40:32.91+03	2018-01-30 12:40:32.91+03
15	16	18	AC_STAGE_DATE_CHANGE	2018-01-30 12:40:32.885+03	2018-01-30 12:40:32.885+03
16	18	18	AC_STAGE_DATE_CHANGE	2018-01-30 12:53:28.744+03	2018-01-30 12:53:28.744+03
17	18	18	AC_ATTRIBUTES_CHANGE	2018-01-30 12:53:28.774+03	2018-01-30 12:53:28.774+03
18	1	18	AC_STAGE_DATE_CHANGE	2018-01-30 13:33:12.43+03	2018-01-30 13:33:12.43+03
19	1	18	AC_ATTRIBUTES_CHANGE	2018-01-30 13:33:12.522+03	2018-01-30 13:33:12.522+03
20	14	18	AC_STAGE_DATE_CHANGE	2018-01-30 13:37:33.138+03	2018-01-30 13:37:33.138+03
21	14	18	AC_ATTRIBUTES_CHANGE	2018-01-30 13:37:33.17+03	2018-01-30 13:37:33.17+03
22	14	18	AC_STAGE_DATE_CHANGE	2018-01-30 19:03:32.775+03	2018-01-30 19:03:32.775+03
23	14	18	AC_ATTRIBUTES_CHANGE	2018-01-30 19:03:32.877+03	2018-01-30 19:03:32.877+03
24	1	18	AC_STAGE_DATE_CHANGE	2018-01-31 12:51:20.59+03	2018-01-31 12:51:20.59+03
25	1	18	AC_ATTRIBUTES_CHANGE	2018-01-31 12:51:20.61+03	2018-01-31 12:51:20.61+03
26	15	18	AC_STAGE_DATE_CHANGE	2018-01-31 15:12:59.795+03	2018-01-31 15:12:59.795+03
27	15	18	AC_ATTRIBUTES_CHANGE	2018-01-31 15:12:59.812+03	2018-01-31 15:12:59.812+03
28	23	18	AC_STAGE_DATE_CHANGE	2018-02-01 07:53:04.423+03	2018-02-01 07:53:04.423+03
29	23	18	AC_ATTRIBUTES_CHANGE	2018-02-01 07:53:04.45+03	2018-02-01 07:53:04.45+03
30	1	18	AC_STAGE_DATE_CHANGE	2018-02-01 13:24:13.666+03	2018-02-01 13:24:13.666+03
31	1	18	AC_ATTRIBUTES_CHANGE	2018-02-01 13:24:13.776+03	2018-02-01 13:24:13.776+03
32	28	18	AC_ATTRIBUTES_CHANGE	2018-02-01 13:28:42.578+03	2018-02-01 13:28:42.578+03
33	28	18	AC_STAGE_DATE_CHANGE	2018-02-01 13:28:42.555+03	2018-02-01 13:28:42.555+03
34	28	18	AC_EXECUTOR_GROUP_CHANGE	2018-02-01 13:31:38.501+03	2018-02-01 13:31:38.501+03
35	28	18	AC_STAGE_DATE_CHANGE	2018-02-01 13:31:38.589+03	2018-02-01 13:31:38.589+03
36	28	18	AC_ATTRIBUTES_CHANGE	2018-02-01 13:31:38.609+03	2018-02-01 13:31:38.609+03
37	28	9	AC_EXECUTOR_GROUP_CHANGE	2018-02-01 15:02:44.3+03	2018-02-01 15:02:44.3+03
38	28	18	AC_STAGE_DATE_CHANGE	2018-02-01 15:03:14.798+03	2018-02-01 15:03:14.798+03
39	28	18	AC_ATTRIBUTES_CHANGE	2018-02-01 15:03:14.821+03	2018-02-01 15:03:14.821+03
40	1	18	AC_STAGE_DATE_CHANGE	2018-02-01 15:03:45.557+03	2018-02-01 15:03:45.557+03
41	1	18	AC_ATTRIBUTES_CHANGE	2018-02-01 15:03:45.577+03	2018-02-01 15:03:45.577+03
42	1	18	AC_EXECUTOR_GROUP_CHANGE	2018-02-01 15:07:22.503+03	2018-02-01 15:07:22.503+03
43	1	18	AC_STAGE_DATE_CHANGE	2018-02-01 15:07:22.621+03	2018-02-01 15:07:22.621+03
44	1	18	AC_ATTRIBUTES_CHANGE	2018-02-01 15:07:22.639+03	2018-02-01 15:07:22.639+03
45	18	18	AC_ATTRIBUTES_CHANGE	2018-02-01 16:15:16.881+03	2018-02-01 16:15:16.881+03
46	18	18	AC_STAGE_DATE_CHANGE	2018-02-01 16:15:16.847+03	2018-02-01 16:15:16.847+03
\.


--
-- Name: ad_campaign_update_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('ad_campaign_update_history_id_seq', 46, true);


--
-- Data for Name: approver; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY approver (id, "taskId", "prevApproverId", "userRoleId", "createTime", "updateTime", "isApproved") FROM stdin;
132	132	\N	35	2018-02-02 14:25:03.297+03	2018-02-02 14:25:03.297+03	\N
133	132	132	9	2018-02-02 14:27:06.873+03	2018-02-02 14:27:06.873+03	\N
77	81	\N	18	2018-01-31 06:27:47.809+03	2018-01-31 06:27:47.809+03	\N
107	107	\N	32	2018-02-01 06:14:05.655+03	2018-02-01 06:14:05.655+03	\N
79	83	\N	18	2018-01-31 06:29:37.08+03	2018-01-31 08:03:30.475+03	t
109	108	\N	18	2018-02-01 07:20:03.271+03	2018-02-01 07:20:03.271+03	\N
83	86	\N	18	2018-01-31 08:07:50.764+03	2018-01-31 08:07:50.764+03	\N
85	87	\N	18	2018-01-31 08:17:43.059+03	2018-01-31 08:17:43.059+03	\N
86	87	85	9	2018-01-31 08:18:38.532+03	2018-01-31 08:18:38.532+03	\N
111	110	\N	18	2018-02-01 07:53:32.332+03	2018-02-01 07:53:32.332+03	\N
108	107	107	8	2018-02-01 06:15:27.088+03	2018-02-01 08:52:12.324+03	t
112	111	\N	18	2018-02-01 09:00:16.213+03	2018-02-01 09:00:16.213+03	\N
89	89	\N	18	2018-01-31 08:44:43.542+03	2018-01-31 08:44:43.542+03	\N
91	91	\N	18	2018-01-31 09:42:05.942+03	2018-01-31 09:42:05.942+03	\N
92	92	\N	18	2018-01-31 11:02:47.411+03	2018-01-31 11:02:47.411+03	\N
93	93	\N	18	2018-01-31 11:22:40.992+03	2018-01-31 11:22:40.992+03	\N
94	94	\N	18	2018-01-31 11:25:00.051+03	2018-01-31 11:25:00.051+03	\N
95	95	\N	18	2018-01-31 11:27:00.068+03	2018-01-31 11:27:00.068+03	\N
96	96	\N	18	2018-01-31 11:28:40.697+03	2018-01-31 11:28:40.697+03	\N
97	97	\N	18	2018-01-31 11:33:20.277+03	2018-01-31 11:33:20.277+03	\N
113	112	\N	18	2018-02-01 09:01:44.877+03	2018-02-01 09:01:44.877+03	\N
87	88	\N	18	2018-01-31 08:20:20.182+03	2018-01-31 08:25:39.694+03	\N
98	98	\N	18	2018-01-31 13:58:25.491+03	2018-01-31 13:58:25.491+03	\N
99	99	\N	18	2018-01-31 14:01:41.579+03	2018-01-31 14:01:41.579+03	\N
101	101	\N	18	2018-01-31 15:41:27.59+03	2018-01-31 15:41:27.59+03	\N
102	102	\N	18	2018-01-31 16:07:35.284+03	2018-01-31 16:07:35.284+03	\N
103	103	\N	18	2018-01-31 16:19:34.73+03	2018-01-31 16:19:34.73+03	\N
104	104	\N	18	2018-01-31 16:20:15.132+03	2018-01-31 16:20:15.132+03	\N
105	105	\N	18	2018-01-31 16:20:31.212+03	2018-01-31 16:20:31.212+03	\N
106	106	\N	18	2018-01-31 17:18:21.127+03	2018-01-31 17:18:21.127+03	\N
100	100	\N	18	2018-01-31 15:14:01.96+03	2018-01-31 15:14:01.96+03	\N
126	126	\N	18	2018-02-01 15:26:01.252+03	2018-02-01 15:26:01.252+03	\N
114	113	\N	18	2018-02-01 09:02:18.896+03	2018-02-01 09:02:18.896+03	\N
115	114	\N	18	2018-02-01 09:08:20.744+03	2018-02-01 09:13:34.994+03	t
127	127	\N	18	2018-02-01 15:27:00.526+03	2018-02-01 15:27:00.526+03	\N
117	116	\N	18	2018-02-01 11:40:55.92+03	2018-02-01 11:40:55.92+03	\N
118	117	\N	18	2018-02-01 11:48:23.307+03	2018-02-01 11:48:23.307+03	\N
119	118	\N	18	2018-02-01 12:09:12.771+03	2018-02-01 12:09:12.771+03	\N
120	119	\N	35	2018-02-01 12:41:32.067+03	2018-02-01 12:41:32.067+03	\N
121	120	\N	18	2018-02-01 13:09:28.982+03	2018-02-01 13:09:28.982+03	\N
122	122	\N	18	2018-02-01 13:16:40.386+03	2018-02-01 13:16:40.386+03	\N
123	123	\N	18	2018-02-01 13:34:55.693+03	2018-02-01 13:34:55.693+03	\N
124	124	\N	18	2018-02-01 13:35:15.781+03	2018-02-01 13:35:15.781+03	\N
128	128	\N	18	2018-02-01 15:27:25.329+03	2018-02-01 15:27:25.329+03	\N
125	125	\N	18	2018-02-01 14:35:47.309+03	2018-02-01 14:35:47.309+03	\N
130	130	\N	35	2018-02-01 16:43:06.126+03	2018-02-01 16:43:06.126+03	\N
\.


--
-- Name: approver_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('approver_id_seq', 133, true);


--
-- Data for Name: brief; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief ("adCampaignId", status, "createTime", "updateTime", "creativeBudget", "mediaPlanBudget", "geographyId", "geographyComment", "previousAdCampaigns", "requiredReporting") FROM stdin;
1	ready	2018-01-16 07:38:10.696+03	2018-02-02 14:31:52.311+03	1596	1555444	2	Барьеры:\n•\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем.\n•\tПокупка квартиры – очень затратно. У меня нет денег.\n•\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег.\n•\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.\n\nМотиваторы:\n•\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома. \n•\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья. \n•\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.	Барьеры:\n•\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем.\n•\tПокупка квартиры – очень затратно. У меня нет денег.\n•\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег.\n•\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.\n\nМотиваторы:\n•\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома. \n•\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья. \n•\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.	Барьеры:\n•\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем.\n•\tПокупка квартиры – очень затратно. У меня нет денег.\n•\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег.\n•\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.\n\nМотиваторы:\n•\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома. \n•\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья. \n•\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.
14	draft	2018-01-29 05:35:09.043+03	2018-01-29 05:35:09.043+03	\N	\N	\N	\N	\N	\N
15	draft	2018-01-30 09:49:23.862+03	2018-01-30 09:49:23.862+03	\N	\N	\N	\N	\N	\N
16	draft	2018-01-30 12:32:53.588+03	2018-01-30 12:32:53.588+03	\N	\N	\N	\N	\N	\N
17	draft	2018-01-30 12:41:08.827+03	2018-01-30 12:41:08.827+03	\N	\N	\N	\N	\N	\N
18	draft	2018-01-30 12:42:41.258+03	2018-01-30 12:42:41.258+03	\N	\N	\N	\N	\N	\N
20	draft	2018-01-31 06:28:41.719+03	2018-01-31 06:28:41.719+03	\N	\N	\N	\N	\N	\N
10	draft	2018-01-31 14:21:42.976+03	2018-01-31 14:21:42.976+03	\N	\N	\N	\N	\N	\N
30	draft	2018-02-01 16:16:15.401+03	2018-02-01 16:16:15.401+03	\N	\N	\N	\N	\N	\N
3	draft	2018-01-17 13:27:43.279+03	2018-01-17 13:27:43.279+03	\N	\N	\N	\N	\N	\N
2	draft	2018-01-18 12:43:53.773+03	2018-01-18 12:43:53.773+03	\N	\N	\N	\N	\N	\N
24	draft	2018-02-01 07:49:19.333+03	2018-02-01 07:49:19.333+03	\N	\N	\N	\N	\N	\N
29	draft	2018-02-01 12:40:21.265+03	2018-02-01 12:40:21.265+03	\N	\N	\N	\N	\N	\N
27	draft	2018-02-01 08:35:30.871+03	2018-02-02 14:33:03.57+03	155	155	2	fgfzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz\nfgfzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz\nfgfzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz\nfgfzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz\nfgfzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz\nfgfzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz\nfgfzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzfgfzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzfgfzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz\n	qwe	qwe
23	ready	2018-02-01 07:48:15.813+03	2018-02-01 07:56:57.871+03	24	23	3		weknvcpihj	\\poj'ioj
25	draft	2018-02-01 08:03:23.013+03	2018-02-01 08:03:23.013+03	\N	\N	\N	\N	\N	\N
26	draft	2018-02-01 08:06:59.041+03	2018-02-01 08:06:59.041+03	\N	\N	\N	\N	\N	\N
19	draft	2018-01-30 13:26:47.239+03	2018-02-05 12:40:46.447+03	\N	\N	\N		\N	\N
21	ready	2018-01-31 12:32:17.893+03	2018-02-02 11:05:51.943+03	599932323	1234557	6	asdd	-	Net
22	ready	2018-02-01 06:13:43.143+03	2018-02-02 10:34:19.209+03	155	155	4	\N	\N	qwe
9	draft	2018-01-18 15:41:44.145+03	2018-01-18 15:41:44.145+03	\N	\N	\N	\N	\N	\N
6	draft	2018-01-22 08:50:51.078+03	2018-01-22 08:50:51.078+03	\N	\N	\N	\N	\N	\N
11	draft	2018-01-22 08:52:54.534+03	2018-01-22 08:52:54.534+03	\N	\N	\N	\N	\N	\N
4	draft	2018-01-22 08:53:05.428+03	2018-01-22 08:53:05.428+03	\N	\N	\N	\N	\N	\N
7	draft	2018-01-22 08:53:08.739+03	2018-01-22 08:53:08.739+03	\N	\N	\N	\N	\N	\N
5	draft	2018-01-22 08:53:11.447+03	2018-01-22 08:53:11.447+03	\N	\N	\N	\N	\N	\N
8	ready	2018-01-18 15:25:42.907+03	2018-01-22 08:53:35.227+03	155	155	2		кеу	уке
28	ready	2018-02-01 11:47:59.197+03	2018-02-02 10:36:14.247+03	122222222	1222222	14	\N	aaaaaaa	aaaaaaaaa
12	draft	2018-01-24 17:29:48.288+03	2018-01-24 17:29:48.288+03	\N	\N	\N	\N	\N	\N
13	draft	2018-01-24 17:31:13.16+03	2018-01-24 17:31:13.16+03	\N	\N	\N	\N	\N	\N
31	ready	2018-02-02 11:06:22.389+03	2018-02-02 11:08:55.347+03	343	1323	14	Комментарий географии	Описание текст Описание текст 	Описание текст Описание текст Описание текст 
32	draft	2018-02-02 14:14:34.258+03	2018-02-02 14:14:34.258+03	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: brief_business_goal; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_business_goal (id, "adCampaignId", "templateId", comment, "createTime", "updateTime") FROM stdin;
5	8	1	кеенке	2018-01-18 15:25:57.401+03	2018-01-18 15:26:00.385+03
4	1	1	Барьеры: •\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем. •\tПокупка квартиры – очень затратно. У меня нет денег. •\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег. •\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.  Мотиваторы: •\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома.  •\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья.  •\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.	2018-01-16 14:44:01.017+03	2018-01-26 09:13:35.464+03
8	23	1	22222	2018-02-01 07:48:58.368+03	2018-02-01 07:49:01.681+03
9	21	2	50$	2018-02-01 09:38:55.712+03	2018-02-01 09:38:58.554+03
10	27	4	9000	2018-02-01 09:43:07.996+03	2018-02-01 09:43:11.353+03
14	27	7		2018-02-01 12:30:28.398+03	2018-02-01 12:30:28.398+03
17	22	2	122	2018-02-02 10:33:13.061+03	2018-02-02 10:33:15.243+03
18	28	2	22	2018-02-02 10:34:47.818+03	2018-02-02 10:34:49.822+03
20	31	2	325235	2018-02-02 11:07:42.184+03	2018-02-02 11:07:45.79+03
22	28	1		2018-02-05 10:29:56.182+03	2018-02-05 10:29:56.182+03
\.


--
-- Data for Name: brief_business_goal_template; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_business_goal_template (id, name, placeholder, "createTime", "updateTime") FROM stdin;
1	Дополнительный доход	В терминах NPV	2018-01-15 10:11:44.764+03	2018-01-15 10:11:44.764+03
2	Продажи	Укажите количество	2018-01-15 10:11:44.764+03	2018-01-15 10:11:44.764+03
3	Увеличение доли на рынке	В процентах	2018-01-15 10:11:44.764+03	2018-01-15 10:11:44.764+03
4	Рост портфеля	Укажите сумму	2018-01-15 10:11:44.764+03	2018-01-15 10:11:44.764+03
5	Рост клиентопотока	Укажите количество	2018-01-15 10:11:44.764+03	2018-01-15 10:11:44.764+03
6	Привлечение новых клиентов	Укажите количество	2018-01-15 10:11:44.764+03	2018-01-15 10:11:44.764+03
7	Вовлечение текущих клиентов	В продуктах на клиента/частоте использования	2018-01-15 10:11:44.764+03	2018-01-15 10:11:44.764+03
\.


--
-- Data for Name: brief_communication_focus; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_communication_focus ("adCampaignId", "templateId", description, "createTime", "updateTime") FROM stdin;
3	1		2018-01-17 13:27:43.353+03	2018-01-17 13:27:43.353+03
2	1		2018-01-18 12:43:53.883+03	2018-01-18 12:43:53.883+03
8	2	прпа	2018-01-18 15:25:43.009+03	2018-01-18 15:26:03.625+03
9	1		2018-01-18 15:41:44.243+03	2018-01-18 15:41:44.243+03
1	4	Барьеры:\n•\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем.\n•\tПокупка квартиры – очень затратно. У меня нет денег.\n•\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег.\n•\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.\n\nМотиваторы:\n•\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома. \n•\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья. \n•\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.	2018-01-16 07:38:10.815+03	2018-01-22 07:43:00.947+03
6	1		2018-01-22 08:50:51.18+03	2018-01-22 08:50:51.18+03
11	1		2018-01-22 08:52:54.635+03	2018-01-22 08:52:54.635+03
4	1		2018-01-22 08:53:05.506+03	2018-01-22 08:53:05.506+03
7	1		2018-01-22 08:53:08.81+03	2018-01-22 08:53:08.81+03
5	1		2018-01-22 08:53:11.521+03	2018-01-22 08:53:11.521+03
14	1		2018-01-29 11:30:03.642+03	2018-01-29 11:30:03.642+03
15	1		2018-01-30 09:49:38.573+03	2018-01-30 09:49:38.573+03
20	1		2018-01-31 10:06:16.553+03	2018-01-31 10:06:16.553+03
13	1		2018-01-31 11:37:19.825+03	2018-01-31 11:37:19.825+03
10	1		2018-01-31 14:21:43.176+03	2018-01-31 14:21:43.176+03
16	1		2018-01-31 14:22:03.587+03	2018-01-31 14:22:03.587+03
23	3	ввввввввввв	2018-02-01 07:48:20.822+03	2018-02-01 07:49:09.029+03
24	1		2018-02-01 07:49:25.245+03	2018-02-01 07:49:25.245+03
27	1		2018-02-01 08:35:43.995+03	2018-02-01 08:35:43.995+03
21	3	Da	2018-01-31 12:32:29.716+03	2018-02-01 09:39:04.206+03
22	1		2018-02-01 09:56:07.073+03	2018-02-01 09:56:07.073+03
17	1		2018-02-01 14:05:28.334+03	2018-02-01 14:05:28.334+03
28	2	formirove	2018-02-01 12:46:12.645+03	2018-02-02 10:34:56.863+03
31	2	Формирование 	2018-02-02 11:06:50.239+03	2018-02-02 11:07:56.027+03
19	1		2018-02-01 15:49:39.062+03	2018-02-05 12:41:25.578+03
\.


--
-- Data for Name: brief_communication_focus_template; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_communication_focus_template (id, name, "default", "createTime", "updateTime") FROM stdin;
1	Нет	t	2018-01-15 10:11:44.763+03	2018-01-15 10:11:44.763+03
2	Формирование потребности в товаре	f	2018-01-15 10:11:44.763+03	2018-01-15 10:11:44.763+03
3	Рост знания о продукте	f	2018-01-15 10:11:44.763+03	2018-01-15 10:11:44.763+03
4	Стимулирование использования продукта	f	2018-01-15 10:11:44.763+03	2018-01-15 10:11:44.763+03
5	Изменение поведения клиента	f	2018-01-15 10:11:44.763+03	2018-01-15 10:11:44.763+03
6	Построение/изменение отношения к продукту	f	2018-01-15 10:11:44.763+03	2018-01-15 10:11:44.763+03
7	Другое	f	2018-01-15 10:11:44.763+03	2018-01-15 10:11:44.763+03
\.


--
-- Data for Name: brief_file; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_file (id, "adCampaignId", name, "originName", type, "createTime", "updateTime", category) FROM stdin;
15	14	8cd2b6df-abc1-4e50-97af-f83610a9078b	logo	svg	2018-01-30 09:27:03.783+03	2018-01-30 09:27:03.783+03	product
16	14	b11918c6-74f7-499d-8905-46251297d6fb	logo	svg	2018-01-30 09:42:47.958+03	2018-01-30 09:42:47.958+03	targetAudience
17	1	ASD7867ASDASDS	Общие сведения	doc	2018-01-31 12:23:28.07+03	2018-01-31 12:23:28.07+03	other
27	21	23f4ba99-f3eb-4a17-83b7-d48a483d8302	logo	svg	2018-01-31 13:17:20.817+03	2018-01-31 13:17:20.817+03	product
29	21	68dc4f05-6073-4ce9-bd53-93854f6e5232	logo	svg	2018-01-31 13:17:51.005+03	2018-01-31 13:17:51.005+03	product
\.


--
-- Name: brief_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('brief_file_id_seq', 29, true);


--
-- Data for Name: brief_geography_template; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_geography_template (id, name, "createTime", "updateTime") FROM stdin;
1	Вся РФ	2018-01-15 10:11:44.786+03	2018-01-15 10:11:44.786+03
2	Москва	2018-01-15 10:11:44.786+03	2018-01-15 10:11:44.786+03
14	Байкальский банк	2018-01-15 10:11:44.786+03	2018-01-15 10:11:44.786+03
3	Волго-Вятский банк 	2018-01-15 10:11:44.786+03	2018-01-15 10:11:44.786+03
4	Дальневосточный банк 	2018-01-15 10:11:44.787+03	2018-01-15 10:11:44.787+03
5	Западно-Сибирский банк 	2018-01-15 10:11:44.787+03	2018-01-15 10:11:44.787+03
6	Поволжский банк 	2018-01-15 10:11:44.787+03	2018-01-15 10:11:44.787+03
8	Северо-Западный банк 	2018-01-15 10:11:44.788+03	2018-01-15 10:11:44.788+03
9	Сибирский банк 	2018-01-15 10:11:44.788+03	2018-01-15 10:11:44.788+03
10	Среднерусский банк 	2018-01-15 10:11:44.788+03	2018-01-15 10:11:44.788+03
11	Уральский банк 	2018-01-15 10:11:44.789+03	2018-01-15 10:11:44.789+03
12	Центрально-Чернозёмный банк 	2018-01-15 10:11:44.789+03	2018-01-15 10:11:44.789+03
13	Юго-Западный банк	2018-01-15 10:11:44.789+03	2018-01-15 10:11:44.789+03
\.


--
-- Data for Name: brief_product_information; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_product_information ("adCampaignId", description, usp, site, characteristics, competitors, "createTime", "updateTime") FROM stdin;
3	\N	\N	\N	\N	\N	2018-01-17 13:27:43.351+03	2018-01-17 13:27:43.351+03
2	\N	\N	\N	\N	\N	2018-01-18 12:43:53.881+03	2018-01-18 12:43:53.881+03
8	ен	ен		ен	ен	2018-01-18 15:25:43.017+03	2018-01-18 15:26:08.792+03
9	\N	\N	\N	\N	\N	2018-01-18 15:41:44.238+03	2018-01-18 15:41:44.238+03
6	\N	\N	\N	\N	\N	2018-01-22 08:50:51.173+03	2018-01-22 08:50:51.173+03
11	\N	\N	\N	\N	\N	2018-01-22 08:52:54.632+03	2018-01-22 08:52:54.632+03
4	\N	\N	\N	\N	\N	2018-01-22 08:53:05.502+03	2018-01-22 08:53:05.502+03
7	\N	\N	\N	\N	\N	2018-01-22 08:53:08.807+03	2018-01-22 08:53:08.807+03
5	\N	\N	\N	\N	\N	2018-01-22 08:53:11.517+03	2018-01-22 08:53:11.517+03
14	\N	\N	\N	\N	\N	2018-01-29 11:30:03.636+03	2018-01-29 11:30:03.636+03
15	\N	\N	\N	\N	\N	2018-01-30 09:49:38.569+03	2018-01-30 09:49:38.569+03
20	\N	\N	\N	\N	\N	2018-01-31 10:06:16.544+03	2018-01-31 10:06:16.544+03
13	\N	\N	\N	\N	\N	2018-01-31 11:37:19.82+03	2018-01-31 11:37:19.82+03
10	\N	\N	\N	\N	\N	2018-01-31 14:21:43.171+03	2018-01-31 14:21:43.171+03
16	\N	\N	\N	\N	\N	2018-01-31 14:22:03.581+03	2018-01-31 14:22:03.581+03
17	\N	\N	\N	\N	\N	2018-02-01 14:05:28.349+03	2018-02-01 14:05:28.349+03
24	\N	\N	\N	\N	\N	2018-02-01 07:49:25.239+03	2018-02-01 07:49:25.239+03
19	45	\N	\N	\N	\N	2018-02-01 15:49:39.053+03	2018-02-01 16:01:05.163+03
23	wekcn'iweh	wejc'oiwjevci	https://wiki.aventi.ca/pages/viewpage.action?pageId=34537827	wlefkn'o	irhv[08y	2018-02-01 07:48:20.831+03	2018-02-01 07:56:32.57+03
22	qwe	qwe	\N	qwe	qwe	2018-02-01 09:56:07.068+03	2018-02-02 10:33:25.571+03
21	Da	Da		DA	Net	2018-01-31 12:32:29.711+03	2018-02-01 09:39:12.025+03
27	qwe	qwe	\N	qwe	qwe	2018-02-01 08:35:43.991+03	2018-02-01 09:43:16.099+03
1	Барьеры:\n•\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем.\n•\tПокупка квартиры – очень затратно. У меня нет денег.\n•\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег.\n•\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.\n\nМотиваторы:\n•\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома. \n•\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья. \n•\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.	Барьеры:\n•\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем.\n•\tПокупка квартиры – очень затратно. У меня нет денег.\n•\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег.\n•\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.\n\nМотиваторы:\n•\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома. \n•\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья. \n•\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.		Барьеры:\n•\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем.\n•\tПокупка квартиры – очень затратно. У меня нет денег.\n•\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег.\n•\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.\n\nМотиваторы:\n•\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома. \n•\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья. \n•\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.	Барьеры:\n•\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем.\n•\tПокупка квартиры – очень затратно. У меня нет денег.\n•\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег.\n•\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.\n\nМотиваторы:\n•\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома. \n•\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья. \n•\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.	2018-01-16 07:38:10.826+03	2018-02-01 10:55:32.719+03
28	aa	a		a	a	2018-02-01 12:46:12.638+03	2018-02-02 10:36:06.675+03
31	Описание текст Описание текст Описание текст 	Описание текст Описание текст 	\N	Описание текст Описание текст 	Описание текст Описание текст 	2018-02-02 11:06:50.235+03	2018-02-02 11:08:18.129+03
\.


--
-- Data for Name: brief_sales_channel; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_sales_channel (id, "adCampaignId", "createTime", "updateTime", "templateId") FROM stdin;
2	8	2018-01-18 15:26:09.21+03	2018-01-18 15:26:09.21+03	1
3	8	2018-01-18 15:26:10.807+03	2018-01-18 15:26:10.807+03	10
4	1	2018-01-22 10:30:55.343+03	2018-01-22 10:30:55.343+03	10
6	23	2018-02-01 07:56:32.661+03	2018-02-01 07:56:32.661+03	2
7	21	2018-02-01 09:39:12.862+03	2018-02-01 09:39:12.862+03	4
8	21	2018-02-01 09:39:13.736+03	2018-02-01 09:39:13.736+03	11
9	27	2018-02-01 09:43:16.218+03	2018-02-01 09:43:16.218+03	8
11	22	2018-02-02 10:33:26.203+03	2018-02-02 10:33:26.203+03	11
12	28	2018-02-02 10:35:07.631+03	2018-02-02 10:35:07.631+03	1
13	31	2018-02-02 11:08:18.844+03	2018-02-02 11:08:18.844+03	2
14	31	2018-02-02 11:08:19.766+03	2018-02-02 11:08:19.766+03	6
15	31	2018-02-02 11:08:20.663+03	2018-02-02 11:08:20.663+03	7
\.


--
-- Data for Name: brief_sales_channel_template; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_sales_channel_template (id, name, "createTime", "updateTime") FROM stdin;
1	Отделения банка	2018-01-15 10:11:44.79+03	2018-01-15 10:11:44.79+03
2	Прямые продажи	2018-01-15 10:11:44.79+03	2018-01-15 10:11:44.79+03
3	Онлайн	2018-01-15 10:11:44.79+03	2018-01-15 10:11:44.79+03
4	Call-back	2018-01-15 10:11:44.79+03	2018-01-15 10:11:44.79+03
5	Прямой звонок	2018-01-15 10:11:44.79+03	2018-01-15 10:11:44.79+03
6	Е-mail	2018-01-15 10:11:44.79+03	2018-01-15 10:11:44.79+03
7	Sms	2018-01-15 10:11:44.79+03	2018-01-15 10:11:44.79+03
8	Viber	2018-01-15 10:11:44.79+03	2018-01-15 10:11:44.79+03
9	Советы в приложении	2018-01-15 10:11:44.791+03	2018-01-15 10:11:44.791+03
10	Сбербанк Первый	2018-01-15 10:11:44.79+03	2018-01-15 10:11:44.79+03
11	Сбербанк Премьер	2018-01-15 10:11:44.79+03	2018-01-15 10:11:44.79+03
\.


--
-- Data for Name: brief_segment_template; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_segment_template (id, name, "createTime", "updateTime") FROM stdin;
1	Молодежь	2018-01-15 10:11:44.785+03	2018-01-15 10:11:44.785+03
2	Родители и дети	2018-01-15 10:11:44.785+03	2018-01-15 10:11:44.785+03
3	МВС	2018-01-15 10:11:44.785+03	2018-01-15 10:11:44.785+03
4	Социальный бизнес	2018-01-15 10:11:44.785+03	2018-01-15 10:11:44.785+03
5	Семейный банк	2018-01-15 10:11:44.785+03	2018-01-15 10:11:44.785+03
6	Военные и новые сегменты	2018-01-15 10:11:44.785+03	2018-01-15 10:11:44.785+03
7	Сбербанк Первый	2018-01-15 10:11:44.785+03	2018-01-15 10:11:44.785+03
\.


--
-- Data for Name: brief_target_audience; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_target_audience (id, "adCampaignId", "templateId", insight, "barriersAndMotivators", rtb, "keyMessage", "createTime", "updateTime") FROM stdin;
8	8	2	кеук	укеук	укеу	укеук	2018-01-18 15:26:12.728+03	2018-01-18 15:26:19.979+03
5	1	1	Барьеры:\n•\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем.\n•\tПокупка квартиры – очень затратно. У меня нет денег.\n•\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег.\n•\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.\n\nМотиваторы:\n•\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома. \n•\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья. \n•\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.	Барьеры:\n•\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем.\n•\tПокупка квартиры – очень затратно. У меня нет денег.\n•\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег.\n•\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.\n\nМотиваторы:\n•\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома. \n•\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья. \n•\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.	Барьеры:\n•\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем.\n•\tПокупка квартиры – очень затратно. У меня нет денег.\n•\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег.\n•\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.\n\nМотиваторы:\n•\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома. \n•\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья. \n•\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.	Барьеры:\n•\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем.\n•\tПокупка квартиры – очень затратно. У меня нет денег.\n•\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег.\n•\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.\n\nМотиваторы:\n•\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома. \n•\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья. \n•\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.	2018-01-16 15:56:44.377+03	2018-01-22 07:41:51.47+03
9	23	4	wOejcoih	wioehc	w'iorehv	vwp'rijv	2018-02-01 07:56:35.718+03	2018-02-01 07:56:43.316+03
10	21	2	qwe	qwe	qwe	qwe	2018-02-01 09:39:16.536+03	2018-02-01 09:39:26+03
11	27	4	qwe	qwe	qwe	qwe	2018-02-01 09:43:18.257+03	2018-02-01 09:43:22.181+03
14	22	4	qwe	qwe	qwe	qwe	2018-02-02 10:33:40.509+03	2018-02-02 10:33:59.051+03
15	28	2	aaa	aaa	aaa	aaa	2018-02-02 10:35:19.597+03	2018-02-02 10:35:27.419+03
16	31	7	Описание текст Описание текст 	Описание текст Описание текст 	Описание текст Описание текст 	Описание текст Описание текст 	2018-02-02 11:08:24.332+03	2018-02-02 11:08:31.403+03
19	31	2	ad	asd	asd	ads	2018-02-02 14:19:27.512+03	2018-02-02 14:19:27.616+03
20	31	3	ad	ad	ad	ad	2018-02-02 14:28:07.66+03	2018-02-02 14:28:07.755+03
\.


--
-- Data for Name: brief_tool_board; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_tool_board (id, "adCampaignId", "templateId", comment, "createTime", "updateTime") FROM stdin;
20	3	39	\N	2018-01-17 13:27:43.657+03	2018-01-17 13:27:43.657+03
21	2	39	\N	2018-01-18 12:43:54.213+03	2018-01-18 12:43:54.213+03
22	8	39	\N	2018-01-18 15:25:43.308+03	2018-01-18 15:25:43.308+03
23	8	5	\N	2018-01-18 15:26:23.752+03	2018-01-18 15:26:23.752+03
24	8	16	\N	2018-01-18 15:26:25.015+03	2018-01-18 15:26:25.015+03
25	9	39	\N	2018-01-18 15:41:44.582+03	2018-01-18 15:41:44.582+03
26	6	39	\N	2018-01-22 08:50:51.453+03	2018-01-22 08:50:51.453+03
27	11	39	\N	2018-01-22 08:52:55.378+03	2018-01-22 08:52:55.378+03
28	4	39	\N	2018-01-22 08:53:05.784+03	2018-01-22 08:53:05.784+03
29	7	39	\N	2018-01-22 08:53:09.066+03	2018-01-22 08:53:09.066+03
30	5	39	\N	2018-01-22 08:53:11.77+03	2018-01-22 08:53:11.77+03
5	1	39	Барьеры:\n•\tПокупка квартиры это слишком сложный процесс, я никогда не разберусь самостоятельно в нем.\n•\tПокупка квартиры – очень затратно. У меня нет денег.\n•\tЯ боюсь покупать квартиру, так как очень много мошенников на рынке недвижимости, можно остаться и без квартиры и без денег.\n•\tНе понятно, по каким условиям (ставка) я получу ипотеку. То, что рекламирует банк – не соответствует фактическим условиям.\n\nМотиваторы:\n•\tНет своего дома – нет настоящей семья. Установка на то, что настоящая семья начинается со свеого дома. \n•\tТвой дом – твои правила. Возможность создать свой мир, реализовать свои представления об уюте. Плюс желание съехать от родителей (когда есть уже своя семья) или со съемного жилья. \n•\tИпотека теперь не только для богатых. Цены на жилье и ставки по ипотеке теперь доступны многим. Поэтому ипотека – это просто этап в жизни, к которому каждый подходит.	2018-01-16 09:54:18.045+03	2018-01-26 09:13:46.781+03
31	14	39	\N	2018-01-29 12:03:22.912+03	2018-01-29 12:03:22.912+03
32	15	39	\N	2018-01-30 09:49:38.881+03	2018-01-30 09:49:38.881+03
33	21	39	\N	2018-01-31 12:32:30.028+03	2018-01-31 12:32:30.028+03
34	16	39	\N	2018-01-31 14:22:04.074+03	2018-01-31 14:22:04.074+03
35	23	39	\N	2018-02-01 07:48:21.442+03	2018-02-01 07:48:21.442+03
36	24	39	\N	2018-02-01 07:49:25.605+03	2018-02-01 07:49:25.605+03
37	23	1	\N	2018-02-01 07:56:43.374+03	2018-02-01 07:56:43.374+03
40	23	16	\N	2018-02-01 07:56:50.302+03	2018-02-01 07:56:50.302+03
41	23	12	\N	2018-02-01 07:56:51.284+03	2018-02-01 07:56:51.284+03
42	20	39	\N	2018-02-01 08:30:17.106+03	2018-02-01 08:30:17.106+03
43	27	39	\N	2018-02-01 08:35:44.346+03	2018-02-01 08:35:44.346+03
44	21	13	\N	2018-02-01 09:39:26.093+03	2018-02-01 09:39:26.093+03
45	21	30	\N	2018-02-01 09:39:28.575+03	2018-02-01 09:39:28.575+03
46	21	20	\N	2018-02-01 09:39:29.456+03	2018-02-01 09:39:29.456+03
47	22	39	\N	2018-02-01 09:56:07.383+03	2018-02-01 09:56:07.383+03
48	28	39	\N	2018-02-01 12:46:13.081+03	2018-02-01 12:46:13.081+03
49	17	39	\N	2018-02-01 14:05:28.879+03	2018-02-01 14:05:28.879+03
50	19	39	\N	2018-02-01 15:49:39.351+03	2018-02-01 15:49:39.351+03
51	28	1	\N	2018-02-02 10:35:27.478+03	2018-02-02 10:35:27.478+03
52	28	10	\N	2018-02-02 10:35:29.026+03	2018-02-02 10:35:29.026+03
54	31	1	\N	2018-02-02 11:08:31.506+03	2018-02-02 11:08:31.506+03
55	31	10	\N	2018-02-02 11:08:33.351+03	2018-02-02 11:08:33.351+03
56	31	12	\N	2018-02-02 11:08:35.655+03	2018-02-02 11:08:35.655+03
57	31	6	\N	2018-02-02 11:08:36.873+03	2018-02-02 11:08:36.873+03
58	31	24	\N	2018-02-02 11:08:38.259+03	2018-02-02 11:08:38.259+03
59	31	20	\N	2018-02-02 11:08:38.887+03	2018-02-02 11:08:38.887+03
60	31	35	\N	2018-02-02 11:08:40.264+03	2018-02-02 11:08:40.264+03
61	31	30	\N	2018-02-02 11:08:41.257+03	2018-02-02 11:08:41.257+03
53	31	39	Описание текст Описание текст Описание текст 	2018-02-02 11:06:50.467+03	2018-02-02 11:08:43.974+03
\.


--
-- Data for Name: brief_tool_board_category; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_tool_board_category (id, name, "createTime", "updateTime") FROM stdin;
1	Телевидение	2018-01-15 10:11:44.599+03	2018-01-15 10:11:44.599+03
2	Интернет	2018-01-15 10:11:44.616+03	2018-01-15 10:11:44.616+03
3	Пресса	2018-01-15 10:11:44.618+03	2018-01-15 10:11:44.618+03
4	Outdoor	2018-01-15 10:11:44.618+03	2018-01-15 10:11:44.618+03
5	Радио	2018-01-15 10:11:44.619+03	2018-01-15 10:11:44.619+03
6	Indoor	2018-01-15 10:11:44.619+03	2018-01-15 10:11:44.619+03
7	BTL	2018-01-15 10:11:44.62+03	2018-01-15 10:11:44.62+03
\.


--
-- Data for Name: brief_tool_board_template; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY brief_tool_board_template (id, "categoryId", name, "withComment", "createTime", "updateTime") FROM stdin;
1	1	Национальное	f	2018-01-15 10:11:44.764+03	2018-01-15 10:11:44.764+03
2	1	Региональное	f	2018-01-15 10:11:44.765+03	2018-01-15 10:11:44.765+03
3	1	Орбитры	f	2018-01-15 10:11:44.766+03	2018-01-15 10:11:44.766+03
4	1	Кабельное	f	2018-01-15 10:11:44.767+03	2018-01-15 10:11:44.767+03
5	1	Спонсорство	f	2018-01-15 10:11:44.768+03	2018-01-15 10:11:44.768+03
6	1	Спецпроекты 360	f	2018-01-15 10:11:44.769+03	2018-01-15 10:11:44.769+03
7	1	Другое	t	2018-01-15 10:11:44.77+03	2018-01-15 10:11:44.77+03
8	2	OLV	f	2018-01-15 10:11:44.77+03	2018-01-15 10:11:44.77+03
9	2	Display	f	2018-01-15 10:11:44.771+03	2018-01-15 10:11:44.771+03
10	2	Контекст	f	2018-01-15 10:11:44.771+03	2018-01-15 10:11:44.771+03
11	2	Mobile	f	2018-01-15 10:11:44.773+03	2018-01-15 10:11:44.773+03
12	2	Programmatic	f	2018-01-15 10:11:44.774+03	2018-01-15 10:11:44.774+03
13	2	SMM	f	2018-01-15 10:11:44.774+03	2018-01-15 10:11:44.774+03
14	2	Digital спецпроекты	f	2018-01-15 10:11:44.775+03	2018-01-15 10:11:44.775+03
15	2	Лидеры мнений	f	2018-01-15 10:11:44.775+03	2018-01-15 10:11:44.775+03
16	2	Натив	f	2018-01-15 10:11:44.775+03	2018-01-15 10:11:44.775+03
17	2	Другое	t	2018-01-15 10:11:44.776+03	2018-01-15 10:11:44.776+03
18	3	Национальная	f	2018-01-15 10:11:44.776+03	2018-01-15 10:11:44.776+03
19	3	Региональная	f	2018-01-15 10:11:44.778+03	2018-01-15 10:11:44.778+03
20	3	Деловые журналы	f	2018-01-15 10:11:44.778+03	2018-01-15 10:11:44.778+03
21	3	Бортовые журналы	f	2018-01-15 10:11:44.778+03	2018-01-15 10:11:44.778+03
22	3	Другое	t	2018-01-15 10:11:44.779+03	2018-01-15 10:11:44.779+03
23	4	Digital	f	2018-01-15 10:11:44.779+03	2018-01-15 10:11:44.779+03
24	4	Статичная	f	2018-01-15 10:11:44.779+03	2018-01-15 10:11:44.779+03
25	4	Метро	f	2018-01-15 10:11:44.78+03	2018-01-15 10:11:44.78+03
26	4	Остановки	f	2018-01-15 10:11:44.78+03	2018-01-15 10:11:44.78+03
27	4	Другое	t	2018-01-15 10:11:44.78+03	2018-01-15 10:11:44.78+03
28	5	Национальное	f	2018-01-15 10:11:44.781+03	2018-01-15 10:11:44.781+03
29	5	Региональное	f	2018-01-15 10:11:44.781+03	2018-01-15 10:11:44.781+03
30	5	Digital	f	2018-01-15 10:11:44.782+03	2018-01-15 10:11:44.782+03
31	5	Спонсорство	f	2018-01-15 10:11:44.782+03	2018-01-15 10:11:44.782+03
32	5	Другое	t	2018-01-15 10:11:44.782+03	2018-01-15 10:11:44.782+03
33	6	ВУЗы	f	2018-01-15 10:11:44.783+03	2018-01-15 10:11:44.783+03
34	6	БЦ	f	2018-01-15 10:11:44.783+03	2018-01-15 10:11:44.783+03
35	6	ТЦ	f	2018-01-15 10:11:44.783+03	2018-01-15 10:11:44.783+03
36	6	Аэропорты	f	2018-01-15 10:11:44.784+03	2018-01-15 10:11:44.784+03
37	6	Фитнесс	f	2018-01-15 10:11:44.784+03	2018-01-15 10:11:44.784+03
38	6	Другое	t	2018-01-15 10:11:44.784+03	2018-01-15 10:11:44.784+03
39	7	Другое	t	2018-01-15 10:11:44.785+03	2018-01-15 10:11:44.785+03
\.


--
-- Name: business_goal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('business_goal_id_seq', 37, true);


--
-- Name: business_goal_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('business_goal_template_id_seq', 7, true);


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY comment (id, "taskId", "authorId", type, text, url, "createTime", "updateTime") FROM stdin;
1	1	1	TEXT	Все хорошо, но надо все переделать.	\N	2018-01-16 10:18:05.402+03	2018-01-16 10:18:05.402+03
2	49	2	TEXT	fs	\N	2018-01-26 09:46:59.253+03	2018-01-26 09:46:59.253+03
3	49	2	TEXT	второй комментарий	\N	2018-01-26 12:11:58.456+03	2018-01-26 12:11:58.456+03
4	49	2	TEXT	3	\N	2018-01-26 15:12:53.902+03	2018-01-26 15:12:53.902+03
5	49	2	TEXT	4	\N	2018-01-26 15:14:04.581+03	2018-01-26 15:14:04.581+03
6	49	2	TEXT	5	\N	2018-01-26 15:14:06.348+03	2018-01-26 15:14:06.348+03
7	49	2	TEXT	6	\N	2018-01-26 15:14:08.495+03	2018-01-26 15:14:08.495+03
8	49	2	TEXT	Я заебался	\N	2018-01-26 15:33:14.457+03	2018-01-26 15:33:14.457+03
9	49	2	TEXT	Вроде норм работает	\N	2018-01-26 15:33:26.61+03	2018-01-26 15:33:26.61+03
10	49	2	TEXT	Но хуй знает	\N	2018-01-26 15:33:31.503+03	2018-01-26 15:33:31.503+03
11	49	2	TEXT	вы пишите хуёвый код	\N	2018-01-26 15:33:44.467+03	2018-01-26 15:33:44.467+03
12	49	2	TEXT	Не делайте так больше	\N	2018-01-26 15:45:53.748+03	2018-01-26 15:45:53.748+03
13	49	2	TEXT	Ну ладно	\N	2018-01-26 16:10:22.031+03	2018-01-26 16:10:22.031+03
14	49	2	TEXT	Всё вроде ок	\N	2018-01-26 16:10:26.172+03	2018-01-26 16:10:26.172+03
15	49	2	TEXT	А не	\N	2018-01-26 16:10:39.491+03	2018-01-26 16:10:39.491+03
16	49	2	TEXT	Нужно написать ещё большой комментарий, в котором много слов и букв и всяких переносов и прочей хуйни. Проверить как будет вести себя поле ввода, а так же как будет выглядеть этот комментарий после отправки	\N	2018-01-26 16:11:40.84+03	2018-01-26 16:11:40.84+03
17	49	2	TEXT	Бля, ну вроде норм	\N	2018-01-26 16:11:49.668+03	2018-01-26 16:11:49.668+03
18	60	2	TEXT	Комментирую	\N	2018-01-29 11:34:24.231+03	2018-01-29 11:34:24.231+03
19	60	1	TEXT	Прифф))))	\N	2018-01-29 12:11:55.898+03	2018-01-29 12:11:55.898+03
20	60	1	TEXT	Нахерачил длинный коммент. Я люблю херачить длинные комменты, в которых несу чушь	\N	2018-01-29 12:38:39.555+03	2018-01-29 12:38:39.555+03
21	60	2	TEXT	прив как дела?	\N	2018-01-29 12:46:53.739+03	2018-01-29 12:46:53.739+03
22	60	2	TEXT	Я тоже люблю херачить длинные комменты, чем сейчас собственно и занимаюсь	\N	2018-01-29 12:47:48.341+03	2018-01-29 12:47:48.341+03
23	80	18	TEXT	654654654	\N	2018-01-30 19:35:24.655+03	2018-01-30 19:35:24.655+03
24	83	8	TEXT	Привет	\N	2018-01-31 06:33:15.081+03	2018-01-31 06:33:15.081+03
25	83	8	TEXT	Супер	\N	2018-01-31 06:33:30.772+03	2018-01-31 06:33:30.772+03
26	83	18	TEXT	Надо переверстать	\N	2018-01-31 06:34:10.421+03	2018-01-31 06:34:10.421+03
27	84	18	TEXT	привет	\N	2018-01-31 07:40:33.959+03	2018-01-31 07:40:33.959+03
28	86	8	TEXT	test	\N	2018-01-31 08:36:02.006+03	2018-01-31 08:36:02.006+03
29	88	18	TEXT	fdnjfnd	\N	2018-01-31 12:40:29.773+03	2018-01-31 12:40:29.773+03
30	88	18	TEXT	fdfd	\N	2018-01-31 12:40:31.318+03	2018-01-31 12:40:31.318+03
31	88	18	TEXT	fdsdsds	\N	2018-01-31 12:40:33.184+03	2018-01-31 12:40:33.184+03
32	88	18	TEXT	fdsfds	\N	2018-01-31 12:40:34.956+03	2018-01-31 12:40:34.956+03
33	88	18	TEXT	dsfdsfds	\N	2018-01-31 12:40:37.821+03	2018-01-31 12:40:37.821+03
34	88	18	TEXT	fkss	\N	2018-01-31 12:46:53.877+03	2018-01-31 12:46:53.877+03
35	88	18	TEXT	fdfsd	\N	2018-01-31 13:00:11.817+03	2018-01-31 13:00:11.817+03
36	94	18	TEXT	fdf	\N	2018-01-31 13:27:48.829+03	2018-01-31 13:27:48.829+03
37	94	18	TEXT	s	\N	2018-01-31 13:33:31.752+03	2018-01-31 13:33:31.752+03
38	94	18	TEXT	3	\N	2018-01-31 13:33:40.375+03	2018-01-31 13:33:40.375+03
39	94	18	TEXT	4	\N	2018-01-31 13:33:42.946+03	2018-01-31 13:33:42.946+03
40	94	18	TEXT	5	\N	2018-01-31 13:33:45.892+03	2018-01-31 13:33:45.892+03
41	94	18	TEXT	6	\N	2018-01-31 13:38:31.864+03	2018-01-31 13:38:31.864+03
42	94	18	TEXT	вавв	\N	2018-01-31 13:47:16.864+03	2018-01-31 13:47:16.864+03
43	94	18	TEXT	ыв	\N	2018-01-31 13:51:36.677+03	2018-01-31 13:51:36.677+03
44	94	18	TEXT	вывы	\N	2018-01-31 13:51:39.092+03	2018-01-31 13:51:39.092+03
45	96	18	TEXT	вывы	\N	2018-01-31 13:56:34.783+03	2018-01-31 13:56:34.783+03
46	96	18	TEXT	вывы	\N	2018-01-31 13:56:38.156+03	2018-01-31 13:56:38.156+03
47	96	18	TEXT	1	\N	2018-01-31 13:57:01.838+03	2018-01-31 13:57:01.838+03
48	96	18	TEXT	2	\N	2018-01-31 13:57:03.545+03	2018-01-31 13:57:03.545+03
49	96	18	TEXT	3	\N	2018-01-31 13:57:05.392+03	2018-01-31 13:57:05.392+03
50	96	18	TEXT	4	\N	2018-01-31 13:57:30.1+03	2018-01-31 13:57:30.1+03
51	96	18	TEXT	вваы	\N	2018-01-31 13:59:09.726+03	2018-01-31 13:59:09.726+03
52	96	18	TEXT	32	\N	2018-01-31 13:59:28.306+03	2018-01-31 13:59:28.306+03
53	96	18	TEXT	2	\N	2018-01-31 13:59:36.259+03	2018-01-31 13:59:36.259+03
54	96	18	TEXT	d	\N	2018-01-31 14:12:25.028+03	2018-01-31 14:12:25.028+03
55	98	18	TEXT	комментарий	\N	2018-01-31 15:02:13.567+03	2018-01-31 15:02:13.567+03
56	98	18	TEXT	комментарий	\N	2018-01-31 15:02:19.296+03	2018-01-31 15:02:19.296+03
57	98	18	TEXT	комментарий	\N	2018-01-31 15:02:23.605+03	2018-01-31 15:02:23.605+03
58	98	18	TEXT	комментарий	\N	2018-01-31 15:02:26.24+03	2018-01-31 15:02:26.24+03
59	98	18	TEXT	комментарий	\N	2018-01-31 15:02:28.795+03	2018-01-31 15:02:28.795+03
60	98	18	TEXT	комментарий	\N	2018-01-31 15:02:38.281+03	2018-01-31 15:02:38.281+03
61	98	18	TEXT	комментарий	\N	2018-01-31 15:02:55.256+03	2018-01-31 15:02:55.256+03
62	98	18	TEXT	комментарий	\N	2018-01-31 15:02:57.486+03	2018-01-31 15:02:57.486+03
63	98	18	TEXT	комментарий	\N	2018-01-31 15:02:59.263+03	2018-01-31 15:02:59.263+03
64	98	18	TEXT	;jrviohw:RLjv	\N	2018-01-31 15:05:56.513+03	2018-01-31 15:05:56.513+03
65	3	18	TEXT	jgkjgjgjgjgj	\N	2018-01-31 15:07:02.028+03	2018-01-31 15:07:02.028+03
66	3	18	TEXT	;LEmv;1letmv	\N	2018-01-31 15:07:05.841+03	2018-01-31 15:07:05.841+03
67	3	18	TEXT	tytytytytytyt	\N	2018-01-31 15:07:27.611+03	2018-01-31 15:07:27.611+03
68	99	18	TEXT	dsds	\N	2018-01-31 15:09:08.222+03	2018-01-31 15:09:08.222+03
69	99	18	TEXT	dsd	\N	2018-01-31 15:10:01.582+03	2018-01-31 15:10:01.582+03
70	99	18	TEXT	3232	\N	2018-01-31 15:10:28.69+03	2018-01-31 15:10:28.69+03
71	99	18	TEXT	32	\N	2018-01-31 15:18:06.125+03	2018-01-31 15:18:06.125+03
72	99	18	TEXT	41	\N	2018-01-31 15:19:21.439+03	2018-01-31 15:19:21.439+03
73	99	18	TEXT	камент	\N	2018-01-31 15:24:18.916+03	2018-01-31 15:24:18.916+03
74	99	18	TEXT	КРЕЙНИН	\N	2018-01-31 15:27:01.4+03	2018-01-31 15:27:01.4+03
75	99	18	TEXT	t	\N	2018-01-31 15:30:05.461+03	2018-01-31 15:30:05.461+03
76	99	18	TEXT	qw	\N	2018-01-31 15:30:58.132+03	2018-01-31 15:30:58.132+03
77	99	18	TEXT	12	\N	2018-01-31 15:45:06.211+03	2018-01-31 15:45:06.211+03
78	90	18	TEXT	s	\N	2018-01-31 16:05:47.029+03	2018-01-31 16:05:47.029+03
79	90	18	TEXT	2	\N	2018-01-31 16:05:52.712+03	2018-01-31 16:05:52.712+03
80	99	18	TEXT	2	\N	2018-01-31 16:06:11.7+03	2018-01-31 16:06:11.7+03
81	91	18	TEXT	Тестовый комментарий	\N	2018-01-31 16:24:58.08+03	2018-01-31 16:24:58.08+03
82	99	18	TEXT	ghj\\	\N	2018-01-31 16:59:39.468+03	2018-01-31 16:59:39.468+03
83	107	18	TEXT	Проверяем сообщения	\N	2018-02-01 07:06:46.495+03	2018-02-01 07:06:46.495+03
84	107	18	TEXT	да	\N	2018-02-01 07:07:13.576+03	2018-02-01 07:07:13.576+03
85	107	8	TEXT	Точно?	\N	2018-02-01 07:07:21.82+03	2018-02-01 07:07:21.82+03
86	107	8	TEXT	Абсолютно	\N	2018-02-01 07:07:30.094+03	2018-02-01 07:07:30.094+03
87	107	18	TEXT	Хм	\N	2018-02-01 07:07:34.954+03	2018-02-01 07:07:34.954+03
88	107	8	TEXT	Ого	\N	2018-02-01 07:07:40.118+03	2018-02-01 07:07:40.118+03
89	107	18	TEXT	бла бла бла	\N	2018-02-01 07:07:57.546+03	2018-02-01 07:07:57.546+03
90	107	18	TEXT	бла бла бла	\N	2018-02-01 07:08:12.002+03	2018-02-01 07:08:12.002+03
91	97	18	TEXT	das	\N	2018-02-01 08:38:16.348+03	2018-02-01 08:38:16.348+03
92	97	18	TEXT	dsdsds	\N	2018-02-01 08:38:18.313+03	2018-02-01 08:38:18.313+03
93	97	18	TEXT	ds	\N	2018-02-01 08:48:13.279+03	2018-02-01 08:48:13.279+03
94	97	18	TEXT	dsds	\N	2018-02-01 08:48:16.125+03	2018-02-01 08:48:16.125+03
95	97	18	TEXT	sds	\N	2018-02-01 08:48:18.516+03	2018-02-01 08:48:18.516+03
96	97	18	TEXT	ds	\N	2018-02-01 08:48:21.447+03	2018-02-01 08:48:21.447+03
97	97	18	TEXT	s	\N	2018-02-01 08:49:35.776+03	2018-02-01 08:49:35.776+03
98	97	18	TEXT	3	\N	2018-02-01 08:49:40.975+03	2018-02-01 08:49:40.975+03
99	97	18	TEXT	4	\N	2018-02-01 08:49:49.375+03	2018-02-01 08:49:49.375+03
100	93	18	TEXT	1	\N	2018-02-01 09:04:00.196+03	2018-02-01 09:04:00.196+03
101	93	18	TEXT	2	\N	2018-02-01 09:04:02.439+03	2018-02-01 09:04:02.439+03
102	93	18	TEXT	3	\N	2018-02-01 09:04:05.407+03	2018-02-01 09:04:05.407+03
103	93	18	TEXT	4	\N	2018-02-01 09:04:08.831+03	2018-02-01 09:04:08.831+03
104	93	18	TEXT	5	\N	2018-02-01 09:04:11.324+03	2018-02-01 09:04:11.324+03
105	93	18	TEXT	6	\N	2018-02-01 09:04:13.931+03	2018-02-01 09:04:13.931+03
106	93	18	TEXT	7	\N	2018-02-01 09:04:19.256+03	2018-02-01 09:04:19.256+03
107	93	18	TEXT	8	\N	2018-02-01 09:04:26.901+03	2018-02-01 09:04:26.901+03
108	93	18	TEXT	9	\N	2018-02-01 09:04:32.339+03	2018-02-01 09:04:32.339+03
109	93	18	TEXT	10	\N	2018-02-01 09:04:53.278+03	2018-02-01 09:04:53.278+03
110	93	18	TEXT	11	\N	2018-02-01 09:06:16.067+03	2018-02-01 09:06:16.067+03
111	115	9	TEXT	Задача была сложная,	\N	2018-02-01 10:51:55.274+03	2018-02-01 10:51:55.274+03
112	8	18	TEXT	hhhh	\N	2018-02-01 12:06:11.333+03	2018-02-01 12:06:11.333+03
113	119	9	TEXT	geggeggeggeggeggeggeg	\N	2018-02-01 12:44:21.279+03	2018-02-01 12:44:21.279+03
114	119	9	TEXT	ehwehew	\N	2018-02-01 12:44:25.202+03	2018-02-01 12:44:25.202+03
115	130	12	TEXT	djtej	\N	2018-02-01 16:59:44.556+03	2018-02-01 16:59:44.556+03
116	108	18	TEXT	jksds	\N	2018-02-02 11:48:59.649+03	2018-02-02 11:48:59.649+03
117	108	18	TEXT	dsds	\N	2018-02-02 11:49:02.798+03	2018-02-02 11:49:02.798+03
118	108	18	TEXT	3	\N	2018-02-02 11:49:05.563+03	2018-02-02 11:49:05.563+03
119	108	18	TEXT	4	\N	2018-02-02 11:49:07.605+03	2018-02-02 11:49:07.605+03
120	108	18	TEXT	5	\N	2018-02-02 11:49:10.451+03	2018-02-02 11:49:10.451+03
121	106	18	TEXT	hfs	\N	2018-02-02 12:02:58.156+03	2018-02-02 12:02:58.156+03
122	106	18	TEXT	2	\N	2018-02-02 12:03:00.638+03	2018-02-02 12:03:00.638+03
123	106	18	TEXT	3	\N	2018-02-02 12:03:04.89+03	2018-02-02 12:03:04.89+03
124	106	18	TEXT	5	\N	2018-02-02 12:03:07.766+03	2018-02-02 12:03:07.766+03
125	106	18	TEXT	5	\N	2018-02-02 12:03:11.507+03	2018-02-02 12:03:11.507+03
126	106	18	TEXT	6	\N	2018-02-02 12:04:57.594+03	2018-02-02 12:04:57.594+03
127	106	18	TEXT	7	\N	2018-02-02 12:05:00.647+03	2018-02-02 12:05:00.647+03
128	106	18	TEXT	8	\N	2018-02-02 12:05:03.876+03	2018-02-02 12:05:03.876+03
129	106	18	TEXT	9	\N	2018-02-02 12:05:06.813+03	2018-02-02 12:05:06.813+03
130	100	18	TEXT	1	\N	2018-02-02 12:06:58.881+03	2018-02-02 12:06:58.881+03
131	100	18	TEXT	2	\N	2018-02-02 12:07:01.141+03	2018-02-02 12:07:01.141+03
132	100	18	TEXT	3	\N	2018-02-02 12:07:02.939+03	2018-02-02 12:07:02.939+03
133	100	18	TEXT	4	\N	2018-02-02 12:07:05.234+03	2018-02-02 12:07:05.234+03
134	100	18	TEXT	5	\N	2018-02-02 12:07:07.369+03	2018-02-02 12:07:07.369+03
135	100	18	TEXT	6	\N	2018-02-02 12:07:09.644+03	2018-02-02 12:07:09.644+03
136	100	18	TEXT	7	\N	2018-02-02 12:07:11.563+03	2018-02-02 12:07:11.563+03
137	100	18	TEXT	8	\N	2018-02-02 12:07:13.532+03	2018-02-02 12:07:13.532+03
138	100	18	TEXT	9	\N	2018-02-02 12:07:16.85+03	2018-02-02 12:07:16.85+03
139	101	18	TEXT	1	\N	2018-02-02 12:30:54.549+03	2018-02-02 12:30:54.549+03
140	101	18	TEXT	2	\N	2018-02-02 12:30:56.021+03	2018-02-02 12:30:56.021+03
141	101	18	TEXT	3	\N	2018-02-02 12:30:57.579+03	2018-02-02 12:30:57.579+03
142	101	18	TEXT	4	\N	2018-02-02 12:30:58.828+03	2018-02-02 12:30:58.828+03
143	101	18	TEXT	5	\N	2018-02-02 12:31:01.27+03	2018-02-02 12:31:01.27+03
144	101	18	TEXT	2	\N	2018-02-02 12:31:48.734+03	2018-02-02 12:31:48.734+03
145	101	18	TEXT	2	\N	2018-02-02 12:31:50.919+03	2018-02-02 12:31:50.919+03
146	101	18	TEXT	2	\N	2018-02-02 12:32:12.017+03	2018-02-02 12:32:12.017+03
147	101	18	TEXT	2	\N	2018-02-02 12:32:24.321+03	2018-02-02 12:32:24.321+03
148	100	8	TEXT	Длинный комментарий Длинный комментарий Длинный комментарий Длинный комментарий	\N	2018-02-02 14:07:03.707+03	2018-02-02 14:07:03.707+03
149	100	8	TEXT	Длинный комментарий Длинный комментарий Длинный комментарий Длинный комментарий Длинный комментарий Длинный комментарий Длинный комментарий Длинный комментарий	\N	2018-02-02 14:08:26.523+03	2018-02-02 14:08:26.523+03
150	100	29	TEXT	Длинный комментарий Длинный комментарий Длинный комментарий Длинный комментарий Длинный комментарий Длинный комментарий Длинный комментарий	\N	2018-02-02 14:12:50.606+03	2018-02-02 14:12:50.606+03
151	95	29	TEXT	gf	\N	2018-02-02 14:16:58.921+03	2018-02-02 14:16:58.921+03
152	95	29	TEXT	f	\N	2018-02-02 14:17:00.463+03	2018-02-02 14:17:00.463+03
153	95	29	TEXT	f	\N	2018-02-02 14:17:01.796+03	2018-02-02 14:17:01.796+03
154	95	29	TEXT	f	\N	2018-02-02 14:17:03.682+03	2018-02-02 14:17:03.682+03
155	131	35	TEXT	коммент от тульской	\N	2018-02-02 14:17:05.792+03	2018-02-02 14:17:05.792+03
156	95	29	TEXT	f	\N	2018-02-02 14:17:06.729+03	2018-02-02 14:17:06.729+03
157	95	29	TEXT	f	\N	2018-02-02 14:17:08.535+03	2018-02-02 14:17:08.535+03
158	100	29	TEXT	цуцуц	\N	2018-02-02 14:33:30.273+03	2018-02-02 14:33:30.273+03
159	100	29	TEXT	2	\N	2018-02-02 14:33:59.407+03	2018-02-02 14:33:59.407+03
160	100	29	TEXT	3	\N	2018-02-02 14:34:29.505+03	2018-02-02 14:34:29.505+03
161	100	29	TEXT	2	\N	2018-02-02 14:35:52.124+03	2018-02-02 14:35:52.124+03
162	100	29	TEXT	3	\N	2018-02-02 14:37:27.62+03	2018-02-02 14:37:27.62+03
163	100	29	TEXT	4	\N	2018-02-02 14:37:30.028+03	2018-02-02 14:37:30.028+03
164	108	29	TEXT	3	\N	2018-02-02 14:37:55.017+03	2018-02-02 14:37:55.017+03
165	108	29	TEXT	4	\N	2018-02-02 14:37:59.806+03	2018-02-02 14:37:59.806+03
166	108	29	TEXT	6	\N	2018-02-02 14:38:02.313+03	2018-02-02 14:38:02.313+03
167	108	29	TEXT	7	\N	2018-02-02 14:38:06.433+03	2018-02-02 14:38:06.433+03
168	108	29	TEXT	7	\N	2018-02-02 14:38:14.996+03	2018-02-02 14:38:14.996+03
169	108	29	TEXT	dsdsds	\N	2018-02-02 14:41:16.433+03	2018-02-02 14:41:16.433+03
170	108	29	TEXT	2	\N	2018-02-02 14:43:30.893+03	2018-02-02 14:43:30.893+03
171	108	29	TEXT	3	\N	2018-02-02 14:44:01.608+03	2018-02-02 14:44:01.608+03
172	108	29	TEXT	5	\N	2018-02-02 14:44:59.878+03	2018-02-02 14:44:59.878+03
173	108	29	TEXT	2	\N	2018-02-02 14:45:52.107+03	2018-02-02 14:45:52.107+03
174	108	29	TEXT	3	\N	2018-02-02 14:45:56.361+03	2018-02-02 14:45:56.361+03
175	108	29	TEXT	5	\N	2018-02-02 14:46:58.667+03	2018-02-02 14:46:58.667+03
\.


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('comment_id_seq', 175, true);


--
-- Name: communication_focus_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('communication_focus_template_id_seq', 7, true);


--
-- Data for Name: date_comment_reading; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY date_comment_reading (id, "taskId", "userId", "lastReadingDate", "createTime", "updateTime") FROM stdin;
2	4	1	2018-01-19 07:54:43.423+03	2018-01-19 07:54:43.427+03	2018-01-19 07:54:43.427+03
56	49	2	2018-01-29 11:12:23.858+03	2018-01-25 14:53:59.79+03	2018-01-29 11:12:23.87+03
88	66	14	2018-01-30 10:43:25.967+03	2018-01-29 08:12:07.166+03	2018-01-30 10:43:25.978+03
61	55	2	2018-01-26 11:21:46.631+03	2018-01-26 10:22:00.472+03	2018-01-26 11:21:46.654+03
68	59	2	2018-01-26 11:26:34.487+03	2018-01-26 11:26:34.488+03	2018-01-26 11:26:34.488+03
69	59	1	2018-01-26 11:26:34.73+03	2018-01-26 11:26:34.731+03	2018-01-26 11:26:34.731+03
66	57	1	2018-01-26 11:39:41.965+03	2018-01-26 10:59:08.694+03	2018-01-26 11:39:41.985+03
46	43	2	2018-01-25 09:20:24.615+03	2018-01-25 09:20:24.615+03	2018-01-25 09:20:24.615+03
67	58	1	2018-01-26 11:40:00.37+03	2018-01-26 11:00:41.448+03	2018-01-26 11:40:00.38+03
52	49	1	2018-01-29 05:30:09.919+03	2018-01-25 13:18:07.365+03	2018-01-29 05:30:09.934+03
15	23	1	2018-01-22 12:50:45.074+03	2018-01-22 10:39:30.789+03	2018-01-22 12:50:45.104+03
47	44	1	2018-01-25 09:36:41.979+03	2018-01-25 09:36:41.979+03	2018-01-25 09:36:41.979+03
26	8	2	2018-01-23 11:09:35.288+03	2018-01-23 11:09:35.294+03	2018-01-23 11:09:35.294+03
83	64	1	2018-01-30 09:40:28.16+03	2018-01-29 08:08:21.426+03	2018-01-30 09:40:28.171+03
7	9	1	2018-01-22 10:32:52.345+03	2018-01-22 06:17:00.758+03	2018-01-22 10:32:52.35+03
27	23	2	2018-01-23 11:09:44.44+03	2018-01-23 11:09:41.217+03	2018-01-23 11:09:44.466+03
50	47	1	2018-01-25 13:16:00.474+03	2018-01-25 13:14:53.748+03	2018-01-25 13:16:00.496+03
29	31	2	2018-01-23 11:09:53.121+03	2018-01-23 11:09:53.122+03	2018-01-23 11:09:53.122+03
30	30	2	2018-01-23 11:09:58.63+03	2018-01-23 11:09:58.63+03	2018-01-23 11:09:58.63+03
10	11	1	2018-01-22 06:17:22.689+03	2018-01-22 06:17:22.69+03	2018-01-22 06:17:22.69+03
11	19	1	2018-01-22 06:17:27.057+03	2018-01-22 06:17:27.058+03	2018-01-22 06:17:27.058+03
12	16	1	2018-01-22 06:17:31.942+03	2018-01-22 06:17:31.942+03	2018-01-22 06:17:31.942+03
48	45	1	2018-01-25 09:40:45.153+03	2018-01-25 09:40:45.153+03	2018-01-25 09:40:45.153+03
16	24	1	2018-01-24 14:40:27.433+03	2018-01-22 10:40:18.63+03	2018-01-24 14:40:27.445+03
22	30	1	2018-01-23 14:37:47.698+03	2018-01-22 11:35:08.9+03	2018-01-23 14:37:47.712+03
5	5	1	2018-01-22 11:30:37.3+03	2018-01-22 05:16:31.878+03	2018-01-22 11:30:37.305+03
89	67	1	2018-01-29 08:13:52.981+03	2018-01-29 08:13:52.356+03	2018-01-29 08:13:52.991+03
37	34	1	2018-01-25 05:35:20.737+03	2018-01-25 05:35:20.469+03	2018-01-25 05:35:20.752+03
24	32	1	2018-01-23 14:41:16.371+03	2018-01-22 13:22:51.851+03	2018-01-23 14:41:16.386+03
28	27	2	2018-01-26 07:52:29.587+03	2018-01-23 11:09:48.199+03	2018-01-26 07:52:29.598+03
20	28	1	2018-01-25 09:48:59.122+03	2018-01-22 10:48:04.177+03	2018-01-25 09:48:59.132+03
38	35	1	2018-01-25 05:36:38.72+03	2018-01-25 05:36:38.459+03	2018-01-25 05:36:38.728+03
39	36	1	2018-01-25 05:40:00.639+03	2018-01-25 05:40:00.64+03	2018-01-25 05:40:00.64+03
25	33	1	2018-01-23 14:46:20.755+03	2018-01-22 13:48:42.258+03	2018-01-23 14:46:20.768+03
6	10	1	2018-01-24 09:37:48.512+03	2018-01-22 06:16:31.058+03	2018-01-24 09:37:48.542+03
40	37	1	2018-01-25 05:41:28.088+03	2018-01-25 05:41:27.893+03	2018-01-25 05:41:28.098+03
41	38	1	2018-01-25 05:42:08.144+03	2018-01-25 05:42:08.145+03	2018-01-25 05:42:08.145+03
42	39	1	2018-01-25 05:47:31.32+03	2018-01-25 05:47:31.07+03	2018-01-25 05:47:31.33+03
43	40	1	2018-01-25 05:47:54.146+03	2018-01-25 05:47:53.8+03	2018-01-25 05:47:54.16+03
44	41	1	2018-01-25 05:55:08.585+03	2018-01-25 05:55:08.274+03	2018-01-25 05:55:08.594+03
14	22	1	2018-01-22 10:44:49.842+03	2018-01-22 09:01:44.765+03	2018-01-22 10:44:49.851+03
51	48	1	2018-01-25 13:30:28.566+03	2018-01-25 13:15:39.966+03	2018-01-25 13:30:28.576+03
45	42	1	2018-01-25 05:55:42.331+03	2018-01-25 05:55:42.014+03	2018-01-25 05:55:42.34+03
33	9	2	2018-01-24 11:38:48.687+03	2018-01-24 11:38:48.693+03	2018-01-24 11:38:48.693+03
21	29	1	2018-01-23 12:50:17.725+03	2018-01-22 11:31:10.26+03	2018-01-23 12:50:17.734+03
31	28	2	2018-01-24 11:44:23.374+03	2018-01-23 11:19:27.047+03	2018-01-24 11:44:23.382+03
35	10	2	2018-01-24 11:44:30.449+03	2018-01-24 11:44:30.45+03	2018-01-24 11:44:30.45+03
36	29	2	2018-01-24 11:46:45.844+03	2018-01-24 11:44:34.27+03	2018-01-24 11:46:45.856+03
9	7	1	2018-01-25 09:49:13.748+03	2018-01-22 06:17:06.432+03	2018-01-25 09:49:13.764+03
53	50	1	2018-01-25 13:30:47.632+03	2018-01-25 13:30:47.012+03	2018-01-25 13:30:47.643+03
82	63	2	2018-01-30 07:07:01.247+03	2018-01-29 08:06:03.701+03	2018-01-30 07:07:01.257+03
65	57	2	2018-01-29 07:32:39.527+03	2018-01-26 10:59:08.472+03	2018-01-29 07:32:39.542+03
54	51	1	2018-01-25 13:31:21.872+03	2018-01-25 13:31:21.208+03	2018-01-25 13:31:21.884+03
85	65	1	2018-01-30 11:39:52.483+03	2018-01-29 08:09:12.457+03	2018-01-30 11:39:52.502+03
55	52	1	2018-01-25 13:47:47.141+03	2018-01-25 13:47:46.401+03	2018-01-25 13:47:47.152+03
32	5	2	2018-01-23 13:30:52.312+03	2018-01-23 13:30:52.316+03	2018-01-23 13:30:52.316+03
86	65	14	2018-01-29 08:09:48.633+03	2018-01-29 08:09:20.348+03	2018-01-29 08:09:48.645+03
95	70	1	2018-01-30 08:50:03.413+03	2018-01-29 08:35:59.701+03	2018-01-30 08:50:03.422+03
8	3	1	2018-01-25 06:30:46.069+03	2018-01-22 06:17:03.454+03	2018-01-25 06:30:46.077+03
23	31	1	2018-01-25 06:54:33.105+03	2018-01-22 11:52:45.949+03	2018-01-25 06:54:33.12+03
34	26	2	2018-01-26 08:29:16.772+03	2018-01-24 11:42:42.745+03	2018-01-26 08:29:16.785+03
71	52	2	2018-01-26 16:14:39.866+03	2018-01-26 16:14:39.868+03	2018-01-26 16:14:39.868+03
90	67	14	2018-01-30 11:26:27.927+03	2018-01-29 08:13:56.993+03	2018-01-30 11:26:27.936+03
77	28	14	2018-01-29 06:23:28.747+03	2018-01-29 06:23:28.751+03	2018-01-29 06:23:28.751+03
4	1	1	2018-01-25 11:13:29.99+03	2018-01-22 05:16:24.587+03	2018-01-25 11:13:30.002+03
78	6	14	2018-01-29 06:23:33.517+03	2018-01-29 06:23:33.519+03	2018-01-29 06:23:33.519+03
87	66	1	2018-01-30 11:37:51.323+03	2018-01-29 08:11:59.62+03	2018-01-30 11:37:51.332+03
1	1	2	2018-01-26 10:08:40.798+03	2018-01-16 10:32:15.418+03	2018-01-26 10:08:40.81+03
18	26	1	2018-01-25 11:18:43.427+03	2018-01-22 10:45:18.65+03	2018-01-25 11:18:43.437+03
3	6	1	2018-01-25 11:22:49.028+03	2018-01-19 08:04:06.688+03	2018-01-25 11:22:49.039+03
57	53	2	2018-01-26 10:09:08.521+03	2018-01-26 10:09:08.522+03	2018-01-26 10:09:08.522+03
58	53	1	2018-01-26 10:09:08.818+03	2018-01-26 10:09:08.819+03	2018-01-26 10:09:08.819+03
19	27	1	2018-01-25 11:23:06.351+03	2018-01-22 10:46:22.523+03	2018-01-25 11:23:06.361+03
59	54	2	2018-01-26 10:10:54.741+03	2018-01-26 10:10:54.742+03	2018-01-26 10:10:54.742+03
13	8	1	2018-01-25 11:23:12.29+03	2018-01-22 08:00:16.38+03	2018-01-25 11:23:12.298+03
70	57	14	2018-01-26 16:28:41.283+03	2018-01-26 13:16:17.656+03	2018-01-26 16:28:41.291+03
17	25	1	2018-01-25 11:28:45.808+03	2018-01-22 10:43:28.214+03	2018-01-25 11:28:45.82+03
60	54	1	2018-01-26 10:10:54.97+03	2018-01-26 10:10:54.97+03	2018-01-26 10:10:54.97+03
62	55	1	2018-01-26 10:22:00.718+03	2018-01-26 10:22:00.719+03	2018-01-26 10:22:00.719+03
49	46	1	2018-01-25 13:08:49.391+03	2018-01-25 13:08:48.964+03	2018-01-25 13:08:49.399+03
94	69	14	2018-01-29 12:59:55.924+03	2018-01-29 08:31:11.516+03	2018-01-29 12:59:55.934+03
63	56	2	2018-01-26 10:54:40.577+03	2018-01-26 10:54:40.578+03	2018-01-26 10:54:40.578+03
64	56	1	2018-01-26 10:54:40.791+03	2018-01-26 10:54:40.791+03	2018-01-26 10:54:40.791+03
80	63	1	2018-01-30 09:42:58.584+03	2018-01-29 08:02:54.649+03	2018-01-30 09:42:58.593+03
108	60	2	2018-01-30 10:33:47.676+03	2018-01-29 11:23:24.67+03	2018-01-30 10:33:47.698+03
81	63	14	2018-01-30 10:43:16.493+03	2018-01-29 08:03:09.813+03	2018-01-30 10:43:16.5+03
84	64	14	2018-01-30 10:43:22+03	2018-01-29 08:08:34.579+03	2018-01-30 10:43:22.009+03
109	74	18	2018-01-29 13:13:29.573+03	2018-01-29 12:41:00.489+03	2018-01-29 13:13:29.58+03
72	60	1	2018-01-29 12:44:10.495+03	2018-01-29 05:29:30.466+03	2018-01-29 12:44:10.51+03
92	68	14	2018-01-29 08:31:08.306+03	2018-01-29 08:15:54.008+03	2018-01-29 08:31:08.316+03
100	72	14	2018-01-30 10:43:31.424+03	2018-01-29 08:41:39.853+03	2018-01-30 10:43:31.434+03
74	62	1	2018-01-30 09:23:07.43+03	2018-01-29 06:12:04.606+03	2018-01-30 09:23:07.44+03
97	71	1	2018-01-29 08:39:24.811+03	2018-01-29 08:38:55.794+03	2018-01-29 08:39:24.825+03
93	69	1	2018-01-29 08:32:48.97+03	2018-01-29 08:31:01.986+03	2018-01-29 08:32:48.979+03
96	70	14	2018-01-29 13:03:39.605+03	2018-01-29 08:36:06.029+03	2018-01-29 13:03:39.62+03
131	61	2	2018-01-30 08:37:30.156+03	2018-01-30 07:05:43.074+03	2018-01-30 08:37:30.167+03
99	72	1	2018-01-30 09:39:50.57+03	2018-01-29 08:41:31.73+03	2018-01-30 09:39:50.585+03
103	73	14	2018-01-29 10:48:59.493+03	2018-01-29 10:48:49.873+03	2018-01-29 10:48:59.503+03
102	73	1	2018-01-29 10:48:59.681+03	2018-01-29 10:48:14.445+03	2018-01-29 10:48:59.689+03
140	65	28	2018-01-30 11:48:37.441+03	2018-01-30 11:48:37.441+03	2018-01-30 11:48:37.441+03
107	74	14	2018-01-29 13:01:23.791+03	2018-01-29 10:53:00.121+03	2018-01-29 13:01:23.817+03
110	75	1	2018-01-30 11:31:10.061+03	2018-01-29 13:04:32.986+03	2018-01-30 11:31:10.071+03
106	74	1	2018-01-29 11:06:13.898+03	2018-01-29 10:52:43.711+03	2018-01-29 11:06:13.908+03
114	76	18	2018-01-30 09:25:21.442+03	2018-01-29 13:05:48.36+03	2018-01-30 09:25:21.447+03
76	61	14	2018-01-29 14:34:11.889+03	2018-01-29 06:22:41.429+03	2018-01-29 14:34:11.905+03
98	71	14	2018-01-29 14:47:55.234+03	2018-01-29 08:39:09.699+03	2018-01-29 14:47:55.248+03
112	76	1	2018-01-30 11:31:15.343+03	2018-01-29 13:05:08.132+03	2018-01-30 11:31:15.355+03
111	75	14	2018-01-29 13:04:44.193+03	2018-01-29 13:04:39.295+03	2018-01-29 13:04:44.208+03
73	61	1	2018-01-30 09:38:34.476+03	2018-01-29 06:11:19.53+03	2018-01-30 09:38:34.486+03
75	62	14	2018-01-30 14:30:30.356+03	2018-01-29 06:22:34.183+03	2018-01-30 14:30:30.382+03
104	73	18	2018-01-30 05:05:31.089+03	2018-01-29 10:49:52.16+03	2018-01-30 05:05:31.099+03
143	62	8	2018-01-30 18:29:48.618+03	2018-01-30 17:22:26.832+03	2018-01-30 18:29:48.63+03
105	65	18	2018-01-29 13:14:54.484+03	2018-01-29 10:51:36.372+03	2018-01-29 13:14:54.489+03
159	86	18	2018-02-01 13:50:48.435+03	2018-01-31 08:07:50.422+03	2018-02-01 13:50:48.451+03
113	76	14	2018-01-29 13:21:40.028+03	2018-01-29 13:05:22.784+03	2018-01-29 13:21:40.038+03
115	64	18	2018-01-30 10:20:45.596+03	2018-01-29 13:09:11.406+03	2018-01-30 10:20:45.604+03
167	82	9	2018-01-31 08:20:41.243+03	2018-01-31 08:20:41.244+03	2018-01-31 08:20:41.244+03
118	63	18	2018-01-30 10:42:31.777+03	2018-01-29 13:14:48.071+03	2018-01-30 10:42:31.788+03
116	61	18	2018-01-29 13:23:15.643+03	2018-01-29 13:13:34.398+03	2018-01-29 13:23:15.654+03
122	69	18	2018-01-29 13:23:17.223+03	2018-01-29 13:23:17.225+03	2018-01-29 13:23:17.225+03
101	72	18	2018-01-30 17:52:13.54+03	2018-01-29 10:36:12.768+03	2018-01-30 17:52:13.553+03
222	117	18	2018-02-01 17:27:27.762+03	2018-02-01 11:48:22.503+03	2018-02-01 17:27:27.772+03
91	68	1	2018-01-30 11:09:04.611+03	2018-01-29 08:15:37.063+03	2018-01-30 11:09:04.624+03
123	77	1	2018-01-30 11:31:12.726+03	2018-01-29 13:35:35.123+03	2018-01-30 11:31:12.735+03
145	80	18	2018-01-31 06:27:19.933+03	2018-01-30 19:03:55.906+03	2018-01-31 06:27:19.944+03
124	77	14	2018-01-29 13:36:20.956+03	2018-01-29 13:35:41.929+03	2018-01-29 13:36:20.97+03
121	68	18	2018-01-30 06:20:23.52+03	2018-01-29 13:15:02.72+03	2018-01-30 06:20:23.53+03
125	71	2	2018-01-29 13:41:01.574+03	2018-01-29 13:41:01.576+03	2018-01-29 13:41:01.576+03
126	64	2	2018-01-29 13:41:14.587+03	2018-01-29 13:41:14.587+03	2018-01-29 13:41:14.587+03
141	60	18	2018-01-30 12:00:29.543+03	2018-01-30 12:00:00.632+03	2018-01-30 12:00:29.559+03
119	66	18	2018-01-30 12:06:24.007+03	2018-01-29 13:14:57.099+03	2018-01-30 12:06:24.02+03
128	68	19	2018-01-30 06:50:39.9+03	2018-01-29 14:06:49.217+03	2018-01-30 06:50:39.906+03
178	96	18	2018-01-31 14:23:37.469+03	2018-01-31 11:28:39.952+03	2018-01-31 14:23:37.494+03
158	85	9	2018-01-31 11:00:12.749+03	2018-01-31 08:05:52.507+03	2018-01-31 11:00:12.755+03
127	68	20	2018-01-29 14:04:43.085+03	2018-01-29 13:55:37.766+03	2018-01-29 14:04:43.096+03
189	100	8	2018-02-02 14:09:58.683+03	2018-01-31 15:16:30.903+03	2018-02-02 14:09:58.696+03
117	62	18	2018-01-31 12:29:34.414+03	2018-01-29 13:13:37.705+03	2018-01-31 12:29:34.446+03
79	62	2	2018-01-30 07:17:28.509+03	2018-01-29 07:57:14.042+03	2018-01-30 07:17:28.516+03
134	65	2	2018-01-30 07:17:31.531+03	2018-01-30 07:17:31.532+03	2018-01-30 07:17:31.532+03
135	74	2	2018-01-30 07:17:41.099+03	2018-01-30 07:17:37.742+03	2018-01-30 07:17:41.11+03
148	82	18	2018-02-01 17:35:06.269+03	2018-01-31 06:29:01.809+03	2018-02-01 17:35:06.284+03
132	66	2	2018-01-30 07:26:49.712+03	2018-01-30 07:06:21.02+03	2018-01-30 07:26:49.731+03
142	72	8	2018-01-30 18:21:00.324+03	2018-01-30 15:44:48.189+03	2018-01-30 18:21:00.343+03
152	82	8	2018-01-31 08:52:37.354+03	2018-01-31 07:00:41.44+03	2018-01-31 08:52:37.369+03
133	73	2	2018-01-30 07:40:37.401+03	2018-01-30 07:07:09.447+03	2018-01-30 07:40:37.413+03
166	88	9	2018-01-31 08:22:05.413+03	2018-01-31 08:20:31.127+03	2018-01-31 08:22:05.418+03
215	113	18	2018-02-01 18:29:18.584+03	2018-02-01 09:02:18.26+03	2018-02-01 18:29:18.619+03
130	67	19	2018-01-30 05:07:26.351+03	2018-01-30 05:07:26.354+03	2018-01-30 05:07:26.354+03
151	84	18	2018-01-31 07:43:53.254+03	2018-01-31 07:00:10.625+03	2018-01-31 07:43:53.268+03
170	89	18	2018-02-01 13:49:52.986+03	2018-01-31 08:44:42.958+03	2018-02-01 13:49:53.021+03
173	91	18	2018-01-31 16:26:28.194+03	2018-01-31 09:42:05.415+03	2018-01-31 16:26:28.209+03
199	98	25	2018-01-31 17:25:02.456+03	2018-01-31 16:50:01.958+03	2018-01-31 17:25:02.474+03
136	78	2	2018-01-30 08:49:59.194+03	2018-01-30 08:49:59.195+03	2018-01-30 08:49:59.195+03
137	79	2	2018-01-30 09:13:36.94+03	2018-01-30 09:13:36.94+03	2018-01-30 09:13:36.94+03
138	75	18	2018-01-30 09:25:17.337+03	2018-01-30 09:25:08.797+03	2018-01-30 09:25:17.349+03
169	88	8	2018-01-31 08:25:25.777+03	2018-01-31 08:21:16.413+03	2018-01-31 08:25:25.786+03
146	80	8	2018-01-30 19:17:30.228+03	2018-01-30 19:05:05.822+03	2018-01-30 19:17:30.238+03
181	92	8	2018-01-31 11:34:05.466+03	2018-01-31 11:34:05.466+03	2018-01-31 11:34:05.466+03
154	64	9	2018-01-31 07:50:49.146+03	2018-01-31 07:50:49.147+03	2018-01-31 07:50:49.147+03
209	108	8	2018-02-01 08:51:33.433+03	2018-02-01 07:20:28.961+03	2018-02-01 08:51:33.445+03
184	99	18	2018-02-01 12:09:53.937+03	2018-01-31 14:01:40.774+03	2018-02-01 12:09:53.953+03
157	85	8	2018-01-31 08:26:18.661+03	2018-01-31 08:05:17.024+03	2018-01-31 08:26:18.668+03
172	89	8	2018-02-01 11:41:43.011+03	2018-01-31 08:52:40.592+03	2018-02-01 11:41:43.018+03
129	68	2	2018-01-30 09:37:56.507+03	2018-01-29 14:57:40.127+03	2018-01-30 09:37:56.523+03
139	78	1	2018-01-30 09:38:22.337+03	2018-01-30 09:38:22.338+03	2018-01-30 09:38:22.338+03
168	84	9	2018-02-01 11:28:16.706+03	2018-01-31 08:20:45.706+03	2018-02-01 11:28:16.722+03
144	61	8	2018-01-30 17:45:02.306+03	2018-01-30 17:45:02.308+03	2018-01-30 17:45:02.308+03
165	88	18	2018-01-31 13:57:29.17+03	2018-01-31 08:20:19.653+03	2018-01-31 13:57:29.19+03
163	87	8	2018-02-01 10:19:26.914+03	2018-01-31 08:17:50.869+03	2018-02-01 10:19:26.928+03
180	97	8	2018-02-01 15:02:22.351+03	2018-01-31 11:33:51.224+03	2018-02-01 15:02:22.369+03
193	102	18	2018-01-31 16:07:35.459+03	2018-01-31 16:07:34.591+03	2018-01-31 16:07:35.468+03
160	86	8	2018-02-01 10:16:11.754+03	2018-01-31 08:08:19.216+03	2018-02-01 10:16:11.764+03
210	109	18	2018-02-01 17:29:28.546+03	2018-02-01 07:53:29.662+03	2018-02-01 17:29:28.557+03
192	101	18	2018-02-06 09:35:11.062+03	2018-01-31 15:41:26.772+03	2018-02-06 09:35:11.077+03
183	98	18	2018-02-06 07:09:44.434+03	2018-01-31 13:58:24.962+03	2018-02-06 07:09:44.463+03
155	83	9	2018-01-31 08:03:08.771+03	2018-01-31 07:55:47.54+03	2018-01-31 08:03:08.777+03
194	103	18	2018-02-01 17:35:09.722+03	2018-01-31 16:19:34.106+03	2018-02-01 17:35:09.732+03
217	114	8	2018-02-02 15:09:34.355+03	2018-02-01 09:08:33.933+03	2018-02-02 15:09:34.364+03
147	81	18	2018-01-31 09:41:28.514+03	2018-01-31 06:27:47.345+03	2018-01-31 09:41:28.53+03
153	84	8	2018-02-01 10:16:07.917+03	2018-01-31 07:06:24.638+03	2018-02-01 10:16:07.929+03
225	118	18	2018-02-01 17:28:12.697+03	2018-02-01 12:09:12.339+03	2018-02-01 17:28:12.706+03
174	92	18	2018-01-31 16:30:03.37+03	2018-01-31 11:02:46.792+03	2018-01-31 16:30:03.38+03
162	87	18	2018-02-01 17:19:53.7+03	2018-01-31 08:17:42.543+03	2018-02-01 17:19:53.727+03
196	105	18	2018-01-31 16:20:31.318+03	2018-01-31 16:20:30.841+03	2018-01-31 16:20:31.328+03
156	85	18	2018-01-31 12:02:00.97+03	2018-01-31 08:04:44.431+03	2018-01-31 12:02:00.981+03
179	97	18	2018-02-01 08:51:36.125+03	2018-01-31 11:33:19.751+03	2018-02-01 08:51:36.138+03
186	1	18	2018-01-31 17:02:05.244+03	2018-01-31 15:12:34.398+03	2018-01-31 17:02:05.271+03
190	5	18	2018-01-31 16:34:53.963+03	2018-01-31 15:17:08.053+03	2018-01-31 16:34:53.973+03
214	112	18	2018-02-01 09:06:01.654+03	2018-02-01 09:01:44.397+03	2018-02-01 09:06:01.667+03
223	117	8	2018-02-01 17:23:19.564+03	2018-02-01 11:48:34.926+03	2018-02-01 17:23:19.583+03
164	87	9	2018-01-31 17:24:48.854+03	2018-01-31 08:18:13.053+03	2018-01-31 17:24:48.87+03
191	100	23	2018-01-31 15:52:53.267+03	2018-01-31 15:27:06.211+03	2018-01-31 15:52:53.284+03
185	3	18	2018-02-01 15:04:37.915+03	2018-01-31 15:06:56.912+03	2018-02-01 15:04:37.938+03
203	106	18	2018-02-02 12:06:41.759+03	2018-01-31 17:18:20.606+03	2018-02-02 12:06:41.775+03
226	6	18	2018-02-01 12:11:19.135+03	2018-02-01 12:09:40.634+03	2018-02-01 12:11:19.152+03
182	10	18	2018-02-01 17:28:51.677+03	2018-01-31 12:52:10.835+03	2018-02-01 17:28:51.686+03
205	106	25	2018-01-31 17:25:16.237+03	2018-01-31 17:19:58.527+03	2018-01-31 17:25:16.255+03
206	107	8	2018-02-01 08:55:25.05+03	2018-02-01 06:15:18.528+03	2018-02-01 08:55:25.061+03
200	101	25	2018-01-31 17:25:21.565+03	2018-01-31 16:50:18.351+03	2018-01-31 17:25:21.576+03
198	100	25	2018-01-31 17:27:37.381+03	2018-01-31 16:30:49.814+03	2018-01-31 17:27:37.396+03
197	99	8	2018-02-01 11:46:30.341+03	2018-01-31 16:27:19.222+03	2018-02-01 11:46:30.363+03
213	111	18	2018-02-01 18:29:07.509+03	2018-02-01 09:00:15.817+03	2018-02-01 18:29:07.53+03
211	110	18	2018-02-02 14:57:44.066+03	2018-02-01 07:53:31.526+03	2018-02-02 14:57:44.08+03
212	110	8	2018-02-01 18:26:01.936+03	2018-02-01 08:01:58.268+03	2018-02-01 18:26:01.979+03
171	90	18	2018-02-01 08:28:26.929+03	2018-01-31 08:47:32.816+03	2018-02-01 08:28:26.942+03
177	95	18	2018-02-01 09:01:56.03+03	2018-01-31 11:26:59.427+03	2018-02-01 09:01:56.044+03
207	107	18	2018-02-01 09:09:42.492+03	2018-02-01 07:06:10.332+03	2018-02-01 09:09:42.508+03
208	108	18	2018-02-06 07:09:48.727+03	2018-02-01 07:20:02.629+03	2018-02-06 07:09:48.744+03
216	114	18	2018-02-01 09:13:40.599+03	2018-02-01 09:08:20.065+03	2018-02-01 09:13:40.619+03
218	115	18	2018-02-01 11:40:18.55+03	2018-02-01 10:48:20.245+03	2018-02-01 11:40:18.559+03
175	93	18	2018-02-01 11:39:53.271+03	2018-01-31 11:22:40.433+03	2018-02-01 11:39:53.288+03
188	100	18	2018-02-02 12:28:09.107+03	2018-01-31 15:14:01.168+03	2018-02-02 12:28:09.125+03
219	115	8	2018-02-01 11:31:37.187+03	2018-02-01 10:49:17.088+03	2018-02-01 11:31:37.204+03
150	83	8	2018-02-01 11:41:32.336+03	2018-01-31 06:30:26.944+03	2018-02-01 11:41:32.355+03
221	116	18	2018-02-01 13:16:17.211+03	2018-02-01 11:40:55.294+03	2018-02-01 13:16:17.239+03
120	67	18	2018-02-01 17:21:10.545+03	2018-01-29 13:14:59.863+03	2018-02-01 17:21:10.556+03
161	86	9	2018-02-01 11:49:37.067+03	2018-01-31 08:08:54.428+03	2018-02-01 11:49:37.079+03
224	117	9	2018-02-01 11:52:46.604+03	2018-02-01 11:50:20.878+03	2018-02-01 11:52:46.625+03
176	94	18	2018-02-01 12:07:18.8+03	2018-01-31 11:24:59.535+03	2018-02-01 12:07:18.824+03
187	9	18	2018-02-01 17:28:46.9+03	2018-01-31 15:12:40.676+03	2018-02-01 17:28:46.91+03
195	104	18	2018-02-01 12:09:29.799+03	2018-01-31 16:20:14.708+03	2018-02-01 12:09:29.811+03
220	115	9	2018-02-01 12:35:35.317+03	2018-02-01 10:51:41.581+03	2018-02-01 12:35:35.338+03
149	83	18	2018-02-01 13:25:51.977+03	2018-01-31 06:29:36.479+03	2018-02-01 13:25:52.002+03
202	7	18	2018-02-01 12:12:58.948+03	2018-01-31 17:05:53.419+03	2018-02-01 12:12:58.96+03
201	8	18	2018-02-01 17:28:33.499+03	2018-01-31 17:05:49.099+03	2018-02-01 17:28:33.513+03
204	106	8	2018-02-02 11:32:49.615+03	2018-01-31 17:18:57.164+03	2018-02-02 11:32:49.624+03
227	119	8	2018-02-01 12:43:29.117+03	2018-02-01 12:42:13.392+03	2018-02-01 12:43:29.131+03
228	119	9	2018-02-01 12:44:45.05+03	2018-02-01 12:43:57.621+03	2018-02-01 12:44:45.071+03
230	121	18	2018-02-01 13:14:07.577+03	2018-02-01 13:14:07.578+03	2018-02-01 13:14:07.578+03
231	122	18	2018-02-01 13:16:40.497+03	2018-02-01 13:16:40.266+03	2018-02-01 13:16:40.508+03
258	132	9	2018-02-02 14:29:07.668+03	2018-02-02 14:26:04.89+03	2018-02-02 14:29:07.681+03
253	95	29	2018-02-02 14:33:45.749+03	2018-02-02 14:16:47.383+03	2018-02-02 14:33:45.757+03
259	132	12	2018-02-02 14:34:16.967+03	2018-02-02 14:32:37.437+03	2018-02-02 14:34:16.978+03
233	124	18	2018-02-01 13:42:50.061+03	2018-02-01 13:35:15.263+03	2018-02-01 13:42:50.075+03
250	28	8	2018-02-01 17:36:27.536+03	2018-02-01 17:34:21.964+03	2018-02-01 17:36:27.546+03
251	100	29	2018-02-02 14:37:30.28+03	2018-02-02 14:12:22.801+03	2018-02-02 14:37:30.288+03
247	130	8	2018-02-01 17:52:49.619+03	2018-02-01 16:45:00.374+03	2018-02-01 17:52:49.643+03
246	130	35	2018-02-01 17:52:56.749+03	2018-02-01 16:43:05.56+03	2018-02-01 17:52:56.766+03
236	126	18	2018-02-01 15:26:39.204+03	2018-02-01 15:26:00.843+03	2018-02-01 15:26:39.215+03
248	130	9	2018-02-01 17:54:21.863+03	2018-02-01 16:45:12.612+03	2018-02-01 17:54:21.882+03
249	130	12	2018-02-01 18:04:59.676+03	2018-02-01 16:56:41.02+03	2018-02-01 18:04:59.689+03
237	127	18	2018-02-01 15:27:05.488+03	2018-02-01 15:27:00.155+03	2018-02-01 15:27:05.496+03
234	119	18	2018-02-02 12:25:13.232+03	2018-02-01 13:58:02.701+03	2018-02-02 12:25:13.242+03
244	125	8	2018-02-02 14:04:48.627+03	2018-02-01 16:32:41.895+03	2018-02-02 14:04:48.638+03
238	128	18	2018-02-01 15:27:39.566+03	2018-02-01 15:27:24.614+03	2018-02-01 15:27:39.576+03
239	128	8	2018-02-02 14:05:01.654+03	2018-02-01 15:34:27.652+03	2018-02-02 14:05:01.665+03
241	119	12	2018-02-01 16:31:41.514+03	2018-02-01 16:13:47.431+03	2018-02-01 16:31:41.526+03
229	120	18	2018-02-01 16:32:23.979+03	2018-02-01 13:09:28.509+03	2018-02-01 16:32:24.005+03
257	132	8	2018-02-02 15:00:27.667+03	2018-02-02 14:25:30.632+03	2018-02-02 15:00:27.706+03
260	108	29	2018-02-02 15:07:20.467+03	2018-02-02 14:37:41.186+03	2018-02-02 15:07:20.49+03
235	125	18	2018-02-01 16:33:46.797+03	2018-02-01 14:35:46.974+03	2018-02-01 16:33:46.81+03
245	125	9	2018-02-01 16:34:00.138+03	2018-02-01 16:33:16.63+03	2018-02-01 16:34:00.152+03
240	117	10	2018-02-01 16:35:01.481+03	2018-02-01 15:42:11.704+03	2018-02-01 16:35:01.494+03
243	129	8	2018-02-01 16:38:39.852+03	2018-02-01 16:31:32.786+03	2018-02-01 16:38:39.867+03
242	129	35	2018-02-01 16:42:07.838+03	2018-02-01 16:28:19.007+03	2018-02-01 16:42:07.856+03
232	123	18	2018-02-05 14:07:06.114+03	2018-02-01 13:34:55.287+03	2018-02-05 14:07:06.135+03
261	129	18	2018-02-06 07:10:00.493+03	2018-02-06 07:10:00.495+03	2018-02-06 07:10:00.495+03
252	131	35	2018-02-02 14:20:54.016+03	2018-02-02 14:16:26.039+03	2018-02-02 14:20:54.038+03
256	132	35	2018-02-02 14:25:03.426+03	2018-02-02 14:25:02.72+03	2018-02-02 14:25:03.452+03
254	131	8	2018-02-02 14:25:12.786+03	2018-02-02 14:19:19.476+03	2018-02-02 14:25:12.798+03
255	131	9	2018-02-02 14:25:16.344+03	2018-02-02 14:19:25.899+03	2018-02-02 14:25:16.359+03
\.


--
-- Name: date_comment_reading_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('date_comment_reading_id_seq', 261, true);


--
-- Data for Name: division; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY division (id, name, "createTime", "updateTime") FROM stdin;
1	Транзакционный бизнес	2018-01-15 10:11:44.762+03	2018-01-15 10:11:44.762+03
2	Занять и сберегать	2018-01-15 10:11:44.762+03	2018-01-15 10:11:44.762+03
3	Премиальные решения для состоятельных клиентов	2018-01-15 10:11:44.762+03	2018-01-15 10:11:44.762+03
4	Особенные решения	2018-01-15 10:11:44.762+03	2018-01-15 10:11:44.762+03
5	Банк рядом	2018-01-15 10:11:44.763+03	2018-01-15 10:11:44.763+03
6	ДомКлик	2018-01-15 10:11:44.763+03	2018-01-15 10:11:44.763+03
7	Цифровая платформа	2018-01-15 10:11:44.763+03	2018-01-15 10:11:44.763+03
8	Платежи и переводы	2018-01-15 10:11:44.763+03	2018-01-15 10:11:44.763+03
9	Забота о клиентах	2018-01-15 10:11:44.763+03	2018-01-15 10:11:44.763+03
10	Массовая персонализация	2018-01-15 10:11:44.763+03	2018-01-15 10:11:44.763+03
\.


--
-- Name: division_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('division_id_seq', 10, true);


--
-- Data for Name: executor_group; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY executor_group (id, "executorGroupUnionId", "groupId", "createTime", "updateTime") FROM stdin;
67	18	27	2018-01-30 12:05:11.097+03	2018-01-30 12:05:11.097+03
68	18	22	2018-01-30 12:05:13.004+03	2018-01-30 12:05:13.004+03
69	18	29	2018-01-30 12:05:18.218+03	2018-01-30 12:05:18.218+03
70	18	28	2018-01-30 12:05:21.975+03	2018-01-30 12:05:21.975+03
71	19	17	2018-01-30 12:05:40.359+03	2018-01-30 12:05:40.359+03
72	19	31	2018-01-30 12:05:42.115+03	2018-01-30 12:05:42.115+03
73	19	32	2018-01-30 12:05:44.974+03	2018-01-30 12:05:44.974+03
74	20	5	2018-01-30 12:05:56.601+03	2018-01-30 12:05:56.601+03
75	20	6	2018-01-30 12:05:59.447+03	2018-01-30 12:05:59.447+03
76	20	7	2018-01-30 12:06:01.172+03	2018-01-30 12:06:01.172+03
77	20	3	2018-01-30 12:06:02.751+03	2018-01-30 12:06:02.751+03
78	20	9	2018-01-30 12:06:04.164+03	2018-01-30 12:06:04.164+03
79	20	10	2018-01-30 12:06:10.319+03	2018-01-30 12:06:10.319+03
\.


--
-- Name: executor_group_groupId_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('"executor_group_groupId_seq"', 1, false);


--
-- Name: executor_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('executor_group_id_seq', 83, true);


--
-- Data for Name: executor_group_union; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY executor_group_union (id, name, "createTime", "updateTime") FROM stdin;
20	Тербанки	2018-01-30 12:05:50.627+03	2018-01-30 12:05:50.627+03
19	Медиапланирование	2018-01-30 12:05:30.38+03	2018-01-31 15:12:02.783+03
18	Внешний креатив	2018-01-30 12:04:24.355+03	2018-01-31 15:12:13.928+03
\.


--
-- Name: executor_group_union_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('executor_group_union_id_seq', 21, true);


--
-- Name: geography_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('geography_template_id_seq', 1, false);


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY migrations ("timestamp", name) FROM stdin;
1510236999166	CreateDivision1510236999166
1510321521974	CreateProduct1510321521974
1510583598946	CreateAdCampaign1510583598946
1510590525000	CreateStage1510590525000
1510837096541	CreateExecutorGroupUnion1510837096541
1511119827353	CreateAdCampaignExeuctorGroupUnion1511119827353
1512294798364	CreateExecutorGroup1512294798364
1512383309356	CreateComment1512383309356
1512483344748	CreateDateCommentReading1512483344748
1512631275112	CreateAdCampaignUpdateHistory1512631275112
1512747566503	CreateBrief1512747566503
1512747763360	CreateBusinessGoalTemplate1512747763360
1512747874252	CreateBusinessGoal1512747874252
1512915860226	CreateBriefFile1512915860226
1512978410419	AddCategoryColumn1512978410419
1512995142917	CreateTask1512995142917
1512995189784	CreateApprover1512995189784
1513001371494	CreateCommunicationFocusTemplate1513001371494
1513001395800	CreateCommunicationFocus1513001395800
1513058052796	CreateSalesChannelTemplate1513058052796
1513058055136	CreateSalesChannel1513058055136
1513075473412	CreateProductInformation1513075473412
1513166083788	ChangeSalesChannelTemplateIdReferences1513166083788
1513173034804	AddExecutionTextColumn1513173034804
1513174185650	CreateTaskFile1513174185650
1513177083109	TaskUpdateHistory1513177083109
1513252326586	RenameBrandMangerIdColumn1513252326586
1513255354577	AddTaskIdColumn1513255354577
1513255395234	AddCategoryColumn1513255395234
1513259490564	CreateToolBoardCategory1513259490564
1513259536845	CreateToolBoardTemplate1513259536845
1513259564428	CreateToolBoard1513259564428
1513265888244	AddBudgetColumns1513265888244
1513429082000	CreateSegmentTemplate1513429082000
1513429143000	CreateTargetAudience1513429143000
1513602418654	CreateGeographyTemplae1513602418654
1513602905580	AddGeographyColumn1513602905580
1513693596000	AddColumns1513693596000
1513780460735	CheangeForeignKeyExecutorGroupUnionId1513780460735
1514189104192	RefactorExecutionColumns1514189104192
1514201463910	RenameTableBusinessGoalToBriefBusinessGoal1514201463910
1514202592073	RenameTableBusinessGoalTemplateToBriefBusinessGoalTemplate1514202592073
1514203260406	RenameTableCommunicationFocusTemplateToBriefCommunicationFocusTemplate1514203260406
1514203421890	RenameTableCommunicationFocusToBriefCommunicationFocus1514203421890
1514203851715	RanameTableGeographyTemplateToBriefGeographyTemplate1514203851715
1514204380670	RenameTableProductInformationToBriefProductInformation1514204380670
1514205202214	RenameTableSalesChannelToBriefSalesChannel1514205202214
1514205334111	RenameTableSalesChannelTemplateToBriefSalesChannelTemplate1514205334111
1514205701292	RenameTableSegmentTemplateToBriefSegmentTemplate1514205701292
1514205837883	RenameTableTargetAudienceToBriefTargetAudience1514205837883
1514277021962	DropConstraintPrimaryKey1514277021962
1514277067020	RenameToolBoardTables1514277067020
1514277091996	CreateConstraintPrimaryKey1514277091996
1516169866486	RenameUserIdColumn1516169866486
1516640347342	ModifyTitleColumn1516640347342
1516694374000	AlterColumnType1516694374000
1516694374001	AlterColumnType1516694374001
1516812202685	AddIsApprovedColumn1516812202685
1517588168956	ModifyTextColumn1517588168956
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY product (id, "divisionId", name, "imagePath", "createTime", "updateTime") FROM stdin;
1	2	Потребительские кредиты	\N	2018-01-15 11:53:53.06+03	2018-01-15 11:53:53.06+03
2	2	Кредитные карты	\N	2018-01-15 12:03:42.308+03	2018-01-15 12:03:42.308+03
4	2	Счета	\N	2018-01-15 12:04:03.519+03	2018-01-15 12:04:03.519+03
5	2	Обезличенные металлические счета	\N	2018-01-15 12:04:25.92+03	2018-01-15 12:04:25.92+03
6	2	Монеты и слитки	\N	2018-01-15 12:04:42.065+03	2018-01-15 12:04:42.065+03
7	2	Сберегательный сертификат	\N	2018-01-15 12:05:27.639+03	2018-01-15 12:05:27.639+03
8	2	Пакеты услуг	\N	2018-01-15 12:05:47.328+03	2018-01-15 12:05:47.328+03
9	6	Ипотека на новостройки	\N	2018-01-15 12:06:04.496+03	2018-01-15 12:06:04.496+03
10	6	Ипотека на готовые квартиры	\N	2018-01-15 12:06:28.227+03	2018-01-15 12:06:28.227+03
11	6	Рефинансирование ипотеки 	\N	2018-01-15 12:06:55.374+03	2018-01-15 12:06:55.374+03
12	6	Юридическая проверка	\N	2018-01-15 12:07:12.602+03	2018-01-15 12:07:12.602+03
13	6	Электронная регистрация права собственности	\N	2018-01-15 12:07:31.006+03	2018-01-15 12:07:31.006+03
14	4	Продукты и сервисы для пенсионеров	\N	2018-01-15 12:09:18.878+03	2018-01-15 12:09:18.878+03
15	4	Продукты и сервисы для МВС	\N	2018-01-15 12:09:38.018+03	2018-01-15 12:09:38.018+03
16	4	Продукты и сервисы для людей с инвалидностью	\N	2018-01-15 12:09:55.806+03	2018-01-15 12:09:55.806+03
17	4	Продукты и сервисы для детей и родителей	\N	2018-01-15 12:10:21.79+03	2018-01-15 12:10:21.79+03
18	4	Продукты и сервисы для военных	\N	2018-01-15 12:10:35.803+03	2018-01-15 12:10:35.803+03
19	4	Продвижение сервисов благотворительности	\N	2018-01-15 12:10:49.927+03	2018-01-15 12:10:49.927+03
20	3	Пакет услуг Сбербанк Первый	\N	2018-01-15 12:11:20.468+03	2018-01-15 12:11:20.468+03
21	3	Карты для VIP-клиентов	\N	2018-01-15 12:11:35.207+03	2018-01-15 12:11:35.207+03
23	3	Платежи и переводы для VIP-клиентов	\N	2018-01-15 12:12:13.329+03	2018-01-15 12:12:13.329+03
24	3	Инвестиционные предложения	\N	2018-01-15 12:12:25.658+03	2018-01-15 12:12:25.658+03
25	3	Лайфстайл продукты и сервисы	\N	2018-01-15 12:12:42.956+03	2018-01-15 12:12:42.956+03
26	8	Автоплатежи	\N	2018-01-15 12:13:23.327+03	2018-01-15 12:13:23.327+03
27	8	Платежи	\N	2018-01-15 12:13:30.988+03	2018-01-15 12:13:30.988+03
28	8	Новые платежные сервисы	\N	2018-01-15 12:13:47.534+03	2018-01-15 12:13:47.534+03
29	8	Автопереводы	\N	2018-01-15 12:14:01.194+03	2018-01-15 12:14:01.194+03
30	8	Переводы	\N	2018-01-15 12:14:40.198+03	2018-01-15 12:14:40.198+03
31	8	Новые сервисы переводов	\N	2018-01-15 12:14:55.481+03	2018-01-15 12:14:55.481+03
32	8	Сервисы для поставщиков услуг	\N	2018-01-15 12:15:10.18+03	2018-01-15 12:15:10.18+03
33	8	Стрелка	\N	2018-01-15 12:15:32.409+03	2018-01-15 12:15:32.409+03
34	8	Ладошки	\N	2018-01-15 12:15:46.075+03	2018-01-15 12:15:46.075+03
35	5	ВСП	\N	2018-01-15 12:16:00.57+03	2018-01-15 12:16:00.57+03
36	5	Устройства самообслуживания	\N	2018-01-15 12:16:45.015+03	2018-01-15 12:16:45.015+03
37	10	Креативные материалы для массовой персонализации	\N	2018-01-15 12:17:16.788+03	2018-01-15 12:17:16.788+03
38	10	Умные советы	\N	2018-01-15 12:17:29.43+03	2018-01-15 12:17:29.43+03
39	9	Коммуникации клиентоцентричности	\N	2018-01-15 12:17:47.468+03	2018-01-15 12:17:47.468+03
40	9	Информирование о сбоях и технологических работах	\N	2018-01-15 12:18:00.422+03	2018-01-15 12:18:00.422+03
41	9	Сервисы ЕРКЦ	\N	2018-01-15 12:18:23.246+03	2018-01-15 12:18:23.246+03
42	7	Мобильное приложение Сбербанк Онлайн	\N	2018-01-15 12:18:38.716+03	2018-01-15 12:18:38.716+03
43	7	Web-версия Сбербанк Онлайн	\N	2018-01-15 12:18:55.256+03	2018-01-15 12:18:55.256+03
44	7	Сбербанк Онлайн как платформа	\N	2018-01-15 12:19:07.448+03	2018-01-15 12:19:07.448+03
45	7	СМС-банк: 900	\N	2018-01-15 12:19:19.029+03	2018-01-15 12:19:19.029+03
46	5	Прямые продажи	\N	2018-01-15 12:23:01.033+03	2018-01-15 12:23:01.033+03
47	1	Массовые дебетовые карты 	\N	2018-01-15 13:06:41.051+03	2018-01-15 13:06:41.051+03
48	1	Премиальные дебетовые карты	\N	2018-01-15 13:07:06.066+03	2018-01-15 13:07:06.066+03
49	1	Дебетовые карты для VIP-клиентов	\N	2018-01-15 13:07:17.486+03	2018-01-15 13:07:17.486+03
50	1	Интернет-эквайринг	\N	2018-01-15 13:08:26.698+03	2018-01-15 13:08:26.698+03
51	1	Торговый эквайринг	\N	2018-01-15 13:08:35.912+03	2018-01-15 13:08:35.912+03
52	1	Зарплатные карты	\N	2018-01-15 13:08:58.31+03	2018-01-15 13:08:58.31+03
53	1	Социальные карты	\N	2018-01-15 13:09:09.463+03	2018-01-15 13:09:09.463+03
54	1	Молодежные карты	\N	2018-01-15 13:09:22.098+03	2018-01-15 13:09:22.098+03
55	1	Бесконтактная оплата и инновации	\N	2018-01-15 13:09:48.931+03	2018-01-15 13:09:48.931+03
56	1	Карты с индивидуальным дизайном	\N	2018-01-15 13:10:00.755+03	2018-01-15 13:10:00.755+03
59	5	test	http://image.sber-mark1.qa.lan/i/5/57zuiZKnYC/240.png	2018-01-17 08:27:03.832+03	2018-01-17 13:49:42.492+03
22	3	Вклады для VIP-клиентов	http://image.sber-mark1.qa.lan/i/2/2nDWiThfaK/240.jpg	2018-01-15 12:11:56.407+03	2018-02-01 15:50:39.405+03
3	2	Вклады	http://image.sber-mark1.qa.lan/i/H/H8EJs3Qgop/240.jpg	2018-01-15 12:03:54.97+03	2018-02-01 15:51:02.178+03
61	5	test2	\N	2018-02-05 15:30:25.433+03	2018-02-05 15:30:25.433+03
60	5	test1	http://image.sber-mark1.qa.lan/i/1/107uwJrRnZ/240.png	2018-01-17 13:16:01.825+03	2018-01-17 13:16:24.289+03
\.


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('product_id_seq', 61, true);


--
-- Name: sales_channel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('sales_channel_id_seq', 26, true);


--
-- Name: sales_channel_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('sales_channel_template_id_seq', 11, true);


--
-- Name: segment_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('segment_template_id_seq', 7, true);


--
-- Data for Name: stage; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY stage (id, "adCampaignId", type, "beginDate", "endDate", "createTime", "updateTime") FROM stdin;
3	1	Summary	2018-02-15	2018-02-28	2018-01-16 07:14:47.769+03	2018-01-16 07:14:47.769+03
4	2	Preparation	2017-11-05	2017-11-10	2018-01-17 08:14:58.521+03	2018-01-17 08:14:58.521+03
5	2	Realization	2017-11-20	2017-11-21	2018-01-17 08:14:58.522+03	2018-01-17 08:14:58.522+03
6	2	Summary	2017-11-25	2017-11-30	2018-01-17 08:14:58.522+03	2018-01-17 08:14:58.522+03
7	3	Preparation	2018-01-17	2018-01-18	2018-01-17 12:52:28.023+03	2018-01-17 12:52:28.023+03
8	3	Realization	2018-01-19	2018-01-20	2018-01-17 12:52:28.023+03	2018-01-17 12:52:28.023+03
9	3	Summary	2018-01-21	2018-01-22	2018-01-17 12:52:28.023+03	2018-01-17 12:52:28.023+03
10	4	Preparation	2018-01-17	2018-01-18	2018-01-17 12:52:48.399+03	2018-01-17 12:52:48.399+03
11	4	Realization	2018-01-19	2018-01-20	2018-01-17 12:52:48.399+03	2018-01-17 12:52:48.399+03
12	4	Summary	2018-01-21	2018-01-22	2018-01-17 12:52:48.399+03	2018-01-17 12:52:48.399+03
13	5	Preparation	2018-01-17	2018-01-18	2018-01-17 12:53:01.25+03	2018-01-17 12:53:01.25+03
14	5	Realization	2018-01-19	2018-01-20	2018-01-17 12:53:01.25+03	2018-01-17 12:53:01.25+03
15	5	Summary	2018-01-21	2018-01-22	2018-01-17 12:53:01.25+03	2018-01-17 12:53:01.25+03
16	6	Preparation	2018-01-17	2018-01-18	2018-01-17 12:53:19.401+03	2018-01-17 12:53:19.401+03
17	6	Realization	2018-01-19	2018-01-20	2018-01-17 12:53:19.401+03	2018-01-17 12:53:19.401+03
18	6	Summary	2018-01-21	2018-01-22	2018-01-17 12:53:19.402+03	2018-01-17 12:53:19.402+03
19	7	Preparation	2018-01-17	2018-01-18	2018-01-17 13:25:19.299+03	2018-01-17 13:25:19.299+03
20	7	Realization	2018-01-19	2018-01-20	2018-01-17 13:25:19.299+03	2018-01-17 13:25:19.299+03
21	7	Summary	2018-01-21	2018-01-22	2018-01-17 13:25:19.299+03	2018-01-17 13:25:19.299+03
1	1	Preparation	2018-01-01	2018-01-31	2018-01-16 07:14:47.768+03	2018-01-18 10:47:19.707+03
2	1	Realization	2018-02-02	2018-02-14	2018-01-16 07:14:47.769+03	2018-01-18 10:47:19.707+03
22	8	Preparation	2018-01-18	2018-01-19	2018-01-18 15:25:32.805+03	2018-01-18 15:25:32.805+03
23	8	Realization	2018-01-20	2018-01-21	2018-01-18 15:25:32.805+03	2018-01-18 15:25:32.805+03
24	8	Summary	2018-01-22	2018-01-23	2018-01-18 15:25:32.806+03	2018-01-18 15:25:32.806+03
25	9	Preparation	2018-01-18	2018-01-19	2018-01-18 15:40:32.827+03	2018-01-18 15:40:32.827+03
26	9	Realization	2018-01-20	2018-01-21	2018-01-18 15:40:32.827+03	2018-01-18 15:40:32.827+03
27	9	Summary	2018-01-22	2018-01-23	2018-01-18 15:40:32.827+03	2018-01-18 15:40:32.827+03
28	10	Preparation	2018-01-19	2018-01-20	2018-01-19 08:18:48.317+03	2018-01-19 08:18:48.317+03
29	10	Realization	2018-01-21	2018-01-22	2018-01-19 08:18:48.317+03	2018-01-19 08:18:48.317+03
30	10	Summary	2018-01-23	2018-01-24	2018-01-19 08:18:48.318+03	2018-01-19 08:18:48.318+03
31	11	Preparation	2018-01-19	2018-01-20	2018-01-19 08:53:02.638+03	2018-01-19 08:53:02.638+03
32	11	Realization	2018-01-21	2018-01-22	2018-01-19 08:53:02.638+03	2018-01-19 08:53:02.638+03
33	11	Summary	2018-01-23	2018-01-24	2018-01-19 08:53:02.638+03	2018-01-19 08:53:02.638+03
34	12	Preparation	2018-01-24	2018-01-25	2018-01-24 17:29:48.333+03	2018-01-24 17:29:48.333+03
35	12	Realization	2018-01-26	2018-01-27	2018-01-24 17:29:48.333+03	2018-01-24 17:29:48.333+03
36	12	Summary	2018-01-28	2018-01-29	2018-01-24 17:29:48.333+03	2018-01-24 17:29:48.333+03
37	13	Preparation	2018-02-01	2018-02-28	2018-01-24 17:31:13.193+03	2018-01-24 17:31:13.193+03
38	13	Realization	2018-03-01	2018-03-02	2018-01-24 17:31:13.193+03	2018-01-24 17:31:13.193+03
39	13	Summary	2018-03-03	2018-03-04	2018-01-24 17:31:13.193+03	2018-01-24 17:31:13.193+03
40	14	Preparation	2018-01-29	2018-02-28	2018-01-29 05:35:09.09+03	2018-01-29 05:35:09.09+03
41	14	Realization	2018-03-01	2018-03-31	2018-01-29 05:35:09.09+03	2018-01-29 05:35:09.09+03
42	14	Summary	2018-04-01	2018-04-02	2018-01-29 05:35:09.09+03	2018-01-29 05:35:09.09+03
43	15	Preparation	2018-01-30	2018-02-05	2018-01-30 09:49:23.896+03	2018-01-30 09:49:23.896+03
44	15	Realization	2018-02-07	2018-03-01	2018-01-30 09:49:23.897+03	2018-01-30 09:49:23.897+03
45	15	Summary	2018-03-01	2018-03-31	2018-01-30 09:49:23.897+03	2018-01-30 09:49:23.897+03
46	16	Preparation	2018-01-30	2018-01-31	2018-01-30 12:32:53.652+03	2018-01-30 12:32:53.652+03
47	16	Realization	2018-02-01	2018-02-02	2018-01-30 12:32:53.652+03	2018-01-30 12:32:53.652+03
48	16	Summary	2018-02-03	2018-02-04	2018-01-30 12:32:53.652+03	2018-01-30 12:32:53.652+03
49	17	Preparation	2018-01-30	2018-01-31	2018-01-30 12:41:08.885+03	2018-01-30 12:41:08.885+03
50	17	Realization	2018-02-01	2018-02-02	2018-01-30 12:41:08.885+03	2018-01-30 12:41:08.885+03
51	17	Summary	2018-02-03	2018-02-04	2018-01-30 12:41:08.885+03	2018-01-30 12:41:08.885+03
55	19	Preparation	2018-01-30	2018-01-31	2018-01-30 13:26:47.297+03	2018-01-30 13:26:47.297+03
56	19	Realization	2018-02-01	2018-02-02	2018-01-30 13:26:47.297+03	2018-01-30 13:26:47.297+03
57	19	Summary	2018-02-03	2018-02-04	2018-01-30 13:26:47.297+03	2018-01-30 13:26:47.297+03
58	20	Preparation	2018-01-31	2018-03-01	2018-01-31 06:28:41.764+03	2018-01-31 06:28:41.764+03
59	20	Realization	2018-03-02	2018-03-03	2018-01-31 06:28:41.765+03	2018-01-31 06:28:41.765+03
60	20	Summary	2018-03-04	2018-03-05	2018-01-31 06:28:41.765+03	2018-01-31 06:28:41.765+03
61	21	Preparation	2018-02-05	2018-03-04	2018-01-31 12:32:17.927+03	2018-01-31 12:32:17.927+03
62	21	Realization	2018-03-06	2018-03-23	2018-01-31 12:32:17.927+03	2018-01-31 12:32:17.927+03
63	21	Summary	2018-03-24	2018-03-31	2018-01-31 12:32:17.927+03	2018-01-31 12:32:17.927+03
64	22	Preparation	2018-02-01	2018-02-02	2018-02-01 06:13:43.216+03	2018-02-01 06:13:43.216+03
65	22	Realization	2018-02-03	2018-02-04	2018-02-01 06:13:43.217+03	2018-02-01 06:13:43.217+03
66	22	Summary	2018-02-05	2018-02-06	2018-02-01 06:13:43.218+03	2018-02-01 06:13:43.218+03
67	23	Preparation	2018-02-01	2018-02-02	2018-02-01 07:48:15.857+03	2018-02-01 07:48:15.857+03
68	23	Realization	2018-02-03	2018-02-04	2018-02-01 07:48:15.857+03	2018-02-01 07:48:15.857+03
69	23	Summary	2018-02-05	2018-02-06	2018-02-01 07:48:15.857+03	2018-02-01 07:48:15.857+03
70	24	Preparation	2018-02-01	2018-02-02	2018-02-01 07:49:19.387+03	2018-02-01 07:49:19.387+03
71	24	Realization	2018-02-03	2018-02-04	2018-02-01 07:49:19.387+03	2018-02-01 07:49:19.387+03
72	24	Summary	2018-02-05	2018-02-06	2018-02-01 07:49:19.387+03	2018-02-01 07:49:19.387+03
73	25	Preparation	2018-02-01	2018-02-02	2018-02-01 08:03:23.059+03	2018-02-01 08:03:23.059+03
74	25	Realization	2018-02-03	2018-02-04	2018-02-01 08:03:23.06+03	2018-02-01 08:03:23.06+03
75	25	Summary	2018-02-05	2018-02-06	2018-02-01 08:03:23.06+03	2018-02-01 08:03:23.06+03
76	26	Preparation	2018-02-01	2018-02-02	2018-02-01 08:06:59.086+03	2018-02-01 08:06:59.086+03
77	26	Realization	2018-02-03	2018-02-04	2018-02-01 08:06:59.086+03	2018-02-01 08:06:59.086+03
78	26	Summary	2018-02-05	2018-02-06	2018-02-01 08:06:59.086+03	2018-02-01 08:06:59.086+03
79	27	Preparation	2018-02-01	2018-02-02	2018-02-01 08:35:30.914+03	2018-02-01 08:35:30.914+03
80	27	Realization	2018-02-03	2018-02-04	2018-02-01 08:35:30.914+03	2018-02-01 08:35:30.914+03
81	27	Summary	2018-02-05	2018-02-06	2018-02-01 08:35:30.915+03	2018-02-01 08:35:30.915+03
82	28	Preparation	2018-04-02	2018-05-01	2018-02-01 11:47:59.241+03	2018-02-01 11:47:59.241+03
83	28	Realization	2018-05-02	2018-05-03	2018-02-01 11:47:59.241+03	2018-02-01 11:47:59.241+03
84	28	Summary	2018-05-04	2018-05-05	2018-02-01 11:47:59.241+03	2018-02-01 11:47:59.241+03
85	29	Preparation	2018-02-01	2018-02-02	2018-02-01 12:40:21.31+03	2018-02-01 12:40:21.31+03
86	29	Realization	2018-02-03	2018-02-04	2018-02-01 12:40:21.31+03	2018-02-01 12:40:21.31+03
87	29	Summary	2018-02-05	2018-02-06	2018-02-01 12:40:21.31+03	2018-02-01 12:40:21.31+03
52	18	Preparation	2018-02-09	2018-03-01	2018-01-30 12:42:41.301+03	2018-02-01 16:15:16.894+03
53	18	Realization	2018-03-02	2018-03-03	2018-01-30 12:42:41.301+03	2018-02-01 16:15:16.895+03
54	18	Summary	2018-03-04	2018-03-05	2018-01-30 12:42:41.302+03	2018-02-01 16:15:16.895+03
88	30	Preparation	2018-02-01	2018-02-10	2018-02-01 16:16:15.449+03	2018-02-01 16:16:15.449+03
89	30	Realization	2018-02-11	2018-02-18	2018-02-01 16:16:15.449+03	2018-02-01 16:16:15.449+03
90	30	Summary	2018-02-20	2018-02-24	2018-02-01 16:16:15.449+03	2018-02-01 16:16:15.449+03
91	31	Preparation	2018-02-02	2018-02-03	2018-02-02 11:06:22.448+03	2018-02-02 11:06:22.448+03
92	31	Realization	2018-02-04	2018-02-05	2018-02-02 11:06:22.448+03	2018-02-02 11:06:22.448+03
93	31	Summary	2018-02-06	2018-02-07	2018-02-02 11:06:22.448+03	2018-02-02 11:06:22.448+03
94	32	Preparation	2018-02-02	2018-02-15	2018-02-02 14:14:34.294+03	2018-02-02 14:14:34.294+03
95	32	Realization	2018-02-16	2018-02-17	2018-02-02 14:14:34.294+03	2018-02-02 14:14:34.294+03
96	32	Summary	2018-02-18	2018-02-19	2018-02-02 14:14:34.294+03	2018-02-02 14:14:34.294+03
\.


--
-- Name: stage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('stage_id_seq', 96, true);


--
-- Name: target_audience_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('target_audience_id_seq', 22, true);


--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY task (id, "stageId", status, title, description, deadline, budget, "authorId", "createTime", "updateTime", "executionText", "groupExecutorId", "userRoleExecutorId") FROM stdin;
131	94	cancelled	Задание №11	Замечательное описание задания1	2018-02-07 00:00:00+03	\N	35	2018-02-02 14:16:25.757+03	2018-02-02 14:20:48.904+03	\N	18	\N
100	61	assigned	1813	123	2018-02-02 00:00:00+03	\N	18	2018-01-31 15:14:00.791+03	2018-02-02 11:30:53.862+03		20	24
132	94	inProgress	Проверка цикла задачи до конца	описание	2018-02-14 00:00:00+03	22	35	2018-02-02 14:25:02.413+03	2018-02-02 14:34:14.62+03	\N	18	12
106	61	inProgress	2018	123	2018-02-01 00:00:00+03	\N	18	2018-01-31 17:18:20.23+03	2018-02-02 11:32:44.765+03	\N	17	8
81	40	assigned	6	6	2018-02-03 00:00:00+03	\N	18	2018-01-31 06:27:46.946+03	2018-01-31 06:27:47.623+03	\N	22	\N
109	64	cancelled	fdg	dfg	2018-02-02 00:00:00+03	\N	18	2018-02-01 07:53:29.358+03	2018-02-01 07:55:17.796+03	\N	22	\N
94	40	assigned	testtest	testtest	2018-02-14 00:00:00+03	\N	18	2018-01-31 11:24:59.232+03	2018-01-31 11:24:59.871+03	\N	29	\N
116	64	assigned	Test	Test	2018-02-02 00:00:00+03	5000	18	2018-02-01 11:40:55.014+03	2018-02-01 11:40:55.674+03	\N	17	\N
95	40	assigned	testtest	testtses	2018-02-21 00:00:00+03	\N	18	2018-01-31 11:26:59.085+03	2018-01-31 11:26:59.842+03	\N	28	\N
84	58	cancelled	Тест	Тест	2018-02-02 00:00:00+03	\N	18	2018-01-31 07:00:10.343+03	2018-01-31 07:39:52.164+03	\N	18	\N
101	61	assigned	hhhhhhh	jjjlbk	2018-02-15 00:00:00+03	\N	18	2018-01-31 15:41:25.841+03	2018-01-31 15:41:27.278+03	\N	27	\N
96	40	assigned	testset	etstset	2018-02-03 00:00:00+03	\N	18	2018-01-31 11:28:39.672+03	2018-01-31 11:28:40.472+03	\N	27	\N
118	82	draft	111	1111	2018-04-05 00:00:00+03	\N	18	2018-02-01 12:09:11.992+03	2018-02-01 12:09:12.502+03	\N	22	\N
83	58	approved	3	3	2018-02-02 00:00:00+03	\N	18	2018-01-31 06:29:36.194+03	2018-01-31 08:03:30.511+03	Отчет	17	9
102	58	draft	asdf	asdfas	2018-02-02 00:00:00+03	\N	18	2018-01-31 16:07:34.255+03	2018-01-31 16:07:35.057+03	\N	17	\N
82	58	cancelled	3	3	2018-02-03 00:00:00+03	\N	18	2018-01-31 06:29:01.569+03	2018-01-31 11:32:00.27+03	\N	22	\N
91	40	assigned	test	testtest	2018-02-01 00:00:00+03	\N	18	2018-01-31 09:42:05.116+03	2018-01-31 09:42:05.742+03	\N	27	\N
97	40	assigned	testtestse	filetest	2018-02-08 00:00:00+03	\N	18	2018-01-31 11:33:19.461+03	2018-01-31 11:33:20.089+03	\N	17	\N
85	58	cancelled	6	6	2018-02-03 00:00:00+03	\N	18	2018-01-31 08:04:44.164+03	2018-01-31 12:02:00.755+03	Да я это сделал	17	9
103	58	draft	dfg	sdfg	2018-02-02 00:00:00+03	\N	18	2018-01-31 16:19:32.894+03	2018-01-31 16:19:34.278+03	\N	22	\N
90	58	cancelled	Test	test	2018-02-03 00:00:00+03	\N	18	2018-01-31 08:47:32.56+03	2018-01-31 13:08:06.732+03	\N	17	\N
87	58	inProgress	Согласование	Новый тест	2018-02-03 00:00:00+03	\N	18	2018-01-31 08:17:42.242+03	2018-01-31 13:57:06.419+03	\N	17	8
89	58	inProgress	Test	test	2018-02-02 00:00:00+03	\N	18	2018-01-31 08:44:42.633+03	2018-02-01 11:41:42.724+03	\N	17	8
88	58	assigned	Согласование 2	sdfdsfds	2018-02-03 00:00:00+03	\N	18	2018-01-31 08:20:19.387+03	2018-01-31 13:57:29.05+03	Отчет	9	\N
105	58	draft	asdf	adsfasdf	2018-02-03 00:00:00+03	\N	18	2018-01-31 16:20:30.618+03	2018-01-31 16:20:30.963+03	\N	27	\N
98	61	assigned	tset	tset	2018-02-03 00:00:00+03	\N	18	2018-01-31 13:58:24.717+03	2018-01-31 13:58:25.264+03	\N	27	\N
92	40	assigned	filetest	filetest	2018-02-03 00:00:00+03	\N	18	2018-01-31 11:02:46.445+03	2018-01-31 11:02:47.161+03	\N	27	\N
93	40	assigned	test	test	2018-02-03 00:00:00+03	\N	18	2018-01-31 11:22:40.012+03	2018-01-31 11:22:40.762+03	\N	22	\N
104	58	assigned	adsf	asdfasdf	2018-02-02 00:00:00+03	\N	18	2018-01-31 16:20:14.311+03	2018-01-31 16:26:47.06+03	\N	22	\N
99	58	approval	dgf	dfgdgfasgsdf	2018-02-03 00:00:00+03	\N	18	2018-01-31 14:01:40.517+03	2018-02-01 11:46:30.053+03	Отчет	17	8
124	82	assigned	1	11	2018-04-05 00:00:00+03	\N	18	2018-02-01 13:35:14.998+03	2018-02-01 13:35:15.583+03	\N	28	\N
86	58	assigned	Проверяем отклонение согласования	ffffffааааа Проверяем отклонение согласования Проверяем отклонение согласования Проверяем отклонение согласования	2018-02-03 00:00:00+03	\N	18	2018-01-31 08:07:50.133+03	2018-02-01 13:50:48.312+03	Тру ля ля	17	\N
114	64	approved	sdf	asdf	2018-02-01 00:00:00+03	\N	18	2018-02-01 09:08:19.781+03	2018-02-01 09:13:35.035+03	sdfasdf	17	8
107	64	approval	2	sfdasf	2018-02-02 00:00:00+03	5000	32	2018-02-01 06:14:04.924+03	2018-02-01 08:51:57.224+03	Have been done!!!	17	8
108	61	assigned	1019	123	2018-02-02 00:00:00+03	\N	18	2018-02-01 07:20:02.342+03	2018-02-01 07:20:03.025+03	\N	17	\N
111	64	draft	2	2	2018-02-02 00:00:00+03	\N	18	2018-02-01 09:00:15.521+03	2018-02-01 09:00:15.957+03	\N	27	\N
112	64	draft	asdfs	asf	2018-02-02 00:00:00+03	\N	18	2018-02-01 09:01:44.094+03	2018-02-01 09:01:44.573+03	\N	22	\N
110	67	assigned	hhhhhhh	ijhuuhhouhuhiuiuihuhiuhiu	2018-02-02 00:00:00+03	\N	18	2018-02-01 07:53:31.285+03	2018-02-01 07:53:31.98+03	\N	17	\N
115	64	cancelled	Задачище	Задачище	2018-02-02 00:00:00+03	\N	18	2018-02-01 10:48:19.859+03	2018-02-01 11:40:18.411+03	Done!	18	9
113	64	assigned	asdf	asdf	2018-02-02 00:00:00+03	\N	18	2018-02-01 09:02:18.009+03	2018-02-01 09:02:18.653+03	\N	22	\N
119	85	approval	задача от тульской	цупуцп	2018-02-02 00:00:00+03	12321321	35	2018-02-01 12:41:31.191+03	2018-02-01 12:46:16.305+03	Gbie	18	12
120	82	draft	1	1	2018-04-04 00:00:00+03	\N	18	2018-02-01 13:09:28.183+03	2018-02-01 13:09:28.693+03	\N	22	\N
123	82	assigned	1	1	2018-04-05 00:00:00+03	\N	18	2018-02-01 13:34:54.915+03	2018-02-01 13:34:59.356+03	\N	22	\N
121	82	draft	1	1	2018-04-04 00:00:00+03	\N	18	2018-02-01 13:14:07.313+03	2018-02-01 13:14:07.313+03	\N	\N	\N
122	82	draft	1	1	2018-04-05 00:00:00+03	\N	18	2018-02-01 13:16:39.913+03	2018-02-01 13:16:39.913+03	\N	\N	\N
125	82	assigned	test	test	2018-04-04 00:00:00+03	\N	18	2018-02-01 14:35:46.586+03	2018-02-01 16:34:00.003+03	Отчет	18	10
126	82	draft	1	1	2018-04-05 00:00:00+03	\N	18	2018-02-01 15:26:00.47+03	2018-02-01 15:26:00.973+03	\N	22	\N
127	82	draft	1	1	2018-04-10 00:00:00+03	\N	18	2018-02-01 15:26:59.909+03	2018-02-01 15:27:00.291+03	\N	29	\N
128	82	assigned	2	2	2018-04-12 00:00:00+03	\N	18	2018-02-01 15:27:24.382+03	2018-02-01 15:38:01.532+03	\N	18	10
117	82	approval	1	1	2018-04-24 00:00:00+03	10000	18	2018-02-01 11:48:22.228+03	2018-02-01 16:35:01.329+03	Проверяю	18	10
129	88	cancelled	Бренд-менеджер создал задачу и назначил ее на группу-исполнителя	Задачу видят супервайзер и трафик-менеджер группы-исполнителя.	2018-02-08 00:00:00+03	22	35	2018-02-01 16:28:18.665+03	2018-02-01 16:42:07.708+03	\N	17	\N
130	88	approval	рк тульской 2	Бренд-менеджер создал задачу и назначил ее на группу-исполнителя. Задачу видят супервайзер и трафик-менеджер группы-исполнителя.	2018-02-06 00:00:00+03	6	35	2018-02-01 16:43:05.14+03	2018-02-01 17:52:06.4+03	Заполняю "Выполнение" исполнителем и добавляю csv файл	18	12
\.


--
-- Data for Name: task_file; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY task_file (id, "taskId", name, "originName", type, "createTime", "updateTime", category) FROM stdin;
19	91	bcc1ebcd-3490-4a96-80a0-e36f01171015	logo	svg	2018-01-31 10:36:28.058+03	2018-01-31 10:36:28.058+03	creating
20	96	cf7a9c8a-53c1-4eb7-8244-4d3583c6a416	logo	svg	2018-01-31 11:28:41.681+03	2018-01-31 11:28:41.681+03	creating
22	97	730308d9-4ff4-4646-b02f-90cbad6e843e	logo	svg	2018-01-31 11:33:21.378+03	2018-01-31 11:33:21.378+03	creating
23	97	b0ad8fcd-a888-42dd-99fe-7c8cb496c528	index	css	2018-01-31 11:33:21.405+03	2018-01-31 11:33:21.405+03	creating
24	97	c36488aa-a163-4a0e-983d-649912918bcb	logo	svg	2018-01-31 11:35:29.713+03	2018-01-31 11:35:29.713+03	Execution
25	97	9026ce17-7392-4df3-a9e6-47c4c75c14ef	logo	svg	2018-01-31 11:35:35.251+03	2018-01-31 11:35:35.251+03	Execution
39	98	270d14ad-2f33-41a2-beed-483d7cb49fd1	logo	svg	2018-01-31 14:01:45.887+03	2018-01-31 14:01:45.887+03	creating
40	118	5c8e2db3-8d88-4038-9a31-e1278f08f6a1	checkbox_checked	svg	2018-02-01 12:09:13.75+03	2018-02-01 12:09:13.75+03	creating
43	126	430e946c-90f6-4a6e-bf18-03c20c9e3f0c	opti1-15	svg	2018-02-01 15:26:28.182+03	2018-02-01 15:26:28.182+03	creating
44	126	78fe99cb-92ec-4e56-ac9f-8eec81869385	opti1-13	svg	2018-02-01 15:26:31.904+03	2018-02-01 15:26:31.904+03	creating
45	126	d01fb1a6-bf92-43a0-a8dd-c10c67fdd0c9	opti1-13	svg	2018-02-01 15:26:35.433+03	2018-02-01 15:26:35.433+03	creating
46	127	42714da6-a32a-48c3-8085-6f5a34b5326a	opti1-03	svg	2018-02-01 15:27:02.287+03	2018-02-01 15:27:02.287+03	creating
47	127	3be67eb1-30be-4ef7-adb1-632287998cea	opti1-07	svg	2018-02-01 15:27:02.334+03	2018-02-01 15:27:02.334+03	creating
48	127	3c428284-3789-4f38-821a-f4899212a9fb	opti1-15	svg	2018-02-01 15:27:02.35+03	2018-02-01 15:27:02.35+03	creating
49	128	b1793c40-3fe2-48ef-8a2f-3fdb850fe668	opti1-16	svg	2018-02-01 15:27:25.856+03	2018-02-01 15:27:25.856+03	creating
50	129	f76f40f5-7d6b-438b-9c7e-d8a1f60dabc3	Eero_Ettala_Pasi_Salminen	jpg	2018-02-01 16:28:20.613+03	2018-02-01 16:28:20.613+03	creating
51	130	9c59dce4-bfd2-421c-983b-5ee20e2d9061	1989_pic	jpg	2018-02-01 16:43:06.894+03	2018-02-01 16:43:06.894+03	creating
52	130	e4da1f1b-0509-434c-8309-5032acf1d991	392624532	jpg	2018-02-01 16:59:31.669+03	2018-02-01 16:59:31.669+03	Execution
53	130	892c9365-adf6-4faf-a3b0-f6754f421d7e	result	csv	2018-02-01 17:46:23.501+03	2018-02-01 17:46:23.501+03	Execution
54	131	5acd87d5-462a-400a-9fc9-711bc85ef015	scenery-jonas-carlson-wallpaper-featuredcontent-change-lystad-espen-desktop	jpg	2018-02-02 14:16:27.222+03	2018-02-02 14:16:27.222+03	creating
55	131	c46ffcb4-33d2-4376-b4fd-73c10908cd97	6551725-transworld-snowboarding-wallpaper-wednesday	jpeg	2018-02-02 14:16:53.52+03	2018-02-02 14:16:53.52+03	creating
56	132	316d62c1-623c-4bf8-93a9-7b9762ff4821	14269	png	2018-02-02 14:25:04.035+03	2018-02-02 14:25:04.035+03	creating
\.


--
-- Name: task_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('task_file_id_seq', 56, true);


--
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('task_id_seq', 132, true);


--
-- Data for Name: task_update_history; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY task_update_history (id, "taskId", "userId", type, "createTime", "updateTime") FROM stdin;
\.


--
-- Name: task_update_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('task_update_history_id_seq', 1, false);


--
-- Name: tool_board_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('tool_board_category_id_seq', 1, false);


--
-- Name: tool_board_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('tool_board_id_seq', 78, true);


--
-- Name: tool_board_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('tool_board_template_id_seq', 1, false);


--
-- Name: ad_campaign_executor_group_un_adCampaignId_executorGroupUni_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY ad_campaign_executor_group_union
    ADD CONSTRAINT "ad_campaign_executor_group_un_adCampaignId_executorGroupUni_key" UNIQUE ("adCampaignId", "executorGroupUnionId");


--
-- Name: ad_campaign_executor_group_union_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY ad_campaign_executor_group_union
    ADD CONSTRAINT ad_campaign_executor_group_union_pkey PRIMARY KEY (id);


--
-- Name: ad_campaign_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY ad_campaign
    ADD CONSTRAINT ad_campaign_pkey PRIMARY KEY (id);


--
-- Name: ad_campaign_update_history_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY ad_campaign_update_history
    ADD CONSTRAINT ad_campaign_update_history_pkey PRIMARY KEY (id);


--
-- Name: approver_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY approver
    ADD CONSTRAINT approver_pkey PRIMARY KEY (id);


--
-- Name: brief_file_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_file
    ADD CONSTRAINT brief_file_pkey PRIMARY KEY (id);


--
-- Name: brief_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief
    ADD CONSTRAINT brief_pkey PRIMARY KEY ("adCampaignId");


--
-- Name: business_goal_adCampaignId_templateId_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_business_goal
    ADD CONSTRAINT "business_goal_adCampaignId_templateId_key" UNIQUE ("adCampaignId", "templateId");


--
-- Name: business_goal_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_business_goal
    ADD CONSTRAINT business_goal_pkey PRIMARY KEY (id);


--
-- Name: business_goal_template_name_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_business_goal_template
    ADD CONSTRAINT business_goal_template_name_key UNIQUE (name);


--
-- Name: business_goal_template_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_business_goal_template
    ADD CONSTRAINT business_goal_template_pkey PRIMARY KEY (id);


--
-- Name: comment_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);


--
-- Name: communication_focus_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_communication_focus
    ADD CONSTRAINT communication_focus_pkey PRIMARY KEY ("adCampaignId");


--
-- Name: communication_focus_template_name_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_communication_focus_template
    ADD CONSTRAINT communication_focus_template_name_key UNIQUE (name);


--
-- Name: communication_focus_template_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_communication_focus_template
    ADD CONSTRAINT communication_focus_template_pkey PRIMARY KEY (id);


--
-- Name: date_comment_reading_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY date_comment_reading
    ADD CONSTRAINT date_comment_reading_pkey PRIMARY KEY (id);


--
-- Name: division_name_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY division
    ADD CONSTRAINT division_name_key UNIQUE (name);


--
-- Name: division_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY division
    ADD CONSTRAINT division_pkey PRIMARY KEY (id);


--
-- Name: executor_group_executorGroupUnionId_groupId_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY executor_group
    ADD CONSTRAINT "executor_group_executorGroupUnionId_groupId_key" UNIQUE ("executorGroupUnionId", "groupId");


--
-- Name: executor_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY executor_group
    ADD CONSTRAINT executor_group_pkey PRIMARY KEY (id);


--
-- Name: executor_group_union_name_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY executor_group_union
    ADD CONSTRAINT executor_group_union_name_key UNIQUE (name);


--
-- Name: executor_group_union_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY executor_group_union
    ADD CONSTRAINT executor_group_union_pkey PRIMARY KEY (id);


--
-- Name: geography_template_name_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_geography_template
    ADD CONSTRAINT geography_template_name_key UNIQUE (name);


--
-- Name: geography_template_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_geography_template
    ADD CONSTRAINT geography_template_pkey PRIMARY KEY (id);


--
-- Name: migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY ("timestamp");


--
-- Name: product_divisionId_name_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY product
    ADD CONSTRAINT "product_divisionId_name_key" UNIQUE ("divisionId", name);


--
-- Name: product_information_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_product_information
    ADD CONSTRAINT product_information_pkey PRIMARY KEY ("adCampaignId");


--
-- Name: product_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: sales_channel_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_sales_channel
    ADD CONSTRAINT sales_channel_pkey PRIMARY KEY (id);


--
-- Name: sales_channel_template_name_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_sales_channel_template
    ADD CONSTRAINT sales_channel_template_name_key UNIQUE (name);


--
-- Name: sales_channel_template_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_sales_channel_template
    ADD CONSTRAINT sales_channel_template_pkey PRIMARY KEY (id);


--
-- Name: segment_template_name_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_segment_template
    ADD CONSTRAINT segment_template_name_key UNIQUE (name);


--
-- Name: segment_template_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_segment_template
    ADD CONSTRAINT segment_template_pkey PRIMARY KEY (id);


--
-- Name: stage_adCampaignId_type_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY stage
    ADD CONSTRAINT "stage_adCampaignId_type_key" UNIQUE ("adCampaignId", type);


--
-- Name: stage_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY stage
    ADD CONSTRAINT stage_pkey PRIMARY KEY (id);


--
-- Name: target_audience_adCampaignId_templateId_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_target_audience
    ADD CONSTRAINT "target_audience_adCampaignId_templateId_key" UNIQUE ("adCampaignId", "templateId");


--
-- Name: target_audience_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_target_audience
    ADD CONSTRAINT target_audience_pkey PRIMARY KEY (id);


--
-- Name: task_file_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY task_file
    ADD CONSTRAINT task_file_pkey PRIMARY KEY (id);


--
-- Name: task_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- Name: task_update_history_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY task_update_history
    ADD CONSTRAINT task_update_history_pkey PRIMARY KEY (id);


--
-- Name: tool_board_adCampaignId_templateId_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_tool_board
    ADD CONSTRAINT "tool_board_adCampaignId_templateId_key" UNIQUE ("adCampaignId", "templateId");


--
-- Name: tool_board_category_name_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_tool_board_category
    ADD CONSTRAINT tool_board_category_name_key UNIQUE (name);


--
-- Name: tool_board_category_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_tool_board_category
    ADD CONSTRAINT tool_board_category_pkey PRIMARY KEY (id);


--
-- Name: tool_board_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_tool_board
    ADD CONSTRAINT tool_board_pkey PRIMARY KEY (id);


--
-- Name: tool_board_template_categoryId_name_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_tool_board_template
    ADD CONSTRAINT "tool_board_template_categoryId_name_key" UNIQUE ("categoryId", name);


--
-- Name: tool_board_template_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_tool_board_template
    ADD CONSTRAINT tool_board_template_pkey PRIMARY KEY (id);


--
-- Name: ad_campaign_executor_group_union_adCampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY ad_campaign_executor_group_union
    ADD CONSTRAINT "ad_campaign_executor_group_union_adCampaignId_fkey" FOREIGN KEY ("adCampaignId") REFERENCES ad_campaign(id);


--
-- Name: ad_campaign_executor_group_union_executorGroupUnionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY ad_campaign_executor_group_union
    ADD CONSTRAINT "ad_campaign_executor_group_union_executorGroupUnionId_fkey" FOREIGN KEY ("executorGroupUnionId") REFERENCES executor_group_union(id);


--
-- Name: ad_campaign_productId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY ad_campaign
    ADD CONSTRAINT "ad_campaign_productId_fkey" FOREIGN KEY ("productId") REFERENCES product(id);


--
-- Name: ad_campaign_update_history_adCampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY ad_campaign_update_history
    ADD CONSTRAINT "ad_campaign_update_history_adCampaignId_fkey" FOREIGN KEY ("adCampaignId") REFERENCES ad_campaign(id);


--
-- Name: approver_prevApproverId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY approver
    ADD CONSTRAINT "approver_prevApproverId_fkey" FOREIGN KEY ("prevApproverId") REFERENCES approver(id);


--
-- Name: approver_taskId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY approver
    ADD CONSTRAINT "approver_taskId_fkey" FOREIGN KEY ("taskId") REFERENCES task(id);


--
-- Name: brief_adCampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief
    ADD CONSTRAINT "brief_adCampaignId_fkey" FOREIGN KEY ("adCampaignId") REFERENCES ad_campaign(id);


--
-- Name: brief_business_goal_adCampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_business_goal
    ADD CONSTRAINT "brief_business_goal_adCampaignId_fkey" FOREIGN KEY ("adCampaignId") REFERENCES brief("adCampaignId");


--
-- Name: brief_business_goal_templateId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_business_goal
    ADD CONSTRAINT "brief_business_goal_templateId_fkey" FOREIGN KEY ("templateId") REFERENCES brief_business_goal_template(id);


--
-- Name: brief_communication_focus_adCampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_communication_focus
    ADD CONSTRAINT "brief_communication_focus_adCampaignId_fkey" FOREIGN KEY ("adCampaignId") REFERENCES brief("adCampaignId");


--
-- Name: brief_communication_focus_templateId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_communication_focus
    ADD CONSTRAINT "brief_communication_focus_templateId_fkey" FOREIGN KEY ("templateId") REFERENCES brief_communication_focus_template(id);


--
-- Name: brief_file_adCampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_file
    ADD CONSTRAINT "brief_file_adCampaignId_fkey" FOREIGN KEY ("adCampaignId") REFERENCES brief("adCampaignId");


--
-- Name: brief_geographyId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief
    ADD CONSTRAINT "brief_geographyId_fkey" FOREIGN KEY ("geographyId") REFERENCES brief_geography_template(id);


--
-- Name: brief_product_information_adCampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_product_information
    ADD CONSTRAINT "brief_product_information_adCampaignId_fkey" FOREIGN KEY ("adCampaignId") REFERENCES brief("adCampaignId");


--
-- Name: brief_sales_channel_adCampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_sales_channel
    ADD CONSTRAINT "brief_sales_channel_adCampaignId_fkey" FOREIGN KEY ("adCampaignId") REFERENCES brief("adCampaignId");


--
-- Name: brief_sales_channel_templateId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_sales_channel
    ADD CONSTRAINT "brief_sales_channel_templateId_fkey" FOREIGN KEY ("templateId") REFERENCES brief_sales_channel_template(id);


--
-- Name: brief_target_audience_adCampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_target_audience
    ADD CONSTRAINT "brief_target_audience_adCampaignId_fkey" FOREIGN KEY ("adCampaignId") REFERENCES brief("adCampaignId");


--
-- Name: brief_target_audience_templateId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_target_audience
    ADD CONSTRAINT "brief_target_audience_templateId_fkey" FOREIGN KEY ("templateId") REFERENCES brief_segment_template(id);


--
-- Name: brief_tool_board_templateId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_tool_board
    ADD CONSTRAINT "brief_tool_board_templateId_fkey" FOREIGN KEY ("templateId") REFERENCES brief_tool_board_template(id);


--
-- Name: brief_tool_board_template_categoryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_tool_board_template
    ADD CONSTRAINT "brief_tool_board_template_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES brief_tool_board_category(id);


--
-- Name: executor_group_executorGroupUnionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY executor_group
    ADD CONSTRAINT "executor_group_executorGroupUnionId_fkey" FOREIGN KEY ("executorGroupUnionId") REFERENCES executor_group_union(id);


--
-- Name: product_divisionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY product
    ADD CONSTRAINT "product_divisionId_fkey" FOREIGN KEY ("divisionId") REFERENCES division(id);


--
-- Name: stage_adCampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY stage
    ADD CONSTRAINT "stage_adCampaignId_fkey" FOREIGN KEY ("adCampaignId") REFERENCES ad_campaign(id);


--
-- Name: task_file_taskId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY task_file
    ADD CONSTRAINT "task_file_taskId_fkey" FOREIGN KEY ("taskId") REFERENCES task(id);


--
-- Name: task_stageId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY task
    ADD CONSTRAINT "task_stageId_fkey" FOREIGN KEY ("stageId") REFERENCES stage(id);


--
-- Name: task_update_history_taskId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY task_update_history
    ADD CONSTRAINT "task_update_history_taskId_fkey" FOREIGN KEY ("taskId") REFERENCES ad_campaign(id);


--
-- Name: tool_board_adCampaignId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY brief_tool_board
    ADD CONSTRAINT "tool_board_adCampaignId_fkey" FOREIGN KEY ("adCampaignId") REFERENCES brief("adCampaignId");


--
-- Name: public; Type: ACL; Schema: -; Owner: gorod
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM gorod;
GRANT ALL ON SCHEMA public TO gorod;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

