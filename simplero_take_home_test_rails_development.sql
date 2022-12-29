--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    contents_type character varying,
    contents_id bigint,
    body text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_id_seq OWNER TO postgres;

--
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id bigint NOT NULL,
    title character varying,
    body text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.user_groups OWNER TO postgres;

--
-- Name: user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_groups_id_seq OWNER TO postgres;

--
-- Name: user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_groups_id_seq OWNED BY public.user_groups.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_groups_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2022-12-29 14:50:04.282065	2022-12-29 14:50:04.282065
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, user_id, contents_type, contents_id, body, created_at, updated_at) FROM stdin;
1	1	Post	1	USER 1 COMMENT 1 ON POST 1	2022-12-29 14:50:05.526134	2022-12-29 14:50:05.526134
2	1	Post	2	USER 1 COMMENT 1 ON POST 2	2022-12-29 14:50:05.534048	2022-12-29 14:50:05.534048
3	1	Post	3	USER 1 COMMENT 1 ON POST 3	2022-12-29 14:50:05.539341	2022-12-29 14:50:05.539341
4	1	Post	4	USER 1 COMMENT 1 ON POST 3	2022-12-29 14:50:05.545183	2022-12-29 14:50:05.545183
5	1	Post	5	USER 1 COMMENT 1 ON POST 5	2022-12-29 14:50:05.550788	2022-12-29 14:50:05.550788
6	1	Post	6	USER 1 COMMENT 1 ON POST 6	2022-12-29 14:50:05.556261	2022-12-29 14:50:05.556261
7	2	Post	1	USER 2 COMMENT 1 ON POST 1	2022-12-29 14:50:05.56209	2022-12-29 14:50:05.56209
8	2	Post	2	USER 2 COMMENT 1 ON POST 2	2022-12-29 14:50:05.567504	2022-12-29 14:50:05.567504
9	2	Post	3	USER 2 COMMENT 1 ON POST 3	2022-12-29 14:50:05.572786	2022-12-29 14:50:05.572786
10	2	Post	4	USER 2 COMMENT 1 ON POST 3	2022-12-29 14:50:05.578164	2022-12-29 14:50:05.578164
11	2	Post	5	USER 2 COMMENT 1 ON POST 5	2022-12-29 14:50:05.583656	2022-12-29 14:50:05.583656
12	2	Post	6	USER 2 COMMENT 1 ON POST 6	2022-12-29 14:50:05.588888	2022-12-29 14:50:05.588888
13	2	Comment	1	USER 2 replay 1 ON POST 1	2022-12-29 14:50:05.60119	2022-12-29 14:50:05.60119
14	2	Comment	2	USER 2 replay 2 ON POST 2	2022-12-29 14:50:05.607357	2022-12-29 14:50:05.607357
15	1	Comment	6	USER 1 replay 1 ON POST 6	2022-12-29 14:50:05.613013	2022-12-29 14:50:05.613013
16	1	Comment	7	USER 1 replay 2 ON POST 7	2022-12-29 14:50:05.618442	2022-12-29 14:50:05.618442
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.groups (id, user_id, name, created_at, updated_at) FROM stdin;
1	1	Calvins' Teaching group	2022-12-29 14:50:05.252124	2022-12-29 14:50:05.252124
2	1	W3C Working Committee	2022-12-29 14:50:05.259589	2022-12-29 14:50:05.259589
3	1	simplero Working group	2022-12-29 14:50:05.265156	2022-12-29 14:50:05.265156
4	1	mongoDB Working group	2022-12-29 14:50:05.270551	2022-12-29 14:50:05.270551
5	2	2Calvins' Teaching group	2022-12-29 14:50:05.275802	2022-12-29 14:50:05.275802
6	2	2W3C Working Committee	2022-12-29 14:50:05.280511	2022-12-29 14:50:05.280511
7	2	2simplero Working group	2022-12-29 14:50:05.285832	2022-12-29 14:50:05.285832
8	2	2mongoDB Working group	2022-12-29 14:50:05.29119	2022-12-29 14:50:05.29119
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, user_id, group_id, title, body, created_at, updated_at) FROM stdin;
1	1	1	user 1 post 1 on group 1	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n	2022-12-29 14:50:05.417036	2022-12-29 14:50:05.417036
2	1	2	user 1 post 2 on group 2	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n	2022-12-29 14:50:05.426055	2022-12-29 14:50:05.426055
3	1	2	user 1 post 3 on group 3	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n	2022-12-29 14:50:05.432805	2022-12-29 14:50:05.432805
4	1	4	user 1 post 4 on group 4	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n	2022-12-29 14:50:05.439241	2022-12-29 14:50:05.439241
5	1	5	user 1 post 5 on group 5	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n	2022-12-29 14:50:05.445859	2022-12-29 14:50:05.445859
6	1	6	user 1 post 6 on group 6	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n	2022-12-29 14:50:05.452828	2022-12-29 14:50:05.452828
7	2	1	user 2 post 1 on group 1	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n	2022-12-29 14:50:05.459998	2022-12-29 14:50:05.459998
8	2	2	user 2 post 2 on group 2	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n	2022-12-29 14:50:05.46737	2022-12-29 14:50:05.46737
9	2	5	user 2 post 3 on group 3	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n	2022-12-29 14:50:05.473975	2022-12-29 14:50:05.473975
10	2	6	user 2 post 4 on group 4	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n	2022-12-29 14:50:05.480863	2022-12-29 14:50:05.480863
11	2	7	user 2 post 5 on group 5	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n	2022-12-29 14:50:05.488063	2022-12-29 14:50:05.488063
12	2	8	user 2 post 6 on group 6	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea\n commodo consequat. Duis aute irure doloasdas aa.\n	2022-12-29 14:50:05.494699	2022-12-29 14:50:05.494699
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20221227072446
20221227072448
20221227072717
20221227073031
20221227073649
20221227075404
\.


--
-- Data for Name: user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_groups (id, user_id, group_id, created_at, updated_at) FROM stdin;
1	1	1	2022-12-29 14:50:05.312934	2022-12-29 14:50:05.312934
2	1	2	2022-12-29 14:50:05.321803	2022-12-29 14:50:05.321803
3	1	3	2022-12-29 14:50:05.328604	2022-12-29 14:50:05.328604
4	1	4	2022-12-29 14:50:05.335008	2022-12-29 14:50:05.335008
5	1	5	2022-12-29 14:50:05.341711	2022-12-29 14:50:05.341711
6	1	6	2022-12-29 14:50:05.353986	2022-12-29 14:50:05.353986
7	2	1	2022-12-29 14:50:05.361058	2022-12-29 14:50:05.361058
8	2	2	2022-12-29 14:50:05.36767	2022-12-29 14:50:05.36767
9	2	5	2022-12-29 14:50:05.373705	2022-12-29 14:50:05.373705
10	2	6	2022-12-29 14:50:05.380358	2022-12-29 14:50:05.380358
11	2	7	2022-12-29 14:50:05.38702	2022-12-29 14:50:05.38702
12	2	8	2022-12-29 14:50:05.39362	2022-12-29 14:50:05.39362
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, created_at, updated_at, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at) FROM stdin;
1		2022-12-29 14:50:05.012873	2022-12-29 14:50:05.012873	calvin@simplero.com	$2a$12$7BVACnIAb42LzBc0yZcMbuKMNUOTYSkYfVLCPJFxCHpBr3C/Q644y	\N	\N	\N
2		2022-12-29 14:50:05.219825	2022-12-29 14:50:05.219825	owais@simplero.com	$2a$12$nfdCG2SbMGquU5es2QEiqOHCuO9S0pvee2/X/Gpl1HjXsHMNWhZCy	\N	\N	\N
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 16, true);


--
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.groups_id_seq', 8, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 12, true);


--
-- Name: user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_groups_id_seq', 12, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: user_groups user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_comments_on_contents; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_contents ON public.comments USING btree (contents_type, contents_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_groups_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_groups_on_user_id ON public.groups USING btree (user_id);


--
-- Name: index_posts_on_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_posts_on_group_id ON public.posts USING btree (group_id);


--
-- Name: index_posts_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_posts_on_user_id ON public.posts USING btree (user_id);


--
-- Name: index_user_groups_on_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_groups_on_group_id ON public.user_groups USING btree (group_id);


--
-- Name: index_user_groups_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_groups_on_user_id ON public.user_groups USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: comments fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: posts fk_rails_08dacf9824; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT fk_rails_08dacf9824 FOREIGN KEY (group_id) REFERENCES public.groups(id);


--
-- Name: posts fk_rails_5b5ddfd518; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT fk_rails_5b5ddfd518 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: groups fk_rails_5e78cd340a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT fk_rails_5e78cd340a FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: user_groups fk_rails_6d478d2f65; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT fk_rails_6d478d2f65 FOREIGN KEY (group_id) REFERENCES public.groups(id);


--
-- Name: user_groups fk_rails_c298be7f8b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT fk_rails_c298be7f8b FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

