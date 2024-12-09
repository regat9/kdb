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
ALTER ROLE kick WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:xS8xZ0q+LrDwh2i9oWfWSw==$NuWv+vFRUS2N9Tqx7vCVKrqMR6gyoqb0I2DoydoAFk0=:lIu/JCrJl2EiIsKt/MgL08HsSI4Hz9delPND6hfAOW8=';

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

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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


ALTER SEQUENCE public.brand_kick_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.brands_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.categories_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.collabrand_kick_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.collabrands_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.color_kick_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.colors_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.designer_kick_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.designers_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.images_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.kick_material_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.kick_person_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.kicks_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.kmodels_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.materials_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.migrations_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.people_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO kick;

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


ALTER SEQUENCE public.users_id_seq OWNER TO kick;

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
5	4	4	\N	\N
6	6	4	\N	\N
12	8	7	\N	\N
17	7	1	\N	\N
18	3	2	\N	\N
19	6	3	\N	\N
20	3	5	\N	\N
21	5	6	\N	\N
22	7	8	\N	\N
23	2	9	\N	\N
24	3	10	\N	\N
\.


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.brands (id, name, created_at, updated_at) FROM stdin;
1	Reebok	2024-01-21 17:09:06	2024-01-21 17:09:06
2	Adidas	2024-01-21 17:09:06	2024-01-21 17:09:06
3	Nike	2024-01-21 17:09:06	2024-01-21 17:09:06
4	New Balance	2024-01-21 17:09:06	2024-01-21 17:09:06
5	Under Armour	2024-01-21 17:09:06	2024-01-21 17:09:06
6	Vans	2024-01-21 17:09:06	2024-01-21 17:09:06
7	Osiris	2024-01-21 17:09:06	2024-01-21 17:09:06
8	Air Jordan	2024-01-21 17:09:06	2024-01-21 17:09:06
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
1	4	5	\N	\N
5	1	2	\N	\N
6	5	8	\N	\N
\.


--
-- Data for Name: collabrands; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.collabrands (id, name, created_at, updated_at) FROM stdin;
1	Undefeated	2024-01-21 17:09:06	2024-01-21 17:09:06
2	H&M	2024-01-21 17:09:06	2024-01-21 17:09:06
3	Sony	2024-01-21 17:09:06	2024-01-21 17:09:06
4	A Ma Maniere	2024-01-21 17:09:06	2024-01-21 17:09:06
5	Marvel	2024-01-21 17:09:06	2024-01-21 17:09:06
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
1	1	1	\N	\N
2	5	1	\N	\N
3	3	4	\N	\N
4	4	5	\N	\N
5	5	5	\N	\N
6	5	6	\N	\N
7	3	8	\N	\N
8	5	8	\N	\N
9	5	9	\N	\N
10	3	10	\N	\N
\.


--
-- Data for Name: designers; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.designers (id, name, created_at, updated_at) FROM stdin;
1	Stephen Reichel	2024-01-21 17:09:06	2024-01-21 17:09:06
2	Forest Fritsch	2024-01-21 17:09:06	2024-01-21 17:09:06
3	Benjamin Spinka	2024-01-21 17:09:06	2024-01-21 17:09:06
4	Cathy Waters	2024-01-21 17:09:06	2024-01-21 17:09:06
5	Rhoda Schiller	2024-01-21 17:09:06	2024-01-21 17:09:06
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
1	1	/img/orig/698bbf21a858d405a5caf2c7e026904d.jpg	/img/b/5921ff10c692b449639ccfe13c353d52.jpg	/img/s/e9ed945c6636aa1d857dff018091b6be.jpg	1	2024-01-21 17:07:58	2024-01-21 17:09:06
2	1	/img/orig/	/img/b/23b9c328761c07788b5cd04f4ddf1003.jpg	/img/s/bf6b58c787336e73d00b9f591e2effb1.jpg	2	2024-01-21 17:07:58	2024-01-21 17:09:06
3	1	/img/orig/ad424e29cafa800a0bd22b85221c1606.jpg	/img/b/c9366594d7cccd40911c64a7b67eabbb.jpg	/img/s/dbc1f510a20237c7f05249261789567a.jpg	3	2024-01-21 17:07:58	2024-01-21 17:09:06
4	2	/img/orig/163498d3c1b6113c3188b4f23ee5966e.jpg	/img/b/47ad3edcc5cfe1d2576e6bb9edc69057.jpg	/img/s/6b93df533226443aa806339ae8a553ea.jpg	1	2024-01-21 17:08:13	2024-01-21 17:09:06
5	2	/img/orig/ce271255d1709cb038c7ceab6bf441e8.jpg	/img/b/3cb73f787ee05726ab6f6d74c0002bd9.jpg	/img/s/78ec242ce195df68fd86d9c050b29afc.jpg	2	2024-01-21 17:08:13	2024-01-21 17:09:06
6	2	/img/orig/7ab025c02c9452776bf69540830f844e.jpg	/img/b/dffb3aa6462a01ae7ee4615e9ea54a11.jpg	/img/s/379e07d0d15d0b516cc6167d73c85db0.jpg	3	2024-01-21 17:08:13	2024-01-21 17:09:06
7	3	/img/orig/9a4a7cb44a18bc9198914c76c1d2e2d3.jpg	/img/b/f33d80c35dc7d541308e0e9ce86930bb.jpg	/img/s/450c12b1f01e7a165c5f22a82b77877d.jpg	1	2024-01-21 17:08:19	2024-01-21 17:09:06
8	3	/img/orig/ea907c3f9653c9780fe2d9c16cb8d95e.jpg	/img/b/aee62d155de7fb855e6d75b7acfee89b.jpg	/img/s/49ba12c5f9df02130cf5e43a32fbc006.jpg	2	2024-01-21 17:08:19	2024-01-21 17:09:06
9	3	/img/orig/220bc24da2d37f5721c58d4ff14a868b.jpg	/img/b/4194e0f4b058624791398193e8046922.jpg	/img/s/a9585a1bd2580216615fe1f2784f90f1.jpg	3	2024-01-21 17:08:19	2024-01-21 17:09:06
10	4	/img/orig/6867cabbf88cf17933d455187e1dfdfd.jpg	/img/b/26fed7b171276f70fe2d01c4969cadc1.jpg	/img/s/92263a8a3a8c125ed999a9365148f1af.jpg	1	2024-01-21 17:08:26	2024-01-21 17:09:06
11	4	/img/orig/b68fd4fc379a88f836a896e3a0643a73.jpg	/img/b/2b1ce74d329ad1d99d7d203a04f6920b.jpg	/img/s/0bbbd29167f2c8a3010ab45c382096c8.jpg	2	2024-01-21 17:08:26	2024-01-21 17:09:06
12	4	/img/orig/d6fd0d335c0c8b323f7037b04c65f853.jpg	/img/b/1e3121e15177b11c0d18b506405b6117.jpg	/img/s/cd0b87b76430012b26323ede313aa568.jpg	3	2024-01-21 17:08:26	2024-01-21 17:09:06
13	5	/img/orig/de535c7db06d58409826ed37c7053a94.jpg	/img/b/3192e5f0bfe315dafeb921849d06a3a8.jpg	/img/s/fdfe28482b0a5ed1f4f9f3c5e15bebe0.jpg	1	2024-01-21 17:08:32	2024-01-21 17:09:06
14	5	/img/orig/0ea096d560ffff21ecddba087f89462d.jpg	/img/b/74a310d875dbb2fe86d8f921d2afa36f.jpg	/img/s/00f6ce39abc1f41f8e9a2952fb4bd000.jpg	2	2024-01-21 17:08:32	2024-01-21 17:09:06
15	5	/img/orig/db62e5330bf8823ea55206b88b37ac34.jpg	/img/b/1f1c06c201578ddd69f180fe4a8cef3e.jpg	/img/s/ad56c709c76aec636a8002c009456b8d.jpg	3	2024-01-21 17:08:32	2024-01-21 17:09:06
16	6	/img/orig/bd6de4fa22f38d231c1f0057c157919c.jpg	/img/b/bd3111776aa85b97c2caa10abb748a10.jpg	/img/s/7fc34d7748cfa4b09140178c350c8770.jpg	1	2024-01-21 17:08:38	2024-01-21 17:09:06
17	6	/img/orig/9b5aa9e2a6237ff2e881e679d4be6aa5.jpg	/img/b/cb233e8f5b11bf4bd2a306b484c417f1.jpg	/img/s/f43e84f3be1108a2579fff3c0df82fed.jpg	2	2024-01-21 17:08:38	2024-01-21 17:09:06
18	6	/img/orig/452afe934d3e69cccc8c1caa96734463.jpg	/img/b/0df47f640a27a31f0f4618363bcbc3f2.jpg	/img/s/f2d9be2a7f11fe211d961f74a3fdc67d.jpg	3	2024-01-21 17:08:38	2024-01-21 17:09:06
19	7	/img/orig/36c7e2f522430a49b25e9de636d0aad6.jpg	/img/b/6a46d306d3817998e04f30118cff5bbf.jpg	/img/s/0fc288ed430f3386d470d66cff10f65e.jpg	1	2024-01-21 17:08:44	2024-01-21 17:09:06
20	7	/img/orig/93ffdfab6e85fdb3ca4a5fd2b1bf9581.jpg	/img/b/22821d00e645cff3c5ac5bafec997418.jpg	/img/s/86e1eb8405128af78d25f1f43613995b.jpg	2	2024-01-21 17:08:44	2024-01-21 17:09:06
21	7	/img/orig/8e2009ae6abb2ff6b6fcddc65a91230a.jpg	/img/b/a9b55a9006815ebaec28d794d1d26791.jpg	/img/s/9ac383512f01c271c798d62f3fa3b173.jpg	3	2024-01-21 17:08:44	2024-01-21 17:09:06
22	8	/img/orig/71df6debf2198ccb26a0e574b44ab2c4.jpg	/img/b/73fb6c2f3ad357863d9e147ea47f2da8.jpg	/img/s/0e5aaadd9b466f1fa9d723ae0ace203d.jpg	1	2024-01-21 17:08:51	2024-01-21 17:09:06
23	8	/img/orig/794ac671629a74890de073b6b38b3d94.jpg	/img/b/cf49701ba39c09edd6a8b148ea846ea8.jpg	/img/s/54c99b3475f53e09355ba52804b6972f.jpg	2	2024-01-21 17:08:51	2024-01-21 17:09:06
24	8	/img/orig/5ef9811ed44f0d8c7a443e04556a62c4.jpg	/img/b/f1a660961d290aec0650db8ab8181621.jpg	/img/s/38026574b9a0add8d7619e22e42cabfe.jpg	3	2024-01-21 17:08:51	2024-01-21 17:09:06
25	9	/img/orig/623faecbc247e3a388d47ed103d18c06.jpg	/img/b/3ef254fe80cf164203e3aba41ca5eec1.jpg	/img/s/6e9c7dc97afc26fd09b2e87fd239e8d2.jpg	1	2024-01-21 17:08:57	2024-01-21 17:09:06
26	9	/img/orig/a7f7adfd84c47c4ad7da04699d10de25.jpg	/img/b/5300b22c4046aae1c0b318f554d7467c.jpg	/img/s/e2a944843646a3fb32da94ca267b00ff.jpg	2	2024-01-21 17:08:57	2024-01-21 17:09:06
27	9	/img/orig/6be4817b62f59831269e0ce865a093db.jpg	/img/b/0125e12ff28b48681772436afe20dcca.jpg	/img/s/fc59770a59f5b6c02292fd8ae8967d8b.jpg	3	2024-01-21 17:08:57	2024-01-21 17:09:06
28	10	/img/orig/dd90cc690bd1f3ccff2c73db0de9a95d.jpg	/img/b/f89ac5ffe25e853865b4e798fe6869b0.jpg	/img/s/d9fa6a35f62030f728f0809dce07e92d.jpg	1	2024-01-21 17:09:05	2024-01-21 17:09:06
29	10	/img/orig/dd9a3296689050e40ddd302d1535de26.jpg	/img/b/12fcdcb31144aaedc2deac5006ddbcbd.jpg	/img/s/16101eaf3f4746c5b349b9b7b1593eb5.jpg	2	2024-01-21 17:09:06	2024-01-21 17:09:06
30	10	/img/orig/e4c23f48dfdebc92493dc4c34996c14a.jpg	/img/b/d520dbb1e4512b0085f581d5fa2f2d5b.jpg	/img/s/5ad86f40e31f10c56fe52035fdb8f31f.jpg	3	2024-01-21 17:09:06	2024-01-21 17:09:06
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
1	4	1	\N	\N
2	3	2	\N	\N
3	5	4	\N	\N
4	5	5	\N	\N
5	5	6	\N	\N
6	2	8	\N	\N
7	4	9	\N	\N
8	2	10	\N	\N
\.


--
-- Data for Name: kicks; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.kicks (id, title, style_code, slug, description, release_date, kmodel_id, category_id, is_published, created_at, updated_at) FROM stdin;
1	Osiris Minima Et Et	0vn90o6d	osiris-minima-et-et_0vn90o6d	Dolores ea nulla eum magnam. Veniam tempora quia et aut id. Fugiat adipisci id natus in nisi quia sint. Quasi quidem est explicabo commodi.	2011-07-01	1	\N	t	2024-01-21 17:07:23	2024-01-21 17:07:23
3	Vans Possimus Et Aut	145y884x	vans-possimus-et-aut_145y884x	Consequatur magni qui in ea aut. Maxime quisquam earum inventore animi. Excepturi dolor tempora facilis fugiat.	1971-05-21	3	\N	t	2024-01-21 17:08:13	2024-01-21 17:08:13
6	Under Armour Aut Nihil Quam	5l75od49	under-armour-aut-nihil-quam_5l75od49	Et consequatur cupiditate qui quas alias. Asperiores sit ut tempora voluptas qui harum. Quo quo blanditiis reiciendis perspiciatis.	2005-04-03	4	\N	t	2024-01-21 17:08:32	2024-01-21 17:08:32
9	Adidas Et Atque Aut	36o1q1aa	adidas-et-atque-aut_36o1q1aa	Voluptatum quia quidem non amet nisi. Tempora ex enim sint illum architecto numquam voluptatem. Sed sed nisi autem deserunt et qui ut. Esse laborum voluptas aut fuga distinctio totam.	1979-06-06	6	\N	t	2024-01-21 17:08:51	2024-01-21 17:08:51
10	Nike Quasi Eos Aut	654pe9ra	nike-quasi-eos-aut_654pe9ra	Et vel eligendi explicabo deserunt quam veritatis. Maiores eum omnis eveniet nam ut.	2023-08-24	\N	\N	t	2024-01-21 17:08:57	2024-01-21 17:08:57
2	Nike Undefeated Magnam Sint	8t31v939	nike-undefeated-magnam-sint_8t31v939	Et omnis aut possimus nesciunt. Quod rem maxime rem beatae ea. Consequatur fugiat vel sed eos nihil nihil excepturi voluptatibus.	2019-07-18	2	\N	t	2024-01-21 17:07:58	2024-04-29 10:46:21
4	New Balance Vans Modi Doloribus Asperiores	g6dh5wx1	new-balance-vans-modi-doloribus-asperiores_g6dh5wx1	Deserunt voluptate laborum et dolorem reprehenderit. Soluta eos et dolores. Veniam voluptas repudiandae eos qui tempore dolorem. Qui eaque culpa officiis dolorem autem.	1972-01-11	\N	\N	t	2024-01-21 17:08:19	2024-04-29 10:47:04
5	Nike A Ma Maniere Aspernatur Expedita	3750dqaj	nike-a-ma-maniere-aspernatur-expedita_3750dqaj	Sed eius ut quaerat odio. Dignissimos rerum provident illo illo. Placeat tempore minima repellat voluptas dicta et.	1988-12-10	\N	\N	t	2024-01-21 17:08:26	2024-04-29 10:47:37
7	Air Jordan Ratione Quidem Enim	7y082xcc	air-jordan-ratione-quidem-enim_7y082xcc	Est ipsam qui voluptas ipsum cupiditate. At nemo velit magnam alias. Eaque perferendis atque sed et eligendi. Placeat fugit ea corrupti et libero.	2017-01-10	\N	\N	t	2024-01-21 17:08:38	2024-04-29 10:48:16
8	Osiris Marvel Et At Ipsa	gvnukp39	osiris-marvel-et-at-ipsa_gvnukp39	Enim quas soluta ipsam placeat eum. Cumque temporibus deserunt vitae ut. Explicabo recusandae dolorem porro dicta perferendis. Est aperiam et velit nostrum mollitia vero.	1984-02-14	5	\N	t	2024-01-21 17:08:44	2024-04-29 10:48:36
\.


--
-- Data for Name: kmodels; Type: TABLE DATA; Schema: public; Owner: kick
--

COPY public.kmodels (id, name, created_at, updated_at) FROM stdin;
1	Consectetur 2	2024-01-21 17:07:23	2024-01-21 17:07:23
2	Repellat 6	2024-01-21 17:07:23	2024-01-21 17:07:23
3	Illum 3	2024-01-21 17:07:23	2024-01-21 17:07:23
4	Perferendis 8	2024-01-21 17:07:23	2024-01-21 17:07:23
5	Ducimus 7	2024-01-21 17:07:23	2024-01-21 17:07:23
6	Quaerat 3	2024-01-21 17:07:23	2024-01-21 17:07:23
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
43	2014_10_12_000000_create_users_table	1
44	2014_10_12_100000_create_password_reset_tokens_table	1
45	2014_10_12_100000_create_password_resets_table	1
46	2019_08_19_000000_create_failed_jobs_table	1
47	2019_12_14_000001_create_personal_access_tokens_table	1
48	2023_03_15_095422_create_kmodels_table	1
49	2023_03_15_130143_create_brands_table	1
50	2023_03_15_134452_create_collabrands_table	1
51	2023_03_15_135806_create_kicks_table	1
52	2023_03_15_142121_create_colors_table	1
53	2023_03_15_142235_create_color_kick_table	1
54	2023_03_15_143139_create_brand_kick_table	1
55	2023_03_15_144257_create_designers_table	1
56	2023_03_15_144318_create_designer_kick_table	1
57	2023_03_15_144950_create_collabrand_kick_table	1
58	2023_03_15_145514_create_images_table	1
59	2023_03_15_150026_create_people_table	1
60	2023_03_15_150343_create_kick_person_table	1
61	2023_03_15_152827_create_materials_table	1
62	2023_03_15_152845_create_kick_material_table	1
63	2023_03_16_063948_create_categories_table	1
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
1	Araceli Rempel	2024-01-21 17:09:06	2024-01-21 17:09:06
2	Elias Cronin	2024-01-21 17:09:06	2024-01-21 17:09:06
3	David Greenholt	2024-01-21 17:09:06	2024-01-21 17:09:06
4	Edyth Conroy	2024-01-21 17:09:06	2024-01-21 17:09:06
5	Guido Koss	2024-01-21 17:09:06	2024-01-21 17:09:06
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

SELECT pg_catalog.setval('public.brand_kick_id_seq', 24, true);


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

SELECT pg_catalog.setval('public.designer_kick_id_seq', 10, true);


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

SELECT pg_catalog.setval('public.kick_person_id_seq', 8, true);


--
-- Name: kicks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.kicks_id_seq', 10, true);


--
-- Name: kmodels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.kmodels_id_seq', 6, true);


--
-- Name: materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.materials_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kick
--

SELECT pg_catalog.setval('public.migrations_id_seq', 63, true);


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
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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

