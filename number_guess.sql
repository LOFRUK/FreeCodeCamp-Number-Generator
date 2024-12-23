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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 10, 1);
INSERT INTO public.games VALUES (2, 290, 2);
INSERT INTO public.games VALUES (3, 75, 2);
INSERT INTO public.games VALUES (4, 557, 3);
INSERT INTO public.games VALUES (5, 800, 3);
INSERT INTO public.games VALUES (6, 690, 2);
INSERT INTO public.games VALUES (7, 36, 2);
INSERT INTO public.games VALUES (8, 816, 2);
INSERT INTO public.games VALUES (9, 721, 4);
INSERT INTO public.games VALUES (10, 352, 4);
INSERT INTO public.games VALUES (11, 58, 5);
INSERT INTO public.games VALUES (12, 712, 5);
INSERT INTO public.games VALUES (13, 438, 4);
INSERT INTO public.games VALUES (14, 727, 4);
INSERT INTO public.games VALUES (15, 125, 4);
INSERT INTO public.games VALUES (16, 185, 6);
INSERT INTO public.games VALUES (17, 79, 6);
INSERT INTO public.games VALUES (18, 46, 7);
INSERT INTO public.games VALUES (19, 41, 7);
INSERT INTO public.games VALUES (20, 822, 6);
INSERT INTO public.games VALUES (21, 51, 6);
INSERT INTO public.games VALUES (22, 567, 6);
INSERT INTO public.games VALUES (23, 2, 8);
INSERT INTO public.games VALUES (24, 2, 8);
INSERT INTO public.games VALUES (25, 3, 9);
INSERT INTO public.games VALUES (26, 2, 9);
INSERT INTO public.games VALUES (27, 2, 8);
INSERT INTO public.games VALUES (28, 3, 10);
INSERT INTO public.games VALUES (29, 3, 8);
INSERT INTO public.games VALUES (30, 3, 10);
INSERT INTO public.games VALUES (31, 2, 8);
INSERT INTO public.games VALUES (32, 3, 11);
INSERT INTO public.games VALUES (33, 2, 11);
INSERT INTO public.games VALUES (34, 2, 10);
INSERT INTO public.games VALUES (35, 3, 10);
INSERT INTO public.games VALUES (36, 2, 10);
INSERT INTO public.games VALUES (37, 273, 13);
INSERT INTO public.games VALUES (38, 519, 13);
INSERT INTO public.games VALUES (39, 714, 14);
INSERT INTO public.games VALUES (40, 810, 14);
INSERT INTO public.games VALUES (41, 344, 13);
INSERT INTO public.games VALUES (42, 912, 13);
INSERT INTO public.games VALUES (43, 360, 13);
INSERT INTO public.games VALUES (44, 224, 15);
INSERT INTO public.games VALUES (45, 896, 15);
INSERT INTO public.games VALUES (46, 619, 16);
INSERT INTO public.games VALUES (47, 794, 16);
INSERT INTO public.games VALUES (48, 699, 15);
INSERT INTO public.games VALUES (49, 896, 15);
INSERT INTO public.games VALUES (50, 501, 15);
INSERT INTO public.games VALUES (51, 286, 17);
INSERT INTO public.games VALUES (52, 931, 17);
INSERT INTO public.games VALUES (53, 915, 18);
INSERT INTO public.games VALUES (54, 335, 18);
INSERT INTO public.games VALUES (55, 875, 17);
INSERT INTO public.games VALUES (56, 7, 17);
INSERT INTO public.games VALUES (57, 172, 17);
INSERT INTO public.games VALUES (58, 179, 19);
INSERT INTO public.games VALUES (59, 674, 19);
INSERT INTO public.games VALUES (60, 681, 20);
INSERT INTO public.games VALUES (61, 911, 20);
INSERT INTO public.games VALUES (62, 211, 19);
INSERT INTO public.games VALUES (63, 735, 19);
INSERT INTO public.games VALUES (64, 414, 19);
INSERT INTO public.games VALUES (65, 961, 21);
INSERT INTO public.games VALUES (66, 748, 21);
INSERT INTO public.games VALUES (67, 685, 22);
INSERT INTO public.games VALUES (68, 948, 22);
INSERT INTO public.games VALUES (69, 494, 21);
INSERT INTO public.games VALUES (70, 367, 21);
INSERT INTO public.games VALUES (71, 457, 21);
INSERT INTO public.games VALUES (72, 570, 23);
INSERT INTO public.games VALUES (73, 689, 23);
INSERT INTO public.games VALUES (74, 30, 24);
INSERT INTO public.games VALUES (75, 595, 24);
INSERT INTO public.games VALUES (76, 798, 23);
INSERT INTO public.games VALUES (77, 280, 23);
INSERT INTO public.games VALUES (78, 168, 23);
INSERT INTO public.games VALUES (79, 173, 25);
INSERT INTO public.games VALUES (80, 892, 25);
INSERT INTO public.games VALUES (81, 486, 26);
INSERT INTO public.games VALUES (82, 971, 26);
INSERT INTO public.games VALUES (83, 141, 25);
INSERT INTO public.games VALUES (84, 819, 25);
INSERT INTO public.games VALUES (85, 793, 25);
INSERT INTO public.games VALUES (86, 894, 27);
INSERT INTO public.games VALUES (87, 473, 27);
INSERT INTO public.games VALUES (88, 947, 28);
INSERT INTO public.games VALUES (89, 880, 28);
INSERT INTO public.games VALUES (90, 867, 27);
INSERT INTO public.games VALUES (91, 982, 27);
INSERT INTO public.games VALUES (92, 582, 27);
INSERT INTO public.games VALUES (93, 46, 29);
INSERT INTO public.games VALUES (94, 392, 29);
INSERT INTO public.games VALUES (95, 562, 30);
INSERT INTO public.games VALUES (96, 676, 30);
INSERT INTO public.games VALUES (97, 189, 29);
INSERT INTO public.games VALUES (98, 599, 29);
INSERT INTO public.games VALUES (99, 559, 29);
INSERT INTO public.games VALUES (100, 967, 31);
INSERT INTO public.games VALUES (101, 720, 31);
INSERT INTO public.games VALUES (102, 948, 32);
INSERT INTO public.games VALUES (103, 861, 32);
INSERT INTO public.games VALUES (104, 372, 31);
INSERT INTO public.games VALUES (105, 706, 31);
INSERT INTO public.games VALUES (106, 603, 31);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Sam');
INSERT INTO public.users VALUES (2, 'user_1734968819359');
INSERT INTO public.users VALUES (3, 'user_1734968819358');
INSERT INTO public.users VALUES (4, 'user_1734968998740');
INSERT INTO public.users VALUES (5, 'user_1734968998739');
INSERT INTO public.users VALUES (6, 'user_1734969093787');
INSERT INTO public.users VALUES (7, 'user_1734969093786');
INSERT INTO public.users VALUES (8, 'user_1734969124388');
INSERT INTO public.users VALUES (9, 'user_1734969124387');
INSERT INTO public.users VALUES (10, 'user_1734969155266');
INSERT INTO public.users VALUES (11, 'user_1734969155265');
INSERT INTO public.users VALUES (12, 'user_1734969219031');
INSERT INTO public.users VALUES (13, 'user_1734969260411');
INSERT INTO public.users VALUES (14, 'user_1734969260410');
INSERT INTO public.users VALUES (15, 'user_1734969276643');
INSERT INTO public.users VALUES (16, 'user_1734969276642');
INSERT INTO public.users VALUES (17, 'user_1734969290260');
INSERT INTO public.users VALUES (18, 'user_1734969290259');
INSERT INTO public.users VALUES (19, 'user_1734969309993');
INSERT INTO public.users VALUES (20, 'user_1734969309992');
INSERT INTO public.users VALUES (21, 'user_1734969335837');
INSERT INTO public.users VALUES (22, 'user_1734969335836');
INSERT INTO public.users VALUES (23, 'user_1734969457367');
INSERT INTO public.users VALUES (24, 'user_1734969457366');
INSERT INTO public.users VALUES (25, 'user_1734969487125');
INSERT INTO public.users VALUES (26, 'user_1734969487124');
INSERT INTO public.users VALUES (27, 'user_1734969553710');
INSERT INTO public.users VALUES (28, 'user_1734969553709');
INSERT INTO public.users VALUES (29, 'user_1734969603271');
INSERT INTO public.users VALUES (30, 'user_1734969603270');
INSERT INTO public.users VALUES (31, 'user_1734969658980');
INSERT INTO public.users VALUES (32, 'user_1734969658979');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 106, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 32, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

