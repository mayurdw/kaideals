--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.deals DROP CONSTRAINT deals_pkey;
ALTER TABLE public.deals ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.deals_id_seq;
DROP TABLE public.deals;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: deals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE deals (
    id integer NOT NULL,
    asdf integer
);


--
-- Name: deals_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE deals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: deals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE deals_id_seq OWNED BY deals.id;


--
-- Name: deals id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY deals ALTER COLUMN id SET DEFAULT nextval('deals_id_seq'::regclass);


--
-- Data for Name: deals; Type: TABLE DATA; Schema: public; Owner: -
--

COPY deals (id, asdf) FROM stdin;
1	2
\.


--
-- Name: deals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('deals_id_seq', 1, false);


--
-- Name: deals deals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY deals
    ADD CONSTRAINT deals_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

