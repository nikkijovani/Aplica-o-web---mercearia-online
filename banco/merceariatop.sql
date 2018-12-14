--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-12-14 18:40:16 BRST

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
-- TOC entry 2198 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 41572)
-- Name: administrador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE administrador (
    adm_cd_administrador integer NOT NULL,
    adm_nm_nome character varying(50),
    adm_nr_cpf numeric(11,0),
    adm_nr_telefone numeric(11,0),
    adm_ds_senha character varying(30)
);


ALTER TABLE administrador OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 41575)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cliente (
    clie_cd_cliente integer NOT NULL,
    clie_nm_nome character varying(1000),
    clie_dt_nascimento date,
    clie_nr_telefone numeric(11,0),
    clie_nr_cpf numeric(11,0),
    clie_nr_rg numeric(9,0),
    end_cd_endereco integer,
    clie_ds_senha character varying(100),
    clie_ds_email character varying(1000)
);


ALTER TABLE cliente OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 41578)
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
-- TOC entry 184 (class 1259 OID 41584)
-- Name: endereco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE endereco (
    end_cd_endereco integer NOT NULL,
    end_nm_cidade character varying,
    end_ds_cep character varying(8),
    end_nm_rua character varying(100),
    end_nr_casa integer,
    end_ds_complemento text,
    end_nm_bairro character varying(100),
    end_nm_estado character varying(100)
);


ALTER TABLE endereco OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 41590)
-- Name: item_comprado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE item_comprado (
    item_cd_itemcomprado integer NOT NULL,
    item_nm_nome character varying,
    item_nr_quantidade integer,
    item_nr_total integer,
    comp_cd_compra integer,
    prod_cd_produto integer
);


ALTER TABLE item_comprado OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 41596)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE produto (
    prod_cd_produto integer NOT NULL,
    prod_nm_nome character varying(30),
    prod_nm_marca character varying(30),
    prod_vl_unidade numeric,
    ses_cd_sessao integer
);


ALTER TABLE produto OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 41602)
-- Name: sessao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sessao (
    ses_nm_nome character varying(30),
    ses_cd_sessao integer NOT NULL
);


ALTER TABLE sessao OWNER TO postgres;

--
-- TOC entry 2184 (class 0 OID 41572)
-- Dependencies: 181
-- Data for Name: administrador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY administrador (adm_cd_administrador, adm_nm_nome, adm_nr_cpf, adm_nr_telefone, adm_ds_senha) FROM stdin;
\.


--
-- TOC entry 2185 (class 0 OID 41575)
-- Dependencies: 182
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cliente (clie_cd_cliente, clie_nm_nome, clie_dt_nascimento, clie_nr_telefone, clie_nr_cpf, clie_nr_rg, end_cd_endereco, clie_ds_senha, clie_ds_email) FROM stdin;
\.


--
-- TOC entry 2186 (class 0 OID 41578)
-- Dependencies: 183
-- Data for Name: compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY compra (comp_cd_compra, comp_dt_data, comp_vl_total, clie_cd_cliente) FROM stdin;
\.


--
-- TOC entry 2187 (class 0 OID 41584)
-- Dependencies: 184
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY endereco (end_cd_endereco, end_nm_cidade, end_ds_cep, end_nm_rua, end_nr_casa, end_ds_complemento, end_nm_bairro, end_nm_estado) FROM stdin;
\.


--
-- TOC entry 2188 (class 0 OID 41590)
-- Dependencies: 185
-- Data for Name: item_comprado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY item_comprado (item_cd_itemcomprado, item_nm_nome, item_nr_quantidade, item_nr_total, comp_cd_compra, prod_cd_produto) FROM stdin;
\.


--
-- TOC entry 2189 (class 0 OID 41596)
-- Dependencies: 186
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY produto (prod_cd_produto, prod_nm_nome, prod_nm_marca, prod_vl_unidade, ses_cd_sessao) FROM stdin;
\.


--
-- TOC entry 2190 (class 0 OID 41602)
-- Dependencies: 187
-- Data for Name: sessao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sessao (ses_nm_nome, ses_cd_sessao) FROM stdin;
\.


--
-- TOC entry 2047 (class 2606 OID 41606)
-- Name: administrador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY administrador
    ADD CONSTRAINT administrador_pkey PRIMARY KEY (adm_cd_administrador);


--
-- TOC entry 2049 (class 2606 OID 41608)
-- Name: cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (clie_cd_cliente);


--
-- TOC entry 2052 (class 2606 OID 41610)
-- Name: compra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (comp_cd_compra);


--
-- TOC entry 2055 (class 2606 OID 41612)
-- Name: endereco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (end_cd_endereco);


--
-- TOC entry 2059 (class 2606 OID 41614)
-- Name: itens_comprados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY item_comprado
    ADD CONSTRAINT itens_comprados_pkey PRIMARY KEY (item_cd_itemcomprado);


--
-- TOC entry 2062 (class 2606 OID 41616)
-- Name: produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produto
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (prod_cd_produto);


--
-- TOC entry 2064 (class 2606 OID 41618)
-- Name: sessao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sessao
    ADD CONSTRAINT sessao_pkey PRIMARY KEY (ses_cd_sessao);


--
-- TOC entry 2053 (class 1259 OID 41619)
-- Name: fki_clie_cd_cliente; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_clie_cd_cliente ON compra USING btree (clie_cd_cliente);


--
-- TOC entry 2056 (class 1259 OID 41620)
-- Name: fki_comp_cd_compra; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_comp_cd_compra ON item_comprado USING btree (comp_cd_compra);


--
-- TOC entry 2050 (class 1259 OID 41621)
-- Name: fki_end_cd_endereco; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_end_cd_endereco ON cliente USING btree (end_cd_endereco);


--
-- TOC entry 2057 (class 1259 OID 41622)
-- Name: fki_prod_cd_produto; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_prod_cd_produto ON item_comprado USING btree (prod_cd_produto);


--
-- TOC entry 2060 (class 1259 OID 41623)
-- Name: fki_ses_cd_sessao; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_ses_cd_sessao ON produto USING btree (ses_cd_sessao);


--
-- TOC entry 2066 (class 2606 OID 41624)
-- Name: clie_cd_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compra
    ADD CONSTRAINT clie_cd_cliente FOREIGN KEY (clie_cd_cliente) REFERENCES cliente(clie_cd_cliente);


--
-- TOC entry 2067 (class 2606 OID 41629)
-- Name: comp_cd_compra; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY item_comprado
    ADD CONSTRAINT comp_cd_compra FOREIGN KEY (comp_cd_compra) REFERENCES compra(comp_cd_compra);


--
-- TOC entry 2065 (class 2606 OID 41634)
-- Name: end_cd_endereco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT end_cd_endereco FOREIGN KEY (end_cd_endereco) REFERENCES endereco(end_cd_endereco);


--
-- TOC entry 2068 (class 2606 OID 41639)
-- Name: prod_cd_produto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY item_comprado
    ADD CONSTRAINT prod_cd_produto FOREIGN KEY (prod_cd_produto) REFERENCES produto(prod_cd_produto);


--
-- TOC entry 2069 (class 2606 OID 41644)
-- Name: ses_cd_sessao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produto
    ADD CONSTRAINT ses_cd_sessao FOREIGN KEY (ses_cd_sessao) REFERENCES sessao(ses_cd_sessao);


--
-- TOC entry 2197 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-12-14 18:40:16 BRST

--
-- PostgreSQL database dump complete
--

