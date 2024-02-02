--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Homebrew)
-- Dumped by pg_dump version 14.10 (Homebrew)

-- Started on 2024-02-02 21:02:19 CET

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
-- TOC entry 210 (class 1259 OID 16430)
-- Name: director; Type: TABLE; Schema: public; Owner: vld.zlkvsk
--

CREATE TABLE public.director (
    id integer NOT NULL,
    directors character varying(150) DEFAULT 'Greta Gerwig'::character varying NOT NULL
);


ALTER TABLE public.director OWNER TO "vld.zlkvsk";

--
-- TOC entry 209 (class 1259 OID 16429)
-- Name: director_id_seq; Type: SEQUENCE; Schema: public; Owner: vld.zlkvsk
--

CREATE SEQUENCE public.director_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.director_id_seq OWNER TO "vld.zlkvsk";

--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 209
-- Name: director_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vld.zlkvsk
--

ALTER SEQUENCE public.director_id_seq OWNED BY public.director.id;


--
-- TOC entry 3451 (class 2604 OID 16433)
-- Name: director id; Type: DEFAULT; Schema: public; Owner: vld.zlkvsk
--

ALTER TABLE ONLY public.director ALTER COLUMN id SET DEFAULT nextval('public.director_id_seq'::regclass);


--
-- TOC entry 3593 (class 0 OID 16430)
-- Dependencies: 210
-- Data for Name: director; Type: TABLE DATA; Schema: public; Owner: vld.zlkvsk
--

COPY public.director (id, directors) FROM stdin;
1	Greta Gerwig
2	Greta Gerwig
3	James Cameron
4	James Cameron
5	Ridley Scott
6	Neill Blomkamp
\.


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 209
-- Name: director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vld.zlkvsk
--

SELECT pg_catalog.setval('public.director_id_seq', 6, true);


-- Completed on 2024-02-02 21:02:19 CET

--
-- PostgreSQL database dump complete
--

