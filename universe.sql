--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: city; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.city (
    city_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.city OWNER TO freecodecamp;

--
-- Name: city_city_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_city_id_seq OWNER TO freecodecamp;

--
-- Name: city_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    description text,
    width numeric,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_serial; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_serial OWNER TO freecodecamp;

--
-- Name: galaxy_serial; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_serial OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    description text,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_serial; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_serial OWNER TO freecodecamp;

--
-- Name: moon_serial; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_serial OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    description text,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_serial; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_serial OWNER TO freecodecamp;

--
-- Name: planet_serial; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_serial OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    description text,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_serial; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_serial
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_serial OWNER TO freecodecamp;

--
-- Name: star_serial; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_serial OWNED BY public.star.star_id;


--
-- Name: city city_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_serial'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_serial'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_serial'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_serial'::regclass);


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.city VALUES (1, 'paris', 3);
INSERT INTO public.city VALUES (2, 'lyon', 3);
INSERT INTO public.city VALUES (3, 'marseille', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'voie lactee', 265, 5, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Grand Chien', 250, 3, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Draco III', 701, 15, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Tucana III', 229, 12, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Segue 1', 750, 4, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sagittaire', 810, 9, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lune', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Io', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (3, 'Europe', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (4, 'ganymede', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Mimas', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Encelade', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (8, 'tethys', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Dione', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Rhea', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'titan', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'hyperion', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'japet', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (14, 'Phoebe', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (15, 'Ariel', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Titania', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (19, 'Miranda', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Triton', NULL, NULL, NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercure', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (3, 'Terre', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (6, 'Saturne', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (9, 'Blue planet', NULL, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES (10, 'Black planet', NULL, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES (11, 'purple planet', NULL, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES (12, 'green planet', NULL, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES (13, 'red planet', NULL, NULL, NULL, NULL, 14);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (13, 'sun', 3, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (14, 'red_sun', 1, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (15, 'green_sun', 4, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (16, 'purple_sun', 48, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (17, 'black_sun', 2, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (18, 'blue_sun', 5, NULL, NULL, NULL, 1);


--
-- Name: city_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.city_city_id_seq', 33, true);


--
-- Name: galaxy_serial; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_serial', 6, true);


--
-- Name: moon_serial; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_serial', 20, true);


--
-- Name: planet_serial; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_serial', 13, true);


--
-- Name: star_serial; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_serial', 18, true);


--
-- Name: city city_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_name_key UNIQUE (name);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT id_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: city city_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_id_satellit_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_satellit_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_id_system_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_system_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_id_system_galactic_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_system_galactic_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

