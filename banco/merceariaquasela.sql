--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-11-21 19:03:31 BRST

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
-- TOC entry 2197 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 184 (class 1259 OID 24715)
-- Name: administrador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE administrador (
    adm_cd_administrador integer NOT NULL,
    adm_nm_nome character varying(50)
);


ALTER TABLE administrador OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 24775)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cliente (
    clie_cd_cliente integer NOT NULL,
    clie_nm_nome character varying(30),
    clie_dt_nascimento date,
    clie_nr_telefone numeric(11,0),
    clie_nr_cpf numeric(11,0),
    clie_nr_rg numeric(9,0),
    end_cd_endereco integer
);


ALTER TABLE cliente OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 24706)
-- Name: compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE compra (
    comp_cd_compra integer NOT NULL,
    comp_dt_data date,
    comp_vl_total numeric,
    clie_cd_cliente integer
);


ALTER TABLE compra OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 24745)
-- Name: endereco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE endereco (
    end_cd_endereco integer NOT NULL,
    end_nm_cidade character varying,
    end_ds_cep character varying(8),
    end_nm_rua character varying(100),
    end_nr_casa integer,
    end_ds_complemento text
);


ALTER TABLE endereco OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 24709)
-- Name: itens_comprados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE itens_comprados (
    item_cd_itenscomprado integer NOT NULL,
    item_nm_nome character varying,
    item_nr_quantidade integer,
    item_nr_total integer,
    comp_cd_compra integer,
    prod_cd_produto integer
);


ALTER TABLE itens_comprados OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 24712)
-- Name: produtos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE produtos (
    prod_cd_produto integer NOT NULL,
    prod_nm_nome character varying(30),
    prod_nm_marca character varying(30),
    prod_vl_unidade numeric,
    ses_cd_sessao integer
);


ALTER TABLE produtos OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 24718)
-- Name: sessao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sessao (
    ses_nm_nome character varying(30),
    ses_cd_sessao integer NOT NULL
);


ALTER TABLE sessao OWNER TO postgres;

--
-- TOC entry 2186 (class 0 OID 24715)
-- Dependencies: 184
-- Data for Name: administrador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY administrador (adm_cd_administrador, adm_nm_nome) FROM stdin;
\.


--
-- TOC entry 2189 (class 0 OID 24775)
-- Dependencies: 187
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cliente (clie_cd_cliente, clie_nm_nome, clie_dt_nascimento, clie_nr_telefone, clie_nr_cpf, clie_nr_rg, end_cd_endereco) FROM stdin;
\.


--
-- TOC entry 2183 (class 0 OID 24706)
-- Dependencies: 181
-- Data for Name: compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY compra (comp_cd_compra, comp_dt_data, comp_vl_total, clie_cd_cliente) FROM stdin;
\.


--
-- TOC entry 2188 (class 0 OID 24745)
-- Dependencies: 186
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY endereco (end_cd_endereco, end_nm_cidade, end_ds_cep, end_nm_rua, end_nr_casa, end_ds_complemento) FROM stdin;
\.


--
-- TOC entry 2184 (class 0 OID 24709)
-- Dependencies: 182
-- Data for Name: itens_comprados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY itens_comprados (item_cd_itenscomprado, item_nm_nome, item_nr_quantidade, item_nr_total, comp_cd_compra, prod_cd_produto) FROM stdin;
\.


--
-- TOC entry 2185 (class 0 OID 24712)
-- Dependencies: 183
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY produtos (prod_cd_produto, prod_nm_nome, prod_nm_marca, prod_vl_unidade, ses_cd_sessao) FROM stdin;
\.


--
-- TOC entry 2187 (class 0 OID 24718)
-- Dependencies: 185
-- Data for Name: sessao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sessao (ses_nm_nome, ses_cd_sessao) FROM stdin;
\.


--
-- TOC entry 2056 (class 2606 OID 24863)
-- Name: administrador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY administrador
    ADD CONSTRAINT administrador_pkey PRIMARY KEY (adm_cd_administrador);


--
-- TOC entry 2062 (class 2606 OID 24795)
-- Name: cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (clie_cd_cliente);


--
-- TOC entry 2046 (class 2606 OID 24760)
-- Name: compra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (comp_cd_compra);


--
-- TOC entry 2060 (class 2606 OID 24754)
-- Name: endereco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (end_cd_endereco);


--
-- TOC entry 2051 (class 2606 OID 24756)
-- Name: itens_comprados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY itens_comprados
    ADD CONSTRAINT itens_comprados_pkey PRIMARY KEY (item_cd_itenscomprado);


--
-- TOC entry 2054 (class 2606 OID 24758)
-- Name: produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (prod_cd_produto);


--
-- TOC entry 2058 (class 2606 OID 24855)
-- Name: sessao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sessao
    ADD CONSTRAINT sessao_pkey PRIMARY KEY (ses_cd_sessao);


--
-- TOC entry 2047 (class 1259 OID 24820)
-- Name: fki_clie_cd_cliente; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_clie_cd_cliente ON compra USING btree (clie_cd_cliente);


--
-- TOC entry 2048 (class 1259 OID 24826)
-- Name: fki_comp_cd_compra; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_comp_cd_compra ON itens_comprados USING btree (comp_cd_compra);


--
-- TOC entry 2063 (class 1259 OID 24814)
-- Name: fki_end_cd_endereco; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_end_cd_endereco ON cliente USING btree (end_cd_endereco);


--
-- TOC entry 2049 (class 1259 OID 24832)
-- Name: fki_prod_cd_produto; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_prod_cd_produto ON itens_comprados USING btree (prod_cd_produto);


--
-- TOC entry 2052 (class 1259 OID 24861)
-- Name: fki_ses_cd_sessao; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_ses_cd_sessao ON produtos USING btree (ses_cd_sessao);


--
-- TOC entry 2064 (class 2606 OID 24815)
-- Name: clie_cd_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compra
    ADD CONSTRAINT clie_cd_cliente FOREIGN KEY (clie_cd_cliente) REFERENCES cliente(clie_cd_cliente);


--
-- TOC entry 2065 (class 2606 OID 24821)
-- Name: comp_cd_compra; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY itens_comprados
    ADD CONSTRAINT comp_cd_compra FOREIGN KEY (comp_cd_compra) REFERENCES compra(comp_cd_compra);


--
-- TOC entry 2068 (class 2606 OID 24809)
-- Name: end_cd_endereco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT end_cd_endereco FOREIGN KEY (end_cd_endereco) REFERENCES endereco(end_cd_endereco);


--
-- TOC entry 2066 (class 2606 OID 24827)
-- Name: prod_cd_produto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY itens_comprados
    ADD CONSTRAINT prod_cd_produto FOREIGN KEY (prod_cd_produto) REFERENCES produtos(prod_cd_produto);


--
-- TOC entry 2067 (class 2606 OID 24856)
-- Name: ses_cd_sessao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produtos
    ADD CONSTRAINT ses_cd_sessao FOREIGN KEY (ses_cd_sessao) REFERENCES sessao(ses_cd_sessao);


--
-- TOC entry 2196 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-11-21 19:03:32 BRST

--
-- PostgreSQL database dump complete
--

