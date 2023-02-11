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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellations_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellations_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellations_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellations_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellations_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    distance_from_earth_mly numeric(6,5),
    has_life boolean,
    galaxy_type character varying(20)
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
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_years integer,
    distance_from_earht_km numeric(16,4),
    has_life boolean
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
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_years integer,
    has_life boolean
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
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_years integer,
    distance_from_earth_mly numeric(6,5)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_seq OWNER TO freecodecamp;

--
-- Name: star_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_seq OWNED BY public.star.star_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellations_constellation_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Aries', 1);
INSERT INTO public.constellation VALUES (2, 'Cancer', 1);
INSERT INTO public.constellation VALUES (3, 'Centaurus', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home Galaxy of Earth', 0.02650, true, 'SBbc');
INSERT INTO public.galaxy VALUES (2, 'Canis Mayor Dwarf', 'Satelite of Milky Way', 0.02500, false, 'Irr');
INSERT INTO public.galaxy VALUES (3, 'Segue 1', 'Satelite of Milky Way', 0.07500, false, 'Glob Clus');
INSERT INTO public.galaxy VALUES (4, 'Ursa Mayor II Dwarf', 'Satelite of Milky Way', 0.09800, false, 'dSph');
INSERT INTO public.galaxy VALUES (5, 'Triangulum II', 'Satelite of Milky Way', 0.09800, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Rectculum II', 'Satelite of Milky Way', 0.10200, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Moon', 'First satellite on planet Earth', 1, NULL, false);
INSERT INTO public.moon VALUES (2, 4, 'Phobos', 'First satellite on planet Mars', 2, NULL, false);
INSERT INTO public.moon VALUES (3, 4, 'Deimos', 'Second satellite on planet Mars', 2, NULL, false);
INSERT INTO public.moon VALUES (4, 5, 'Lo', 'First satellite on planet Jupiter', 3, NULL, false);
INSERT INTO public.moon VALUES (5, 5, 'Europa', 'Second satellite on planet Jupiter', 2, NULL, false);
INSERT INTO public.moon VALUES (6, 5, 'Ganimide', 'Third satellite on planet Jupiter', 2, NULL, false);
INSERT INTO public.moon VALUES (7, 5, 'Callisto', 'Fourth satellite on planet Jupiter', 1, NULL, false);
INSERT INTO public.moon VALUES (8, 5, 'Amathea', 'Fifht satellite on planet Jupiter', 4, NULL, false);
INSERT INTO public.moon VALUES (9, 5, 'Himalia', 'Sixth satellite on planet Jupiter', 4, NULL, false);
INSERT INTO public.moon VALUES (10, 5, 'Elara', 'Seventh satellite on planet Jupiter', 3, NULL, false);
INSERT INTO public.moon VALUES (11, 6, 'Mimas', 'First satellite on planet Saturn', 1, NULL, false);
INSERT INTO public.moon VALUES (13, 6, 'Tethys', 'Third satellite on planet Saturn', 3, NULL, false);
INSERT INTO public.moon VALUES (14, 6, 'Dione', 'Fourth satellite on planet Saturn', 3, NULL, false);
INSERT INTO public.moon VALUES (15, 7, 'Ariel', 'First satellite on planet Uranus', 1, NULL, false);
INSERT INTO public.moon VALUES (16, 7, 'Umbriel', 'Second satellite on planet Uranus', 2, NULL, false);
INSERT INTO public.moon VALUES (17, 7, 'Titania', 'Third satellite on planet Uranus', 3, NULL, false);
INSERT INTO public.moon VALUES (18, 8, 'Triton', 'First satellite on planet Neptune', 1, NULL, false);
INSERT INTO public.moon VALUES (19, 8, 'Nereid', 'Second satellite on planet Neptune', 1, NULL, false);
INSERT INTO public.moon VALUES (20, 8, 'Naiad', 'Third satellite on planet Neptune', 2, NULL, false);
INSERT INTO public.moon VALUES (12, 6, 'Enceladus', 'Second satellite on planet Saturn', 2, NULL, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 'First planet on the Solar System', 1, false);
INSERT INTO public.planet VALUES (2, 1, 'Venus', 'Second planet on the Solar System', 2, false);
INSERT INTO public.planet VALUES (4, 1, 'Mars', 'Fourth planet on the Solar System', 3, false);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', 'Fifth planet on the Solar System', 5, false);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', 'Sixth planet on the Solar System', 1, false);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', 'Seventh planet on the Solar System', 2, false);
INSERT INTO public.planet VALUES (8, 1, 'Neptune', 'eighth planet on the Solar System', 2, false);
INSERT INTO public.planet VALUES (9, 1, 'Pluton', 'Nineth planet on the Solar System', 1, false);
INSERT INTO public.planet VALUES (10, 1, 'Ceres', 'tenth planet on the Solar System', 1, false);
INSERT INTO public.planet VALUES (11, 1, 'Haumea', 'Eleventh planet on the Solar System', 2, false);
INSERT INTO public.planet VALUES (12, 1, 'Makemake', 'Twelveth planet on the Solar System', 2, false);
INSERT INTO public.planet VALUES (3, 1, 'Earth', 'Third planet on the Solar System', 2, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 'Center of the Solar System', 4, 0.15813);
INSERT INTO public.star VALUES (2, 2, 'Galimir', 'Biggest star on Mayor Canis Dwarf ', 2, 0.25813);
INSERT INTO public.star VALUES (3, 3, 'Cleopl', 'Smallest star on Segue 1', 3, 0.07813);
INSERT INTO public.star VALUES (4, 4, 'Abrth', 'Smallest star on Ursa Mayor II', 3, 0.09813);
INSERT INTO public.star VALUES (5, 5, 'Jusrt', 'Most important star on Smallest Triangulum II', 1, 0.09813);
INSERT INTO public.star VALUES (6, 6, 'Vega', 'Most important star on Smallest Rectangulum II', 6, 0.10813);


--
-- Name: constellations_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellations_constellation_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_seq', 6, true);


--
-- Name: constellation constellations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellations_name_key UNIQUE (name);


--
-- Name: constellation constellations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellations_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation galaxy_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT galaxy_id_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon plante_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT plante_id_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

