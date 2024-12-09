--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE kick;
ALTER ROLE kick WITH NOSUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:mEfaVT/PPgsM30M/KmT8AA==$cRUXaRfwG5E1vzTcZKcbF1rMEpXWyVkl40JWc9tYhMc=:fXIe39GqZNnTyQe8f40o+b3aWiAGhL31+JHSqJs/PwU=';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:r2tAWoSIgwG8Bv5peljXsA==$WrnND5nKTedjLczbKJLz45Yj5UHr5fXCRLtC8/Yjs3k=:jZjLg/Ou+pBYiQYFbq9CT8m0E6vZXIySRppZhwblM30=';

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

--
-- Database "kicksdb" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: kicksdb; Type: DATABASE; Schema: -; Owner: kick
--

CREATE DATABASE kicksdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE kicksdb OWNER TO kick;

\connect kicksdb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: brand_kick; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.brand_kick (
    id bigint NOT NULL,
    brand_id bigint NOT NULL,
    kick_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.brand_kick OWNER TO kick;

--
-- Name: brand_kick_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.brand_kick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brand_kick_id_seq OWNER TO kick;

--
-- Name: brand_kick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.brand_kick_id_seq OWNED BY public.brand_kick.id;


--
-- Name: brands; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.brands (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.brands OWNER TO kick;

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brands_id_seq OWNER TO kick;

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.categories OWNER TO kick;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO kick;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: collabrand_kick; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.collabrand_kick (
    id bigint NOT NULL,
    collabrand_id bigint NOT NULL,
    kick_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.collabrand_kick OWNER TO kick;

--
-- Name: collabrand_kick_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.collabrand_kick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collabrand_kick_id_seq OWNER TO kick;

--
-- Name: collabrand_kick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.collabrand_kick_id_seq OWNED BY public.collabrand_kick.id;


--
-- Name: collabrands; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.collabrands (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.collabrands OWNER TO kick;

--
-- Name: collabrands_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.collabrands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collabrands_id_seq OWNER TO kick;

--
-- Name: collabrands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.collabrands_id_seq OWNED BY public.collabrands.id;


--
-- Name: color_kick; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.color_kick (
    id bigint NOT NULL,
    color_id bigint NOT NULL,
    kick_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.color_kick OWNER TO kick;

--
-- Name: color_kick_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.color_kick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.color_kick_id_seq OWNER TO kick;

--
-- Name: color_kick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.color_kick_id_seq OWNED BY public.color_kick.id;


--
-- Name: colors; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.colors (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.colors OWNER TO kick;

--
-- Name: colors_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colors_id_seq OWNER TO kick;

--
-- Name: colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.colors_id_seq OWNED BY public.colors.id;


--
-- Name: designer_kick; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.designer_kick (
    id bigint NOT NULL,
    designer_id bigint NOT NULL,
    kick_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.designer_kick OWNER TO kick;

--
-- Name: designer_kick_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.designer_kick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.designer_kick_id_seq OWNER TO kick;

--
-- Name: designer_kick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.designer_kick_id_seq OWNED BY public.designer_kick.id;


--
-- Name: designers; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.designers (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.designers OWNER TO kick;

--
-- Name: designers_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.designers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.designers_id_seq OWNER TO kick;

--
-- Name: designers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.designers_id_seq OWNED BY public.designers.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO kick;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO kick;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.images (
    id bigint NOT NULL,
    kick_id bigint NOT NULL,
    img_orig character varying(255),
    img_b character varying(255),
    img_s character varying(255),
    display_order smallint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.images OWNER TO kick;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO kick;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- Name: kick_material; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.kick_material (
    id bigint NOT NULL,
    material_id bigint NOT NULL,
    kick_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.kick_material OWNER TO kick;

--
-- Name: kick_material_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.kick_material_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kick_material_id_seq OWNER TO kick;

--
-- Name: kick_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.kick_material_id_seq OWNED BY public.kick_material.id;


--
-- Name: kick_person; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.kick_person (
    id bigint NOT NULL,
    person_id bigint NOT NULL,
    kick_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.kick_person OWNER TO kick;

--
-- Name: kick_person_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.kick_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kick_person_id_seq OWNER TO kick;

--
-- Name: kick_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.kick_person_id_seq OWNED BY public.kick_person.id;


--
-- Name: kicks; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.kicks (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    style_code character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text,
    release_date date,
    kmodel_id bigint,
    category_id bigint,
    is_published boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.kicks OWNER TO kick;

--
-- Name: kicks_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.kicks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kicks_id_seq OWNER TO kick;

--
-- Name: kicks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.kicks_id_seq OWNED BY public.kicks.id;


--
-- Name: kmodels; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.kmodels (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.kmodels OWNER TO kick;

--
-- Name: kmodels_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.kmodels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kmodels_id_seq OWNER TO kick;

--
-- Name: kmodels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.kmodels_id_seq OWNED BY public.kmodels.id;


--
-- Name: materials; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.materials (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.materials OWNER TO kick;

--
-- Name: materials_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materials_id_seq OWNER TO kick;

--
-- Name: materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.materials_id_seq OWNED BY public.materials.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO kick;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO kick;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO kick;

--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO kick;

--
-- Name: people; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.people (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.people OWNER TO kick;

--
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_id_seq OWNER TO kick;

--
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO kick;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO kick;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO kick;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO kick;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: brand_kick id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.brand_kick ALTER COLUMN id SET DEFAULT nextval('public.brand_kick_id_seq'::regclass);


--
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: collabrand_kick id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.collabrand_kick ALTER COLUMN id SET DEFAULT nextval('public.collabrand_kick_id_seq'::regclass);


--
-- Name: collabrands id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.collabrands ALTER COLUMN id SET DEFAULT nextval('public.collabrands_id_seq'::regclass);


--
-- Name: color_kick id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.color_kick ALTER COLUMN id SET DEFAULT nextval('public.color_kick_id_seq'::regclass);


--
-- Name: colors id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.colors ALTER COLUMN id SET DEFAULT nextval('public.colors_id_seq'::regclass);


--
-- Name: designer_kick id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.designer_kick ALTER COLUMN id SET DEFAULT nextval('public.designer_kick_id_seq'::regclass);


--
-- Name: designers id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.designers ALTER COLUMN id SET DEFAULT nextval('public.designers_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: kick_material id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kick_material ALTER COLUMN id SET DEFAULT nextval('public.kick_material_id_seq'::regclass);


--
-- Name: kick_person id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kick_person ALTER COLUMN id SET DEFAULT nextval('public.kick_person_id_seq'::regclass);


--
-- Name: kicks id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kicks ALTER COLUMN id SET DEFAULT nextval('public.kicks_id_seq'::regclass);


--
-- Name: kmodels id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kmodels ALTER COLUMN id SET DEFAULT nextval('public.kmodels_id_seq'::regclass);


--
-- Name: materials id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.materials ALTER COLUMN id SET DEFAULT nextval('public.materials_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: people id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: brand_kick; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.brand_kick (id, brand_id, kick_id, created_at, updated_at) FROM stdin;
1	4	1	\N	\N
2	8	2	\N	\N
3	5	3	\N	\N
4	2	4	\N	\N
5	4	4	\N	\N
6	6	5	\N	\N
7	5	6	\N	\N
8	3	7	\N	\N
9	5	7	\N	\N
10	1	8	\N	\N
11	3	9	\N	\N
12	2	10	\N	\N
13	4	10	\N	\N
\.


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.brands (id, name, created_at, updated_at) FROM stdin;
1	Reebok	2023-06-27 09:50:30	2023-06-27 09:50:30
2	Vans	2023-06-27 09:50:30	2023-06-27 09:50:30
3	New Balance	2023-06-27 09:50:30	2023-06-27 09:50:30
4	Under Armour	2023-06-27 09:50:30	2023-06-27 09:50:30
5	Nike	2023-06-27 09:50:30	2023-06-27 09:50:30
6	Air Jordan	2023-06-27 09:50:30	2023-06-27 09:50:30
7	Adidas	2023-06-27 09:50:30	2023-06-27 09:50:30
8	Osiris	2023-06-27 09:50:30	2023-06-27 09:50:30
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.categories (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: collabrand_kick; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.collabrand_kick (id, collabrand_id, kick_id, created_at, updated_at) FROM stdin;
1	5	1	\N	\N
2	5	2	\N	\N
3	5	3	\N	\N
4	3	4	\N	\N
5	3	7	\N	\N
6	4	9	\N	\N
\.


--
-- Data for Name: collabrands; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.collabrands (id, name, created_at, updated_at) FROM stdin;
1	Undefeated	2023-06-27 09:50:30	2023-06-27 09:50:30
2	Sony	2023-06-27 09:50:30	2023-06-27 09:50:30
3	H&M	2023-06-27 09:50:30	2023-06-27 09:50:30
4	Marvel	2023-06-27 09:50:30	2023-06-27 09:50:30
5	A Ma Maniere	2023-06-27 09:50:30	2023-06-27 09:50:30
\.


--
-- Data for Name: color_kick; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.color_kick (id, color_id, kick_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: colors; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.colors (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: designer_kick; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.designer_kick (id, designer_id, kick_id, created_at, updated_at) FROM stdin;
1	1	2	\N	\N
2	5	2	\N	\N
3	1	3	\N	\N
4	2	3	\N	\N
5	3	4	\N	\N
6	5	5	\N	\N
7	1	6	\N	\N
8	5	6	\N	\N
9	2	8	\N	\N
\.


--
-- Data for Name: designers; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.designers (id, name, created_at, updated_at) FROM stdin;
1	Boris Fisher	2023-06-27 09:50:30	2023-06-27 09:50:30
2	Joelle Kemmer	2023-06-27 09:50:30	2023-06-27 09:50:30
3	Lavada Ullrich	2023-06-27 09:50:30	2023-06-27 09:50:30
4	Lexus Bogan	2023-06-27 09:50:30	2023-06-27 09:50:30
5	Aliza Schuster	2023-06-27 09:50:30	2023-06-27 09:50:30
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.images (id, kick_id, img_orig, img_b, img_s, display_order, created_at, updated_at) FROM stdin;
1	1	/img/orig/f16a9eded09df06254749a8479e03327.jpg	/img/b/e81fff88cb6b24ea9ffd1ee1665316fc.jpg	/img/s/04beb05a5f699f70da4e807b430097eb.jpg	1	2023-06-27 09:49:10	2023-06-27 09:50:30
2	1	/img/orig/084a583d5b916c503cd052d03c145eae.jpg	/img/b/7192fa5fd513f6266ec9847c6cd75e11.jpg	/img/s/577d8eec796334823c496cbc85d9e00a.jpg	2	2023-06-27 09:49:10	2023-06-27 09:50:30
3	1	/img/orig/a64ceaa9e418db2c2af682c7a2fdb424.jpg	/img/b/edafd98bd5b3597d5421e3e48f17cfd4.jpg	/img/s/51336a0ff5814d40c18070ec17f0f59a.jpg	3	2023-06-27 09:49:10	2023-06-27 09:50:30
4	2	/img/orig/e6c19ed3dba40e4b3ac977480416abb8.jpg	/img/b/bd5b5dc480c96cfb7ff0771395acc99d.jpg	/img/s/2a93c3f2bc5a0fcbaa2a188295571c6b.jpg	1	2023-06-27 09:49:25	2023-06-27 09:50:30
5	2	/img/orig/19db95cc1f0560f44decd6bef2a38202.jpg	/img/b/1fb4ada347950a857b896d6dd0584361.jpg	/img/s/bf8c033488c2258a143ce26d3b6cec6b.jpg	2	2023-06-27 09:49:25	2023-06-27 09:50:30
6	2	/img/orig/3a1865238d6e918173d406e3d15d6371.jpg	/img/b/7511ada95300a92be02adc37c240fa3f.jpg	/img/s/784e8be3a78bce959248d6c9b86ee6d9.jpg	3	2023-06-27 09:49:25	2023-06-27 09:50:30
7	3	/img/orig/30ca01bd4d95198aceb5421de9708e36.jpg	/img/b/4a3c7c12eef7b6e6ec16214e04d82a35.jpg	/img/s/a990089b7e2db0230d791807752e4b0e.jpg	1	2023-06-27 09:49:35	2023-06-27 09:50:30
8	3	/img/orig/59782ad000230669ce1afb88ab1aa02d.jpg	/img/b/fc424e01ba9bf59b8266693afc263350.jpg	/img/s/83bdb8af6b98c947514eb88d66f1219b.jpg	2	2023-06-27 09:49:35	2023-06-27 09:50:30
9	3	/img/orig/667af27ab75df45ec5eaf5d6695d6178.jpg	/img/b/22bcad669a29d0fd7c61f8b50d452581.jpg	/img/s/74695ffcf4e5c72c3fa4b5722c2cda35.jpg	3	2023-06-27 09:49:35	2023-06-27 09:50:30
10	4	/img/orig/e14b161deaf955d7d79a39eb4b81e3cf.jpg	/img/b/24f567d9cfccbeb0015737ff07625fec.jpg	/img/s/1c9301d999636fc2d7f76271c2062817.jpg	1	2023-06-27 09:49:42	2023-06-27 09:50:30
11	4	/img/orig/d889f51697cd8f45577c6a3ef3c6fbed.jpg	/img/b/281fd11fbef06b6c4963c57514e5f833.jpg	/img/s/10ecd9c60a39cc757a17e0a08e0e8608.jpg	2	2023-06-27 09:49:42	2023-06-27 09:50:30
12	4	/img/orig/12511eb5976f8703844bf7ed99e39760.jpg	/img/b/7feabacf3706ee15a594f0d0a2f140a0.jpg	/img/s/accdee4e7c339223d255acb5fa066322.jpg	3	2023-06-27 09:49:42	2023-06-27 09:50:30
13	5	/img/orig/8e2da325c12a4c4983cee0cb18f6c5c1.jpg	/img/b/cbe4e929d62a1cb3361d3518d36f5645.jpg	/img/s/030c0baef0bfaa0ac2f78fa9017ea088.jpg	1	2023-06-27 09:49:53	2023-06-27 09:50:30
14	5	/img/orig/ebf608a06058c20c3ac58396f0c4f9cc.jpg	/img/b/54b2f1a9d38713213ecb971cee9b2ecd.jpg	/img/s/f9e775211b1bd49ab63618877ee7cab1.jpg	2	2023-06-27 09:49:53	2023-06-27 09:50:30
15	5	/img/orig/2dd403c7ce8b52a52a64d2c68b79d11f.jpg	/img/b/3600fab21daf41c5d78b9c7da13bea4e.jpg	/img/s/28f7f9b2b9aa8bcf01e1c58d12c52d35.jpg	3	2023-06-27 09:49:53	2023-06-27 09:50:30
16	6	/img/orig/cdd402448a521e137378c19a9633cded.jpg	/img/b/d5ac59a69ae09c9d1b5eaff99c738011.jpg	/img/s/2e96436694862e426d0a77e5b9bd68bc.jpg	1	2023-06-27 09:50:00	2023-06-27 09:50:30
17	6	/img/orig/228fc25bd93d0a275fcb3a487ec836a4.jpg	/img/b/6c68b6e5f9a71655501b3250f7b608b8.jpg	/img/s/559aa355a56f6da713620afb646c2402.jpg	2	2023-06-27 09:50:00	2023-06-27 09:50:30
18	6	/img/orig/7f03692f1dd131de120344acbde38d52.jpg	/img/b/b844eca318cadeea726621471b66a6b3.jpg	/img/s/e910392fc4fbe6d6654a97655cc07c14.jpg	3	2023-06-27 09:50:00	2023-06-27 09:50:30
19	7	/img/orig/f8050ec6c5a2a72c1a3d020fa83aa054.jpg	/img/b/057ebaf564f7a955819ed8a8a0816eed.jpg	/img/s/e967dcb5873bfd6905fff9d009631889.jpg	1	2023-06-27 09:50:06	2023-06-27 09:50:30
20	7	/img/orig/6d0b2d512e60ab0887ed35b8eb06458e.jpg	/img/b/43d99a4f50690c350dd64063ed754c57.jpg	/img/s/7c3eb65b4697d7152c74cb09ec09ef21.jpg	2	2023-06-27 09:50:06	2023-06-27 09:50:30
21	7	/img/orig/e095d14e3941f92dd440e32a9eeb5698.jpg	/img/b/694d3e1419b9c4048c96560b8be1861d.jpg	/img/s/28938c0ac6c1bbc348ce177ca99ecd8d.jpg	3	2023-06-27 09:50:06	2023-06-27 09:50:30
22	8	/img/orig/dd0c6fc75f8db52adc1a39367fbd5942.jpg	/img/b/6542d32551ac14db0364dc57a3fdf97a.jpg	/img/s/4f59bb75e706eed1a9a9b3cc7521a051.jpg	1	2023-06-27 09:50:12	2023-06-27 09:50:30
23	8	/img/orig/2c343018f3d4d99ee0a5ed80b73783a1.jpg	/img/b/ebf060b4f0161c099566682f29b671d0.jpg	/img/s/5be2010b97828e9433094106d8d38ea2.jpg	2	2023-06-27 09:50:12	2023-06-27 09:50:30
24	8	/img/orig/c7d599cdbdb4e326e9c238a2bca85adb.jpg	/img/b/209e961565d82a7b8516376224a95609.jpg	/img/s/b733aac3d7747d4ebc9b0558977f85fb.jpg	3	2023-06-27 09:50:12	2023-06-27 09:50:30
25	9	/img/orig/9e711c2b4452b087fc5af90cb4a65fab.jpg	/img/b/9fa6746429a4a75b34dac2a93566faf4.jpg	/img/s/bc2486d33775f2dcc1592c99a7ef1bdc.jpg	1	2023-06-27 09:50:18	2023-06-27 09:50:30
26	9	/img/orig/e402ffd138b304a0140c1ca4e08313a8.jpg	/img/b/1b12366f5abc619436e821d766ef27a5.jpg	/img/s/a1baaeba57b9b0f480f0c3bbd72714e8.jpg	2	2023-06-27 09:50:18	2023-06-27 09:50:30
27	9	/img/orig/bc180b0368d145dbd5a093a814b0da64.jpg	/img/b/523fe472b75f74f57d90daffba924c9c.jpg	/img/s/513f1438785406eade66ea9cc3826ce7.jpg	3	2023-06-27 09:50:18	2023-06-27 09:50:30
28	10	/img/orig/44a24f07d4607ade23ca9494c295bae3.jpg	/img/b/fac4acd1139c969253b6f371286df200.jpg	/img/s/06544159957aedc99c3406c8f651b7dd.jpg	1	2023-06-27 09:50:30	2023-06-27 09:50:30
29	10	/img/orig/a2fecadd8a0d221d1a2a5038d8f49b50.jpg	/img/b/30cf91a6edb2e854c50137a4b9590ebf.jpg	/img/s/811fed1b983c9ed7fb2849754cf120b7.jpg	2	2023-06-27 09:50:30	2023-06-27 09:50:30
30	10	/img/orig/8920477d9b64afc58926c18f1e97b3a4.jpg	/img/b/20d31cff604ac1cde6216fee3edda5a2.jpg	/img/s/dcab521d0d922a8e99e00faff16868ac.jpg	3	2023-06-27 09:50:30	2023-06-27 09:50:30
\.


--
-- Data for Name: kick_material; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.kick_material (id, material_id, kick_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: kick_person; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.kick_person (id, person_id, kick_id, created_at, updated_at) FROM stdin;
1	1	3	\N	\N
2	3	4	\N	\N
3	5	5	\N	\N
4	5	6	\N	\N
5	1	9	\N	\N
\.


--
-- Data for Name: kicks; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.kicks (id, title, style_code, slug, description, release_date, kmodel_id, category_id, is_published, created_at, updated_at) FROM stdin;
8	Reebok Maxime Voluptates Ipsum	tlk24oaq	reebok-maxime-voluptates-ipsum_tlk24oaq	Doloribus alias error dolor possimus aut nostrum voluptatem. Quos fugiat natus laboriosam accusantium libero sint. Voluptatem itaque aut inventore. Hic et neque et tempora placeat.	2005-12-02	\N	\N	t	2023-06-27 09:50:06	2023-06-27 09:50:06
3	NIke Veniam Nisi Nihil	8v35vlek	osiris-veniam-nisi-nihil_8v35vlek	Magnam dolores ad velit minus enim. Non quo non labore debitis quae dolorum. Id voluptate id ipsam. Est quia possimus optio recusandae. Omnis enim aut nisi ut voluptatum magnam.	2002-01-25	2	\N	t	2023-06-27 09:49:25	2023-06-27 09:49:25
6	Nike Ut Voluptates Cum	cu0225iq	osiris-ut-voluptates-cum_cu0225iq	Omnis placeat non reprehenderit soluta officia ad. Et nemo voluptates et quos sit quas. Quasi quas delectus ea autem cupiditate aut totam. Vitae accusamus et cumque maxime laudantium.	2005-04-16	4	\N	t	2023-06-27 09:49:53	2023-06-27 09:49:53
9	New Balance Dolores Illum Reiciendis	gmp66cb2	adidas-dolores-illum-reiciendis_gmp66cb2	Cupiditate odit ratione aliquid quo rem. Dolorem voluptas sit voluptas quod cupiditate earum suscipit nihil. Non dolorem architecto qui. Quia architecto qui alias quibusdam blanditiis in officiis.	1998-05-28	\N	\N	t	2023-06-27 09:50:12	2023-06-27 09:50:12
1	Under Armour Assumenda Consectetur Dolorum	70ubn911	vans-assumenda-consectetur-dolorum_70ubn911	Hic laborum architecto consequuntur recusandae est repudiandae voluptates. Hic dolorum repudiandae et error facere fuga. Voluptatem quia et modi nam illum delectus. Optio tempora assumenda sed.	1995-08-12	1	\N	t	2023-06-27 09:48:45	2023-06-27 09:48:45
4	Under Armour Incidunt Debitis Vel	4n89819y	nike-incidunt-debitis-vel_4n89819y	Officiis maxime beatae sit dolorum. Nam earum et praesentium quia omnis. Voluptas qui consequatur explicabo esse eos aut. Cumque consectetur in sit. Totam error omnis ab et non. Nam est fugiat odit.	1987-03-14	\N	\N	t	2023-06-27 09:49:35	2023-06-27 09:49:35
7	New Balance & Nike Consequatur Quia Totam	ka01ere9	osiris-consequatur-quia-totam_ka01ere9	Consequuntur qui quia voluptas. Dolor qui hic et. Sint perferendis voluptatem ut.	1971-11-12	5	\N	t	2023-06-27 09:50:00	2023-06-27 09:50:00
10	Vans & Under Armour Autem Molestiae Quas	388jtoj2	air-jordan-autem-molestiae-quas_388jtoj2	Fugit consequatur nihil sed. Ea aperiam molestiae ea. Architecto temporibus aliquid quia et nihil voluptatem quas suscipit.	1985-04-02	\N	\N	t	2023-06-27 09:50:18	2023-06-27 09:50:18
5	Air Jordan Numquam Magni Temporibus	x6f1mrzz	reebok-numquam-magni-temporibus_x6f1mrzz	Autem sint iure voluptatibus sunt at. Quidem aperiam error dolores quo perferendis.	1987-05-26	3	\N	t	2023-06-27 09:49:42	2023-06-27 09:49:42
2	Osiris Laborum Fuga Voluptatem	09apt3ux	adidas-laborum-fuga-voluptatem_09apt3ux	Ad perspiciatis ea vel nulla amet ex. Maxime rerum odio possimus facere. Sint libero quis blanditiis ducimus dolorem quis.	2016-10-02	\N	\N	t	2023-06-27 09:49:10	2023-06-27 09:49:10
\.


--
-- Data for Name: kmodels; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.kmodels (id, name, created_at, updated_at) FROM stdin;
1	Sequi 2	2023-06-27 09:48:45	2023-06-27 09:48:45
2	Dolorum 7	2023-06-27 09:48:45	2023-06-27 09:48:45
3	Quo 6	2023-06-27 09:48:45	2023-06-27 09:48:45
4	Eveniet 8	2023-06-27 09:48:45	2023-06-27 09:48:45
5	Quasi 5	2023-06-27 09:48:45	2023-06-27 09:48:45
\.


--
-- Data for Name: materials; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.materials (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.migrations (id, migration, batch) FROM stdin;
1585	2014_10_12_000000_create_users_table	1
1586	2014_10_12_100000_create_password_reset_tokens_table	1
1587	2014_10_12_100000_create_password_resets_table	1
1588	2019_08_19_000000_create_failed_jobs_table	1
1589	2019_12_14_000001_create_personal_access_tokens_table	1
1590	2023_03_15_095422_create_kmodels_table	1
1591	2023_03_15_130143_create_brands_table	1
1592	2023_03_15_134452_create_collabrands_table	1
1593	2023_03_15_135806_create_kicks_table	1
1594	2023_03_15_142121_create_colors_table	1
1595	2023_03_15_142235_create_color_kick_table	1
1596	2023_03_15_143139_create_brand_kick_table	1
1597	2023_03_15_144257_create_designers_table	1
1598	2023_03_15_144318_create_designer_kick_table	1
1599	2023_03_15_144950_create_collabrand_kick_table	1
1600	2023_03_15_145514_create_images_table	1
1601	2023_03_15_150026_create_people_table	1
1602	2023_03_15_150343_create_kick_person_table	1
1603	2023_03_15_152827_create_materials_table	1
1604	2023_03_15_152845_create_kick_material_table	1
1605	2023_03_16_063948_create_categories_table	1
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.people (id, name, created_at, updated_at) FROM stdin;
1	Easton Beahan	2023-06-27 09:50:30	2023-06-27 09:50:30
2	Jessika Steuber	2023-06-27 09:50:30	2023-06-27 09:50:30
3	Rosalinda Kreiger	2023-06-27 09:50:30	2023-06-27 09:50:30
4	Marge Walsh	2023-06-27 09:50:30	2023-06-27 09:50:30
5	Tatum Mohr	2023-06-27 09:50:30	2023-06-27 09:50:30
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- Name: brand_kick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.brand_kick_id_seq', 13, true);


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.brands_id_seq', 8, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: collabrand_kick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.collabrand_kick_id_seq', 6, true);


--
-- Name: collabrands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.collabrands_id_seq', 5, true);


--
-- Name: color_kick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.color_kick_id_seq', 1, false);


--
-- Name: colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.colors_id_seq', 1, false);


--
-- Name: designer_kick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.designer_kick_id_seq', 9, true);


--
-- Name: designers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.designers_id_seq', 5, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.images_id_seq', 30, true);


--
-- Name: kick_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.kick_material_id_seq', 1, false);


--
-- Name: kick_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.kick_person_id_seq', 5, true);


--
-- Name: kicks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.kicks_id_seq', 10, true);


--
-- Name: kmodels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.kmodels_id_seq', 5, true);


--
-- Name: materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.materials_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.migrations_id_seq', 1605, true);


--
-- Name: people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.people_id_seq', 5, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: brand_kick brand_kick_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.brand_kick
    ADD CONSTRAINT brand_kick_pkey PRIMARY KEY (id);


--
-- Name: brands brands_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_unique UNIQUE (name);


--
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: categories categories_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_unique UNIQUE (name);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: collabrand_kick collabrand_kick_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.collabrand_kick
    ADD CONSTRAINT collabrand_kick_pkey PRIMARY KEY (id);


--
-- Name: collabrands collabrands_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.collabrands
    ADD CONSTRAINT collabrands_name_unique UNIQUE (name);


--
-- Name: collabrands collabrands_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.collabrands
    ADD CONSTRAINT collabrands_pkey PRIMARY KEY (id);


--
-- Name: color_kick color_kick_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.color_kick
    ADD CONSTRAINT color_kick_pkey PRIMARY KEY (id);


--
-- Name: colors colors_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_name_unique UNIQUE (name);


--
-- Name: colors colors_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);


--
-- Name: designer_kick designer_kick_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.designer_kick
    ADD CONSTRAINT designer_kick_pkey PRIMARY KEY (id);


--
-- Name: designers designers_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.designers
    ADD CONSTRAINT designers_name_unique UNIQUE (name);


--
-- Name: designers designers_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.designers
    ADD CONSTRAINT designers_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: kick_material kick_material_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kick_material
    ADD CONSTRAINT kick_material_pkey PRIMARY KEY (id);


--
-- Name: kick_person kick_person_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kick_person
    ADD CONSTRAINT kick_person_pkey PRIMARY KEY (id);


--
-- Name: kicks kicks_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kicks
    ADD CONSTRAINT kicks_pkey PRIMARY KEY (id);


--
-- Name: kicks kicks_slug_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kicks
    ADD CONSTRAINT kicks_slug_unique UNIQUE (slug);


--
-- Name: kicks kicks_style_code_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kicks
    ADD CONSTRAINT kicks_style_code_unique UNIQUE (style_code);


--
-- Name: kicks kicks_title_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kicks
    ADD CONSTRAINT kicks_title_unique UNIQUE (title);


--
-- Name: kmodels kmodels_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kmodels
    ADD CONSTRAINT kmodels_name_unique UNIQUE (name);


--
-- Name: kmodels kmodels_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kmodels
    ADD CONSTRAINT kmodels_pkey PRIMARY KEY (id);


--
-- Name: materials materials_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_name_unique UNIQUE (name);


--
-- Name: materials materials_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: people people_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_name_unique UNIQUE (name);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: kick
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: kick
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: brand_kick brand_kick_brand_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.brand_kick
    ADD CONSTRAINT brand_kick_brand_id_foreign FOREIGN KEY (brand_id) REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: brand_kick brand_kick_kick_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.brand_kick
    ADD CONSTRAINT brand_kick_kick_id_foreign FOREIGN KEY (kick_id) REFERENCES public.kicks(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: collabrand_kick collabrand_kick_collabrand_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.collabrand_kick
    ADD CONSTRAINT collabrand_kick_collabrand_id_foreign FOREIGN KEY (collabrand_id) REFERENCES public.collabrands(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: collabrand_kick collabrand_kick_kick_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.collabrand_kick
    ADD CONSTRAINT collabrand_kick_kick_id_foreign FOREIGN KEY (kick_id) REFERENCES public.kicks(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: designer_kick designer_kick_designer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.designer_kick
    ADD CONSTRAINT designer_kick_designer_id_foreign FOREIGN KEY (designer_id) REFERENCES public.designers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: designer_kick designer_kick_kick_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.designer_kick
    ADD CONSTRAINT designer_kick_kick_id_foreign FOREIGN KEY (kick_id) REFERENCES public.kicks(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: images images_kick_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_kick_id_foreign FOREIGN KEY (kick_id) REFERENCES public.kicks(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: kick_person kick_person_kick_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kick_person
    ADD CONSTRAINT kick_person_kick_id_foreign FOREIGN KEY (kick_id) REFERENCES public.kicks(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: kick_person kick_person_person_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kick_person
    ADD CONSTRAINT kick_person_person_id_foreign FOREIGN KEY (person_id) REFERENCES public.people(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: kicks kicks_kmodel_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kicks
    ADD CONSTRAINT kicks_kmodel_id_foreign FOREIGN KEY (kmodel_id) REFERENCES public.kmodels(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

--
-- Database "kicksdb_test" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: kicksdb_test; Type: DATABASE; Schema: -; Owner: kick
--

CREATE DATABASE kicksdb_test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE kicksdb_test OWNER TO kick;

\connect kicksdb_test

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: book_category; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.book_category (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.book_category OWNER TO kick;

--
-- Name: book_category_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.book_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_category_id_seq OWNER TO kick;

--
-- Name: book_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.book_category_id_seq OWNED BY public.book_category.id;


--
-- Name: brand_kick; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.brand_kick (
    id bigint NOT NULL,
    brand_id bigint NOT NULL,
    kick_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.brand_kick OWNER TO kick;

--
-- Name: brand_kick_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.brand_kick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brand_kick_id_seq OWNER TO kick;

--
-- Name: brand_kick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.brand_kick_id_seq OWNED BY public.brand_kick.id;


--
-- Name: brands; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.brands (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.brands OWNER TO kick;

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brands_id_seq OWNER TO kick;

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.categories OWNER TO kick;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO kick;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: collabrand_kick; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.collabrand_kick (
    id bigint NOT NULL,
    collabrand_id bigint NOT NULL,
    kick_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.collabrand_kick OWNER TO kick;

--
-- Name: collabrand_kick_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.collabrand_kick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collabrand_kick_id_seq OWNER TO kick;

--
-- Name: collabrand_kick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.collabrand_kick_id_seq OWNED BY public.collabrand_kick.id;


--
-- Name: collabrands; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.collabrands (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.collabrands OWNER TO kick;

--
-- Name: collabrands_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.collabrands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collabrands_id_seq OWNER TO kick;

--
-- Name: collabrands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.collabrands_id_seq OWNED BY public.collabrands.id;


--
-- Name: color_kick; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.color_kick (
    id bigint NOT NULL,
    color_id bigint NOT NULL,
    kick_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.color_kick OWNER TO kick;

--
-- Name: color_kick_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.color_kick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.color_kick_id_seq OWNER TO kick;

--
-- Name: color_kick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.color_kick_id_seq OWNED BY public.color_kick.id;


--
-- Name: colors; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.colors (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.colors OWNER TO kick;

--
-- Name: colors_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colors_id_seq OWNER TO kick;

--
-- Name: colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.colors_id_seq OWNED BY public.colors.id;


--
-- Name: designer_kick; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.designer_kick (
    id bigint NOT NULL,
    designer_id bigint NOT NULL,
    kick_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.designer_kick OWNER TO kick;

--
-- Name: designer_kick_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.designer_kick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.designer_kick_id_seq OWNER TO kick;

--
-- Name: designer_kick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.designer_kick_id_seq OWNED BY public.designer_kick.id;


--
-- Name: designers; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.designers (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.designers OWNER TO kick;

--
-- Name: designers_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.designers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.designers_id_seq OWNER TO kick;

--
-- Name: designers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.designers_id_seq OWNED BY public.designers.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO kick;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO kick;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.images (
    id bigint NOT NULL,
    kick_id bigint NOT NULL,
    image_orig character varying(255) NOT NULL,
    image_b character varying(255),
    image_s character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.images OWNER TO kick;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO kick;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- Name: kick_material; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.kick_material (
    id bigint NOT NULL,
    material_id bigint NOT NULL,
    kick_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.kick_material OWNER TO kick;

--
-- Name: kick_material_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.kick_material_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kick_material_id_seq OWNER TO kick;

--
-- Name: kick_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.kick_material_id_seq OWNED BY public.kick_material.id;


--
-- Name: kick_person; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.kick_person (
    id bigint NOT NULL,
    person_id bigint NOT NULL,
    kick_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.kick_person OWNER TO kick;

--
-- Name: kick_person_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.kick_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kick_person_id_seq OWNER TO kick;

--
-- Name: kick_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.kick_person_id_seq OWNED BY public.kick_person.id;


--
-- Name: kicks; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.kicks (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    style_code character varying(255),
    description text,
    release_date date,
    kmodel_id bigint,
    category_id bigint,
    is_published boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.kicks OWNER TO kick;

--
-- Name: kicks_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.kicks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kicks_id_seq OWNER TO kick;

--
-- Name: kicks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.kicks_id_seq OWNED BY public.kicks.id;


--
-- Name: kmodels; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.kmodels (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.kmodels OWNER TO kick;

--
-- Name: kmodels_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.kmodels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kmodels_id_seq OWNER TO kick;

--
-- Name: kmodels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.kmodels_id_seq OWNED BY public.kmodels.id;


--
-- Name: materials; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.materials (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.materials OWNER TO kick;

--
-- Name: materials_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materials_id_seq OWNER TO kick;

--
-- Name: materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.materials_id_seq OWNED BY public.materials.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO kick;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO kick;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO kick;

--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO kick;

--
-- Name: people; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.people (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.people OWNER TO kick;

--
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_id_seq OWNER TO kick;

--
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO kick;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO kick;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO kick;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO kick;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: book_category id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.book_category ALTER COLUMN id SET DEFAULT nextval('public.book_category_id_seq'::regclass);


--
-- Name: brand_kick id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.brand_kick ALTER COLUMN id SET DEFAULT nextval('public.brand_kick_id_seq'::regclass);


--
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: collabrand_kick id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.collabrand_kick ALTER COLUMN id SET DEFAULT nextval('public.collabrand_kick_id_seq'::regclass);


--
-- Name: collabrands id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.collabrands ALTER COLUMN id SET DEFAULT nextval('public.collabrands_id_seq'::regclass);


--
-- Name: color_kick id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.color_kick ALTER COLUMN id SET DEFAULT nextval('public.color_kick_id_seq'::regclass);


--
-- Name: colors id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.colors ALTER COLUMN id SET DEFAULT nextval('public.colors_id_seq'::regclass);


--
-- Name: designer_kick id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.designer_kick ALTER COLUMN id SET DEFAULT nextval('public.designer_kick_id_seq'::regclass);


--
-- Name: designers id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.designers ALTER COLUMN id SET DEFAULT nextval('public.designers_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: kick_material id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kick_material ALTER COLUMN id SET DEFAULT nextval('public.kick_material_id_seq'::regclass);


--
-- Name: kick_person id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kick_person ALTER COLUMN id SET DEFAULT nextval('public.kick_person_id_seq'::regclass);


--
-- Name: kicks id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kicks ALTER COLUMN id SET DEFAULT nextval('public.kicks_id_seq'::regclass);


--
-- Name: kmodels id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kmodels ALTER COLUMN id SET DEFAULT nextval('public.kmodels_id_seq'::regclass);


--
-- Name: materials id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.materials ALTER COLUMN id SET DEFAULT nextval('public.materials_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: people id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: book_category; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.book_category (id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: brand_kick; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.brand_kick (id, brand_id, kick_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.brands (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.categories (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: collabrand_kick; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.collabrand_kick (id, collabrand_id, kick_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: collabrands; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.collabrands (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: color_kick; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.color_kick (id, color_id, kick_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: colors; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.colors (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: designer_kick; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.designer_kick (id, designer_id, kick_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: designers; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.designers (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.images (id, kick_id, image_orig, image_b, image_s, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: kick_material; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.kick_material (id, material_id, kick_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: kick_person; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.kick_person (id, person_id, kick_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: kicks; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.kicks (id, title, style_code, description, release_date, kmodel_id, category_id, is_published, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: kmodels; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.kmodels (id, name, created_at, updated_at) FROM stdin;
70	Amet Ut	2023-05-10 09:33:25	2023-05-10 09:33:25
71	Voluptas Ab	2023-05-10 09:33:25	2023-05-10 09:33:25
72	In Sed	2023-05-10 09:42:08	2023-05-10 09:42:08
73	Dolore Sint	2023-05-10 09:42:08	2023-05-10 09:42:08
74	Sequi Minus	2023-05-10 09:42:08	2023-05-10 09:42:08
75	Saepe Ea	2023-05-10 09:42:08	2023-05-10 09:42:08
76	Aut Similique	2023-05-10 09:42:08	2023-05-10 09:42:08
77	Incidunt Aliquam	2023-05-10 09:42:08	2023-05-10 09:42:08
78	Nobis Dolorem	2023-05-10 09:42:08	2023-05-10 09:42:08
79	Sit Nam	2023-05-10 09:42:08	2023-05-10 09:42:08
80	Porro Occaecati	2023-05-10 09:42:08	2023-05-10 09:42:08
81	Iure Fuga	2023-05-10 09:42:08	2023-05-10 09:42:08
82	Temporibus Autem	2023-05-10 09:57:24	2023-05-10 09:57:24
83	Aut Soluta	2023-05-10 09:57:24	2023-05-10 09:57:24
84	Provident Quos	2023-05-10 09:57:24	2023-05-10 09:57:24
85	Repudiandae Quia	2023-05-10 09:57:24	2023-05-10 09:57:24
86	Voluptatem Maxime	2023-05-10 09:57:24	2023-05-10 09:57:24
87	Illo Eum	2023-05-10 09:57:24	2023-05-10 09:57:24
88	Consequatur Quae	2023-05-10 09:57:24	2023-05-10 09:57:24
89	Expedita Quibusdam	2023-05-10 09:57:24	2023-05-10 09:57:24
90	Aut Sunt	2023-05-10 09:57:24	2023-05-10 09:57:24
91	Iusto Quia	2023-05-10 09:57:24	2023-05-10 09:57:24
\.


--
-- Data for Name: materials; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.materials (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_reset_tokens_table	1
3	2014_10_12_100000_create_password_resets_table	1
4	2019_08_19_000000_create_failed_jobs_table	1
5	2019_12_14_000001_create_personal_access_tokens_table	1
6	2023_03_11_135806_create_kicks_table	1
7	2023_03_14_065514_create_images_table	1
8	2023_03_14_132143_create_brands_table	1
9	2023_03_14_143139_create_brand_kick_table	1
10	2023_03_15_095422_create_kmodels_table	1
11	2023_03_15_134452_create_collabrands_table	1
12	2023_03_15_134950_create_collabrand_kick_table	1
13	2023_03_15_142121_create_colors_table	1
14	2023_03_15_142235_create_color_kick_table	1
15	2023_03_15_144257_create_designers_table	1
16	2023_03_15_144318_create_designer_kick_table	1
17	2023_03_15_150026_create_people_table	1
18	2023_03_15_150343_create_kick_person_table	1
19	2023_03_15_152827_create_materials_table	1
20	2023_03_15_152845_create_kick_material_table	1
21	2023_03_16_063948_create_categories_table	1
22	2023_04_26_100245_create_book_category_table	1
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.people (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- Name: book_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.book_category_id_seq', 1, false);


--
-- Name: brand_kick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.brand_kick_id_seq', 1, false);


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.brands_id_seq', 26, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: collabrand_kick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.collabrand_kick_id_seq', 1, false);


--
-- Name: collabrands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.collabrands_id_seq', 1, false);


--
-- Name: color_kick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.color_kick_id_seq', 1, false);


--
-- Name: colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.colors_id_seq', 1, false);


--
-- Name: designer_kick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.designer_kick_id_seq', 1, false);


--
-- Name: designers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.designers_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.images_id_seq', 1, false);


--
-- Name: kick_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.kick_material_id_seq', 1, false);


--
-- Name: kick_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.kick_person_id_seq', 1, false);


--
-- Name: kicks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.kicks_id_seq', 271, true);


--
-- Name: kmodels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.kmodels_id_seq', 91, true);


--
-- Name: materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.materials_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.migrations_id_seq', 22, true);


--
-- Name: people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.people_id_seq', 1, false);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: book_category book_category_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.book_category
    ADD CONSTRAINT book_category_pkey PRIMARY KEY (id);


--
-- Name: brand_kick brand_kick_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.brand_kick
    ADD CONSTRAINT brand_kick_pkey PRIMARY KEY (id);


--
-- Name: brands brands_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_unique UNIQUE (name);


--
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: categories categories_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_unique UNIQUE (name);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: collabrand_kick collabrand_kick_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.collabrand_kick
    ADD CONSTRAINT collabrand_kick_pkey PRIMARY KEY (id);


--
-- Name: collabrands collabrands_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.collabrands
    ADD CONSTRAINT collabrands_name_unique UNIQUE (name);


--
-- Name: collabrands collabrands_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.collabrands
    ADD CONSTRAINT collabrands_pkey PRIMARY KEY (id);


--
-- Name: color_kick color_kick_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.color_kick
    ADD CONSTRAINT color_kick_pkey PRIMARY KEY (id);


--
-- Name: colors colors_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_name_unique UNIQUE (name);


--
-- Name: colors colors_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);


--
-- Name: designer_kick designer_kick_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.designer_kick
    ADD CONSTRAINT designer_kick_pkey PRIMARY KEY (id);


--
-- Name: designers designers_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.designers
    ADD CONSTRAINT designers_name_unique UNIQUE (name);


--
-- Name: designers designers_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.designers
    ADD CONSTRAINT designers_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: kick_material kick_material_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kick_material
    ADD CONSTRAINT kick_material_pkey PRIMARY KEY (id);


--
-- Name: kick_person kick_person_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kick_person
    ADD CONSTRAINT kick_person_pkey PRIMARY KEY (id);


--
-- Name: kicks kicks_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kicks
    ADD CONSTRAINT kicks_pkey PRIMARY KEY (id);


--
-- Name: kicks kicks_style_code_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kicks
    ADD CONSTRAINT kicks_style_code_unique UNIQUE (style_code);


--
-- Name: kicks kicks_title_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kicks
    ADD CONSTRAINT kicks_title_unique UNIQUE (title);


--
-- Name: kmodels kmodels_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kmodels
    ADD CONSTRAINT kmodels_name_unique UNIQUE (name);


--
-- Name: kmodels kmodels_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.kmodels
    ADD CONSTRAINT kmodels_pkey PRIMARY KEY (id);


--
-- Name: materials materials_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_name_unique UNIQUE (name);


--
-- Name: materials materials_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: people people_name_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_name_unique UNIQUE (name);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: kick
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: kick
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- PostgreSQL database dump complete
--

--
-- Database "logger-api" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: logger-api; Type: DATABASE; Schema: -; Owner: kick
--

CREATE DATABASE "logger-api" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE "logger-api" OWNER TO kick;

\connect -reuse-previous=on "dbname='logger-api'"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: events; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.events (
    id bigint NOT NULL,
    "timestamp" character varying(255) NOT NULL,
    user_ip character varying(255) NOT NULL,
    user_agent character varying(255) NOT NULL
);


ALTER TABLE public.events OWNER TO kick;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO kick;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO kick;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO kick;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO kick;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO kick;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO kick;

--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO kick;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO kick;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO kick;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO kick;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.events (id, "timestamp", user_ip, user_agent) FROM stdin;
1	01.01.2023	11.1.334.5	Chrome
4	01.01.2023	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
5	1688401632	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
6	2023-07-03 16:29:55	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
7	2023-07-04 09:12:57	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
8	2023-07-04 09:14:12	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
9	2023-07-04 09:55:04	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
10	2023-07-04 09:55:13	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
11	2023-07-04 10:29:45	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
12	2023-07-04 10:30:16	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
13	2023-07-04 10:31:31	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
14	2023-07-04 10:32:27	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
15	2023-07-04 10:32:39	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
16	2023-07-04 10:32:41	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
17	2023-07-04 10:36:34.000000	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
18	2023-07-04 10:36:37.000000	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
19	2023-07-04 10:36:41.000000	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
20	2023-07-04 11:06:10.000000	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
21	2023-07-04 11:23:12.000000	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
22	2023-07-06 08:33:36.000000	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
23	2023-07-06 08:35:04.000000	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
24	2023-07-06 08:42:44.000000	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
25	2023-07-06 08:43:12.000000	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
26	2023-07-06 08:47:13.000000	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
27	2023-07-06 11:29:31.000000	172.20.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.migrations (id, migration, batch) FROM stdin;
34	2014_10_12_000000_create_users_table	1
35	2014_10_12_100000_create_password_reset_tokens_table	1
36	2019_08_19_000000_create_failed_jobs_table	1
37	2019_12_14_000001_create_personal_access_tokens_table	1
38	2023_07_03_081709_create_events_table	1
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.events_id_seq', 27, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.migrations_id_seq', 38, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: kick
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- PostgreSQL database dump complete
--

--
-- Database "medkort" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: medkort; Type: DATABASE; Schema: -; Owner: kick
--

CREATE DATABASE medkort WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE medkort OWNER TO kick;

\connect medkort

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: book_category; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.book_category (
    id bigint NOT NULL,
    book_id bigint NOT NULL,
    category_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.book_category OWNER TO kick;

--
-- Name: book_category_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.book_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_category_id_seq OWNER TO kick;

--
-- Name: book_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.book_category_id_seq OWNED BY public.book_category.id;


--
-- Name: books; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.books (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    description text NOT NULL,
    rating integer NOT NULL,
    cover character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.books OWNER TO kick;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO kick;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.categories OWNER TO kick;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO kick;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO kick;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO kick;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO kick;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO kick;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO kick;

--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO kick;

--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO kick;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO kick;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: kick
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    role smallint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO kick;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: kick
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO kick;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kick
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: book_category id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.book_category ALTER COLUMN id SET DEFAULT nextval('public.book_category_id_seq'::regclass);


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: book_category; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.book_category (id, book_id, category_id, created_at, updated_at) FROM stdin;
1	1	1	\N	\N
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.books (id, title, slug, author, description, rating, cover, created_at, updated_at) FROM stdin;
1	fsds	sdfsdf	dsfsdf	sfdsfs	2	dh6927-111-1.jpg	2023-05-03 16:04:41	2023-05-03 16:04:41
5	Quas nesciunt cupiditate nostrum pariatur.	Ex ut harum est tempore.	At minus quod maiores hic dignissimos.	Assumenda atque assumenda illum ex aut alias maxime iusto. Earum in repellat magnam et quo sit soluta.	8	/tmp/22ab550f1d7af039d104d1afb65394b3.png	2023-05-04 11:40:47	2023-05-04 11:40:47
6	Explicabo consectetur consectetur maxime vero.	Et facere molestiae enim fugiat non ratione.	Repellendus alias incidunt sed consequatur beatae ad.	Officia eligendi aliquid est et dolorem. Molestiae cupiditate qui amet atque beatae voluptas nihil. Dolores rerum alias omnis quibusdam perspiciatis animi.	6	/tmp/08279861945a7df47f0095dd589a714d.png	2023-05-04 11:40:47	2023-05-04 11:40:47
7	Ipsam doloremque ut nam quibusdam.	Dicta repellendus provident eaque.	Accusantium labore corrupti aliquam sapiente.	Deleniti hic voluptatibus saepe dolorum provident. Quo vel sint accusantium odio. Eum assumenda sit aut officiis excepturi veritatis.	4	/tmp/f6de80229050c86bbc3bf8f2dd1b86bd.png	2023-05-04 11:40:47	2023-05-04 11:40:47
8	Nemo eligendi enim enim et nihil ex pariatur.	Occaecati corrupti beatae numquam eos voluptas accusantium et.	Ex omnis quibusdam quia qui.	Rerum et debitis voluptatem eos. Qui ut quam dolorum aut. Quod sequi quia quo quibusdam culpa alias. Praesentium impedit nemo fugiat accusamus magnam quod.	1	/tmp/6b23ff8aa0ab91b893495222ccc58087.png	2023-05-04 11:40:47	2023-05-04 11:40:47
9	Maiores nobis soluta possimus dolor aut ut.	Velit officia quibusdam atque fugit.	Tempora est et porro omnis provident.	Animi et dolor ipsa a est nobis inventore. Molestias consequatur harum dolor consequatur eum deleniti reprehenderit. Rerum unde error ut voluptas suscipit.	5	/tmp/0dd263a2a05847be3491dccf5802ee67.png	2023-05-04 11:40:47	2023-05-04 11:40:47
10	Doloremque aliquid voluptatem praesentium.	Vel quia consequatur repudiandae quia corporis et sunt.	Excepturi voluptas hic nemo ut minus quo minima.	Alias non in sit ab saepe. Natus id odit in mollitia sit. Asperiores eveniet corrupti unde. Culpa voluptatem quas earum ullam ullam.	3	/tmp/e075eaa30a543b935e32e8f7a243db59.png	2023-05-04 11:49:41	2023-05-04 11:49:41
11	Laborum mollitia quas quod quae excepturi ratione ut.	Eligendi sunt quia aut qui delectus dolore ut.	Delectus quaerat ullam qui in.	Id id aliquid omnis optio corrupti. Ea perspiciatis enim est. Voluptatem ipsa rerum at vel. Et velit perspiciatis eos quas.	1	/tmp/7076c1dac8d2be15b528084e774cc394.png	2023-05-04 11:49:41	2023-05-04 11:49:41
12	Et pariatur consequuntur labore sint culpa.	Ab voluptas expedita dolor saepe quo fugit.	Iusto officiis quasi ea laudantium.	Laboriosam suscipit dolores at veritatis dolorem ut excepturi. Dolores voluptas eaque repudiandae omnis molestias quaerat quod. Minima quisquam libero explicabo quaerat vel culpa provident.	2	/tmp/2cbbffa012a284d617862c43e29300f8.png	2023-05-04 11:49:41	2023-05-04 11:49:41
13	Repellendus et incidunt consectetur aliquam minima quam quia.	Quia consequuntur deserunt rem asperiores.	Dolore unde fugit placeat quod eum omnis.	Laboriosam exercitationem et neque dolorem itaque quibusdam. Error magni earum ratione quia modi. Ut ipsam soluta voluptatem voluptates dolor.	4	/tmp/3737c799bf8ba2cf165bec79ff27242c.png	2023-05-04 11:49:41	2023-05-04 11:49:41
14	Sit dicta voluptas placeat et ipsa ex delectus.	Rerum est sapiente dolores rerum qui quis.	Id molestias ipsa sed adipisci quasi ea doloremque.	Nihil beatae deserunt amet voluptatum. Ab at unde eos beatae id. Voluptatibus tempore mollitia ea sed commodi quidem.	1	/tmp/37e1c91bdaba112f873313aaaebc5994.png	2023-05-04 11:49:41	2023-05-04 11:49:41
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.categories (id, title, slug, created_at, updated_at) FROM stdin;
1	dasd	sadas	2023-05-03 10:42:45	2023-05-03 10:42:45
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_reset_tokens_table	1
3	2014_10_12_100000_create_password_resets_table	1
4	2019_08_19_000000_create_failed_jobs_table	1
5	2019_12_14_000001_create_personal_access_tokens_table	1
6	2023_04_23_133716_create_books_table	1
7	2023_04_23_181747_create_categories_table	1
8	2023_04_26_100331_create_book_category_table	1
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, role, created_at, updated_at) FROM stdin;
1	TestLib	test3@test.localhost	\N	$2y$10$IWLoAVe.TbeWLgDoVlQfue0LxSjnDM2wdyR3rQgIK5Ax1ZaqnLyAq	\N	0	2023-04-28 09:51:56	2023-04-28 09:51:56
8	Yee	test5@test.localhost	\N	$2y$10$vKVNaR980972nm66ToWvnu1kweIGu9g1nDuCrkmBYm4D5khHNUoO6	\N	1	2023-05-03 11:59:31	2023-05-03 11:59:31
2	TestReader	test4@test.localhost	\N	$2y$10$We23UN21FFu1ehVXSaxW9evJNeGF/Itpd6ENFoBzPfV1XlgeuZFp.	\N	1	2023-04-28 15:58:08	2023-04-28 15:58:08
14	Odie Kris	jazmin.aufderhar@example.com	2023-05-04 11:49:36	$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi	HH7f9tXHXo	\N	2023-05-04 11:49:36	2023-05-04 11:49:36
\.


--
-- Name: book_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.book_category_id_seq', 1, true);


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.books_id_seq', 14, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.migrations_id_seq', 8, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.users_id_seq', 14, true);


--
-- Name: book_category book_category_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.book_category
    ADD CONSTRAINT book_category_pkey PRIMARY KEY (id);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: kick
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: kick
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: kick
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

--
-- Database "test" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: test; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE test OWNER TO postgres;

\connect test

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

