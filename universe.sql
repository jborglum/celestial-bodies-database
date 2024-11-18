--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying NOT NULL,
    description text,
    is_spherical boolean,
    distance_from_earth numeric
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
-- Name: humans_visited; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.humans_visited (
    humans_visited_id integer NOT NULL,
    visit_type text NOT NULL,
    name character varying,
    planet_id integer,
    moon_id integer
);


ALTER TABLE public.humans_visited OWNER TO freecodecamp;

--
-- Name: humans_visited_visit_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.humans_visited_visit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.humans_visited_visit_id_seq OWNER TO freecodecamp;

--
-- Name: humans_visited_visit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.humans_visited_visit_id_seq OWNED BY public.humans_visited.humans_visited_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    distance_from_earth integer,
    has_life boolean,
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
    name character varying NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth integer,
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
    name character varying NOT NULL,
    description text,
    distance_from_earth numeric,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: humans_visited humans_visited_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans_visited ALTER COLUMN humans_visited_id SET DEFAULT nextval('public.humans_visited_visit_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'our home galaxy', true, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Closest galaxy to us', false, 2.537);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'M33', true, 3);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Famous for hosting a supermassive black hole', false, 53.5);
INSERT INTO public.galaxy VALUES (5, 'Somberero Galaxy', 'M104', true, 28);
INSERT INTO public.galaxy VALUES (6, 'Whilepool Galaxy', 'M51', true, 23);


--
-- Data for Name: humans_visited; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.humans_visited VALUES (1, 'Manned', 'Applo', NULL, 1);
INSERT INTO public.humans_visited VALUES (2, 'Unmanned', 'LRO', NULL, 1);
INSERT INTO public.humans_visited VALUES (3, 'Unmanned', 'Perseverance', 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Our Moon', 0, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Small Moon', 7, false, 3);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Second Moon', 20, false, 3);
INSERT INTO public.moon VALUES (4, 'IO', 'volcanos', 628, false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'largest', 628, false, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'dark rock and bright ice', 628, false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'cratered', 628, false, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'thick atmosphere', 1, false, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'icey', 1, false, 6);
INSERT INTO public.moon VALUES (10, 'Lapetus', 'colorful', 1, false, 6);
INSERT INTO public.moon VALUES (11, 'Enceladus', 'geysers', 1, false, 6);
INSERT INTO public.moon VALUES (12, 'Mimas', 'Death Star', 1, false, 6);
INSERT INTO public.moon VALUES (13, 'Triton', 'retrograde', 4, false, 8);
INSERT INTO public.moon VALUES (14, 'Nereid', 'eccentric orbit', 4, false, 8);
INSERT INTO public.moon VALUES (15, 'Proteus', 'irregularyly shaped', 4, false, 8);
INSERT INTO public.moon VALUES (16, 'Charon', 'half size of pluto', 6, false, 9);
INSERT INTO public.moon VALUES (17, 'Amalthea', 'Moon number 6', 628, false, 5);
INSERT INTO public.moon VALUES (18, 'Himalia', 'Moon number 7', 628, false, 5);
INSERT INTO public.moon VALUES (19, 'Elara', 'moon number 8', 628, false, 5);
INSERT INTO public.moon VALUES (20, 'Pasiphae', 'Moon number 9', 628, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Our home', true, 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Hot', false, 41, 1);
INSERT INTO public.planet VALUES (3, 'Mars', 'Red Neighbor', false, 78, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 'Closet to Sun', false, 77, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest in Solar System', false, 628, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Rings', false, 1, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Icey', false, 3, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Dark Spot', false, 4, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Still a planet', false, 6, 1);
INSERT INTO public.planet VALUES (10, 'Promixa b', 'Exoplanet', false, 4, 2);
INSERT INTO public.planet VALUES (11, 'Tau Ceti', 'exoplanet', false, 12, 3);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 'star is red dwarf', false, 20, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Our Star', 0, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Our closest neighnor', 4.24, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'Suns big brother', 4.37, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 'Suns little Sister', 4.37, 1);
INSERT INTO public.star VALUES (5, 'Barnards Star', 'A red dwarf', 5.96, 1);
INSERT INTO public.star VALUES (6, 'Wolf 359', 'Site of famous Borg Battle', 7.8, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: humans_visited_visit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.humans_visited_visit_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: humans_visited humans_visited_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans_visited
    ADD CONSTRAINT humans_visited_name_key UNIQUE (name);


--
-- Name: humans_visited humans_visited_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans_visited
    ADD CONSTRAINT humans_visited_pkey PRIMARY KEY (humans_visited_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: humans_visited humans_visited_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans_visited
    ADD CONSTRAINT humans_visited_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: humans_visited humans_visited_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans_visited
    ADD CONSTRAINT humans_visited_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

