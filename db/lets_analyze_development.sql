--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO btihen;

--
-- Name: plots; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.plots (
    id bigint NOT NULL,
    plot_code public.citext NOT NULL,
    plot_name character varying NOT NULL,
    plot_slope integer,
    plot_aspect integer,
    plot_elevation_m integer NOT NULL,
    plot_latitude numeric(12,8) NOT NULL,
    plot_longitude numeric(12,8) NOT NULL,
    transect_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.plots OWNER TO btihen;

--
-- Name: plots_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.plots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plots_id_seq OWNER TO btihen;

--
-- Name: plots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.plots_id_seq OWNED BY public.plots.id;


--
-- Name: refinery_authentication_devise_roles; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.refinery_authentication_devise_roles (
    id integer NOT NULL,
    title character varying
);


ALTER TABLE public.refinery_authentication_devise_roles OWNER TO btihen;

--
-- Name: refinery_authentication_devise_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.refinery_authentication_devise_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_authentication_devise_roles_id_seq OWNER TO btihen;

--
-- Name: refinery_authentication_devise_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.refinery_authentication_devise_roles_id_seq OWNED BY public.refinery_authentication_devise_roles.id;


--
-- Name: refinery_authentication_devise_roles_users; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.refinery_authentication_devise_roles_users (
    user_id integer,
    role_id integer
);


ALTER TABLE public.refinery_authentication_devise_roles_users OWNER TO btihen;

--
-- Name: refinery_authentication_devise_user_plugins; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.refinery_authentication_devise_user_plugins (
    id integer NOT NULL,
    user_id integer,
    name character varying,
    "position" integer
);


ALTER TABLE public.refinery_authentication_devise_user_plugins OWNER TO btihen;

--
-- Name: refinery_authentication_devise_user_plugins_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.refinery_authentication_devise_user_plugins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_authentication_devise_user_plugins_id_seq OWNER TO btihen;

--
-- Name: refinery_authentication_devise_user_plugins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.refinery_authentication_devise_user_plugins_id_seq OWNED BY public.refinery_authentication_devise_user_plugins.id;


--
-- Name: refinery_authentication_devise_users; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.refinery_authentication_devise_users (
    id integer NOT NULL,
    username character varying NOT NULL,
    email character varying NOT NULL,
    encrypted_password character varying NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    sign_in_count integer,
    remember_created_at timestamp without time zone,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    slug character varying,
    full_name character varying
);


ALTER TABLE public.refinery_authentication_devise_users OWNER TO btihen;

--
-- Name: refinery_authentication_devise_users_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.refinery_authentication_devise_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_authentication_devise_users_id_seq OWNER TO btihen;

--
-- Name: refinery_authentication_devise_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.refinery_authentication_devise_users_id_seq OWNED BY public.refinery_authentication_devise_users.id;


--
-- Name: refinery_image_translations; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.refinery_image_translations (
    id bigint NOT NULL,
    refinery_image_id integer NOT NULL,
    locale character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_alt character varying,
    image_title character varying
);


ALTER TABLE public.refinery_image_translations OWNER TO btihen;

--
-- Name: refinery_image_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.refinery_image_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_image_translations_id_seq OWNER TO btihen;

--
-- Name: refinery_image_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.refinery_image_translations_id_seq OWNED BY public.refinery_image_translations.id;


--
-- Name: refinery_images; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.refinery_images (
    id integer NOT NULL,
    image_mime_type character varying,
    image_name character varying,
    image_size integer,
    image_width integer,
    image_height integer,
    image_uid character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.refinery_images OWNER TO btihen;

--
-- Name: refinery_images_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.refinery_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_images_id_seq OWNER TO btihen;

--
-- Name: refinery_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.refinery_images_id_seq OWNED BY public.refinery_images.id;


--
-- Name: refinery_page_part_translations; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.refinery_page_part_translations (
    id bigint NOT NULL,
    refinery_page_part_id integer NOT NULL,
    locale character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    body text
);


ALTER TABLE public.refinery_page_part_translations OWNER TO btihen;

--
-- Name: refinery_page_part_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.refinery_page_part_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_page_part_translations_id_seq OWNER TO btihen;

--
-- Name: refinery_page_part_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.refinery_page_part_translations_id_seq OWNED BY public.refinery_page_part_translations.id;


--
-- Name: refinery_page_parts; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.refinery_page_parts (
    id integer NOT NULL,
    refinery_page_id integer,
    slug character varying,
    "position" integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    title character varying
);


ALTER TABLE public.refinery_page_parts OWNER TO btihen;

--
-- Name: refinery_page_parts_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.refinery_page_parts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_page_parts_id_seq OWNER TO btihen;

--
-- Name: refinery_page_parts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.refinery_page_parts_id_seq OWNED BY public.refinery_page_parts.id;


--
-- Name: refinery_page_translations; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.refinery_page_translations (
    id bigint NOT NULL,
    refinery_page_id integer NOT NULL,
    locale character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    title character varying,
    custom_slug character varying,
    menu_title character varying,
    slug character varying
);


ALTER TABLE public.refinery_page_translations OWNER TO btihen;

--
-- Name: refinery_page_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.refinery_page_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_page_translations_id_seq OWNER TO btihen;

--
-- Name: refinery_page_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.refinery_page_translations_id_seq OWNED BY public.refinery_page_translations.id;


--
-- Name: refinery_pages; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.refinery_pages (
    id integer NOT NULL,
    parent_id integer,
    path character varying,
    show_in_menu boolean DEFAULT true,
    link_url character varying,
    menu_match character varying,
    deletable boolean DEFAULT true,
    draft boolean DEFAULT false,
    skip_to_first_child boolean DEFAULT false,
    lft integer,
    rgt integer,
    depth integer,
    view_template character varying,
    layout_template character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.refinery_pages OWNER TO btihen;

--
-- Name: refinery_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.refinery_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_pages_id_seq OWNER TO btihen;

--
-- Name: refinery_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.refinery_pages_id_seq OWNED BY public.refinery_pages.id;


--
-- Name: refinery_resource_translations; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.refinery_resource_translations (
    id bigint NOT NULL,
    refinery_resource_id integer NOT NULL,
    locale character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    resource_title character varying
);


ALTER TABLE public.refinery_resource_translations OWNER TO btihen;

--
-- Name: refinery_resource_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.refinery_resource_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_resource_translations_id_seq OWNER TO btihen;

--
-- Name: refinery_resource_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.refinery_resource_translations_id_seq OWNED BY public.refinery_resource_translations.id;


--
-- Name: refinery_resources; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.refinery_resources (
    id integer NOT NULL,
    file_mime_type character varying,
    file_name character varying,
    file_size integer,
    file_uid character varying,
    file_ext character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.refinery_resources OWNER TO btihen;

--
-- Name: refinery_resources_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.refinery_resources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.refinery_resources_id_seq OWNER TO btihen;

--
-- Name: refinery_resources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.refinery_resources_id_seq OWNED BY public.refinery_resources.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO btihen;

--
-- Name: seo_meta; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.seo_meta (
    id integer NOT NULL,
    seo_meta_id integer,
    seo_meta_type character varying,
    browser_title character varying,
    meta_description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.seo_meta OWNER TO btihen;

--
-- Name: seo_meta_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.seo_meta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seo_meta_id_seq OWNER TO btihen;

--
-- Name: seo_meta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.seo_meta_id_seq OWNED BY public.seo_meta.id;


--
-- Name: species; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.species (
    id bigint NOT NULL,
    species_code public.citext NOT NULL,
    species_name character varying NOT NULL,
    foilage_strategy public.citext NOT NULL,
    foilage_type public.citext NOT NULL,
    taxonomy public.citext NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.species OWNER TO btihen;

--
-- Name: species_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.species_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_id_seq OWNER TO btihen;

--
-- Name: species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.species_id_seq OWNED BY public.species.id;


--
-- Name: transects; Type: TABLE; Schema: public; Owner: btihen
--

CREATE TABLE public.transects (
    id bigint NOT NULL,
    transect_code public.citext NOT NULL,
    transect_name character varying NOT NULL,
    target_slope integer NOT NULL,
    target_aspect integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.transects OWNER TO btihen;

--
-- Name: transects_id_seq; Type: SEQUENCE; Schema: public; Owner: btihen
--

CREATE SEQUENCE public.transects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transects_id_seq OWNER TO btihen;

--
-- Name: transects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: btihen
--

ALTER SEQUENCE public.transects_id_seq OWNED BY public.transects.id;


--
-- Name: plots id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.plots ALTER COLUMN id SET DEFAULT nextval('public.plots_id_seq'::regclass);


--
-- Name: refinery_authentication_devise_roles id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_authentication_devise_roles ALTER COLUMN id SET DEFAULT nextval('public.refinery_authentication_devise_roles_id_seq'::regclass);


--
-- Name: refinery_authentication_devise_user_plugins id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_authentication_devise_user_plugins ALTER COLUMN id SET DEFAULT nextval('public.refinery_authentication_devise_user_plugins_id_seq'::regclass);


--
-- Name: refinery_authentication_devise_users id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_authentication_devise_users ALTER COLUMN id SET DEFAULT nextval('public.refinery_authentication_devise_users_id_seq'::regclass);


--
-- Name: refinery_image_translations id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_image_translations ALTER COLUMN id SET DEFAULT nextval('public.refinery_image_translations_id_seq'::regclass);


--
-- Name: refinery_images id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_images ALTER COLUMN id SET DEFAULT nextval('public.refinery_images_id_seq'::regclass);


--
-- Name: refinery_page_part_translations id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_page_part_translations ALTER COLUMN id SET DEFAULT nextval('public.refinery_page_part_translations_id_seq'::regclass);


--
-- Name: refinery_page_parts id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_page_parts ALTER COLUMN id SET DEFAULT nextval('public.refinery_page_parts_id_seq'::regclass);


--
-- Name: refinery_page_translations id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_page_translations ALTER COLUMN id SET DEFAULT nextval('public.refinery_page_translations_id_seq'::regclass);


--
-- Name: refinery_pages id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_pages ALTER COLUMN id SET DEFAULT nextval('public.refinery_pages_id_seq'::regclass);


--
-- Name: refinery_resource_translations id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_resource_translations ALTER COLUMN id SET DEFAULT nextval('public.refinery_resource_translations_id_seq'::regclass);


--
-- Name: refinery_resources id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_resources ALTER COLUMN id SET DEFAULT nextval('public.refinery_resources_id_seq'::regclass);


--
-- Name: seo_meta id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.seo_meta ALTER COLUMN id SET DEFAULT nextval('public.seo_meta_id_seq'::regclass);


--
-- Name: species id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.species ALTER COLUMN id SET DEFAULT nextval('public.species_id_seq'::regclass);


--
-- Name: transects id; Type: DEFAULT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.transects ALTER COLUMN id SET DEFAULT nextval('public.transects_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2018-04-28 09:58:01.00322	2018-04-28 09:58:01.00322
\.


--
-- Data for Name: plots; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.plots (id, plot_code, plot_name, plot_slope, plot_aspect, plot_elevation_m, plot_latitude, plot_longitude, transect_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: refinery_authentication_devise_roles; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.refinery_authentication_devise_roles (id, title) FROM stdin;
1	Refinery
2	Superuser
\.


--
-- Data for Name: refinery_authentication_devise_roles_users; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.refinery_authentication_devise_roles_users (user_id, role_id) FROM stdin;
1	1
1	2
2	1
3	1
4	1
\.


--
-- Data for Name: refinery_authentication_devise_user_plugins; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.refinery_authentication_devise_user_plugins (id, user_id, name, "position") FROM stdin;
1	1	refinery_authentication_devise	1
2	1	refinery_pages	2
3	1	refinery_files	3
4	1	refinery_images	4
5	2	refinery_files	1
6	2	refinery_images	2
7	2	refinery_pages	3
8	2	refinery_authentication_devise	4
9	3	refinery_files	1
10	3	refinery_images	2
11	3	refinery_pages	3
12	3	refinery_authentication_devise	4
13	4	refinery_files	1
14	4	refinery_images	2
15	4	refinery_pages	3
16	4	refinery_authentication_devise	4
\.


--
-- Data for Name: refinery_authentication_devise_users; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.refinery_authentication_devise_users (id, username, email, encrypted_password, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, sign_in_count, remember_created_at, reset_password_token, reset_password_sent_at, created_at, updated_at, slug, full_name) FROM stdin;
1	btihen	btihen@gmail.com	$2a$10$j1bDW.8FrAQKw1FCAa5EA.DMymPseFoavHRZA3dguud/wBFAFMtM6	2018-04-28 10:01:03.196605	2018-04-28 10:01:03.196605	127.0.0.1	127.0.0.1	1	\N	\N	\N	2018-04-28 10:01:03.016694	2018-04-28 10:01:03.197127	btihen	\N
2	ehebert	ehebert@gmail.com	$2a$10$H6eWE08QLfbrfrVyf2CTAOZaP5ufzuAKrcUIz8pfBa36xqeCQa4dG	\N	\N	\N	\N	\N	\N	\N	\N	2018-04-28 10:12:08.272821	2018-04-28 10:12:08.272821	ehebert	Elliott Hebert
3	dpatton	dpatton@gmail.com	$2a$10$eEqXuRgsu7e1nesiy6p1qeBiXLn/ZYmSrfVDiLoInO8H9RTlLuXN6	\N	\N	\N	\N	\N	\N	\N	\N	2018-04-28 10:12:51.243164	2018-04-28 10:12:51.243164	dpatton	Dan Patton
4	jharlin	jharlin@gmail.com	$2a$10$gf2Jn3MzkehzmELMgKw7ruHLGuraA0PFJ/f8CDbI9Je4cfouir.5m	\N	\N	\N	\N	\N	\N	\N	\N	2018-04-28 10:13:25.480979	2018-04-28 10:13:25.480979	jharlin	John Harlin
\.


--
-- Data for Name: refinery_image_translations; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.refinery_image_translations (id, refinery_image_id, locale, created_at, updated_at, image_alt, image_title) FROM stdin;
\.


--
-- Data for Name: refinery_images; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.refinery_images (id, image_mime_type, image_name, image_size, image_width, image_height, image_uid, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: refinery_page_part_translations; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.refinery_page_part_translations (id, refinery_page_part_id, locale, created_at, updated_at, body) FROM stdin;
1	1	en	2018-04-28 10:01:42.514602	2018-04-28 10:01:42.514602	<p>This is an overview of the lessons</p>
2	2	en	2018-04-28 10:01:42.521145	2018-04-28 10:01:42.521145	
3	3	en	2018-04-28 10:02:28.2054	2018-04-28 10:02:28.2054	<p>Introductory Overview</p>\r\n<p>This set of lessons is targeted at middle school students</p>
4	4	en	2018-04-28 10:02:28.209081	2018-04-28 10:02:28.209081	
5	5	en	2018-04-28 10:03:09.305508	2018-04-28 10:03:09.305508	<p>Intermediate Lessons Overview&#160;</p>\r\n<p>These lessons are targeted at 9 &amp; 10 graders</p>
6	6	en	2018-04-28 10:03:09.309112	2018-04-28 10:03:09.309112	
7	7	en	2018-04-28 10:04:05.553131	2018-04-28 10:04:05.553131	<p>This is the Overview of Advanced Analysis</p>\r\n<p>This is target at 11th, 12th and IB students</p>
8	8	en	2018-04-28 10:04:05.556209	2018-04-28 10:04:05.556209	
10	10	en	2018-04-28 10:04:24.031768	2018-04-28 10:04:24.031768	
12	12	en	2018-04-28 10:04:46.610216	2018-04-28 10:04:46.610216	
9	9	en	2018-04-28 10:04:24.028289	2018-04-28 10:05:17.334072	<p>study design page</p>
11	11	en	2018-04-28 10:04:46.607181	2018-04-28 10:05:29.674564	<p>Data collection design</p>
13	13	en	2018-04-28 10:06:11.600751	2018-04-28 10:06:11.600751	<p>Data Preparation placeholder</p>
14	14	en	2018-04-28 10:06:11.604297	2018-04-28 10:06:11.604297	
15	15	en	2018-04-28 10:06:32.153755	2018-04-28 10:06:32.153755	<p>place holder for data graphing</p>
16	16	en	2018-04-28 10:06:32.156831	2018-04-28 10:06:32.156831	
17	17	en	2018-04-28 10:07:35.774589	2018-04-28 10:07:35.774589	<p>placeholder for analysis and interpreting</p>
18	18	en	2018-04-28 10:07:35.778457	2018-04-28 10:07:35.778457	
19	19	en	2018-04-28 10:08:18.79874	2018-04-28 10:08:18.79874	
20	20	en	2018-04-28 10:08:18.802245	2018-04-28 10:08:18.802245	
21	21	en	2018-04-28 10:08:28.949129	2018-04-28 10:08:28.949129	
22	22	en	2018-04-28 10:08:28.952209	2018-04-28 10:08:28.952209	
23	23	en	2018-04-28 10:08:44.474181	2018-04-28 10:08:44.474181	
24	24	en	2018-04-28 10:08:44.477786	2018-04-28 10:08:44.477786	
25	25	en	2018-04-28 10:09:01.772761	2018-04-28 10:09:01.772761	
26	26	en	2018-04-28 10:09:01.77659	2018-04-28 10:09:01.77659	
27	27	en	2018-04-28 10:09:19.0385	2018-04-28 10:09:19.0385	
28	28	en	2018-04-28 10:09:19.041601	2018-04-28 10:09:19.041601	
29	29	en	2018-04-28 10:09:30.397014	2018-04-28 10:09:30.397014	
30	30	en	2018-04-28 10:09:30.400199	2018-04-28 10:09:30.400199	
31	31	en	2018-04-28 10:09:42.738838	2018-04-28 10:09:42.738838	
32	32	en	2018-04-28 10:09:42.741569	2018-04-28 10:09:42.741569	
33	33	en	2018-04-28 10:09:59.438573	2018-04-28 10:09:59.438573	
34	34	en	2018-04-28 10:09:59.441849	2018-04-28 10:09:59.441849	
35	35	en	2018-04-28 10:10:17.473907	2018-04-28 10:10:17.473907	
36	36	en	2018-04-28 10:10:17.477395	2018-04-28 10:10:17.477395	
37	37	en	2018-04-28 10:10:28.789138	2018-04-28 10:10:28.789138	
38	38	en	2018-04-28 10:10:28.792118	2018-04-28 10:10:28.792118	
\.


--
-- Data for Name: refinery_page_parts; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.refinery_page_parts (id, refinery_page_id, slug, "position", created_at, updated_at, title) FROM stdin;
1	1	body	0	2018-04-28 10:01:42.511377	2018-04-28 10:01:42.511377	Body
2	1	side_body	1	2018-04-28 10:01:42.519549	2018-04-28 10:01:42.519549	Side Body
3	2	body	0	2018-04-28 10:02:28.203931	2018-04-28 10:02:28.203931	Body
4	2	side_body	1	2018-04-28 10:02:28.2074	2018-04-28 10:02:28.2074	Side Body
5	3	body	0	2018-04-28 10:03:09.303818	2018-04-28 10:03:09.303818	Body
6	3	side_body	1	2018-04-28 10:03:09.307489	2018-04-28 10:03:09.307489	Side Body
7	4	body	0	2018-04-28 10:04:05.551557	2018-04-28 10:04:05.551557	Body
8	4	side_body	1	2018-04-28 10:04:05.554851	2018-04-28 10:04:05.554851	Side Body
9	5	body	0	2018-04-28 10:04:24.026663	2018-04-28 10:05:17.331108	Body
10	5	side_body	1	2018-04-28 10:04:24.030203	2018-04-28 10:04:24.030203	Side Body
11	6	body	0	2018-04-28 10:04:46.605823	2018-04-28 10:05:29.672672	Body
12	6	side_body	1	2018-04-28 10:04:46.608817	2018-04-28 10:04:46.608817	Side Body
15	8	body	0	2018-04-28 10:06:32.152326	2018-04-28 10:06:32.152326	Body
16	8	side_body	1	2018-04-28 10:06:32.155482	2018-04-28 10:06:32.155482	Side Body
17	9	body	0	2018-04-28 10:07:35.772755	2018-04-28 10:07:35.772755	Body
18	9	side_body	1	2018-04-28 10:07:35.77671	2018-04-28 10:07:35.77671	Side Body
19	10	body	0	2018-04-28 10:08:18.796934	2018-04-28 10:08:18.796934	Body
20	10	side_body	1	2018-04-28 10:08:18.800738	2018-04-28 10:08:18.800738	Side Body
21	11	body	0	2018-04-28 10:08:28.947389	2018-04-28 10:08:28.947389	Body
22	11	side_body	1	2018-04-28 10:08:28.950838	2018-04-28 10:08:28.950838	Side Body
25	13	body	0	2018-04-28 10:09:01.770859	2018-04-28 10:09:01.770859	Body
26	13	side_body	1	2018-04-28 10:09:01.774813	2018-04-28 10:09:01.774813	Side Body
27	14	body	0	2018-04-28 10:09:19.037136	2018-04-28 10:09:19.037136	Body
28	14	side_body	1	2018-04-28 10:09:19.04017	2018-04-28 10:09:19.04017	Side Body
29	15	body	0	2018-04-28 10:09:30.395536	2018-04-28 10:09:30.395536	Body
30	15	side_body	1	2018-04-28 10:09:30.398892	2018-04-28 10:09:30.398892	Side Body
31	16	body	0	2018-04-28 10:09:42.737543	2018-04-28 10:09:42.737543	Body
32	16	side_body	1	2018-04-28 10:09:42.740267	2018-04-28 10:09:42.740267	Side Body
33	17	body	0	2018-04-28 10:09:59.437187	2018-04-28 10:09:59.437187	Body
34	17	side_body	1	2018-04-28 10:09:59.440416	2018-04-28 10:09:59.440416	Side Body
35	18	body	0	2018-04-28 10:10:17.472509	2018-04-28 10:10:17.472509	Body
36	18	side_body	1	2018-04-28 10:10:17.475693	2018-04-28 10:10:17.475693	Side Body
37	19	body	0	2018-04-28 10:10:28.787809	2018-04-28 10:10:28.787809	Body
38	19	side_body	1	2018-04-28 10:10:28.790755	2018-04-28 10:10:28.790755	Side Body
23	12	body	0	2018-04-28 10:08:44.472749	2018-04-28 10:08:44.472749	Body
24	12	side_body	1	2018-04-28 10:08:44.476087	2018-04-28 10:08:44.476087	Side Body
13	7	body	0	2018-04-28 10:06:11.599138	2018-04-28 10:06:11.599138	Body
14	7	side_body	1	2018-04-28 10:06:11.602678	2018-04-28 10:06:11.602678	Side Body
\.


--
-- Data for Name: refinery_page_translations; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.refinery_page_translations (id, refinery_page_id, locale, created_at, updated_at, title, custom_slug, menu_title, slug) FROM stdin;
1	1	en	2018-04-28 10:01:42.502235	2018-04-28 10:01:42.502235	Overview	\N		overview
2	2	en	2018-04-28 10:02:28.199822	2018-04-28 10:02:28.199822	Introductory	\N		introductory
3	3	en	2018-04-28 10:03:09.291835	2018-04-28 10:03:09.291835	Intermediate	\N		intermediate
4	4	en	2018-04-28 10:04:05.548238	2018-04-28 10:04:05.548238	Advanced	\N		advanced
6	6	en	2018-04-28 10:04:46.602757	2018-04-28 10:04:46.602757	Data Collection	\N		data-collection
5	5	en	2018-04-28 10:04:24.023731	2018-04-28 10:05:03.860994	Study Design	\N		study-design
8	8	en	2018-04-28 10:06:32.149137	2018-04-28 10:06:32.149137	Data Graphing	\N		data-graphing
9	9	en	2018-04-28 10:07:35.769391	2018-04-28 10:08:01.760689	Data Interpretation	\N		data-interpretation
10	10	en	2018-04-28 10:08:18.792913	2018-04-28 10:08:18.792913	Study Design	\N		study-design
11	11	en	2018-04-28 10:08:28.943705	2018-04-28 10:08:28.943705	Data Collection	\N		data-collection
13	13	en	2018-04-28 10:09:01.767825	2018-04-28 10:09:01.767825	Data Graphing	\N		data-graphing
14	14	en	2018-04-28 10:09:19.034248	2018-04-28 10:09:19.034248	Data Interpretation	\N		data-interpretation
15	15	en	2018-04-28 10:09:30.39258	2018-04-28 10:09:30.39258	Study Design	\N		study-design
16	16	en	2018-04-28 10:09:42.734325	2018-04-28 10:09:42.734325	Data Collection	\N		data-collection
17	17	en	2018-04-28 10:09:59.434212	2018-04-28 10:09:59.434212	Data Processing	\N		data-processing
18	18	en	2018-04-28 10:10:17.469543	2018-04-28 10:10:17.469543	Data Graphing	\N		data-graphing
19	19	en	2018-04-28 10:10:28.784852	2018-04-28 10:10:28.784852	Data Interpretation	\N		data-interpretation
12	12	en	2018-04-28 10:08:44.469512	2018-04-28 10:10:47.822563	Data Processing	\N		data-processing
7	7	en	2018-04-28 10:06:11.595325	2018-04-28 10:11:00.166459	Data Processing	\N		data-processing
\.


--
-- Data for Name: refinery_pages; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.refinery_pages (id, parent_id, path, show_in_menu, link_url, menu_match, deletable, draft, skip_to_first_child, lft, rgt, depth, view_template, layout_template, created_at, updated_at) FROM stdin;
1	\N	\N	t		\N	t	f	f	1	2	0	show	application	2018-04-28 10:01:42.480483	2018-04-28 10:01:42.520903
18	4	\N	t		\N	t	f	f	34	35	1	show	application	2018-04-28 10:10:17.465007	2018-04-28 10:10:17.477129
4	\N	\N	t		\N	t	f	f	27	38	0	show	application	2018-04-28 10:04:05.544764	2018-04-28 10:10:28.806194
19	4	\N	t		\N	t	f	f	36	37	1	show	application	2018-04-28 10:10:28.780187	2018-04-28 10:10:28.791897
12	3	\N	t		\N	t	f	f	20	21	1	show	application	2018-04-28 10:08:44.464315	2018-04-28 10:10:47.80275
7	2	\N	t		\N	t	f	f	8	9	1	show	application	2018-04-28 10:06:11.591584	2018-04-28 10:11:00.137818
5	2	\N	t		\N	t	f	f	4	5	1	show	application	2018-04-28 10:04:24.018706	2018-04-28 10:05:17.333572
6	2	\N	t		\N	t	f	f	6	7	1	show	application	2018-04-28 10:04:46.598269	2018-04-28 10:05:29.674314
8	2	\N	t		\N	t	f	f	10	11	1	show	application	2018-04-28 10:06:32.14483	2018-04-28 10:06:32.156574
2	\N	\N	t		\N	t	f	f	3	14	0	show	application	2018-04-28 10:02:28.189563	2018-04-28 10:07:35.800347
13	3	\N	t		\N	t	f	f	22	23	1	show	application	2018-04-28 10:09:01.763849	2018-04-28 10:09:01.776204
3	\N	\N	t		\N	t	f	f	15	26	0	show	application	2018-04-28 10:03:09.288273	2018-04-28 10:09:19.054535
9	2	\N	t		\N	t	f	f	12	13	1	show	application	2018-04-28 10:07:35.765624	2018-04-28 10:08:01.725282
10	3	\N	t		\N	t	f	f	16	17	1	show	application	2018-04-28 10:08:18.789238	2018-04-28 10:08:18.801983
11	3	\N	t		\N	t	f	f	18	19	1	show	application	2018-04-28 10:08:28.939025	2018-04-28 10:08:28.951994
14	3	\N	t		\N	t	f	f	24	25	1	show	application	2018-04-28 10:09:19.030603	2018-04-28 10:09:19.041339
15	4	\N	t		\N	t	f	f	28	29	1	show	application	2018-04-28 10:09:30.389232	2018-04-28 10:09:30.400002
16	4	\N	t		\N	t	f	f	30	31	1	show	application	2018-04-28 10:09:42.730657	2018-04-28 10:09:42.741373
17	4	\N	t		\N	t	f	f	32	33	1	show	application	2018-04-28 10:09:59.429771	2018-04-28 10:09:59.441595
\.


--
-- Data for Name: refinery_resource_translations; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.refinery_resource_translations (id, refinery_resource_id, locale, created_at, updated_at, resource_title) FROM stdin;
\.


--
-- Data for Name: refinery_resources; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.refinery_resources (id, file_mime_type, file_name, file_size, file_uid, file_ext, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.schema_migrations (version) FROM stdin;
20180327155600
20180426065746
20180426065747
20180426065748
20180426065749
20180426065750
20180426065751
20180426065752
20180426065753
20180426065754
20180426065755
20180426065756
20180426065757
20180426065758
20180426065759
20180426065760
20180426065761
20180426065762
20180426065763
20180426065764
20180426065765
20180428094704
20180428094833
20180428095430
\.


--
-- Data for Name: seo_meta; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.seo_meta (id, seo_meta_id, seo_meta_type, browser_title, meta_description, created_at, updated_at) FROM stdin;
1	1	Refinery::Page::Translation			2018-04-28 10:01:42.504304	2018-04-28 10:01:42.504304
2	2	Refinery::Page::Translation			2018-04-28 10:02:28.201403	2018-04-28 10:02:28.201403
3	3	Refinery::Page::Translation			2018-04-28 10:03:09.30051	2018-04-28 10:03:09.30051
4	4	Refinery::Page::Translation			2018-04-28 10:04:05.549452	2018-04-28 10:04:05.549452
5	5	Refinery::Page::Translation			2018-04-28 10:04:24.024849	2018-04-28 10:04:24.024849
6	6	Refinery::Page::Translation			2018-04-28 10:04:46.603983	2018-04-28 10:04:46.603983
7	7	Refinery::Page::Translation			2018-04-28 10:06:11.596798	2018-04-28 10:06:11.596798
8	8	Refinery::Page::Translation			2018-04-28 10:06:32.150465	2018-04-28 10:06:32.150465
9	9	Refinery::Page::Translation			2018-04-28 10:07:35.770537	2018-04-28 10:07:35.770537
10	10	Refinery::Page::Translation			2018-04-28 10:08:18.794238	2018-04-28 10:08:18.794238
11	11	Refinery::Page::Translation			2018-04-28 10:08:28.944959	2018-04-28 10:08:28.944959
12	12	Refinery::Page::Translation			2018-04-28 10:08:44.470814	2018-04-28 10:08:44.470814
13	13	Refinery::Page::Translation			2018-04-28 10:09:01.768956	2018-04-28 10:09:01.768956
14	14	Refinery::Page::Translation			2018-04-28 10:09:19.035341	2018-04-28 10:09:19.035341
15	15	Refinery::Page::Translation			2018-04-28 10:09:30.393694	2018-04-28 10:09:30.393694
16	16	Refinery::Page::Translation			2018-04-28 10:09:42.735662	2018-04-28 10:09:42.735662
17	17	Refinery::Page::Translation			2018-04-28 10:09:59.435377	2018-04-28 10:09:59.435377
18	18	Refinery::Page::Translation			2018-04-28 10:10:17.47072	2018-04-28 10:10:17.47072
19	19	Refinery::Page::Translation			2018-04-28 10:10:28.785981	2018-04-28 10:10:28.785981
\.


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.species (id, species_code, species_name, foilage_strategy, foilage_type, taxonomy, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: transects; Type: TABLE DATA; Schema: public; Owner: btihen
--

COPY public.transects (id, transect_code, transect_name, target_slope, target_aspect, created_at, updated_at) FROM stdin;
\.


--
-- Name: plots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.plots_id_seq', 1, false);


--
-- Name: refinery_authentication_devise_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.refinery_authentication_devise_roles_id_seq', 2, true);


--
-- Name: refinery_authentication_devise_user_plugins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.refinery_authentication_devise_user_plugins_id_seq', 16, true);


--
-- Name: refinery_authentication_devise_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.refinery_authentication_devise_users_id_seq', 4, true);


--
-- Name: refinery_image_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.refinery_image_translations_id_seq', 1, false);


--
-- Name: refinery_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.refinery_images_id_seq', 1, false);


--
-- Name: refinery_page_part_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.refinery_page_part_translations_id_seq', 38, true);


--
-- Name: refinery_page_parts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.refinery_page_parts_id_seq', 38, true);


--
-- Name: refinery_page_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.refinery_page_translations_id_seq', 19, true);


--
-- Name: refinery_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.refinery_pages_id_seq', 19, true);


--
-- Name: refinery_resource_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.refinery_resource_translations_id_seq', 1, false);


--
-- Name: refinery_resources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.refinery_resources_id_seq', 1, false);


--
-- Name: seo_meta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.seo_meta_id_seq', 19, true);


--
-- Name: species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.species_id_seq', 1, false);


--
-- Name: transects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: btihen
--

SELECT pg_catalog.setval('public.transects_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: plots plots_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.plots
    ADD CONSTRAINT plots_pkey PRIMARY KEY (id);


--
-- Name: refinery_authentication_devise_roles refinery_authentication_devise_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_authentication_devise_roles
    ADD CONSTRAINT refinery_authentication_devise_roles_pkey PRIMARY KEY (id);


--
-- Name: refinery_authentication_devise_user_plugins refinery_authentication_devise_user_plugins_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_authentication_devise_user_plugins
    ADD CONSTRAINT refinery_authentication_devise_user_plugins_pkey PRIMARY KEY (id);


--
-- Name: refinery_authentication_devise_users refinery_authentication_devise_users_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_authentication_devise_users
    ADD CONSTRAINT refinery_authentication_devise_users_pkey PRIMARY KEY (id);


--
-- Name: refinery_image_translations refinery_image_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_image_translations
    ADD CONSTRAINT refinery_image_translations_pkey PRIMARY KEY (id);


--
-- Name: refinery_images refinery_images_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_images
    ADD CONSTRAINT refinery_images_pkey PRIMARY KEY (id);


--
-- Name: refinery_page_part_translations refinery_page_part_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_page_part_translations
    ADD CONSTRAINT refinery_page_part_translations_pkey PRIMARY KEY (id);


--
-- Name: refinery_page_parts refinery_page_parts_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_page_parts
    ADD CONSTRAINT refinery_page_parts_pkey PRIMARY KEY (id);


--
-- Name: refinery_page_translations refinery_page_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_page_translations
    ADD CONSTRAINT refinery_page_translations_pkey PRIMARY KEY (id);


--
-- Name: refinery_pages refinery_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_pages
    ADD CONSTRAINT refinery_pages_pkey PRIMARY KEY (id);


--
-- Name: refinery_resource_translations refinery_resource_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_resource_translations
    ADD CONSTRAINT refinery_resource_translations_pkey PRIMARY KEY (id);


--
-- Name: refinery_resources refinery_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.refinery_resources
    ADD CONSTRAINT refinery_resources_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: seo_meta seo_meta_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.seo_meta
    ADD CONSTRAINT seo_meta_pkey PRIMARY KEY (id);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (id);


--
-- Name: transects transects_pkey; Type: CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.transects
    ADD CONSTRAINT transects_pkey PRIMARY KEY (id);


--
-- Name: id_type_index_on_seo_meta; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX id_type_index_on_seo_meta ON public.seo_meta USING btree (seo_meta_id, seo_meta_type);


--
-- Name: index_plots_on_plot_code; Type: INDEX; Schema: public; Owner: btihen
--

CREATE UNIQUE INDEX index_plots_on_plot_code ON public.plots USING btree (plot_code);


--
-- Name: index_plots_on_transect_id; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_plots_on_transect_id ON public.plots USING btree (transect_id);


--
-- Name: index_refinery_authentication_devise_user_plugins_on_name; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_authentication_devise_user_plugins_on_name ON public.refinery_authentication_devise_user_plugins USING btree (name);


--
-- Name: index_refinery_authentication_devise_users_on_id; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_authentication_devise_users_on_id ON public.refinery_authentication_devise_users USING btree (id);


--
-- Name: index_refinery_authentication_devise_users_on_slug; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_authentication_devise_users_on_slug ON public.refinery_authentication_devise_users USING btree (slug);


--
-- Name: index_refinery_image_translations_on_locale; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_image_translations_on_locale ON public.refinery_image_translations USING btree (locale);


--
-- Name: index_refinery_image_translations_on_refinery_image_id; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_image_translations_on_refinery_image_id ON public.refinery_image_translations USING btree (refinery_image_id);


--
-- Name: index_refinery_page_part_translations_on_locale; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_page_part_translations_on_locale ON public.refinery_page_part_translations USING btree (locale);


--
-- Name: index_refinery_page_part_translations_on_refinery_page_part_id; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_page_part_translations_on_refinery_page_part_id ON public.refinery_page_part_translations USING btree (refinery_page_part_id);


--
-- Name: index_refinery_page_parts_on_id; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_page_parts_on_id ON public.refinery_page_parts USING btree (id);


--
-- Name: index_refinery_page_parts_on_refinery_page_id; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_page_parts_on_refinery_page_id ON public.refinery_page_parts USING btree (refinery_page_id);


--
-- Name: index_refinery_page_translations_on_locale; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_page_translations_on_locale ON public.refinery_page_translations USING btree (locale);


--
-- Name: index_refinery_page_translations_on_refinery_page_id; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_page_translations_on_refinery_page_id ON public.refinery_page_translations USING btree (refinery_page_id);


--
-- Name: index_refinery_pages_on_depth; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_pages_on_depth ON public.refinery_pages USING btree (depth);


--
-- Name: index_refinery_pages_on_id; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_pages_on_id ON public.refinery_pages USING btree (id);


--
-- Name: index_refinery_pages_on_lft; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_pages_on_lft ON public.refinery_pages USING btree (lft);


--
-- Name: index_refinery_pages_on_parent_id; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_pages_on_parent_id ON public.refinery_pages USING btree (parent_id);


--
-- Name: index_refinery_pages_on_rgt; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_pages_on_rgt ON public.refinery_pages USING btree (rgt);


--
-- Name: index_refinery_resource_translations_on_locale; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_resource_translations_on_locale ON public.refinery_resource_translations USING btree (locale);


--
-- Name: index_refinery_resource_translations_on_refinery_resource_id; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_refinery_resource_translations_on_refinery_resource_id ON public.refinery_resource_translations USING btree (refinery_resource_id);


--
-- Name: index_seo_meta_on_id; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX index_seo_meta_on_id ON public.seo_meta USING btree (id);


--
-- Name: index_species_on_species_code; Type: INDEX; Schema: public; Owner: btihen
--

CREATE UNIQUE INDEX index_species_on_species_code ON public.species USING btree (species_code);


--
-- Name: index_transects_on_transect_code; Type: INDEX; Schema: public; Owner: btihen
--

CREATE UNIQUE INDEX index_transects_on_transect_code ON public.transects USING btree (transect_code);


--
-- Name: refinery_roles_users_role_id_user_id; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX refinery_roles_users_role_id_user_id ON public.refinery_authentication_devise_roles_users USING btree (role_id, user_id);


--
-- Name: refinery_roles_users_user_id_role_id; Type: INDEX; Schema: public; Owner: btihen
--

CREATE INDEX refinery_roles_users_user_id_role_id ON public.refinery_authentication_devise_roles_users USING btree (user_id, role_id);


--
-- Name: refinery_user_plugins_user_id_name; Type: INDEX; Schema: public; Owner: btihen
--

CREATE UNIQUE INDEX refinery_user_plugins_user_id_name ON public.refinery_authentication_devise_user_plugins USING btree (user_id, name);


--
-- Name: plots fk_rails_ba806b4fab; Type: FK CONSTRAINT; Schema: public; Owner: btihen
--

ALTER TABLE ONLY public.plots
    ADD CONSTRAINT fk_rails_ba806b4fab FOREIGN KEY (transect_id) REFERENCES public.transects(id);


--
-- PostgreSQL database dump complete
--

