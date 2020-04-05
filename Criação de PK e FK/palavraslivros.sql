--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-04-04 01:16:28

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
-- TOC entry 273 (class 1259 OID 16735)
-- Name: palavraslivros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.palavraslivros (
    fkpalavraschaves smallint NOT NULL,
    fklivro integer NOT NULL,
    dtcadpalchavelivro date NOT NULL
);


ALTER TABLE public.palavraslivros OWNER TO postgres;

--
-- TOC entry 3119 (class 0 OID 16735)
-- Dependencies: 273
-- Data for Name: palavraslivros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.palavraslivros VALUES (1, 92, '2016-12-07');
INSERT INTO public.palavraslivros VALUES (2, 92, '2016-12-07');
INSERT INTO public.palavraslivros VALUES (11, 90, '2016-12-07');
INSERT INTO public.palavraslivros VALUES (9, 90, '2016-12-07');
INSERT INTO public.palavraslivros VALUES (9, 40, '2016-12-07');
INSERT INTO public.palavraslivros VALUES (10, 50, '2016-12-07');


--
-- TOC entry 2988 (class 2606 OID 16909)
-- Name: palavraslivros palavraslivros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.palavraslivros
    ADD CONSTRAINT palavraslivros_pkey PRIMARY KEY (fkpalavraschaves, fklivro);


--
-- TOC entry 2990 (class 2606 OID 16956)
-- Name: palavraslivros pklivro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.palavraslivros
    ADD CONSTRAINT pklivro FOREIGN KEY (fklivro) REFERENCES public.livros(pklivro) NOT VALID;


--
-- TOC entry 2989 (class 2606 OID 16951)
-- Name: palavraslivros pkpalavrachave; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.palavraslivros
    ADD CONSTRAINT pkpalavrachave FOREIGN KEY (fkpalavraschaves) REFERENCES public.palavraschaves(pkpalavra) NOT VALID;


-- Completed on 2020-04-04 01:16:28

--
-- PostgreSQL database dump complete
--

