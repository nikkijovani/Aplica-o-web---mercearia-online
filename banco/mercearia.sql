--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-11-21 11:03:50 BRST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 24715)
-- Name: administrador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE administrador (
    adm_cd_administrador integer,
    adm_nm_nome character varying(50),
    adm_nr_telefone numeric(13,0)
);


ALTER TABLE administrador OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 24703)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cliente (
    clie_cd_cliente integer,
    clie_nm_nome character varying,
    clie_nr_telefone numeric(13,0),
    clie_dt_nascimento date,
    clie_nr_cpf numeric(11,0),
    clie_nr_rg numeric(9,0)
);


ALTER TABLE cliente OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 24706)
-- Name: compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE compra (
    comp_cd_compra integer,
    comp_dt_data date,
    comp_vl_total numeric
);


ALTER TABLE compra OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 24745)
-- Name: endereco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE endereco (
);


ALTER TABLE endereco OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 24709)
-- Name: itens_comprados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE itens_comprados (
    item_cd_item integer,
    item_nm_nome character varying,
    item_nr_quantidade integer,
    item_nr_total integer
);


ALTER TABLE itens_comprados OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 24712)
-- Name: produtos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE produtos (
    prod_cd_produto integer,
    prod_nm_nome character varying(30),
    prod_nm_marca character varying(30),
    prod_vl_unidade numeric
);


ALTER TABLE produtos OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 24718)
-- Name: sessao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sessao (
    sessao_cd_sessao integer,
    sessao_nm_nome character varying(30)
);


ALTER TABLE sessao OWNER TO postgres;

--
-- TOC entry 2163 (class 0 OID 24715)
-- Dependencies: 185
-- Data for Name: administrador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY administrador (adm_cd_administrador, adm_nm_nome, adm_nr_telefone) FROM stdin;
\.


--
-- TOC entry 2159 (class 0 OID 24703)
-- Dependencies: 181
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cliente (clie_cd_cliente, clie_nm_nome, clie_nr_telefone, clie_dt_nascimento, clie_nr_cpf, clie_nr_rg) FROM stdin;
\.


--
-- TOC entry 2160 (class 0 OID 24706)
-- Dependencies: 182
-- Data for Name: compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY compra (comp_cd_compra, comp_dt_data, comp_vl_total) FROM stdin;
\.


--
-- TOC entry 2165 (class 0 OID 24745)
-- Dependencies: 187
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY endereco  FROM stdin;
\.


--
-- TOC entry 2161 (class 0 OID 24709)
-- Dependencies: 183
-- Data for Name: itens_comprados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY itens_comprados (item_cd_item, item_nm_nome, item_nr_quantidade, item_nr_total) FROM stdin;
\.


--
-- TOC entry 2162 (class 0 OID 24712)
-- Dependencies: 184
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY produtos (prod_cd_produto, prod_nm_nome, prod_nm_marca, prod_vl_unidade) FROM stdin;
\.


--
-- TOC entry 2164 (class 0 OID 24718)
-- Dependencies: 186
-- Data for Name: sessao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sessao (sessao_cd_sessao, sessao_nm_nome) FROM stdin;
\.


--
-- TOC entry 2172 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-11-21 11:03:51 BRST

--
-- PostgreSQL database dump complete
--

