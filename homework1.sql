--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Homebrew)
-- Dumped by pg_dump version 14.10 (Homebrew)

-- Started on 2024-02-02 20:53:40 CET

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
-- TOC entry 210 (class 1259 OID 16408)
-- Name: actor; Type: TABLE; Schema: public; Owner: vld.zlkvsk
--

CREATE TABLE public.actor (
    id integer NOT NULL,
    actors character varying(100)
);


ALTER TABLE public.actor OWNER TO "vld.zlkvsk";

--
-- TOC entry 209 (class 1259 OID 16407)
-- Name: actor_id_seq; Type: SEQUENCE; Schema: public; Owner: vld.zlkvsk
--

CREATE SEQUENCE public.actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actor_id_seq OWNER TO "vld.zlkvsk";

--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 209
-- Name: actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vld.zlkvsk
--

ALTER SEQUENCE public.actor_id_seq OWNED BY public.actor.id;


--
-- TOC entry 3451 (class 2604 OID 16411)
-- Name: actor id; Type: DEFAULT; Schema: public; Owner: vld.zlkvsk
--

ALTER TABLE ONLY public.actor ALTER COLUMN id SET DEFAULT nextval('public.actor_id_seq'::regclass);


--
-- TOC entry 3592 (class 0 OID 16408)
-- Dependencies: 210
-- Data for Name: actor; Type: TABLE DATA; Schema: public; Owner: vld.zlkvsk
--

COPY public.actor (id, actors) FROM stdin;
1	Ryan Gosling
2	Margo Robbie
3	Kate Winslet
4	Leonardo DiCaprio
5	Joaquin Phoenix
6	Archie Madekwe
\.


--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 209
-- Name: actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vld.zlkvsk
--

SELECT pg_catalog.setval('public.actor_id_seq', 6, true);


-- Completed on 2024-02-02 20:53:40 CET

--
-- PostgreSQL database dump complete
--

