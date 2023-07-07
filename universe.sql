----
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
-- Name: celestial_events; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_events (
    celestial_events_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    event_date date NOT NULL
);


ALTER TABLE public.celestial_events OWNER TO freecodecamp;

--
-- Name: celestial_events_event_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_events_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_events_event_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_events_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_events_event_id_seq OWNED BY public.celestial_events.celestial_events_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    discovery_year integer,
    no_of_child_million integer
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
    planet_id integer,
    radius real,
    orbital_period_days integer
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
    mass numeric(5,3),
    has_life boolean,
    has_moon boolean,
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
    galaxy_id integer,
    radius real,
    no_of_child integer
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
-- Name: celestial_events celestial_events_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_events ALTER COLUMN celestial_events_id SET DEFAULT nextval('public.celestial_events_event_id_seq'::regclass);


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
-- Data for Name: celestial_events; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_events VALUES (1, 'Mercury Western Elongation', 'Mercuty reaches elongnation of 25degree of sun', '2023-01-21');
INSERT INTO public.celestial_events VALUES (2, 'full Moon', 'Full Moon', '2023-02-05');
INSERT INTO public.celestial_events VALUES (3, 'March Equinox', 'march Equin0x', '2023-03-20');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The appearance from Earth of the galaxy- a band of light. Containing Sun and Solar systems and earth', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Eye of Sauron', 'Names like that due to its resemblance to the Eye of sauron from the Lord of the Rings', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Fireworks', 'Named like that due to its bright and spoty appearance', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Coma Pinewheel', 'Named after its resemblance to the pinewheel galaxy and its location is in Coma Benerices Constellation', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Bodes Galaxy', 'Named for Johann Elert Bode who discoverd this galaxy in 1774', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Backward Galaxy', 'It appears to rotate backwords, as the tips of spiral arms points in the direction of rotatiopn', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 34800, 27);
INSERT INTO public.moon VALUES (2, 'Io', 2, 100, 2);
INSERT INTO public.moon VALUES (3, 'Europa', 2, 150, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 2, 450, 7);
INSERT INTO public.moon VALUES (5, 'Callisto', 2, 550, 17);
INSERT INTO public.moon VALUES (6, 'Mimas', 3, 185539, 1);
INSERT INTO public.moon VALUES (7, 'Encladus', 3, 237948, 1);
INSERT INTO public.moon VALUES (8, 'Tethys', 3, 294619, 2);
INSERT INTO public.moon VALUES (9, 'Titan', 3, 1.12187e+06, 16);
INSERT INTO public.moon VALUES (10, 'Dione', 3, 377396, 2);
INSERT INTO public.moon VALUES (11, 'Rhea', 3, 527108, 4);
INSERT INTO public.moon VALUES (12, 'Iaptus', 3, 3.56082e+06, 79);
INSERT INTO public.moon VALUES (13, 'Phobos', 4, 22, 79);
INSERT INTO public.moon VALUES (14, 'Deimos', 4, 483, 30);
INSERT INTO public.moon VALUES (15, 'Charon', 13, 1233, 6);
INSERT INTO public.moon VALUES (16, 'Styx', 13, 146, 20);
INSERT INTO public.moon VALUES (17, 'Nix', 13, 49.8, 24);
INSERT INTO public.moon VALUES (18, 'kerberos', 13, 190, 32);
INSERT INTO public.moon VALUES (19, 'Hydra', 13, 50, 38);
INSERT INTO public.moon VALUES (20, 'Miranda', 7, 476, 26);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 59.720, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 18.982, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Saturn', 56.230, false, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 64.121, true, true, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 64.121, true, false, 1);
INSERT INTO public.planet VALUES (6, 'mercuty', 85.236, true, false, 1);
INSERT INTO public.planet VALUES (7, 'uranus', 85.236, false, false, 1);
INSERT INTO public.planet VALUES (8, 'neptune', 85.236, false, true, 1);
INSERT INTO public.planet VALUES (9, 'Kepler 7b', 85.236, false, false, 3);
INSERT INTO public.planet VALUES (10, 'Kepler 6b', 10.123, false, false, 4);
INSERT INTO public.planet VALUES (11, 'Kepler 11d', 1.253, false, false, 4);
INSERT INTO public.planet VALUES (12, 'Kepler 9d', 1.253, false, false, 5);
INSERT INTO public.planet VALUES (13, 'pluto', 0.253, false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 696342, NULL);
INSERT INTO public.star VALUES (2, 'Proxima century', 1, 107280, NULL);
INSERT INTO public.star VALUES (3, 'Barnards star', 1, 196360, NULL);
INSERT INTO public.star VALUES (4, 'messier 99', 4, 42500, NULL);
INSERT INTO public.star VALUES (5, 'Wolf 359', 1, 111310, NULL);
INSERT INTO public.star VALUES (6, 'Tau Ceti', 1, 551690, NULL);


--
-- Name: celestial_events_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_events_event_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial_events celestial_events_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_events
    ADD CONSTRAINT celestial_events_pkey PRIMARY KEY (celestial_events_id);


--
-- Name: celestial_events celestial_events_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_events
    ADD CONSTRAINT celestial_events_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (name);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--





 


