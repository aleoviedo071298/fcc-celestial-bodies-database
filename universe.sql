--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    galaxy_type character varying(40)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_visible boolean,
    planet_id integer,
    diameter_km integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass numeric(10,2),
    has_life boolean,
    star_id integer,
    planet_type character varying(40)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planettypes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planettypes (
    planettypes_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.planettypes OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planettypes.planettypes_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer,
    temperature numeric(10,2)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planettypes planettypes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planettypes ALTER COLUMN planettypes_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 'Our home galaxy', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 'Nearest large galaxy', NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 12000, 'Part of Local Group', NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 8000, 'Interacting spiral galaxy', NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 9000, 'Large spiral with bright nucleus', NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 7000, 'Face-on spiral', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 3, NULL, 'Earth natural satellite');
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4, NULL, 'Mars moon');
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4, NULL, 'Mars moon');
INSERT INTO public.moon VALUES (4, 'Io', false, 5, NULL, 'Jupiter moon');
INSERT INTO public.moon VALUES (5, 'Europa', false, 5, NULL, 'Icy moon of Jupiter');
INSERT INTO public.moon VALUES (6, 'Ganymede', false, 5, NULL, 'Largest moon');
INSERT INTO public.moon VALUES (7, 'Callisto', false, 5, NULL, 'Cratered moon');
INSERT INTO public.moon VALUES (8, 'Metis', false, 5, NULL, 'Inner Jupiter moon');
INSERT INTO public.moon VALUES (9, 'Adrastea', false, 5, NULL, 'Inner Jupiter moon');
INSERT INTO public.moon VALUES (10, 'Amalthea', false, 5, NULL, 'Irregular shape');
INSERT INTO public.moon VALUES (11, 'Thebe', false, 5, NULL, 'Small Jupiter moon');
INSERT INTO public.moon VALUES (12, 'Mimas', false, 6, NULL, 'Saturn moon');
INSERT INTO public.moon VALUES (13, 'Enceladus', false, 6, NULL, 'Water geysers');
INSERT INTO public.moon VALUES (14, 'Tethys', false, 6, NULL, 'Saturn moon');
INSERT INTO public.moon VALUES (15, 'Dione', false, 6, NULL, 'Saturn moon');
INSERT INTO public.moon VALUES (16, 'Rhea', false, 6, NULL, 'Saturn moon');
INSERT INTO public.moon VALUES (17, 'Titan', true, 6, NULL, 'Largest Saturn moon');
INSERT INTO public.moon VALUES (18, 'Hyperion', false, 6, NULL, 'Chaotic rotation');
INSERT INTO public.moon VALUES (19, 'Iapetus', false, 6, NULL, 'Two-tone moon');
INSERT INTO public.moon VALUES (20, 'Phoebe', false, 6, NULL, 'Retrograde orbit');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.33, false, 1, 'Rocky');
INSERT INTO public.planet VALUES (2, 'Venus', 4.87, false, 1, 'Rocky');
INSERT INTO public.planet VALUES (3, 'Earth', 5.97, true, 1, 'Rocky');
INSERT INTO public.planet VALUES (4, 'Mars', 0.64, false, 1, 'Rocky');
INSERT INTO public.planet VALUES (5, 'Jupiter', 1898.00, false, 1, 'Gas Giant');
INSERT INTO public.planet VALUES (6, 'Saturn', 568.00, false, 1, 'Gas Giant');
INSERT INTO public.planet VALUES (7, 'Uranus', 86.80, false, 1, 'Ice Giant');
INSERT INTO public.planet VALUES (8, 'Neptune', 102.00, false, 1, 'Ice Giant');
INSERT INTO public.planet VALUES (9, 'Planet X1', 1.50, false, 1, 'Rocky');
INSERT INTO public.planet VALUES (10, 'Planet X2', 1.70, false, 1, 'Rocky');
INSERT INTO public.planet VALUES (11, 'Planet X3', 3.10, false, 1, 'Rocky');
INSERT INTO public.planet VALUES (12, 'Planet X4', 2.20, false, 1, 'Rocky');


--
-- Data for Name: planettypes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planettypes VALUES (1, 'Rocky', 'Solid surface planets');
INSERT INTO public.planettypes VALUES (2, 'Gas Giant', 'Massive gaseous planets');
INSERT INTO public.planettypes VALUES (3, 'Ice Giant', 'Planets with icy composition');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 1, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 250, 1, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 5500, 1, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 5500, 1, NULL);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 8000, 1, NULL);
INSERT INTO public.star VALUES (6, 'Rigel', 10000, 1, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planettypes planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planettypes
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planettypes planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planettypes
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planettypes_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

