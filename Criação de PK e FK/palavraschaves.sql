--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-04-04 01:15:53

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
-- TOC entry 272 (class 1259 OID 16732)
-- Name: palavraschaves; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.palavraschaves (
    pkpalavra integer NOT NULL,
    txnomepalavra character varying(30) NOT NULL,
    dtcadpalavrachave date NOT NULL
);


ALTER TABLE public.palavraschaves OWNER TO postgres;

--
-- TOC entry 3117 (class 0 OID 16732)
-- Dependencies: 272
-- Data for Name: palavraschaves; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.palavraschaves VALUES (1, 'Amor', '2010-12-13');
INSERT INTO public.palavraschaves VALUES (2, 'Carinho', '2010-12-13');
INSERT INTO public.palavraschaves VALUES (3, 'Amizade', '2010-12-13');
INSERT INTO public.palavraschaves VALUES (4, 'Convivencia', '2010-12-13');
INSERT INTO public.palavraschaves VALUES (7, 'Solidariedade', '2010-12-10');
INSERT INTO public.palavraschaves VALUES (5, 'Compreensão', '2010-12-10');
INSERT INTO public.palavraschaves VALUES (6, 'Confiança', '2010-12-10');
INSERT INTO public.palavraschaves VALUES (8, 'Lógica', '2016-12-07');
INSERT INTO public.palavraschaves VALUES (9, 'Matemática', '2016-12-07');
INSERT INTO public.palavraschaves VALUES (10, 'Física', '2016-12-07');
INSERT INTO public.palavraschaves VALUES (11, 'Cálculo Diferencial', '2016-12-07');


--
-- TOC entry 2988 (class 2606 OID 16918)
-- Name: palavraschaves palavraschaves_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.palavraschaves
    ADD CONSTRAINT palavraschaves_pkey PRIMARY KEY (pkpalavra);


-- Completed on 2020-04-04 01:15:53

--
-- PostgreSQL database dump complete
--

