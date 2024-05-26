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
    name character varying(50) NOT NULL,
    description text,
    arms integer,
    age_in_millions_of_years numeric(6,2),
    distance_from_earth_in_mly numeric(6,2),
    galaxy_types_id integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years numeric(6,2),
    distance_from_earth_in_ly numeric(6,2),
    has_life boolean,
    is_round boolean,
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
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years numeric(8,2),
    distance_from_earth_in_mly numeric(8,2),
    diameter_in_km integer,
    has_life boolean,
    star_id integer,
    planet_types_id integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years numeric(6,2),
    distance_from_earth_in_mly numeric(6,2),
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Is the galaxy that includes the Solar System.', 2, 13.61, 0.00, 1);
INSERT INTO public.galaxy VALUES (2, 'Comet Galaxy', 'It was detected on 2 March 2007', 8, 1.00, 3.20, 1);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', 2, 10.01, 2537.00, 1);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'Also known as Messier 51a (M51a) or NGC 5194, is an interacting grand-design spiral galaxy with a Seyfert 2 active galactic nucleus.', 2, 400.00, 31.00, 1);
INSERT INTO public.galaxy VALUES (5, 'Sunflower Galaxy', 'Is a spiral galaxy in the northern constellation of Canes Venatici with approximately 400 billion stars.', 16, 13.28, 27.00, 1);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel Galaxy', ' It was discovered by Pierre Méchain in 1781[a] and was communicated that year to Charles Messier, who verified its position for inclusion in the Messier Catalogue as one of its final entries.', 4, 400.00, 25.00, 1);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 'These galaxies resemble giant rotating pinwheels with a pancake-like disk of stars and a central bulge or tight concentration of stars.');
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', 'Elliptical galaxies have shapes that range from completely round to oval.');
INSERT INTO public.galaxy_types VALUES (3, 'Lenticular', 'Lenticular galaxies are a kind of cross between spirals and ellipticals. They have the central bulge and disk common to spiral galaxies but no arms. But like ellipticals, lenticular galaxies have older stellar populations and little ongoing star formation.');
INSERT INTO public.galaxy_types VALUES (4, 'Irregular', 'Irregular galaxies have unusual shapes, like toothpicks, rings, or even little groupings of stars. They range from dwarf irregular galaxies with 100 million times the Sun’s mass to large ones weighing 10 billion solar masses.');
INSERT INTO public.galaxy_types VALUES (5, 'Active', 'Around 10% of known galaxies are active, which means their centers appear more than 100 times brighter than the combined light of their stars. ');
INSERT INTO public.galaxy_types VALUES (6, 'Seyfert', 'All Seyferts look like normal galaxies in visible light, but they emit considerable infrared radiation. ');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earths moon', 4.53, 0.00, false, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'It orbits Mars three times a day, and is so close to the planets surface that in some locations on Mars it cannot always be seen.', 4.53, 0.00, false, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Deimos is the smaller of Mars two moons. Its 9 by 7 by 6.8 miles in size (15 by 12 by 11 kilometers). Deimos orbits Mars every 30 hours.', 4.53, 0.00, false, false, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Ganymede is Jupiters largest moon, and the largest moon in our solar system. Its even bigger than Mercury, and Pluto. ', 4.53, 0.00, false, true, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Callisto is Jupiters second largest moon and the third largest moon in our solar system.', 4.53, 0.00, false, true, 5);
INSERT INTO public.moon VALUES (6, 'Io', 'Io is Jupiters third largest moon, and the most volcanically active world in our solar system.', 4.53, 0.00, false, true, 5);
INSERT INTO public.moon VALUES (7, 'Europa', 'Europa is Jupiters fourth largest moon. Its about 90% the size of Earths Moon.', 4.53, 0.00, false, true, 5);
INSERT INTO public.moon VALUES (8, 'Pan', 'Pan is the innermost named moon of Saturn.', 4.53, 0.00, false, false, 6);
INSERT INTO public.moon VALUES (9, 'Daphnis', 'Daphnis is an inner satellite of Saturn. It is also known as Saturn XXXV; its provisional designation was S/2005 S 1.', 4.53, 0.00, false, false, 6);
INSERT INTO public.moon VALUES (10, 'Atlas', 'Atlas is an inner satellite of Saturn which was discovered by Richard Terrile in 1980 from Voyager photos and was designated S/1980 S 28.', 4.53, 0.00, false, false, 6);
INSERT INTO public.moon VALUES (11, 'Prometheus', 'Prometheus is an inner satellite of Saturn. It was discovered on 24 October 1980 from photos taken by the Voyager 1 probe, and was provisionally designated S/1980 S 27.', 4.53, 0.00, false, false, 6);
INSERT INTO public.moon VALUES (12, 'Pandora', 'Pandora is an inner satellite of Saturn. It was discovered in 1980 from photos taken by the Voyager 1 probe and was provisionally designated S/1980 S 26.', 4.53, 0.00, false, false, 6);
INSERT INTO public.moon VALUES (13, 'Epimetheus', 'Epimetheus is an inner satellite of Saturn. It is also known as Saturn XI.', 4.53, 0.00, false, false, 6);
INSERT INTO public.moon VALUES (14, 'Janus', 'Janus is an inner satellite of Saturn. It is also known as Saturn X. It is named after the mythological Janus.', 4.53, 0.00, false, false, 6);
INSERT INTO public.moon VALUES (15, 'Aegaeon', 'Aegaeon, or Saturn LIII, is a natural satellite of Saturn. It has an extremely elongated shape whose surface is thought to be similarly smooth as Methone.', 4.53, 0.00, false, false, 6);
INSERT INTO public.moon VALUES (16, 'Mimas', 'Mimas, also designated Saturn I, is the seventh-largest natural satellite of Saturn.', 4.53, 0.00, false, true, 6);
INSERT INTO public.moon VALUES (17, 'Methone', 'Methone is a small, egg-shaped natural satellite of Saturn that orbits out past Saturns ring system, between the orbits of Mimas and Enceladus.', 4.53, 0.00, false, false, 6);
INSERT INTO public.moon VALUES (18, 'Pallene', 'Pallene is a very small natural satellite of Saturn. It is one of three small moons known as the Alkyonides that lie between the orbits of the larger Mimas and Enceladus.', 4.53, 0.00, false, false, 6);
INSERT INTO public.moon VALUES (19, 'Enceladus', 'Enceladus is the sixth-largest moon of Saturn and the 19th-largest in the Solar System.', 4.53, 0.00, false, true, 6);
INSERT INTO public.moon VALUES (20, 'Tethys', 'Tethys, or Saturn III, is the fifth-largest moon of Saturn, measuring about 1,060 km (660 mi) across.', 4.53, 0.00, false, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'the innermost planet of the solar system and the eighth in size and mass. ', 4503.00, 0.00, NULL, false, 1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', ' second planet from the Sun and sixth in the solar system in size and mass.', 4503.00, 0.00, NULL, false, 1, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass.', 4503.00, 0.00, NULL, true, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'fourth planet in the solar system in order of distance from the Sun and seventh in size and mass.', 4503.00, 0.00, NULL, false, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'the most massive planet of the solar system and the fifth in distance from the Sun.', 4603.00, 0.00, NULL, false, 1, 4);
INSERT INTO public.planet VALUES (6, 'Saturn', 'second largest planet of the solar system in mass and size and the sixth nearest planet in distance to the Sun.', 4503.00, 0.00, NULL, false, 1, 4);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is named for the personification of heaven and the son and husband of Gaea in Greek mythology. ', 4503.00, 0.00, NULL, false, 1, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 'third most massive planet of the solar system and the eighth and outermost planet from the Sun.', 4503.00, 0.00, NULL, false, 1, 3);
INSERT INTO public.planet VALUES (9, 'CoRoT-7b', 'the first extrasolar planet that was shown to be a rocky planet like Earth.', 1000.00, 0.00, NULL, false, 7, 2);
INSERT INTO public.planet VALUES (10, 'HD 209458b', 'the first extrasolar planet detected by its transit across its stars face and the first extrasolar planet whose mass was directly measured.', 15000.00, 0.00, NULL, false, 8, 2);
INSERT INTO public.planet VALUES (11, 'HIP 13044', 'first extrasolar planet that was found orbiting a star that originated outside the Milky Way Galaxy.', 15000.00, 0.00, NULL, false, 9, 1);
INSERT INTO public.planet VALUES (12, 'Kepler-452', 'Kepler-452b was discovered in 2015, in data that the Kepler satellite had gathered', 25000.00, 0.00, NULL, false, 10, 1);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial planet', 'Also known as a telluric planet or rocky planet. A planet that is composed primarily of carbonaceous or silicate rocks or metals.');
INSERT INTO public.planet_types VALUES (2, 'Silicate planet', 'A terrestrial planet that is composed primarily of silicate rocks. All four inner planets in the Solar System are silicon-based.');
INSERT INTO public.planet_types VALUES (3, 'Ice giant', 'A giant planet composed mainly of ices—volatile substances heavier than hydrogen and helium, such as water, methane, and ammonia—as opposed to gas (hydrogen and helium).');
INSERT INTO public.planet_types VALUES (4, 'Gas giant', 'A massive planet composed primarily of hydrogen and helium.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the star at the center of the Solar System.', 4603.00, 0.00, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 'Is a triple star system in the southern constellation of Centaurus.', 8.85, 4.24, 1);
INSERT INTO public.star VALUES (3, 'Wolf 359', 'Is a red dwarf star located in the constellation Leo, near the ecliptic.', 1000.00, 7.85, 1);
INSERT INTO public.star VALUES (4, 'Epsilon Indi', 'The star has an orange hue and is faintly visible to the naked eye with an apparent visual magnitude of 4.83.', 3.50, 11.86, 1);
INSERT INTO public.star VALUES (5, 'AD Leonis', 'is a red dwarf star. It is located relatively near the Sun', 25.00, 16.19, 1);
INSERT INTO public.star VALUES (6, '61 Cygni', 'consisting of a pair of K-type dwarf stars that orbit each other in a period of about 659 years. Of apparent magnitude 5.20 and 6.05, respectively, they can be seen with binoculars in city skies or with the naked eye in rural areas without light pollution.', 0.00, 11.40, 1);
INSERT INTO public.star VALUES (7, 'CoRoT-7', 'an orange star, cooler than the Sun)', 0.00, 11.40, 1);
INSERT INTO public.star VALUES (8, 'HD 209458', 'is a seventh-magnitude star about 150 light-years away in the constellation Pegasus.', 0.00, 150.00, 1);
INSERT INTO public.star VALUES (9, 'HIP 13044', 'is a star in the Helmi stream', 0.00, 11.40, 1);
INSERT INTO public.star VALUES (10, 'Kepler-452', 'Kepler-452 was discovered in 2015, in data that the Kepler satellite had gathered', 0.00, 11.40, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy fk_galaxy_type; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_galaxy_type FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_types; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_types FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

