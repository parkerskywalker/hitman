PGDMP         ;                y            hitman %   10.15 (Ubuntu 10.15-0ubuntu0.18.04.1) %   10.15 (Ubuntu 10.15-0ubuntu0.18.04.1) �    j           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            k           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            l           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            m           1262    36487    hitman    DATABASE     x   CREATE DATABASE hitman WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_MX.UTF-8' LC_CTYPE = 'es_MX.UTF-8';
    DROP DATABASE hitman;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            n           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13081    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            o           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    36519 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    36517    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    3    203            p           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    36529    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    36527    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205    3            q           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    36511    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    36509    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    3    201            r           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    36537 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    36547    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    36545    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209    3            s           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    36535    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207    3            t           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    36555    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    36553 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211    3            u           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    36686    bosses_boss    TABLE     �  CREATE TABLE public.bosses_boss (
    id integer NOT NULL,
    create_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    giuseppi character varying(1),
    nickname character varying(50) NOT NULL,
    description character varying(50) NOT NULL,
    profile_id integer NOT NULL,
    status_id integer NOT NULL,
    user_id integer,
    hit_id integer,
    pwd character varying(50)
);
    DROP TABLE public.bosses_boss;
       public         postgres    false    3            �            1259    36684    bosses_boss_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bosses_boss_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.bosses_boss_id_seq;
       public       postgres    false    223    3            v           0    0    bosses_boss_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.bosses_boss_id_seq OWNED BY public.bosses_boss.id;
            public       postgres    false    222            �            1259    36648    catalogs_profiles    TABLE     �   CREATE TABLE public.catalogs_profiles (
    id integer NOT NULL,
    create_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    description character varying(50) NOT NULL
);
 %   DROP TABLE public.catalogs_profiles;
       public         postgres    false    3            �            1259    36646    catalogs_profiles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogs_profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.catalogs_profiles_id_seq;
       public       postgres    false    215    3            w           0    0    catalogs_profiles_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.catalogs_profiles_id_seq OWNED BY public.catalogs_profiles.id;
            public       postgres    false    214            �            1259    36656    catalogs_statushitman    TABLE     �   CREATE TABLE public.catalogs_statushitman (
    id integer NOT NULL,
    create_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    description character varying(50) NOT NULL
);
 )   DROP TABLE public.catalogs_statushitman;
       public         postgres    false    3            �            1259    36654    catalogs_statushitman_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogs_statushitman_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.catalogs_statushitman_id_seq;
       public       postgres    false    3    217            x           0    0    catalogs_statushitman_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.catalogs_statushitman_id_seq OWNED BY public.catalogs_statushitman.id;
            public       postgres    false    216            �            1259    36664    catalogs_statushits    TABLE     �   CREATE TABLE public.catalogs_statushits (
    id integer NOT NULL,
    create_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    description character varying(50) NOT NULL
);
 '   DROP TABLE public.catalogs_statushits;
       public         postgres    false    3            �            1259    36662    catalogs_statushits_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogs_statushits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.catalogs_statushits_id_seq;
       public       postgres    false    219    3            y           0    0    catalogs_statushits_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.catalogs_statushits_id_seq OWNED BY public.catalogs_statushits.id;
            public       postgres    false    218            �            1259    36615    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    36613    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    3    213            z           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    36501    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    36499    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199    3            {           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    36490    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    36488    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197    3            |           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    36853    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    36761    hitmans_hitman    TABLE     �  CREATE TABLE public.hitmans_hitman (
    id integer NOT NULL,
    create_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    giuseppi character varying(1),
    nickname character varying(50) NOT NULL,
    description character varying(50) NOT NULL,
    boss_id integer,
    profile_id integer NOT NULL,
    status_id integer NOT NULL,
    user_id integer,
    hit_id integer,
    pwd character varying(50)
);
 "   DROP TABLE public.hitmans_hitman;
       public         postgres    false    3            �            1259    36759    hitmans_hitman_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hitmans_hitman_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.hitmans_hitman_id_seq;
       public       postgres    false    225    3            }           0    0    hitmans_hitman_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.hitmans_hitman_id_seq OWNED BY public.hitmans_hitman.id;
            public       postgres    false    224            �            1259    36672    hits_hit    TABLE       CREATE TABLE public.hits_hit (
    id integer NOT NULL,
    create_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    description character varying(250) NOT NULL,
    status_id integer NOT NULL,
    registered character varying(5)
);
    DROP TABLE public.hits_hit;
       public         postgres    false    3            �            1259    36670    hits_hit_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hits_hit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.hits_hit_id_seq;
       public       postgres    false    3    221            ~           0    0    hits_hit_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.hits_hit_id_seq OWNED BY public.hits_hit.id;
            public       postgres    false    220            i           2604    36522    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            j           2604    36532    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            h           2604    36514    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            k           2604    36540    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            l           2604    36550    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            m           2604    36558    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            t           2604    36689    bosses_boss id    DEFAULT     p   ALTER TABLE ONLY public.bosses_boss ALTER COLUMN id SET DEFAULT nextval('public.bosses_boss_id_seq'::regclass);
 =   ALTER TABLE public.bosses_boss ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222    223            p           2604    36651    catalogs_profiles id    DEFAULT     |   ALTER TABLE ONLY public.catalogs_profiles ALTER COLUMN id SET DEFAULT nextval('public.catalogs_profiles_id_seq'::regclass);
 C   ALTER TABLE public.catalogs_profiles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            q           2604    36659    catalogs_statushitman id    DEFAULT     �   ALTER TABLE ONLY public.catalogs_statushitman ALTER COLUMN id SET DEFAULT nextval('public.catalogs_statushitman_id_seq'::regclass);
 G   ALTER TABLE public.catalogs_statushitman ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217            r           2604    36667    catalogs_statushits id    DEFAULT     �   ALTER TABLE ONLY public.catalogs_statushits ALTER COLUMN id SET DEFAULT nextval('public.catalogs_statushits_id_seq'::regclass);
 E   ALTER TABLE public.catalogs_statushits ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219            n           2604    36618    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            g           2604    36504    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            f           2604    36493    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            u           2604    36764    hitmans_hitman id    DEFAULT     v   ALTER TABLE ONLY public.hitmans_hitman ALTER COLUMN id SET DEFAULT nextval('public.hitmans_hitman_id_seq'::regclass);
 @   ALTER TABLE public.hitmans_hitman ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225            s           2604    36675    hits_hit id    DEFAULT     j   ALTER TABLE ONLY public.hits_hit ALTER COLUMN id SET DEFAULT nextval('public.hits_hit_id_seq'::regclass);
 :   ALTER TABLE public.hits_hit ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            P          0    36519 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   ��       R          0    36529    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   
�       N          0    36511    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   <�       T          0    36537 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   &�       V          0    36547    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ��       X          0    36555    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   ��       d          0    36686    bosses_boss 
   TABLE DATA               �   COPY public.bosses_boss (id, create_date, modified_date, giuseppi, nickname, description, profile_id, status_id, user_id, hit_id, pwd) FROM stdin;
    public       postgres    false    223   ��       \          0    36648    catalogs_profiles 
   TABLE DATA               X   COPY public.catalogs_profiles (id, create_date, modified_date, description) FROM stdin;
    public       postgres    false    215   ��       ^          0    36656    catalogs_statushitman 
   TABLE DATA               \   COPY public.catalogs_statushitman (id, create_date, modified_date, description) FROM stdin;
    public       postgres    false    217   �       `          0    36664    catalogs_statushits 
   TABLE DATA               Z   COPY public.catalogs_statushits (id, create_date, modified_date, description) FROM stdin;
    public       postgres    false    219   ��       Z          0    36615    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   ��       L          0    36501    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   ��       J          0    36490    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   ��       g          0    36853    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    226   ��       f          0    36761    hitmans_hitman 
   TABLE DATA               �   COPY public.hitmans_hitman (id, create_date, modified_date, giuseppi, nickname, description, boss_id, profile_id, status_id, user_id, hit_id, pwd) FROM stdin;
    public       postgres    false    225   ��       b          0    36672    hits_hit 
   TABLE DATA               f   COPY public.hits_hit (id, create_date, modified_date, description, status_id, registered) FROM stdin;
    public       postgres    false    221   .�                  0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 4, true);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
            public       postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 13, true);
            public       postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            �           0    0    bosses_boss_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.bosses_boss_id_seq', 3, true);
            public       postgres    false    222            �           0    0    catalogs_profiles_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.catalogs_profiles_id_seq', 2, true);
            public       postgres    false    214            �           0    0    catalogs_statushitman_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.catalogs_statushitman_id_seq', 3, true);
            public       postgres    false    216            �           0    0    catalogs_statushits_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.catalogs_statushits_id_seq', 3, true);
            public       postgres    false    218            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 9, true);
            public       postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 41, true);
            public       postgres    false    196            �           0    0    hitmans_hitman_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.hitmans_hitman_id_seq', 9, true);
            public       postgres    false    224            �           0    0    hits_hit_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.hits_hit_id_seq', 4, true);
            public       postgres    false    220            �           2606    36644    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            �           2606    36571 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            �           2606    36534 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            �           2606    36524    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            ~           2606    36562 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            �           2606    36516 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            �           2606    36552 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209            �           2606    36586 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            �           2606    36542    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207            �           2606    36560 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211            �           2606    36600 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211            �           2606    36638     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207            �           2606    36691    bosses_boss bosses_boss_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.bosses_boss
    ADD CONSTRAINT bosses_boss_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.bosses_boss DROP CONSTRAINT bosses_boss_pkey;
       public         postgres    false    223            �           2606    36693 #   bosses_boss bosses_boss_user_id_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.bosses_boss
    ADD CONSTRAINT bosses_boss_user_id_key UNIQUE (user_id);
 M   ALTER TABLE ONLY public.bosses_boss DROP CONSTRAINT bosses_boss_user_id_key;
       public         postgres    false    223            �           2606    36653 (   catalogs_profiles catalogs_profiles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.catalogs_profiles
    ADD CONSTRAINT catalogs_profiles_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.catalogs_profiles DROP CONSTRAINT catalogs_profiles_pkey;
       public         postgres    false    215            �           2606    36661 0   catalogs_statushitman catalogs_statushitman_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.catalogs_statushitman
    ADD CONSTRAINT catalogs_statushitman_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.catalogs_statushitman DROP CONSTRAINT catalogs_statushitman_pkey;
       public         postgres    false    217            �           2606    36669 ,   catalogs_statushits catalogs_statushits_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.catalogs_statushits
    ADD CONSTRAINT catalogs_statushits_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.catalogs_statushits DROP CONSTRAINT catalogs_statushits_pkey;
       public         postgres    false    219            �           2606    36624 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            y           2606    36508 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            {           2606    36506 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            w           2606    36498 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            �           2606    36860 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    226            �           2606    36766 "   hitmans_hitman hitmans_hitman_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.hitmans_hitman
    ADD CONSTRAINT hitmans_hitman_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.hitmans_hitman DROP CONSTRAINT hitmans_hitman_pkey;
       public         postgres    false    225            �           2606    36768 )   hitmans_hitman hitmans_hitman_user_id_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.hitmans_hitman
    ADD CONSTRAINT hitmans_hitman_user_id_key UNIQUE (user_id);
 S   ALTER TABLE ONLY public.hitmans_hitman DROP CONSTRAINT hitmans_hitman_user_id_key;
       public         postgres    false    225            �           2606    36677    hits_hit hits_hit_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hits_hit
    ADD CONSTRAINT hits_hit_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.hits_hit DROP CONSTRAINT hits_hit_pkey;
       public         postgres    false    221            �           1259    36645    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            �           1259    36582 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            �           1259    36583 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            |           1259    36568 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            �           1259    36598 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209            �           1259    36597 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209            �           1259    36612 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211            �           1259    36611 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            �           1259    36639     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207            �           1259    36724    bosses_boss_hit_id_a3f6b05d    INDEX     U   CREATE INDEX bosses_boss_hit_id_a3f6b05d ON public.bosses_boss USING btree (hit_id);
 /   DROP INDEX public.bosses_boss_hit_id_a3f6b05d;
       public         postgres    false    223            �           1259    36709    bosses_boss_profile_id_5e4236e2    INDEX     ]   CREATE INDEX bosses_boss_profile_id_5e4236e2 ON public.bosses_boss USING btree (profile_id);
 3   DROP INDEX public.bosses_boss_profile_id_5e4236e2;
       public         postgres    false    223            �           1259    36710    bosses_boss_status_id_ec2a7fae    INDEX     [   CREATE INDEX bosses_boss_status_id_ec2a7fae ON public.bosses_boss USING btree (status_id);
 2   DROP INDEX public.bosses_boss_status_id_ec2a7fae;
       public         postgres    false    223            �           1259    36635 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213            �           1259    36636 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213            �           1259    36862 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    226            �           1259    36861 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    226            �           1259    36789    hitmans_hitman_boss_id_4d783644    INDEX     ]   CREATE INDEX hitmans_hitman_boss_id_4d783644 ON public.hitmans_hitman USING btree (boss_id);
 3   DROP INDEX public.hitmans_hitman_boss_id_4d783644;
       public         postgres    false    225            �           1259    36806    hitmans_hitman_hit_id_ba15d9f6    INDEX     [   CREATE INDEX hitmans_hitman_hit_id_ba15d9f6 ON public.hitmans_hitman USING btree (hit_id);
 2   DROP INDEX public.hitmans_hitman_hit_id_ba15d9f6;
       public         postgres    false    225            �           1259    36790 "   hitmans_hitman_profile_id_1431fcdd    INDEX     c   CREATE INDEX hitmans_hitman_profile_id_1431fcdd ON public.hitmans_hitman USING btree (profile_id);
 6   DROP INDEX public.hitmans_hitman_profile_id_1431fcdd;
       public         postgres    false    225            �           1259    36791 !   hitmans_hitman_status_id_a1344dca    INDEX     a   CREATE INDEX hitmans_hitman_status_id_a1344dca ON public.hitmans_hitman USING btree (status_id);
 5   DROP INDEX public.hitmans_hitman_status_id_a1344dca;
       public         postgres    false    225            �           1259    36683    hits_hit_status_id_50b8b7ef    INDEX     U   CREATE INDEX hits_hit_status_id_50b8b7ef ON public.hits_hit USING btree (status_id);
 /   DROP INDEX public.hits_hit_status_id_50b8b7ef;
       public         postgres    false    221            �           2606    36577 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    205    201    2944            �           2606    36572 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    205    2949    203            �           2606    36563 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2939    199    201            �           2606    36592 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    203    209    2949            �           2606    36587 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    2957    209    207            �           2606    36606 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    2944    201    211            �           2606    36601 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    207    2957    211            �           2606    36754 6   bosses_boss bosses_boss_hit_id_a3f6b05d_fk_hits_hit_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.bosses_boss
    ADD CONSTRAINT bosses_boss_hit_id_a3f6b05d_fk_hits_hit_id FOREIGN KEY (hit_id) REFERENCES public.hits_hit(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.bosses_boss DROP CONSTRAINT bosses_boss_hit_id_a3f6b05d_fk_hits_hit_id;
       public       postgres    false    223    2984    221            �           2606    36735 C   bosses_boss bosses_boss_profile_id_5e4236e2_fk_catalogs_profiles_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.bosses_boss
    ADD CONSTRAINT bosses_boss_profile_id_5e4236e2_fk_catalogs_profiles_id FOREIGN KEY (profile_id) REFERENCES public.catalogs_profiles(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.bosses_boss DROP CONSTRAINT bosses_boss_profile_id_5e4236e2_fk_catalogs_profiles_id;
       public       postgres    false    223    2978    215            �           2606    36749 F   bosses_boss bosses_boss_status_id_ec2a7fae_fk_catalogs_statushitman_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.bosses_boss
    ADD CONSTRAINT bosses_boss_status_id_ec2a7fae_fk_catalogs_statushitman_id FOREIGN KEY (status_id) REFERENCES public.catalogs_statushitman(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.bosses_boss DROP CONSTRAINT bosses_boss_status_id_ec2a7fae_fk_catalogs_statushitman_id;
       public       postgres    false    223    2980    217            �           2606    36730 8   bosses_boss bosses_boss_user_id_5f7cf934_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.bosses_boss
    ADD CONSTRAINT bosses_boss_user_id_5f7cf934_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.bosses_boss DROP CONSTRAINT bosses_boss_user_id_5f7cf934_fk_auth_user_id;
       public       postgres    false    223    207    2957            �           2606    36625 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    2939    199    213            �           2606    36630 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    2957    207    213            �           2606    36822 @   hitmans_hitman hitmans_hitman_boss_id_4d783644_fk_bosses_boss_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.hitmans_hitman
    ADD CONSTRAINT hitmans_hitman_boss_id_4d783644_fk_bosses_boss_id FOREIGN KEY (boss_id) REFERENCES public.bosses_boss(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.hitmans_hitman DROP CONSTRAINT hitmans_hitman_boss_id_4d783644_fk_bosses_boss_id;
       public       postgres    false    225    2988    223            �           2606    36832 <   hitmans_hitman hitmans_hitman_hit_id_ba15d9f6_fk_hits_hit_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.hitmans_hitman
    ADD CONSTRAINT hitmans_hitman_hit_id_ba15d9f6_fk_hits_hit_id FOREIGN KEY (hit_id) REFERENCES public.hits_hit(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.hitmans_hitman DROP CONSTRAINT hitmans_hitman_hit_id_ba15d9f6_fk_hits_hit_id;
       public       postgres    false    221    225    2984            �           2606    36817 I   hitmans_hitman hitmans_hitman_profile_id_1431fcdd_fk_catalogs_profiles_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.hitmans_hitman
    ADD CONSTRAINT hitmans_hitman_profile_id_1431fcdd_fk_catalogs_profiles_id FOREIGN KEY (profile_id) REFERENCES public.catalogs_profiles(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.hitmans_hitman DROP CONSTRAINT hitmans_hitman_profile_id_1431fcdd_fk_catalogs_profiles_id;
       public       postgres    false    215    2978    225            �           2606    36827 L   hitmans_hitman hitmans_hitman_status_id_a1344dca_fk_catalogs_statushitman_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.hitmans_hitman
    ADD CONSTRAINT hitmans_hitman_status_id_a1344dca_fk_catalogs_statushitman_id FOREIGN KEY (status_id) REFERENCES public.catalogs_statushitman(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.hitmans_hitman DROP CONSTRAINT hitmans_hitman_status_id_a1344dca_fk_catalogs_statushitman_id;
       public       postgres    false    225    2980    217            �           2606    36812 >   hitmans_hitman hitmans_hitman_user_id_1d8c451c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.hitmans_hitman
    ADD CONSTRAINT hitmans_hitman_user_id_1d8c451c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.hitmans_hitman DROP CONSTRAINT hitmans_hitman_user_id_1d8c451c_fk_auth_user_id;
       public       postgres    false    225    207    2957            �           2606    36678 >   hits_hit hits_hit_status_id_50b8b7ef_fk_catalogs_statushits_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.hits_hit
    ADD CONSTRAINT hits_hit_status_id_50b8b7ef_fk_catalogs_statushits_id FOREIGN KEY (status_id) REFERENCES public.catalogs_statushits(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.hits_hit DROP CONSTRAINT hits_hit_status_id_50b8b7ef_fk_catalogs_statushits_id;
       public       postgres    false    2982    219    221            P      x�3�t�/.����� ��      R   "   x�3�4�42�2Qf\� ʜ�DYp��qqq I�I      N   �  x�m�An�0E��)8A	�m7]V�RE7AJ �*���{fhv����Ǚ�����!;����x7΄�g�����Om��# ��g��%�?��U�r��6�]�x馩z��؝�S �	��~�%A�֬�Hp\�,��p��am�F�Ŝ�q�)"�CH�* ��dp��hJX�֕r>�4���N G`ǳ)��Vi�~��pk�|�z�:ZN����
&!�7�kœ���k�h�U�K֓�[݁0�l���y&L��1�K��:C`�n���M6aesUn��b�g�i:Ģ��T���o��ݝ���a�n���.C�Q%N�����'J�>��p���v�M����M𾴽-T�/G���	��P���%)�Z�'�ï�lm��_ ׂ�-7������~�����WX�R�:�䄄�s$�	Q嘃���W�Z���˷+U��B�:��(Qmfb����Z���Jc      T     x�u�Y��H �g�W�o�֪��L&mAq_3�;(Ȏ˯��v�3J��9FN�*��j{�BGEM H ��ET�+Q��D:��t&n�kw�n���.Q(��X;oj����'+O��SC �O�>!��&&���C@���l7K�0tk�Z��{3�9�m9AꫮW���S�\�u�e�2o��>3b�,�db�1�qm�X�&�3�60Ʃ��]i�Ql�F�ic�'5Մ�N���Rmզ��>uuG����Ǧ߳֯������rT�'_���&3kebQ�D�.�9_V>���,I�c_���f�k�Dqć3o�'=ݤ�:`���E�p��a�ιЛe�_�֯�J�(w�����2]x��w�J8���z�~o�[��c��ᯍ�m�i(�0����i�bǰ$���z��#=� \}��Cp�[�ɪ��(z��z�GJI�DN���Sl�f38/[�X$we���e8o4�������il��9�I���aqP���̸�g�q�'�b��a���F�f�e_`���=�D����V��c��+oy��}�3��,Ku��1��o���sMD�I �����/arn�*��]�$2'�� �1_�"$���ߝ�����Ӂ�h�����b�rfw}�K�?�ŧN�,��Qr׀\��oQ�>VpU�K0��c��~�+����?"�
�_���V.�º���I�{}q�O��M�E㢘���R��|�P��{����?E��L�q��ݩҰ���E1��^њ8Y�d&����Y���	O�����@(�t��0��G��IZ��rl]�U�ǽ�N�k+�ن��� ���Eʩwⶡ��(�&���v�,}NH�A'�^Զ��k�8I���.��P���8/�k�z����R�&�k:4���*��Ak�W�,�8��y�F0�e�熑�LЇ��D4���d�:@������a���?I�V��n��#�3�O���'����*'m��|k⩏W�<���|�|�Hc��@SD1y!��:�1�~?�U�<4S�+�Z�e������un�����j���]�9(k¼��f�}?D[�t4�đ:�F4�Ω�͖�wZ�9z��nb\G,��ޗ��8(;\1��K��F��������w4�l      V      x������ � �      X      x������ � �      d   �   x�u���0E��W� }�--]�QM�Y�؅(�/"Ƅ�zOrN.qS����2�JdX)��A��M����]�qx<��2!���$�JpoP1�*ԁ�Ks���αʷ�ftHvo��Lѷk�@n�iK*##�AE���%���r
m#��q����觸^��3u�$�CRA�      \   R   x�3�4202�50�5�P0��21�26�3244� ���530�:�saQd�g``dfa������H�#�$71�+F��� ���      ^   i   x�u�9� E�ڿ
7 ��Йظc,l�1�}�؉�y�yؐ!T��}��5	;de�_e��_��\��3K��ȫ"Y�4�W����R�uϗa�L n�Q+       `   h   x�u�=
�0@�ٞ��$�Ib7�"�t)n��ZNu�5X�2�D�#8�18���U�R�-�U�NHfbf����$U���\'���?��e�K:��e�R7{,+@      Z   �   x��ѻ�1��:�b�!�˙�U�d�J-g
��B�B|��0l�D����焠!K8�4�8�X
��!0[L�ޠ�8��i���uӴ͸���a�1{ ���-�	s+Xˁ��d������ːK�@�����pm3\wC��y+�߾<��>P��� ������Ki\����_����b�	�M��)x�TP�����kh��#�?�0�V���uaEQ�`_�      L   �   x�mM��0����Hy�K(��]��"g��8X,K�d#�>� S\м�[t����IvMr,	�F
]�A���tI��G�[��,8�蕯���Vm}II9>���W�Z-�����a��"k�
0�4?߈��fIK�      J   �  x���kn�0�˧�"��ǒ9K��G��$����$��Y�@`�p��rf���q�fX��K3W�1�ڡ]Z�U���0x��7�^A�(����*]���f�A!*��aO�k�r$�&׍gt�rSӏ���ΟNEGC��� ��ǥ����;���(��f��~���Y�p�7��)�@ �*�p���fr�f��y#������L�UDI�&Fa6�XQי^�޷�.Ek�f7��!�%N3^��;`���6�����`|K�v���Ėp�Q4y���N���u,+C8�����Q>|מ�2Ns̾��qr}3����؅T�����1Y���`r#���B)����I����4^/�Q����z�pw��C��L��WVǲ=�Xj`dl]�ꭝ�<���Yb���Ou��F��DR��]�P ���)���8��KO�VSz&�x&���������ǚ6��x�2�pὣ��*��D��O������(�L���(�i	�4����i�Q�V�L��zU������&�v�S��X��,Ee2���Ho�FXLK�Mnؽ��A� Z�P���35uIJU<W�K��SKm���
ȅ��dV(�kHB䀇��S6�f���!s��5#�@�i�
=+YN �t��dz���k(���Ȑ�ȩ�<��d:�gr�}���֘M ��tk��ۚ��xA$��_��n�ۙ�pS�/�5�s�+�xZ�;5���1:��>��!      g   	  x��Y��0  �o9�\ ӖE�_D�%��I� E�
���{K�;}w��t~4��xG_��m�՚���,��0�'q�ݺ��yI� �J.�뒓���Z��S�£��1*��o� ����8�8�sQ���P)���ߗ��|��)~���@����ǲ���x'�̴�]��ݿ��������c�S_Mw
v�v�7�o�8*�Y��/�'0�.C���RoF��ef�8*��hA�`+�$�j�,�PYCbY��� l]*      f     x�u��n�0E��+�X��#v�tQuA���.XM��V�}�CJӍm�J�x< ����Й� e(D��Կ��6��,��"���6��+���� ȅ\�d2TT (3�>M�zh6���]hl��竑/&	� *�h)�����۸<o����Se�"VR��˪��Q&�8̘��A�|F6��{��s�x	�>o�Ǟba�ƌ��dT(ƥ��t��4�z�Ip��x�slo6j�)�g�������Z���ť9�p"oWك/��W_����ՃF�����Ji$Og�]*�~����vq�}M����^�&3e�L�5-fL}���ݪ�����0x���|J`mRe������)������G0�Cյ{*$�x�],�u�e      b   �   x�u�1�0Egr�\��6$MY۽]�	$ 4���R6������%�)P���.�,rD�
*��f�ћ>��|�up��nlLB	��(J%�4h}��Q�l�������u�v���b�h� ����NU���7�u��������>�5LG�����d�sw���\�nᡱ�r}�/��3PN�     