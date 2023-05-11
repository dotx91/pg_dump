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
-- Name: fifth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth (
    fifth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.fifth OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_fifth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_fifth_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_fifth_id_seq OWNED BY public.fifth.fifth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: fifth fifth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth ALTER COLUMN fifth_id SET DEFAULT nextval('public.fifth_fifth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fifth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth VALUES (1, 'TEST1', 23);
INSERT INTO public.fifth VALUES (2, 'TEST2', 24);
INSERT INTO public.fifth VALUES (3, 'TEST5', 25);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1000, true, 500, 'Our Galaxy wich contains Eearth');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2000, true, 700, 'Closest Galaxy to our Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 6000, false, 800, 'First Spiral Galaxy to be noticed');
INSERT INTO public.galaxy VALUES (4, 'Cigar', 1000, false, 300, 'Galaxy looks like cartwheel');
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 100, true, 200, 'Looks like an eye with dark');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 200, false, 600, 'Looks like a pinwheel Galaxy');
INSERT INTO public.galaxy VALUES (7, 'seven', 100, true, 100, 'tootoo');
INSERT INTO public.galaxy VALUES (8, 'eight', 100, true, 200, 'tootoo');
INSERT INTO public.galaxy VALUES (9, 'nine', 100, true, 200, 'tootowwo');
INSERT INTO public.galaxy VALUES (10, 'ten', 100, true, 200, 'tootowwo');
INSERT INTO public.galaxy VALUES (11, 'eleven', 100, true, 200, 'tootowwo');
INSERT INTO public.galaxy VALUES (12, 'twelve', 100, true, 200, 'tootowwo');
INSERT INTO public.galaxy VALUES (13, 'thirteen', 100, true, 200, 'tootowwo');
INSERT INTO public.galaxy VALUES (14, 'fourteen', 100, true, 200, 'tootowwo');
INSERT INTO public.galaxy VALUES (15, 'fifteen', 100, true, 200, 'tootowwo');
INSERT INTO public.galaxy VALUES (16, 'sixteen', 100, true, 200, 'tootowwo');
INSERT INTO public.galaxy VALUES (17, 'seventeen', 100, true, 200, 'tootowwo');
INSERT INTO public.galaxy VALUES (18, 'eighteen', 100, true, 200, 'tootowwo');
INSERT INTO public.galaxy VALUES (19, 'nineteen', 100, true, 200, 'tootowwo');
INSERT INTO public.galaxy VALUES (20, 'twenty', 100, true, 200, 'tootowwo');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'One', 100, true, 200, 'tootowwo', 1);
INSERT INTO public.moon VALUES (2, 'Two', 100, true, 200, 'tootowwo', 2);
INSERT INTO public.moon VALUES (3, 'Four', 100, true, 200, 'tootowwo', 4);
INSERT INTO public.moon VALUES (4, 'Five', 100, true, 200, 'tootowwo', 5);
INSERT INTO public.moon VALUES (5, 'Six', 100, true, 200, 'tootowwo', 6);
INSERT INTO public.moon VALUES (6, 'Seven', 100, true, 200, 'tootowwo', 7);
INSERT INTO public.moon VALUES (7, 'Eight', 100, true, 200, 'tootowwo', 8);
INSERT INTO public.moon VALUES (8, 'Nine', 100, true, 200, 'tootowwo', 9);
INSERT INTO public.moon VALUES (9, 'Ten', 100, true, 200, 'tootowwo', 10);
INSERT INTO public.moon VALUES (10, 'Eleven', 100, true, 200, 'tootowwo', 11);
INSERT INTO public.moon VALUES (11, 'Twelve', 100, true, 200, 'tootowwo', 12);
INSERT INTO public.moon VALUES (12, 'Thirteen', 100, true, 200, 'tootowwo', 13);
INSERT INTO public.moon VALUES (13, 'Fourteen', 100, true, 200, 'tootowwo', 14);
INSERT INTO public.moon VALUES (14, 'Fifteen', 100, true, 200, 'tootowwo', 15);
INSERT INTO public.moon VALUES (15, 'Sixteen', 100, true, 200, 'tootowwo', 16);
INSERT INTO public.moon VALUES (16, 'Seventeen', 100, true, 200, 'tootowwo', 17);
INSERT INTO public.moon VALUES (17, 'Eighteen', 100, true, 200, 'tootowwo', 18);
INSERT INTO public.moon VALUES (18, 'Nineteen', 100, true, 200, 'tootowwo', 19);
INSERT INTO public.moon VALUES (19, 'Twenty', 100, true, 200, 'tootowwo', 20);
INSERT INTO public.moon VALUES (20, 'TwentyOne', 100, true, 200, 'tootowwo', 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'One', 100, true, 200, 'tootowwo', 1);
INSERT INTO public.planet VALUES (2, 'Two', 100, true, 200, 'tootowwo', 2);
INSERT INTO public.planet VALUES (4, 'Three', 100, true, 200, 'tootowwo', 3);
INSERT INTO public.planet VALUES (5, 'Four', 100, true, 200, 'tootowwo', 4);
INSERT INTO public.planet VALUES (6, 'Five', 100, true, 200, 'tootowwo', 5);
INSERT INTO public.planet VALUES (7, 'Six', 100, true, 200, 'tootowwo', 6);
INSERT INTO public.planet VALUES (8, 'Seven', 100, true, 200, 'tootowwo', 7);
INSERT INTO public.planet VALUES (9, 'Eight', 100, true, 200, 'tootowwo', 8);
INSERT INTO public.planet VALUES (10, 'Nine', 100, true, 200, 'tootowwo', 9);
INSERT INTO public.planet VALUES (11, 'Ten', 100, true, 200, 'tootowwo', 10);
INSERT INTO public.planet VALUES (12, 'Eleven', 100, true, 200, 'tootowwo', 11);
INSERT INTO public.planet VALUES (13, 'Twelve', 100, true, 200, 'tootowwo', 12);
INSERT INTO public.planet VALUES (14, 'Thirteen', 100, true, 200, 'tootowwo', 13);
INSERT INTO public.planet VALUES (15, 'Fourteen', 100, true, 200, 'tootowwo', 14);
INSERT INTO public.planet VALUES (16, 'Fifteen', 100, true, 200, 'tootowwo', 15);
INSERT INTO public.planet VALUES (17, 'Sixteen', 100, true, 200, 'tootowwo', 16);
INSERT INTO public.planet VALUES (18, 'Seventeen', 100, true, 200, 'tootowwo', 17);
INSERT INTO public.planet VALUES (19, 'Eighteen', 100, true, 200, 'tootowwo', 18);
INSERT INTO public.planet VALUES (20, 'Nineteen', 100, true, 200, 'tootowwo', 19);
INSERT INTO public.planet VALUES (21, 'Twenty', 100, true, 200, 'tootowwo', 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 100, true, 200, 'Brightest star in night Sky', 1);
INSERT INTO public.star VALUES (2, 'Rigel', 500, false, 300, 'First star to mark Rigel', 2);
INSERT INTO public.star VALUES (3, 'Aries', 100, true, 900, 'Best star Aries', 3);
INSERT INTO public.star VALUES (4, 'Altair', 200, false, 300, 'Altair star to be good', 4);
INSERT INTO public.star VALUES (5, 'Binary star', 100, true, 300, 'Looks like Binary star', 5);
INSERT INTO public.star VALUES (6, 'Vega', 600, false, 300, 'Looks like Vega', 6);
INSERT INTO public.star VALUES (7, 'Seven', 100, true, 200, 'tootowwo', 7);
INSERT INTO public.star VALUES (8, 'Eight', 100, true, 200, 'tootowwo', 8);
INSERT INTO public.star VALUES (9, 'Nine', 100, true, 200, 'tootowwo', 9);
INSERT INTO public.star VALUES (10, 'Ten', 100, true, 200, 'tootowwo', 10);
INSERT INTO public.star VALUES (11, 'Eleven', 100, true, 200, 'tootowwo', 11);
INSERT INTO public.star VALUES (12, 'Twelve', 100, true, 200, 'tootowwo', 12);
INSERT INTO public.star VALUES (13, 'Thirteen', 100, true, 200, 'tootowwo', 13);
INSERT INTO public.star VALUES (14, 'fourteen', 100, true, 200, 'tootowwo', 14);
INSERT INTO public.star VALUES (15, 'Fifteen', 100, true, 200, 'tootowwo', 15);
INSERT INTO public.star VALUES (16, 'Sixteen', 100, true, 200, 'tootowwo', 16);
INSERT INTO public.star VALUES (17, 'Seventeen', 100, true, 200, 'tootowwo', 17);
INSERT INTO public.star VALUES (18, 'Eighteen', 100, true, 200, 'tootowwo', 18);
INSERT INTO public.star VALUES (19, 'Nineteen', 100, true, 200, 'tootowwo', 19);
INSERT INTO public.star VALUES (20, 'Twenty', 100, true, 200, 'tootowwo', 20);


--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_fifth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: fifth fifth_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_age_key UNIQUE (age);


--
-- Name: fifth fifth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_pkey PRIMARY KEY (fifth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy u_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT u_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

