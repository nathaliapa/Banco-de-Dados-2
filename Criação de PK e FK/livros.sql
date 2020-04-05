--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-04-04 01:12:05

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
-- TOC entry 257 (class 1259 OID 16660)
-- Name: livros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.livros (
    pklivro integer NOT NULL,
    txtituloacervo character varying(90) NOT NULL,
    nuisbn bigint,
    fkeditora integer DEFAULT NULL::numeric,
    dtpublicacao date,
    nuanopublicacao character(4) DEFAULT NULL::bpchar,
    qtpaginas smallint,
    qtexemplaresacervo smallint DEFAULT NULL::numeric,
    qtexemplaresconsulta smallint DEFAULT NULL::numeric,
    dtcadlivro date NOT NULL
);


ALTER TABLE public.livros OWNER TO postgres;

--
-- TOC entry 3122 (class 0 OID 16660)
-- Dependencies: 257
-- Data for Name: livros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.livros VALUES (10, 'Preparando pratos com Lagostas', NULL, 1, '2010-10-12', '2010', NULL, 20, 2, '2011-08-01');
INSERT INTO public.livros VALUES (20, 'Cálculo Diferencial e Integral', NULL, 1, '2010-10-12', '2010', NULL, 40, 10, '2011-08-01');
INSERT INTO public.livros VALUES (30, 'exercicios de matematica', NULL, 3, '2008-10-10', '2008', NULL, 50, 10, '2011-08-01');
INSERT INTO public.livros VALUES (50, 'Física Quantica', NULL, 3, '2008-10-10', '2008', NULL, 60, 20, '2011-08-01');
INSERT INTO public.livros VALUES (60, 'Introdução a Bancos de Dados', NULL, 1, '2008-10-10', '2008', NULL, 80, 20, '2011-08-01');
INSERT INTO public.livros VALUES (70, 'Cálculo Diferencial e Integral', NULL, 2, '2010-10-12', '2010', NULL, 120, 20, '2011-08-01');
INSERT INTO public.livros VALUES (80, 'Projetos de Grandes Estruturas', NULL, 3, '2010-10-10', '2010', NULL, 150, 25, '2011-08-01');
INSERT INTO public.livros VALUES (90, 'Cálculo Estrutural I', NULL, 1, '2010-10-12', '2010', NULL, 200, 50, '2011-08-01');
INSERT INTO public.livros VALUES (40, 'O Alfabeto dos Numeros', NULL, 1, '2008-10-10', '2008', NULL, 20, 5, '2011-08-01');
INSERT INTO public.livros VALUES (92, 'A Menina que roubava Livros', NULL, 1, '2007-04-10', '2007', NULL, 75, 10, '2007-05-10');


--
-- TOC entry 2992 (class 2606 OID 16875)
-- Name: livros livros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livros
    ADD CONSTRAINT livros_pkey PRIMARY KEY (pklivro);


--
-- TOC entry 2993 (class 2606 OID 16969)
-- Name: livros fkeditora; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livros
    ADD CONSTRAINT fkeditora FOREIGN KEY (fkeditora) REFERENCES public.editoras(pkeditora) NOT VALID;


-- Completed on 2020-04-04 01:12:06

--
-- PostgreSQL database dump complete
--

