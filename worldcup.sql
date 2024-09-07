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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_goals integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 1, 2, 2, 2018, 'Final', 4);
INSERT INTO public.games VALUES (34, 3, 4, 0, 2018, 'Third Place', 2);
INSERT INTO public.games VALUES (35, 2, 4, 1, 2018, 'Semi-Final', 2);
INSERT INTO public.games VALUES (36, 1, 3, 0, 2018, 'Semi-Final', 1);
INSERT INTO public.games VALUES (37, 2, 10, 2, 2018, 'Quarter-Final', 3);
INSERT INTO public.games VALUES (38, 4, 12, 0, 2018, 'Quarter-Final', 2);
INSERT INTO public.games VALUES (39, 3, 14, 1, 2018, 'Quarter-Final', 2);
INSERT INTO public.games VALUES (40, 1, 16, 0, 2018, 'Quarter-Final', 2);
INSERT INTO public.games VALUES (41, 4, 18, 1, 2018, 'Eighth-Final', 2);
INSERT INTO public.games VALUES (42, 12, 20, 0, 2018, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (43, 3, 22, 2, 2018, 'Eighth-Final', 3);
INSERT INTO public.games VALUES (44, 14, 24, 0, 2018, 'Eighth-Final', 2);
INSERT INTO public.games VALUES (45, 2, 26, 1, 2018, 'Eighth-Final', 2);
INSERT INTO public.games VALUES (46, 10, 28, 1, 2018, 'Eighth-Final', 2);
INSERT INTO public.games VALUES (47, 16, 30, 1, 2018, 'Eighth-Final', 2);
INSERT INTO public.games VALUES (48, 1, 32, 3, 2018, 'Eighth-Final', 4);
INSERT INTO public.games VALUES (49, 33, 32, 0, 2014, 'Final', 1);
INSERT INTO public.games VALUES (50, 35, 14, 0, 2014, 'Third Place', 3);
INSERT INTO public.games VALUES (51, 32, 35, 0, 2014, 'Semi-Final', 1);
INSERT INTO public.games VALUES (52, 33, 14, 1, 2014, 'Semi-Final', 7);
INSERT INTO public.games VALUES (53, 35, 42, 0, 2014, 'Quarter-Final', 1);
INSERT INTO public.games VALUES (54, 32, 3, 0, 2014, 'Quarter-Final', 1);
INSERT INTO public.games VALUES (55, 14, 18, 1, 2014, 'Quarter-Final', 2);
INSERT INTO public.games VALUES (56, 33, 1, 0, 2014, 'Quarter-Final', 1);
INSERT INTO public.games VALUES (57, 14, 50, 1, 2014, 'Eighth-Final', 2);
INSERT INTO public.games VALUES (58, 18, 16, 0, 2014, 'Eighth-Final', 2);
INSERT INTO public.games VALUES (59, 1, 54, 0, 2014, 'Eighth-Final', 2);
INSERT INTO public.games VALUES (60, 33, 56, 1, 2014, 'Eighth-Final', 2);
INSERT INTO public.games VALUES (61, 35, 24, 1, 2014, 'Eighth-Final', 2);
INSERT INTO public.games VALUES (62, 42, 60, 1, 2014, 'Eighth-Final', 2);
INSERT INTO public.games VALUES (63, 32, 20, 0, 2014, 'Eighth-Final', 1);
INSERT INTO public.games VALUES (64, 3, 64, 1, 2014, 'Eighth-Final', 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'France');
INSERT INTO public.teams VALUES (2, 'Croatia');
INSERT INTO public.teams VALUES (3, 'Belgium');
INSERT INTO public.teams VALUES (4, 'England');
INSERT INTO public.teams VALUES (10, 'Russia');
INSERT INTO public.teams VALUES (12, 'Sweden');
INSERT INTO public.teams VALUES (14, 'Brazil');
INSERT INTO public.teams VALUES (16, 'Uruguay');
INSERT INTO public.teams VALUES (18, 'Colombia');
INSERT INTO public.teams VALUES (20, 'Switzerland');
INSERT INTO public.teams VALUES (22, 'Japan');
INSERT INTO public.teams VALUES (24, 'Mexico');
INSERT INTO public.teams VALUES (26, 'Denmark');
INSERT INTO public.teams VALUES (28, 'Spain');
INSERT INTO public.teams VALUES (30, 'Portugal');
INSERT INTO public.teams VALUES (32, 'Argentina');
INSERT INTO public.teams VALUES (33, 'Germany');
INSERT INTO public.teams VALUES (35, 'Netherlands');
INSERT INTO public.teams VALUES (42, 'Costa Rica');
INSERT INTO public.teams VALUES (50, 'Chile');
INSERT INTO public.teams VALUES (54, 'Nigeria');
INSERT INTO public.teams VALUES (56, 'Algeria');
INSERT INTO public.teams VALUES (60, 'Greece');
INSERT INTO public.teams VALUES (64, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 192, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

