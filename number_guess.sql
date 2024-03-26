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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 902);
INSERT INTO public.games VALUES (2, 1, 899);
INSERT INTO public.games VALUES (3, 2, 487);
INSERT INTO public.games VALUES (4, 2, 530);
INSERT INTO public.games VALUES (5, 1, 491);
INSERT INTO public.games VALUES (6, 1, 522);
INSERT INTO public.games VALUES (7, 1, 44);
INSERT INTO public.games VALUES (8, 3, 75);
INSERT INTO public.games VALUES (9, 3, 607);
INSERT INTO public.games VALUES (10, 4, 140);
INSERT INTO public.games VALUES (11, 4, 959);
INSERT INTO public.games VALUES (12, 3, 223);
INSERT INTO public.games VALUES (13, 3, 393);
INSERT INTO public.games VALUES (14, 3, 512);
INSERT INTO public.games VALUES (15, 5, 480);
INSERT INTO public.games VALUES (16, 5, 762);
INSERT INTO public.games VALUES (17, 6, 687);
INSERT INTO public.games VALUES (18, 6, 667);
INSERT INTO public.games VALUES (19, 5, 366);
INSERT INTO public.games VALUES (20, 5, 161);
INSERT INTO public.games VALUES (21, 5, 720);
INSERT INTO public.games VALUES (22, 7, 777);
INSERT INTO public.games VALUES (23, 7, 587);
INSERT INTO public.games VALUES (24, 8, 772);
INSERT INTO public.games VALUES (25, 8, 272);
INSERT INTO public.games VALUES (26, 7, 987);
INSERT INTO public.games VALUES (27, 7, 675);
INSERT INTO public.games VALUES (28, 7, 279);
INSERT INTO public.games VALUES (29, 9, 446);
INSERT INTO public.games VALUES (30, 9, 231);
INSERT INTO public.games VALUES (31, 10, 852);
INSERT INTO public.games VALUES (32, 10, 911);
INSERT INTO public.games VALUES (33, 9, 206);
INSERT INTO public.games VALUES (34, 9, 1000);
INSERT INTO public.games VALUES (35, 9, 395);
INSERT INTO public.games VALUES (36, 11, 986);
INSERT INTO public.games VALUES (37, 11, 454);
INSERT INTO public.games VALUES (38, 12, 83);
INSERT INTO public.games VALUES (39, 12, 400);
INSERT INTO public.games VALUES (40, 11, 76);
INSERT INTO public.games VALUES (41, 11, 144);
INSERT INTO public.games VALUES (42, 11, 916);
INSERT INTO public.games VALUES (43, 13, 574);
INSERT INTO public.games VALUES (44, 13, 280);
INSERT INTO public.games VALUES (45, 14, 515);
INSERT INTO public.games VALUES (46, 14, 331);
INSERT INTO public.games VALUES (47, 13, 921);
INSERT INTO public.games VALUES (48, 13, 743);
INSERT INTO public.games VALUES (49, 13, 716);
INSERT INTO public.games VALUES (50, 15, 169);
INSERT INTO public.games VALUES (51, 15, 475);
INSERT INTO public.games VALUES (52, 16, 254);
INSERT INTO public.games VALUES (53, 16, 130);
INSERT INTO public.games VALUES (54, 15, 808);
INSERT INTO public.games VALUES (55, 15, 97);
INSERT INTO public.games VALUES (56, 15, 473);
INSERT INTO public.games VALUES (57, 17, 754);
INSERT INTO public.games VALUES (58, 17, 146);
INSERT INTO public.games VALUES (59, 18, 457);
INSERT INTO public.games VALUES (60, 18, 78);
INSERT INTO public.games VALUES (61, 17, 837);
INSERT INTO public.games VALUES (62, 17, 951);
INSERT INTO public.games VALUES (63, 17, 189);
INSERT INTO public.games VALUES (64, 19, 772);
INSERT INTO public.games VALUES (65, 19, 143);
INSERT INTO public.games VALUES (66, 20, 881);
INSERT INTO public.games VALUES (67, 20, 913);
INSERT INTO public.games VALUES (68, 19, 29);
INSERT INTO public.games VALUES (69, 19, 200);
INSERT INTO public.games VALUES (70, 19, 247);
INSERT INTO public.games VALUES (71, 21, 217);
INSERT INTO public.games VALUES (72, 21, 695);
INSERT INTO public.games VALUES (73, 22, 937);
INSERT INTO public.games VALUES (74, 22, 209);
INSERT INTO public.games VALUES (75, 21, 683);
INSERT INTO public.games VALUES (76, 21, 959);
INSERT INTO public.games VALUES (77, 21, 104);
INSERT INTO public.games VALUES (78, 23, 561);
INSERT INTO public.games VALUES (79, 23, 486);
INSERT INTO public.games VALUES (80, 24, 589);
INSERT INTO public.games VALUES (81, 24, 90);
INSERT INTO public.games VALUES (82, 23, 624);
INSERT INTO public.games VALUES (83, 23, 491);
INSERT INTO public.games VALUES (84, 23, 390);
INSERT INTO public.games VALUES (85, 25, 959);
INSERT INTO public.games VALUES (86, 25, 447);
INSERT INTO public.games VALUES (87, 26, 258);
INSERT INTO public.games VALUES (88, 26, 123);
INSERT INTO public.games VALUES (89, 25, 582);
INSERT INTO public.games VALUES (90, 25, 821);
INSERT INTO public.games VALUES (91, 25, 284);
INSERT INTO public.games VALUES (92, 27, 717);
INSERT INTO public.games VALUES (93, 27, 345);
INSERT INTO public.games VALUES (94, 28, 49);
INSERT INTO public.games VALUES (95, 28, 652);
INSERT INTO public.games VALUES (96, 27, 795);
INSERT INTO public.games VALUES (97, 27, 760);
INSERT INTO public.games VALUES (98, 27, 452);
INSERT INTO public.games VALUES (99, 29, 95);
INSERT INTO public.games VALUES (100, 29, 302);
INSERT INTO public.games VALUES (101, 30, 45);
INSERT INTO public.games VALUES (102, 30, 57);
INSERT INTO public.games VALUES (103, 29, 241);
INSERT INTO public.games VALUES (104, 29, 868);
INSERT INTO public.games VALUES (105, 29, 699);
INSERT INTO public.games VALUES (106, 31, 240);
INSERT INTO public.games VALUES (107, 31, 337);
INSERT INTO public.games VALUES (108, 32, 742);
INSERT INTO public.games VALUES (109, 32, 269);
INSERT INTO public.games VALUES (110, 31, 513);
INSERT INTO public.games VALUES (111, 31, 641);
INSERT INTO public.games VALUES (112, 31, 146);
INSERT INTO public.games VALUES (113, 33, 207);
INSERT INTO public.games VALUES (114, 33, 493);
INSERT INTO public.games VALUES (115, 34, 705);
INSERT INTO public.games VALUES (116, 34, 929);
INSERT INTO public.games VALUES (117, 33, 516);
INSERT INTO public.games VALUES (118, 33, 165);
INSERT INTO public.games VALUES (119, 33, 985);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1711490585595');
INSERT INTO public.users VALUES (2, 'user_1711490585594');
INSERT INTO public.users VALUES (3, 'user_1711490613058');
INSERT INTO public.users VALUES (4, 'user_1711490613057');
INSERT INTO public.users VALUES (5, 'user_1711490729232');
INSERT INTO public.users VALUES (6, 'user_1711490729231');
INSERT INTO public.users VALUES (7, 'user_1711490853071');
INSERT INTO public.users VALUES (8, 'user_1711490853070');
INSERT INTO public.users VALUES (9, 'user_1711490951324');
INSERT INTO public.users VALUES (10, 'user_1711490951323');
INSERT INTO public.users VALUES (11, 'user_1711493875717');
INSERT INTO public.users VALUES (12, 'user_1711493875716');
INSERT INTO public.users VALUES (13, 'user_1711494069255');
INSERT INTO public.users VALUES (14, 'user_1711494069254');
INSERT INTO public.users VALUES (15, 'user_1711494123706');
INSERT INTO public.users VALUES (16, 'user_1711494123705');
INSERT INTO public.users VALUES (17, 'user_1711494205110');
INSERT INTO public.users VALUES (18, 'user_1711494205109');
INSERT INTO public.users VALUES (19, 'user_1711494283211');
INSERT INTO public.users VALUES (20, 'user_1711494283210');
INSERT INTO public.users VALUES (21, 'user_1711494312110');
INSERT INTO public.users VALUES (22, 'user_1711494312109');
INSERT INTO public.users VALUES (23, 'user_1711494392096');
INSERT INTO public.users VALUES (24, 'user_1711494392095');
INSERT INTO public.users VALUES (25, 'user_1711494639876');
INSERT INTO public.users VALUES (26, 'user_1711494639875');
INSERT INTO public.users VALUES (27, 'user_1711494697798');
INSERT INTO public.users VALUES (28, 'user_1711494697797');
INSERT INTO public.users VALUES (29, 'user_1711494717429');
INSERT INTO public.users VALUES (30, 'user_1711494717428');
INSERT INTO public.users VALUES (31, 'user_1711494803817');
INSERT INTO public.users VALUES (32, 'user_1711494803816');
INSERT INTO public.users VALUES (33, 'user_1711494851624');
INSERT INTO public.users VALUES (34, 'user_1711494851623');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 119, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 34, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

