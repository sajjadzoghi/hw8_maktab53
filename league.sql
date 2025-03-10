PGDMP     ;                    y           football    13.3    13.3 K               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    24905    football    DATABASE     l   CREATE DATABASE football WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE football;
                postgres    false            �            1259    33577    game    TABLE     �   CREATE TABLE public.game (
    game_id integer NOT NULL,
    home_team_id integer NOT NULL,
    away_team_id integer NOT NULL
);
    DROP TABLE public.game;
       public         heap    postgres    false            �            1259    33575    game_game_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.game_game_id_seq;
       public          postgres    false    213                       0    0    game_game_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.game_game_id_seq OWNED BY public.game.game_id;
          public          postgres    false    212            �            1259    33597    game_season    TABLE     �   CREATE TABLE public.game_season (
    game_id integer NOT NULL,
    season_id integer NOT NULL,
    date date NOT NULL,
    home_team_resault smallint,
    away_team_resault smallint
);
    DROP TABLE public.game_season;
       public         heap    postgres    false            �            1259    33593    game_season_game_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_season_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.game_season_game_id_seq;
       public          postgres    false    216                       0    0    game_season_game_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.game_season_game_id_seq OWNED BY public.game_season.game_id;
          public          postgres    false    214            �            1259    33595    game_season_season_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_season_season_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.game_season_season_id_seq;
       public          postgres    false    216                       0    0    game_season_season_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.game_season_season_id_seq OWNED BY public.game_season.season_id;
          public          postgres    false    215            �            1259    33545    player    TABLE     �   CREATE TABLE public.player (
    player_id integer NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    date_of_birth date NOT NULL,
    playing_position character varying(50) NOT NULL
);
    DROP TABLE public.player;
       public         heap    postgres    false            �            1259    33555    player_contract    TABLE     �   CREATE TABLE public.player_contract (
    team_id integer NOT NULL,
    player_id integer NOT NULL,
    season_years character varying NOT NULL,
    salary numeric(10,2) NOT NULL
);
 #   DROP TABLE public.player_contract;
       public         heap    postgres    false            �            1259    33553    player_contract_player_id_seq    SEQUENCE     �   CREATE SEQUENCE public.player_contract_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.player_contract_player_id_seq;
       public          postgres    false    211                       0    0    player_contract_player_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.player_contract_player_id_seq OWNED BY public.player_contract.player_id;
          public          postgres    false    210            �            1259    33551    player_contract_team_id_seq    SEQUENCE     �   CREATE SEQUENCE public.player_contract_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.player_contract_team_id_seq;
       public          postgres    false    211                       0    0    player_contract_team_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.player_contract_team_id_seq OWNED BY public.player_contract.team_id;
          public          postgres    false    209            �            1259    33543    player_player_id_seq    SEQUENCE     �   CREATE SEQUENCE public.player_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.player_player_id_seq;
       public          postgres    false    208                       0    0    player_player_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.player_player_id_seq OWNED BY public.player.player_id;
          public          postgres    false    207            �            1259    33311    season    TABLE     �   CREATE TABLE public.season (
    season_id integer NOT NULL,
    year smallint NOT NULL,
    number_of_teams integer NOT NULL
);
    DROP TABLE public.season;
       public         heap    postgres    false            �            1259    33309    season_season_id_seq    SEQUENCE     �   CREATE SEQUENCE public.season_season_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.season_season_id_seq;
       public          postgres    false    201                       0    0    season_season_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.season_season_id_seq OWNED BY public.season.season_id;
          public          postgres    false    200            �            1259    33526    season_team    TABLE     �   CREATE TABLE public.season_team (
    season_id integer NOT NULL,
    team_id integer NOT NULL,
    team_rank smallint NOT NULL,
    team_points smallint NOT NULL
);
    DROP TABLE public.season_team;
       public         heap    postgres    false            �            1259    33522    season_team_season_id_seq    SEQUENCE     �   CREATE SEQUENCE public.season_team_season_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.season_team_season_id_seq;
       public          postgres    false    206                       0    0    season_team_season_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.season_team_season_id_seq OWNED BY public.season_team.season_id;
          public          postgres    false    204            �            1259    33524    season_team_team_id_seq    SEQUENCE     �   CREATE SEQUENCE public.season_team_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.season_team_team_id_seq;
       public          postgres    false    206                       0    0    season_team_team_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.season_team_team_id_seq OWNED BY public.season_team.team_id;
          public          postgres    false    205            �            1259    33321    team    TABLE     `   CREATE TABLE public.team (
    team_id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.team;
       public         heap    postgres    false            �            1259    33319    team_team_id_seq    SEQUENCE     �   CREATE SEQUENCE public.team_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.team_team_id_seq;
       public          postgres    false    203                       0    0    team_team_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.team_team_id_seq OWNED BY public.team.team_id;
          public          postgres    false    202            U           2604    33580    game game_id    DEFAULT     l   ALTER TABLE ONLY public.game ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);
 ;   ALTER TABLE public.game ALTER COLUMN game_id DROP DEFAULT;
       public          postgres    false    212    213    213            V           2604    33600    game_season game_id    DEFAULT     z   ALTER TABLE ONLY public.game_season ALTER COLUMN game_id SET DEFAULT nextval('public.game_season_game_id_seq'::regclass);
 B   ALTER TABLE public.game_season ALTER COLUMN game_id DROP DEFAULT;
       public          postgres    false    214    216    216            W           2604    33601    game_season season_id    DEFAULT     ~   ALTER TABLE ONLY public.game_season ALTER COLUMN season_id SET DEFAULT nextval('public.game_season_season_id_seq'::regclass);
 D   ALTER TABLE public.game_season ALTER COLUMN season_id DROP DEFAULT;
       public          postgres    false    216    215    216            R           2604    33548    player player_id    DEFAULT     t   ALTER TABLE ONLY public.player ALTER COLUMN player_id SET DEFAULT nextval('public.player_player_id_seq'::regclass);
 ?   ALTER TABLE public.player ALTER COLUMN player_id DROP DEFAULT;
       public          postgres    false    208    207    208            S           2604    33558    player_contract team_id    DEFAULT     �   ALTER TABLE ONLY public.player_contract ALTER COLUMN team_id SET DEFAULT nextval('public.player_contract_team_id_seq'::regclass);
 F   ALTER TABLE public.player_contract ALTER COLUMN team_id DROP DEFAULT;
       public          postgres    false    211    209    211            T           2604    33559    player_contract player_id    DEFAULT     �   ALTER TABLE ONLY public.player_contract ALTER COLUMN player_id SET DEFAULT nextval('public.player_contract_player_id_seq'::regclass);
 H   ALTER TABLE public.player_contract ALTER COLUMN player_id DROP DEFAULT;
       public          postgres    false    210    211    211            N           2604    33314    season season_id    DEFAULT     t   ALTER TABLE ONLY public.season ALTER COLUMN season_id SET DEFAULT nextval('public.season_season_id_seq'::regclass);
 ?   ALTER TABLE public.season ALTER COLUMN season_id DROP DEFAULT;
       public          postgres    false    200    201    201            P           2604    33529    season_team season_id    DEFAULT     ~   ALTER TABLE ONLY public.season_team ALTER COLUMN season_id SET DEFAULT nextval('public.season_team_season_id_seq'::regclass);
 D   ALTER TABLE public.season_team ALTER COLUMN season_id DROP DEFAULT;
       public          postgres    false    206    204    206            Q           2604    33530    season_team team_id    DEFAULT     z   ALTER TABLE ONLY public.season_team ALTER COLUMN team_id SET DEFAULT nextval('public.season_team_team_id_seq'::regclass);
 B   ALTER TABLE public.season_team ALTER COLUMN team_id DROP DEFAULT;
       public          postgres    false    205    206    206            O           2604    33324    team team_id    DEFAULT     l   ALTER TABLE ONLY public.team ALTER COLUMN team_id SET DEFAULT nextval('public.team_team_id_seq'::regclass);
 ;   ALTER TABLE public.team ALTER COLUMN team_id DROP DEFAULT;
       public          postgres    false    202    203    203                      0    33577    game 
   TABLE DATA           C   COPY public.game (game_id, home_team_id, away_team_id) FROM stdin;
    public          postgres    false    213   �V                 0    33597    game_season 
   TABLE DATA           e   COPY public.game_season (game_id, season_id, date, home_team_resault, away_team_resault) FROM stdin;
    public          postgres    false    216   4W       �          0    33545    player 
   TABLE DATA           a   COPY public.player (player_id, firstname, lastname, date_of_birth, playing_position) FROM stdin;
    public          postgres    false    208   �W       �          0    33555    player_contract 
   TABLE DATA           S   COPY public.player_contract (team_id, player_id, season_years, salary) FROM stdin;
    public          postgres    false    211   �X       �          0    33311    season 
   TABLE DATA           B   COPY public.season (season_id, year, number_of_teams) FROM stdin;
    public          postgres    false    201   �X       �          0    33526    season_team 
   TABLE DATA           Q   COPY public.season_team (season_id, team_id, team_rank, team_points) FROM stdin;
    public          postgres    false    206   :Y       �          0    33321    team 
   TABLE DATA           -   COPY public.team (team_id, name) FROM stdin;
    public          postgres    false    203   |Y                  0    0    game_game_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.game_game_id_seq', 6, true);
          public          postgres    false    212                       0    0    game_season_game_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.game_season_game_id_seq', 1, false);
          public          postgres    false    214                       0    0    game_season_season_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.game_season_season_id_seq', 1, false);
          public          postgres    false    215                       0    0    player_contract_player_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.player_contract_player_id_seq', 1, false);
          public          postgres    false    210                       0    0    player_contract_team_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.player_contract_team_id_seq', 1, false);
          public          postgres    false    209                       0    0    player_player_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.player_player_id_seq', 10, true);
          public          postgres    false    207                       0    0    season_season_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.season_season_id_seq', 5, true);
          public          postgres    false    200                       0    0    season_team_season_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.season_team_season_id_seq', 1, false);
          public          postgres    false    204                       0    0    season_team_team_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.season_team_team_id_seq', 1, false);
          public          postgres    false    205                       0    0    team_team_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.team_team_id_seq', 8, true);
          public          postgres    false    202            g           2606    33582    game game_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_pkey PRIMARY KEY (game_id);
 8   ALTER TABLE ONLY public.game DROP CONSTRAINT game_pkey;
       public            postgres    false    213            i           2606    33603    game_season game_season_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.game_season
    ADD CONSTRAINT game_season_pkey PRIMARY KEY (game_id, season_id);
 F   ALTER TABLE ONLY public.game_season DROP CONSTRAINT game_season_pkey;
       public            postgres    false    216    216            e           2606    33564 $   player_contract player_contract_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.player_contract
    ADD CONSTRAINT player_contract_pkey PRIMARY KEY (team_id, player_id);
 N   ALTER TABLE ONLY public.player_contract DROP CONSTRAINT player_contract_pkey;
       public            postgres    false    211    211            c           2606    33550    player player_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_pkey PRIMARY KEY (player_id);
 <   ALTER TABLE ONLY public.player DROP CONSTRAINT player_pkey;
       public            postgres    false    208            Y           2606    33316    season season_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.season
    ADD CONSTRAINT season_pkey PRIMARY KEY (season_id);
 <   ALTER TABLE ONLY public.season DROP CONSTRAINT season_pkey;
       public            postgres    false    201            a           2606    33532    season_team season_team_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.season_team
    ADD CONSTRAINT season_team_pkey PRIMARY KEY (season_id, team_id);
 F   ALTER TABLE ONLY public.season_team DROP CONSTRAINT season_team_pkey;
       public            postgres    false    206    206            [           2606    33318    season season_year_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.season
    ADD CONSTRAINT season_year_key UNIQUE (year);
 @   ALTER TABLE ONLY public.season DROP CONSTRAINT season_year_key;
       public            postgres    false    201            ]           2606    33331    team team_name_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_name_key UNIQUE (name);
 <   ALTER TABLE ONLY public.team DROP CONSTRAINT team_name_key;
       public            postgres    false    203            _           2606    33329    team team_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (team_id);
 8   ALTER TABLE ONLY public.team DROP CONSTRAINT team_pkey;
       public            postgres    false    203            o           2606    33588    game game_away_team_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_away_team_id_fkey FOREIGN KEY (away_team_id) REFERENCES public.team(team_id);
 E   ALTER TABLE ONLY public.game DROP CONSTRAINT game_away_team_id_fkey;
       public          postgres    false    2911    213    203            n           2606    33583    game game_home_team_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_home_team_id_fkey FOREIGN KEY (home_team_id) REFERENCES public.team(team_id);
 E   ALTER TABLE ONLY public.game DROP CONSTRAINT game_home_team_id_fkey;
       public          postgres    false    203    2911    213            p           2606    33604 $   game_season game_season_game_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.game_season
    ADD CONSTRAINT game_season_game_id_fkey FOREIGN KEY (game_id) REFERENCES public.game(game_id);
 N   ALTER TABLE ONLY public.game_season DROP CONSTRAINT game_season_game_id_fkey;
       public          postgres    false    216    2919    213            q           2606    33609 &   game_season game_season_season_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.game_season
    ADD CONSTRAINT game_season_season_id_fkey FOREIGN KEY (season_id) REFERENCES public.season(season_id);
 P   ALTER TABLE ONLY public.game_season DROP CONSTRAINT game_season_season_id_fkey;
       public          postgres    false    2905    201    216            m           2606    33570 .   player_contract player_contract_player_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.player_contract
    ADD CONSTRAINT player_contract_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.player(player_id);
 X   ALTER TABLE ONLY public.player_contract DROP CONSTRAINT player_contract_player_id_fkey;
       public          postgres    false    211    208    2915            l           2606    33565 ,   player_contract player_contract_team_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.player_contract
    ADD CONSTRAINT player_contract_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.team(team_id);
 V   ALTER TABLE ONLY public.player_contract DROP CONSTRAINT player_contract_team_id_fkey;
       public          postgres    false    211    2911    203            j           2606    33533 &   season_team season_team_season_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.season_team
    ADD CONSTRAINT season_team_season_id_fkey FOREIGN KEY (season_id) REFERENCES public.season(season_id);
 P   ALTER TABLE ONLY public.season_team DROP CONSTRAINT season_team_season_id_fkey;
       public          postgres    false    201    2905    206            k           2606    33538 $   season_team season_team_team_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.season_team
    ADD CONSTRAINT season_team_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.team(team_id);
 N   ALTER TABLE ONLY public.season_team DROP CONSTRAINT season_team_team_id_fkey;
       public          postgres    false    206    203    2911               )   x�3�4�4�2�4�4��8��L9-8͸�8�9�b���� MuC         K   x�=���0�xW`�Q�K����S	� �P�N>Y���r$&�5tV�R�x�1?�Y�@����}�~�"��       �   �   x�U�Aj�0EףS�*�b��2$���P誛I�4Ce	$7���8n0-O'J�x���k�V�(ȝ�'l2��0&8�����k�2�tpN��5���\��4Cm+��'k`]���|q2uR�,[ �!x��Ia��R�[�	�?E�'��t���Nj;l��!x������i���
ց*x�L���%�M=���*8R��Z�D�zqhG�?�o�í�/ȱ��[���D�d�      �   [   x�M��� ��g������t��,��@�@QQ�vx�0�G"� 3�F5%#G���%
�+<Q�n��_��[-D�w�������N"����      �   0   x���  �7�P�������h�^�FhG�Zȁ��F��[ >�.      �   2   x�ɱ 0��& �%��w�z��eb�ICH�(��-�ۻ���|      �   l   x�Mʻ
1�z�W�߶n@�������0�������VnqP�XS��A�!i����AW����i�� qfmT�ꍦ'�w�%��N���yY��xo |�r"�     