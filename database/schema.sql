-- PostgreSQL database dump



-- Dumped from database version 18.2 (Postgres.app)
-- Dumped by pg_dump version 18.2

-- Started on 2026-02-21 12:33:01 CET

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
-- TOC entry 223 (class 1259 OID 16646)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id_client integer NOT NULL,
    nom character varying(80) NOT NULL,
    prenom character varying(80) NOT NULL,
    email character varying(120) NOT NULL
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16645)
-- Name: client_id_client_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_id_client_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.client_id_client_seq OWNER TO postgres;

--
-- TOC entry 3750 (class 0 OID 0)
-- Dependencies: 222
-- Name: client_id_client_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_id_client_seq OWNED BY public.client.id_client;


--
-- TOC entry 225 (class 1259 OID 16659)
-- Name: location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.location (
    id_location integer NOT NULL,
    date_debut timestamp without time zone NOT NULL,
    date_fin timestamp without time zone,
    id_client integer NOT NULL,
    id_vehicule integer NOT NULL,
    id_station_depart integer NOT NULL,
    id_station_arrivee integer NOT NULL
);


ALTER TABLE public.location OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16658)
-- Name: location_id_location_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.location_id_location_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.location_id_location_seq OWNER TO postgres;

--
-- TOC entry 3751 (class 0 OID 0)
-- Dependencies: 224
-- Name: location_id_location_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.location_id_location_seq OWNED BY public.location.id_location;


--
-- TOC entry 221 (class 1259 OID 16636)
-- Name: station; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.station (
    id_station integer NOT NULL,
    nom character varying(100) NOT NULL,
    ville character varying(50) NOT NULL
);


ALTER TABLE public.station OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16635)
-- Name: station_id_station_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.station_id_station_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.station_id_station_seq OWNER TO postgres;

--
-- TOC entry 3752 (class 0 OID 0)
-- Dependencies: 220
-- Name: station_id_station_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.station_id_station_seq OWNED BY public.station.id_station;


--
-- TOC entry 219 (class 1259 OID 16618)
-- Name: vehicule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vehicule (
    id_vehicule integer NOT NULL,
    marque character varying(50) NOT NULL,
    modele character varying(80) NOT NULL,
    type_vehicule character varying(30) NOT NULL,
    autonomie_km integer NOT NULL,
    etat character varying(30) NOT NULL,
    ville character varying(50) NOT NULL,
    annee integer NOT NULL,
    immatriculation character varying(20),
    CONSTRAINT vehicule_annee_check CHECK (((annee >= 1990) AND (annee <= 2100))),
    CONSTRAINT vehicule_autonomie_km_check CHECK ((autonomie_km >= 0))
);


ALTER TABLE public.vehicule OWNER TO postgres;

--
-- TOC entry 3578 (class 2604 OID 16649)
-- Name: client id_client; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN id_client SET DEFAULT nextval('public.client_id_client_seq'::regclass);


--
-- TOC entry 3579 (class 2604 OID 16662)
-- Name: location id_location; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location ALTER COLUMN id_location SET DEFAULT nextval('public.location_id_location_seq'::regclass);


--
-- TOC entry 3577 (class 2604 OID 16639)
-- Name: station id_station; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.station ALTER COLUMN id_station SET DEFAULT nextval('public.station_id_station_seq'::regclass);


--
-- TOC entry 3589 (class 2606 OID 16657)
-- Name: client client_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_email_key UNIQUE (email);


--
-- TOC entry 3591 (class 2606 OID 16655)
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id_client);


--
-- TOC entry 3593 (class 2606 OID 16670)
-- Name: location location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (id_location);


--
-- TOC entry 3587 (class 2606 OID 16644)
-- Name: station station_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.station
    ADD CONSTRAINT station_pkey PRIMARY KEY (id_station);


--
-- TOC entry 3583 (class 2606 OID 16634)
-- Name: vehicule vehicule_immatriculation_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicule
    ADD CONSTRAINT vehicule_immatriculation_key UNIQUE (immatriculation);


--
-- TOC entry 3585 (class 2606 OID 16632)
-- Name: vehicule vehicule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicule
    ADD CONSTRAINT vehicule_pkey PRIMARY KEY (id_vehicule);


--
-- TOC entry 3594 (class 2606 OID 16671)
-- Name: location location_id_client_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_id_client_fkey FOREIGN KEY (id_client) REFERENCES public.client(id_client);


--
-- TOC entry 3595 (class 2606 OID 16686)
-- Name: location location_id_station_arrivee_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_id_station_arrivee_fkey FOREIGN KEY (id_station_arrivee) REFERENCES public.station(id_station);


--
-- TOC entry 3596 (class 2606 OID 16681)
-- Name: location location_id_station_depart_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_id_station_depart_fkey FOREIGN KEY (id_station_depart) REFERENCES public.station(id_station);


--
-- TOC entry 3597 (class 2606 OID 16676)
-- Name: location location_id_vehicule_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_id_vehicule_fkey FOREIGN KEY (id_vehicule) REFERENCES public.vehicule(id_vehicule);


-- Completed on 2026-02-21 12:33:02 CET

--
-- PostgreSQL database dump complete
--


