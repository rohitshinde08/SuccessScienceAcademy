--
-- PostgreSQL database dump
--

\restrict k1tam1gDKKeMF9A1qU6HItElgT9mK4d4T4j9S8l7xXwG6EVNjlfpNR23gj9kekM

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-12-09 14:32:34

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 224 (class 1259 OID 19098)
-- Name: academic_sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.academic_sessions (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE public.academic_sessions OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 19097)
-- Name: academic_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.academic_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.academic_sessions_id_seq OWNER TO postgres;

--
-- TOC entry 5006 (class 0 OID 0)
-- Dependencies: 223
-- Name: academic_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.academic_sessions_id_seq OWNED BY public.academic_sessions.id;


--
-- TOC entry 228 (class 1259 OID 19124)
-- Name: classes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classes (
    id integer NOT NULL,
    class_name character varying(100) NOT NULL
);


ALTER TABLE public.classes OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 19123)
-- Name: classes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.classes_id_seq OWNER TO postgres;

--
-- TOC entry 5007 (class 0 OID 0)
-- Dependencies: 227
-- Name: classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classes_id_seq OWNED BY public.classes.id;


--
-- TOC entry 230 (class 1259 OID 19136)
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    id integer NOT NULL,
    course_name character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 19135)
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.courses_id_seq OWNER TO postgres;

--
-- TOC entry 5008 (class 0 OID 0)
-- Dependencies: 229
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- TOC entry 226 (class 1259 OID 19110)
-- Name: genders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genders (
    id integer NOT NULL,
    gender character varying CONSTRAINT genders_name_not_null NOT NULL
);


ALTER TABLE public.genders OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 19109)
-- Name: genders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.genders_id_seq OWNER TO postgres;

--
-- TOC entry 5009 (class 0 OID 0)
-- Dependencies: 225
-- Name: genders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genders_id_seq OWNED BY public.genders.id;


--
-- TOC entry 220 (class 1259 OID 16421)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL,
    phone character varying
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16420)
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_id_seq OWNER TO postgres;

--
-- TOC entry 5010 (class 0 OID 0)
-- Dependencies: 219
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- TOC entry 232 (class 1259 OID 19148)
-- Name: subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects (
    id integer NOT NULL,
    subject_name character varying(100) NOT NULL
);


ALTER TABLE public.subjects OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 19147)
-- Name: subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subjects_id_seq OWNER TO postgres;

--
-- TOC entry 5011 (class 0 OID 0)
-- Dependencies: 231
-- Name: subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;


--
-- TOC entry 234 (class 1259 OID 19176)
-- Name: teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers (
    id integer NOT NULL,
    user_id integer NOT NULL,
    full_name character varying NOT NULL,
    phone character varying,
    hire_date date
);


ALTER TABLE public.teachers OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 19175)
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teachers_id_seq OWNER TO postgres;

--
-- TOC entry 5012 (class 0 OID 0)
-- Dependencies: 233
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;


--
-- TOC entry 222 (class 1259 OID 16435)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    role character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16434)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 5013 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4792 (class 2604 OID 19101)
-- Name: academic_sessions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_sessions ALTER COLUMN id SET DEFAULT nextval('public.academic_sessions_id_seq'::regclass);


--
-- TOC entry 4794 (class 2604 OID 19127)
-- Name: classes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes ALTER COLUMN id SET DEFAULT nextval('public.classes_id_seq'::regclass);


--
-- TOC entry 4795 (class 2604 OID 19139)
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- TOC entry 4793 (class 2604 OID 19113)
-- Name: genders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genders ALTER COLUMN id SET DEFAULT nextval('public.genders_id_seq'::regclass);


--
-- TOC entry 4790 (class 2604 OID 16424)
-- Name: students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- TOC entry 4796 (class 2604 OID 19151)
-- Name: subjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);


--
-- TOC entry 4797 (class 2604 OID 19179)
-- Name: teachers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);


--
-- TOC entry 4791 (class 2604 OID 16438)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4990 (class 0 OID 19098)
-- Dependencies: 224
-- Data for Name: academic_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.academic_sessions (id, name) FROM stdin;
4	2025-2026
2	2024-2025
5	2023-2024
6	2022-2023
7	2020-2021
\.


--
-- TOC entry 4994 (class 0 OID 19124)
-- Dependencies: 228
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classes (id, class_name) FROM stdin;
2	11
3	12
\.


--
-- TOC entry 4996 (class 0 OID 19136)
-- Dependencies: 230
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (id, course_name) FROM stdin;
3	JEE
1	NEET
2	CET
\.


--
-- TOC entry 4992 (class 0 OID 19110)
-- Dependencies: 226
-- Data for Name: genders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genders (id, gender) FROM stdin;
1	Male
2	Female
3	Other
\.


--
-- TOC entry 4986 (class 0 OID 16421)
-- Dependencies: 220
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id, name, email, phone) FROM stdin;
1	pooja 	poojafartade@gmail.com	1234567890
2	durva	durva@gmai.com	1234567890
3	nikita	nikita@gmail.com	0987654321
4	rohit	rohit@gmail.com	123456734567
5	onkar	onkar@gmail.com	1234567890
6	harshal	harshal@gmail.com	9090909090
\.


--
-- TOC entry 4998 (class 0 OID 19148)
-- Dependencies: 232
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects (id, subject_name) FROM stdin;
3	Mathematics
4	Biology
1	Physics
5	Geography
6	History
2	Chemistry
\.


--
-- TOC entry 5000 (class 0 OID 19176)
-- Dependencies: 234
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teachers (id, user_id, full_name, phone, hire_date) FROM stdin;
\.


--
-- TOC entry 4988 (class 0 OID 16435)
-- Dependencies: 222
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, email, password, role) FROM stdin;
1	poojaf	poojafartade3@gmail.com	$2b$12$iGwap4.g8YgtKe.2roOlaeaAcY1bKe1GEwL.6WuSeqwZRoz6jQZQG	admin
\.


--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 223
-- Name: academic_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.academic_sessions_id_seq', 7, true);


--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 227
-- Name: classes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classes_id_seq', 3, true);


--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 229
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_id_seq', 3, true);


--
-- TOC entry 5017 (class 0 OID 0)
-- Dependencies: 225
-- Name: genders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genders_id_seq', 3, true);


--
-- TOC entry 5018 (class 0 OID 0)
-- Dependencies: 219
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_seq', 6, true);


--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 231
-- Name: subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subjects_id_seq', 6, true);


--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 233
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teachers_id_seq', 1, false);


--
-- TOC entry 5021 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- TOC entry 4809 (class 2606 OID 19106)
-- Name: academic_sessions academic_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_sessions
    ADD CONSTRAINT academic_sessions_pkey PRIMARY KEY (id);


--
-- TOC entry 4818 (class 2606 OID 19133)
-- Name: classes classes_class_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_class_name_key UNIQUE (class_name);


--
-- TOC entry 4820 (class 2606 OID 19131)
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (id);


--
-- TOC entry 4823 (class 2606 OID 19145)
-- Name: courses courses_course_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_course_name_key UNIQUE (course_name);


--
-- TOC entry 4825 (class 2606 OID 19143)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- TOC entry 4813 (class 2606 OID 19121)
-- Name: genders genders_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genders
    ADD CONSTRAINT genders_name_key UNIQUE (gender);


--
-- TOC entry 4815 (class 2606 OID 19119)
-- Name: genders genders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genders
    ADD CONSTRAINT genders_pkey PRIMARY KEY (id);


--
-- TOC entry 4801 (class 2606 OID 16431)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- TOC entry 4829 (class 2606 OID 19155)
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);


--
-- TOC entry 4831 (class 2606 OID 19157)
-- Name: subjects subjects_subject_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_subject_name_key UNIQUE (subject_name);


--
-- TOC entry 4834 (class 2606 OID 19186)
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- TOC entry 4836 (class 2606 OID 19188)
-- Name: teachers teachers_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_user_id_key UNIQUE (user_id);


--
-- TOC entry 4805 (class 2606 OID 16448)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4807 (class 2606 OID 16446)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4810 (class 1259 OID 19107)
-- Name: ix_academic_sessions_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_academic_sessions_id ON public.academic_sessions USING btree (id);


--
-- TOC entry 4811 (class 1259 OID 19108)
-- Name: ix_academic_sessions_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_academic_sessions_name ON public.academic_sessions USING btree (name);


--
-- TOC entry 4821 (class 1259 OID 19134)
-- Name: ix_classes_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_classes_id ON public.classes USING btree (id);


--
-- TOC entry 4826 (class 1259 OID 19146)
-- Name: ix_courses_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_courses_id ON public.courses USING btree (id);


--
-- TOC entry 4816 (class 1259 OID 19122)
-- Name: ix_genders_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_genders_id ON public.genders USING btree (id);


--
-- TOC entry 4798 (class 1259 OID 16432)
-- Name: ix_students_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_students_email ON public.students USING btree (email);


--
-- TOC entry 4799 (class 1259 OID 16433)
-- Name: ix_students_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_students_id ON public.students USING btree (id);


--
-- TOC entry 4827 (class 1259 OID 19158)
-- Name: ix_subjects_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_subjects_id ON public.subjects USING btree (id);


--
-- TOC entry 4832 (class 1259 OID 19194)
-- Name: ix_teachers_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_teachers_id ON public.teachers USING btree (id);


--
-- TOC entry 4802 (class 1259 OID 16450)
-- Name: ix_users_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_users_id ON public.users USING btree (id);


--
-- TOC entry 4803 (class 1259 OID 16449)
-- Name: ix_users_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX ix_users_username ON public.users USING btree (username);


--
-- TOC entry 4837 (class 2606 OID 19189)
-- Name: teachers teachers_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


-- Completed on 2025-12-09 14:32:35

--
-- PostgreSQL database dump complete
--

\unrestrict k1tam1gDKKeMF9A1qU6HItElgT9mK4d4T4j9S8l7xXwG6EVNjlfpNR23gj9kekM

