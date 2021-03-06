PGDMP         4                x            paypl    11.7    12.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16393    paypl    DATABASE     �   CREATE DATABASE paypl WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE paypl;
                postgres    false            �            1259    56254 
   categories    TABLE     �   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    tax double precision NOT NULL,
    parent_id integer,
    slug character varying(255) NOT NULL
);
    DROP TABLE public.categories;
       public            postgres    false            �            1259    56252    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    219                       0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    218            �            1259    56394    chats    TABLE     X   CREATE TABLE public.chats (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.chats;
       public            postgres    false            �            1259    56392    chats_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.chats_id_seq;
       public          postgres    false    235                       0    0    chats_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.chats_id_seq OWNED BY public.chats.id;
          public          postgres    false    234            �            1259    56234    contact_service_user    TABLE     �   CREATE TABLE public.contact_service_user (
    id integer NOT NULL,
    user_id integer NOT NULL,
    contact_service_id integer NOT NULL,
    link character varying(255) NOT NULL
);
 (   DROP TABLE public.contact_service_user;
       public            postgres    false            �            1259    56232    contact_service_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_service_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.contact_service_user_id_seq;
       public          postgres    false    217                       0    0    contact_service_user_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.contact_service_user_id_seq OWNED BY public.contact_service_user.id;
          public          postgres    false    216            �            1259    56194    contact_services    TABLE     �   CREATE TABLE public.contact_services (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    icon character varying(255) NOT NULL
);
 $   DROP TABLE public.contact_services;
       public            postgres    false            �            1259    56192    contact_services_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.contact_services_id_seq;
       public          postgres    false    211                        0    0    contact_services_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.contact_services_id_seq OWNED BY public.contact_services.id;
          public          postgres    false    210            �            1259    56323 
   good_order    TABLE     �   CREATE TABLE public.good_order (
    id integer NOT NULL,
    good_id integer NOT NULL,
    order_id integer NOT NULL,
    quantity integer NOT NULL,
    price_current double precision NOT NULL,
    tax_current double precision NOT NULL
);
    DROP TABLE public.good_order;
       public            postgres    false            �            1259    56321    good_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.good_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.good_order_id_seq;
       public          postgres    false    227            !           0    0    good_order_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.good_order_id_seq OWNED BY public.good_order.id;
          public          postgres    false    226            �            1259    56279    goods    TABLE     �  CREATE TABLE public.goods (
    id integer NOT NULL,
    user_id integer NOT NULL,
    name character varying(255) NOT NULL,
    price double precision NOT NULL,
    quantity integer,
    discount double precision,
    status_id integer NOT NULL,
    description text,
    category_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    slug character varying(255)
);
    DROP TABLE public.goods;
       public            postgres    false            �            1259    56277    goods_id_seq    SEQUENCE     �   CREATE SEQUENCE public.goods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.goods_id_seq;
       public          postgres    false    223            "           0    0    goods_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.goods_id_seq OWNED BY public.goods.id;
          public          postgres    false    222            �            1259    56352    media    TABLE     �   CREATE TABLE public.media (
    id integer NOT NULL,
    good_id integer NOT NULL,
    link character varying(255) NOT NULL,
    media_type_id integer NOT NULL,
    description text
);
    DROP TABLE public.media;
       public            postgres    false            �            1259    56350    media_id_seq    SEQUENCE     �   CREATE SEQUENCE public.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.media_id_seq;
       public          postgres    false    231            #           0    0    media_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;
          public          postgres    false    230            �            1259    56341    media_types    TABLE     �   CREATE TABLE public.media_types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    extensions character varying(255) NOT NULL
);
    DROP TABLE public.media_types;
       public            postgres    false            �            1259    56339    media_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.media_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.media_types_id_seq;
       public          postgres    false    229            $           0    0    media_types_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.media_types_id_seq OWNED BY public.media_types.id;
          public          postgres    false    228            �            1259    56420    messages    TABLE     �   CREATE TABLE public.messages (
    id integer NOT NULL,
    content text NOT NULL,
    user_id integer NOT NULL,
    chat_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.messages;
       public            postgres    false            �            1259    56418    messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.messages_id_seq;
       public          postgres    false    239            %           0    0    messages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;
          public          postgres    false    238            �            1259    56106 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public            postgres    false            �            1259    56104    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    197            &           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    196            �            1259    56158    oauth_access_tokens    TABLE     d  CREATE TABLE public.oauth_access_tokens (
    id character varying(100) NOT NULL,
    user_id bigint,
    client_id bigint NOT NULL,
    name character varying(255),
    scopes text,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone
);
 '   DROP TABLE public.oauth_access_tokens;
       public            postgres    false            �            1259    56149    oauth_auth_codes    TABLE     �   CREATE TABLE public.oauth_auth_codes (
    id character varying(100) NOT NULL,
    user_id bigint NOT NULL,
    client_id bigint NOT NULL,
    scopes text,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);
 $   DROP TABLE public.oauth_auth_codes;
       public            postgres    false            �            1259    56174    oauth_clients    TABLE     �  CREATE TABLE public.oauth_clients (
    id bigint NOT NULL,
    user_id bigint,
    name character varying(255) NOT NULL,
    secret character varying(100),
    redirect text NOT NULL,
    personal_access_client boolean NOT NULL,
    password_client boolean NOT NULL,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.oauth_clients;
       public            postgres    false            �            1259    56172    oauth_clients_id_seq    SEQUENCE     }   CREATE SEQUENCE public.oauth_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.oauth_clients_id_seq;
       public          postgres    false    207            '           0    0    oauth_clients_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.oauth_clients_id_seq OWNED BY public.oauth_clients.id;
          public          postgres    false    206            �            1259    56186    oauth_personal_access_clients    TABLE     �   CREATE TABLE public.oauth_personal_access_clients (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 1   DROP TABLE public.oauth_personal_access_clients;
       public            postgres    false            �            1259    56184 $   oauth_personal_access_clients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.oauth_personal_access_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.oauth_personal_access_clients_id_seq;
       public          postgres    false    209            (           0    0 $   oauth_personal_access_clients_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.oauth_personal_access_clients_id_seq OWNED BY public.oauth_personal_access_clients.id;
          public          postgres    false    208            �            1259    56167    oauth_refresh_tokens    TABLE     �   CREATE TABLE public.oauth_refresh_tokens (
    id character varying(100) NOT NULL,
    access_token_id character varying(100) NOT NULL,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);
 (   DROP TABLE public.oauth_refresh_tokens;
       public            postgres    false            �            1259    56305    orders    TABLE     �   CREATE TABLE public.orders (
    id integer NOT NULL,
    user_id integer NOT NULL,
    status_id integer NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.orders;
       public            postgres    false            �            1259    56303    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    225            )           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    224            �            1259    56402    parties    TABLE     u   CREATE TABLE public.parties (
    id integer NOT NULL,
    user_id integer NOT NULL,
    chat_id integer NOT NULL
);
    DROP TABLE public.parties;
       public            postgres    false            �            1259    56400    parties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.parties_id_seq;
       public          postgres    false    237            *           0    0    parties_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.parties_id_seq OWNED BY public.parties.id;
          public          postgres    false    236            �            1259    56142    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public            postgres    false            �            1259    56216    pay_service_user    TABLE     �   CREATE TABLE public.pay_service_user (
    id integer NOT NULL,
    user_id integer NOT NULL,
    pay_service_id integer NOT NULL,
    link character varying(255) NOT NULL
);
 $   DROP TABLE public.pay_service_user;
       public            postgres    false            �            1259    56214    pay_service_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pay_service_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pay_service_user_id_seq;
       public          postgres    false    215            +           0    0    pay_service_user_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pay_service_user_id_seq OWNED BY public.pay_service_user.id;
          public          postgres    false    214            �            1259    56205    pay_services    TABLE     �   CREATE TABLE public.pay_services (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    link character varying(255) NOT NULL,
    icon character varying(255) NOT NULL
);
     DROP TABLE public.pay_services;
       public            postgres    false            �            1259    56203    pay_services_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pay_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pay_services_id_seq;
       public          postgres    false    213            ,           0    0    pay_services_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pay_services_id_seq OWNED BY public.pay_services.id;
          public          postgres    false    212            �            1259    56373    requests    TABLE     �   CREATE TABLE public.requests (
    id integer NOT NULL,
    user_id integer NOT NULL,
    status_id integer NOT NULL,
    content text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.requests;
       public            postgres    false            �            1259    56371    requests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.requests_id_seq;
       public          postgres    false    233            -           0    0    requests_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.requests_id_seq OWNED BY public.requests.id;
          public          postgres    false    232            �            1259    56114    roles    TABLE     a   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.roles;
       public            postgres    false            �            1259    56112    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    199            .           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    198            �            1259    56267    statuses    TABLE     �   CREATE TABLE public.statuses (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    locked boolean DEFAULT false NOT NULL
);
    DROP TABLE public.statuses;
       public            postgres    false            �            1259    56265    statuses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.statuses_id_seq;
       public          postgres    false    221            /           0    0    statuses_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.statuses_id_seq OWNED BY public.statuses.id;
          public          postgres    false    220            �            1259    56123    users    TABLE     >  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    login character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    avatar character varying(255),
    balance double precision DEFAULT '0'::double precision NOT NULL,
    role_id integer,
    rating double precision,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public            postgres    false            �            1259    56121    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    201            0           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    200                       2604    56257    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219                        2604    56397    chats id    DEFAULT     d   ALTER TABLE ONLY public.chats ALTER COLUMN id SET DEFAULT nextval('public.chats_id_seq'::regclass);
 7   ALTER TABLE public.chats ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235                       2604    56237    contact_service_user id    DEFAULT     �   ALTER TABLE ONLY public.contact_service_user ALTER COLUMN id SET DEFAULT nextval('public.contact_service_user_id_seq'::regclass);
 F   ALTER TABLE public.contact_service_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                       2604    56197    contact_services id    DEFAULT     z   ALTER TABLE ONLY public.contact_services ALTER COLUMN id SET DEFAULT nextval('public.contact_services_id_seq'::regclass);
 B   ALTER TABLE public.contact_services ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211                       2604    56326    good_order id    DEFAULT     n   ALTER TABLE ONLY public.good_order ALTER COLUMN id SET DEFAULT nextval('public.good_order_id_seq'::regclass);
 <   ALTER TABLE public.good_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227                       2604    56282    goods id    DEFAULT     d   ALTER TABLE ONLY public.goods ALTER COLUMN id SET DEFAULT nextval('public.goods_id_seq'::regclass);
 7   ALTER TABLE public.goods ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223                       2604    56355    media id    DEFAULT     d   ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);
 7   ALTER TABLE public.media ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231                       2604    56344    media_types id    DEFAULT     p   ALTER TABLE ONLY public.media_types ALTER COLUMN id SET DEFAULT nextval('public.media_types_id_seq'::regclass);
 =   ALTER TABLE public.media_types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            "           2604    56423    messages id    DEFAULT     j   ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);
 :   ALTER TABLE public.messages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239                       2604    56109    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    197    196    197                       2604    56177    oauth_clients id    DEFAULT     t   ALTER TABLE ONLY public.oauth_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_clients_id_seq'::regclass);
 ?   ALTER TABLE public.oauth_clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207                       2604    56189     oauth_personal_access_clients id    DEFAULT     �   ALTER TABLE ONLY public.oauth_personal_access_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_personal_access_clients_id_seq'::regclass);
 O   ALTER TABLE public.oauth_personal_access_clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209                       2604    56308 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            !           2604    56405 
   parties id    DEFAULT     h   ALTER TABLE ONLY public.parties ALTER COLUMN id SET DEFAULT nextval('public.parties_id_seq'::regclass);
 9   ALTER TABLE public.parties ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237                       2604    56219    pay_service_user id    DEFAULT     z   ALTER TABLE ONLY public.pay_service_user ALTER COLUMN id SET DEFAULT nextval('public.pay_service_user_id_seq'::regclass);
 B   ALTER TABLE public.pay_service_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    56208    pay_services id    DEFAULT     r   ALTER TABLE ONLY public.pay_services ALTER COLUMN id SET DEFAULT nextval('public.pay_services_id_seq'::regclass);
 >   ALTER TABLE public.pay_services ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213                       2604    56376    requests id    DEFAULT     j   ALTER TABLE ONLY public.requests ALTER COLUMN id SET DEFAULT nextval('public.requests_id_seq'::regclass);
 :   ALTER TABLE public.requests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233                       2604    56117    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    198    199    199                       2604    56270    statuses id    DEFAULT     j   ALTER TABLE ONLY public.statuses ALTER COLUMN id SET DEFAULT nextval('public.statuses_id_seq'::regclass);
 :   ALTER TABLE public.statuses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    56126    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201                      0    56254 
   categories 
   TABLE DATA           D   COPY public.categories (id, name, tax, parent_id, slug) FROM stdin;
    public          postgres    false    219   �                 0    56394    chats 
   TABLE DATA           )   COPY public.chats (id, name) FROM stdin;
    public          postgres    false    235   p�                  0    56234    contact_service_user 
   TABLE DATA           U   COPY public.contact_service_user (id, user_id, contact_service_id, link) FROM stdin;
    public          postgres    false    217   ��       �          0    56194    contact_services 
   TABLE DATA           @   COPY public.contact_services (id, name, link, icon) FROM stdin;
    public          postgres    false    211   }�       
          0    56323 
   good_order 
   TABLE DATA           a   COPY public.good_order (id, good_id, order_id, quantity, price_current, tax_current) FROM stdin;
    public          postgres    false    227   R�                 0    56279    goods 
   TABLE DATA           �   COPY public.goods (id, user_id, name, price, quantity, discount, status_id, description, category_id, created_at, updated_at, slug) FROM stdin;
    public          postgres    false    223   ��                 0    56352    media 
   TABLE DATA           N   COPY public.media (id, good_id, link, media_type_id, description) FROM stdin;
    public          postgres    false    231   o#                0    56341    media_types 
   TABLE DATA           ;   COPY public.media_types (id, name, extensions) FROM stdin;
    public          postgres    false    229   c�                0    56420    messages 
   TABLE DATA           Y   COPY public.messages (id, content, user_id, chat_id, created_at, updated_at) FROM stdin;
    public          postgres    false    239   ��      �          0    56106 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    197   |      �          0    56158    oauth_access_tokens 
   TABLE DATA           �   COPY public.oauth_access_tokens (id, user_id, client_id, name, scopes, revoked, created_at, updated_at, expires_at) FROM stdin;
    public          postgres    false    204   	      �          0    56149    oauth_auth_codes 
   TABLE DATA           _   COPY public.oauth_auth_codes (id, user_id, client_id, scopes, revoked, expires_at) FROM stdin;
    public          postgres    false    203   "	      �          0    56174    oauth_clients 
   TABLE DATA           �   COPY public.oauth_clients (id, user_id, name, secret, redirect, personal_access_client, password_client, revoked, created_at, updated_at) FROM stdin;
    public          postgres    false    207   ?	      �          0    56186    oauth_personal_access_clients 
   TABLE DATA           ^   COPY public.oauth_personal_access_clients (id, client_id, created_at, updated_at) FROM stdin;
    public          postgres    false    209   \	      �          0    56167    oauth_refresh_tokens 
   TABLE DATA           X   COPY public.oauth_refresh_tokens (id, access_token_id, revoked, expires_at) FROM stdin;
    public          postgres    false    205   y	                0    56305    orders 
   TABLE DATA           W   COPY public.orders (id, user_id, status_id, token, created_at, updated_at) FROM stdin;
    public          postgres    false    225   �	                0    56402    parties 
   TABLE DATA           7   COPY public.parties (id, user_id, chat_id) FROM stdin;
    public          postgres    false    237   N      �          0    56142    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    202   �      �          0    56216    pay_service_user 
   TABLE DATA           M   COPY public.pay_service_user (id, user_id, pay_service_id, link) FROM stdin;
    public          postgres    false    215   �      �          0    56205    pay_services 
   TABLE DATA           <   COPY public.pay_services (id, name, link, icon) FROM stdin;
    public          postgres    false    213   Y                0    56373    requests 
   TABLE DATA           [   COPY public.requests (id, user_id, status_id, content, created_at, updated_at) FROM stdin;
    public          postgres    false    233   �      �          0    56114    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    199   5                0    56267    statuses 
   TABLE DATA           :   COPY public.statuses (id, name, type, locked) FROM stdin;
    public          postgres    false    221   �      �          0    56123    users 
   TABLE DATA           �   COPY public.users (id, name, login, email, email_verified_at, password, avatar, balance, role_id, rating, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    201   }      1           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 40, true);
          public          postgres    false    218            2           0    0    chats_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.chats_id_seq', 15, true);
          public          postgres    false    234            3           0    0    contact_service_user_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.contact_service_user_id_seq', 47, true);
          public          postgres    false    216            4           0    0    contact_services_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.contact_services_id_seq', 10, true);
          public          postgres    false    210            5           0    0    good_order_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.good_order_id_seq', 121, true);
          public          postgres    false    226            6           0    0    goods_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.goods_id_seq', 102, true);
          public          postgres    false    222            7           0    0    media_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.media_id_seq', 2277, true);
          public          postgres    false    230            8           0    0    media_types_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.media_types_id_seq', 1, true);
          public          postgres    false    228            9           0    0    messages_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.messages_id_seq', 156, true);
          public          postgres    false    238            :           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 25, true);
          public          postgres    false    196            ;           0    0    oauth_clients_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.oauth_clients_id_seq', 1, false);
          public          postgres    false    206            <           0    0 $   oauth_personal_access_clients_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.oauth_personal_access_clients_id_seq', 1, false);
          public          postgres    false    208            =           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 48, true);
          public          postgres    false    224            >           0    0    parties_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.parties_id_seq', 30, true);
          public          postgres    false    236            ?           0    0    pay_service_user_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pay_service_user_id_seq', 49, true);
          public          postgres    false    214            @           0    0    pay_services_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pay_services_id_seq', 10, true);
          public          postgres    false    212            A           0    0    requests_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.requests_id_seq', 18, true);
          public          postgres    false    232            B           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    198            C           0    0    statuses_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.statuses_id_seq', 1, false);
          public          postgres    false    220            D           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 40, true);
          public          postgres    false    200            F           2606    56259    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    219            X           2606    56399    chats chats_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.chats
    ADD CONSTRAINT chats_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.chats DROP CONSTRAINT chats_pkey;
       public            postgres    false    235            B           2606    56239 .   contact_service_user contact_service_user_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.contact_service_user
    ADD CONSTRAINT contact_service_user_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.contact_service_user DROP CONSTRAINT contact_service_user_pkey;
       public            postgres    false    217            D           2606    56251 P   contact_service_user contact_service_user_user_id_contact_service_id_link_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.contact_service_user
    ADD CONSTRAINT contact_service_user_user_id_contact_service_id_link_unique UNIQUE (user_id, contact_service_id, link);
 z   ALTER TABLE ONLY public.contact_service_user DROP CONSTRAINT contact_service_user_user_id_contact_service_id_link_unique;
       public            postgres    false    217    217    217            <           2606    56202 &   contact_services contact_services_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.contact_services
    ADD CONSTRAINT contact_services_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.contact_services DROP CONSTRAINT contact_services_pkey;
       public            postgres    false    211            P           2606    56328    good_order good_order_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.good_order
    ADD CONSTRAINT good_order_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.good_order DROP CONSTRAINT good_order_pkey;
       public            postgres    false    227            J           2606    56287    goods goods_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.goods
    ADD CONSTRAINT goods_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.goods DROP CONSTRAINT goods_pkey;
       public            postgres    false    223            L           2606    56443    goods goods_slug_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.goods
    ADD CONSTRAINT goods_slug_unique UNIQUE (slug);
 A   ALTER TABLE ONLY public.goods DROP CONSTRAINT goods_slug_unique;
       public            postgres    false    223            T           2606    56360    media media_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.media DROP CONSTRAINT media_pkey;
       public            postgres    false    231            R           2606    56349    media_types media_types_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.media_types
    ADD CONSTRAINT media_types_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.media_types DROP CONSTRAINT media_types_pkey;
       public            postgres    false    229            \           2606    56428    messages messages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
       public            postgres    false    239            $           2606    56111    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    197            2           2606    56165 ,   oauth_access_tokens oauth_access_tokens_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.oauth_access_tokens DROP CONSTRAINT oauth_access_tokens_pkey;
       public            postgres    false    204            /           2606    56156 &   oauth_auth_codes oauth_auth_codes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.oauth_auth_codes
    ADD CONSTRAINT oauth_auth_codes_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.oauth_auth_codes DROP CONSTRAINT oauth_auth_codes_pkey;
       public            postgres    false    203            7           2606    56182     oauth_clients oauth_clients_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.oauth_clients
    ADD CONSTRAINT oauth_clients_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.oauth_clients DROP CONSTRAINT oauth_clients_pkey;
       public            postgres    false    207            :           2606    56191 @   oauth_personal_access_clients oauth_personal_access_clients_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.oauth_personal_access_clients
    ADD CONSTRAINT oauth_personal_access_clients_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.oauth_personal_access_clients DROP CONSTRAINT oauth_personal_access_clients_pkey;
       public            postgres    false    209            5           2606    56171 .   oauth_refresh_tokens oauth_refresh_tokens_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.oauth_refresh_tokens
    ADD CONSTRAINT oauth_refresh_tokens_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.oauth_refresh_tokens DROP CONSTRAINT oauth_refresh_tokens_pkey;
       public            postgres    false    205            N           2606    56310    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    225            Z           2606    56407    parties parties_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.parties
    ADD CONSTRAINT parties_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.parties DROP CONSTRAINT parties_pkey;
       public            postgres    false    237            @           2606    56221 &   pay_service_user pay_service_user_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pay_service_user
    ADD CONSTRAINT pay_service_user_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.pay_service_user DROP CONSTRAINT pay_service_user_pkey;
       public            postgres    false    215            >           2606    56213    pay_services pay_services_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.pay_services
    ADD CONSTRAINT pay_services_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.pay_services DROP CONSTRAINT pay_services_pkey;
       public            postgres    false    213            V           2606    56381    requests requests_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT requests_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.requests DROP CONSTRAINT requests_pkey;
       public            postgres    false    233            &           2606    56119    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    199            H           2606    56276    statuses statuses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.statuses DROP CONSTRAINT statuses_pkey;
       public            postgres    false    221            (           2606    56141    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    201            *           2606    56139    users users_login_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_login_unique UNIQUE (login);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_login_unique;
       public            postgres    false    201            ,           2606    56132    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    201            3           1259    56166 !   oauth_access_tokens_user_id_index    INDEX     d   CREATE INDEX oauth_access_tokens_user_id_index ON public.oauth_access_tokens USING btree (user_id);
 5   DROP INDEX public.oauth_access_tokens_user_id_index;
       public            postgres    false    204            0           1259    56157    oauth_auth_codes_user_id_index    INDEX     ^   CREATE INDEX oauth_auth_codes_user_id_index ON public.oauth_auth_codes USING btree (user_id);
 2   DROP INDEX public.oauth_auth_codes_user_id_index;
       public            postgres    false    203            8           1259    56183    oauth_clients_user_id_index    INDEX     X   CREATE INDEX oauth_clients_user_id_index ON public.oauth_clients USING btree (user_id);
 /   DROP INDEX public.oauth_clients_user_id_index;
       public            postgres    false    207            -           1259    56148    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    202            b           2606    56260 '   categories categories_parent_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_parent_id_foreign FOREIGN KEY (parent_id) REFERENCES public.categories(id);
 Q   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_parent_id_foreign;
       public          postgres    false    2886    219    219            a           2606    56245 D   contact_service_user contact_service_user_contact_service_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_service_user
    ADD CONSTRAINT contact_service_user_contact_service_id_foreign FOREIGN KEY (contact_service_id) REFERENCES public.contact_services(id);
 n   ALTER TABLE ONLY public.contact_service_user DROP CONSTRAINT contact_service_user_contact_service_id_foreign;
       public          postgres    false    211    2876    217            `           2606    56240 9   contact_service_user contact_service_user_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_service_user
    ADD CONSTRAINT contact_service_user_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);
 c   ALTER TABLE ONLY public.contact_service_user DROP CONSTRAINT contact_service_user_user_id_foreign;
       public          postgres    false    217    201    2860            h           2606    56329 %   good_order good_order_good_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.good_order
    ADD CONSTRAINT good_order_good_id_foreign FOREIGN KEY (good_id) REFERENCES public.goods(id);
 O   ALTER TABLE ONLY public.good_order DROP CONSTRAINT good_order_good_id_foreign;
       public          postgres    false    223    227    2890            i           2606    56334 &   good_order good_order_order_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.good_order
    ADD CONSTRAINT good_order_order_id_foreign FOREIGN KEY (order_id) REFERENCES public.orders(id);
 P   ALTER TABLE ONLY public.good_order DROP CONSTRAINT good_order_order_id_foreign;
       public          postgres    false    225    2894    227            e           2606    56298    goods goods_category_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.goods
    ADD CONSTRAINT goods_category_id_foreign FOREIGN KEY (category_id) REFERENCES public.categories(id);
 I   ALTER TABLE ONLY public.goods DROP CONSTRAINT goods_category_id_foreign;
       public          postgres    false    2886    223    219            d           2606    56293    goods goods_status_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.goods
    ADD CONSTRAINT goods_status_id_foreign FOREIGN KEY (status_id) REFERENCES public.statuses(id);
 G   ALTER TABLE ONLY public.goods DROP CONSTRAINT goods_status_id_foreign;
       public          postgres    false    2888    223    221            c           2606    56288    goods goods_user_id_foreign    FK CONSTRAINT     z   ALTER TABLE ONLY public.goods
    ADD CONSTRAINT goods_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.goods DROP CONSTRAINT goods_user_id_foreign;
       public          postgres    false    201    223    2860            j           2606    56361    media media_good_id_foreign    FK CONSTRAINT     z   ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_good_id_foreign FOREIGN KEY (good_id) REFERENCES public.goods(id);
 E   ALTER TABLE ONLY public.media DROP CONSTRAINT media_good_id_foreign;
       public          postgres    false    2890    223    231            k           2606    56366 !   media media_media_type_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_media_type_id_foreign FOREIGN KEY (media_type_id) REFERENCES public.media_types(id);
 K   ALTER TABLE ONLY public.media DROP CONSTRAINT media_media_type_id_foreign;
       public          postgres    false    229    2898    231            q           2606    56434 !   messages messages_chat_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_chat_id_foreign FOREIGN KEY (chat_id) REFERENCES public.chats(id);
 K   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_chat_id_foreign;
       public          postgres    false    2904    235    239            p           2606    56429 !   messages messages_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_user_id_foreign;
       public          postgres    false    2860    239    201            g           2606    56316    orders orders_status_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_status_id_foreign FOREIGN KEY (status_id) REFERENCES public.statuses(id);
 I   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_status_id_foreign;
       public          postgres    false    2888    225    221            f           2606    56311    orders orders_user_id_foreign    FK CONSTRAINT     |   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_user_id_foreign;
       public          postgres    false    225    201    2860            o           2606    56413    parties parties_chat_id_foreign    FK CONSTRAINT     ~   ALTER TABLE ONLY public.parties
    ADD CONSTRAINT parties_chat_id_foreign FOREIGN KEY (chat_id) REFERENCES public.chats(id);
 I   ALTER TABLE ONLY public.parties DROP CONSTRAINT parties_chat_id_foreign;
       public          postgres    false    235    237    2904            n           2606    56408    parties parties_user_id_foreign    FK CONSTRAINT     ~   ALTER TABLE ONLY public.parties
    ADD CONSTRAINT parties_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.parties DROP CONSTRAINT parties_user_id_foreign;
       public          postgres    false    2860    201    237            _           2606    56227 8   pay_service_user pay_service_user_pay_service_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.pay_service_user
    ADD CONSTRAINT pay_service_user_pay_service_id_foreign FOREIGN KEY (pay_service_id) REFERENCES public.pay_services(id);
 b   ALTER TABLE ONLY public.pay_service_user DROP CONSTRAINT pay_service_user_pay_service_id_foreign;
       public          postgres    false    215    213    2878            ^           2606    56222 1   pay_service_user pay_service_user_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.pay_service_user
    ADD CONSTRAINT pay_service_user_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);
 [   ALTER TABLE ONLY public.pay_service_user DROP CONSTRAINT pay_service_user_user_id_foreign;
       public          postgres    false    215    201    2860            m           2606    56387 #   requests requests_status_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT requests_status_id_foreign FOREIGN KEY (status_id) REFERENCES public.statuses(id);
 M   ALTER TABLE ONLY public.requests DROP CONSTRAINT requests_status_id_foreign;
       public          postgres    false    2888    221    233            l           2606    56382 !   requests requests_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT requests_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.requests DROP CONSTRAINT requests_user_id_foreign;
       public          postgres    false    201    233    2860            ]           2606    56133    users users_role_id_foreign    FK CONSTRAINT     z   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_foreign;
       public          postgres    false    201    2854    199               R  x�u�]�� ���U����l"+�FI�9*=
9Y~na۶̤�l�.�ϥ,�ⷰ�Y.v\\�(ު���*��� �R%V�J�C�5��aYbTbH�?~��`6�3�rAZ>��t�f�A�D*���������љe4V�i�3Ǭ�˯�=v^��*�t��HTz�F�nn���d��XN��vNᝰz�Ԋ���W�۬�M��'�G���N��g҈��e�F��^�1n���kH���4�hvR=H������v�8�����b@1@e�?[�r���G>�i���R�;���X��~�2�腮�"����w��$aۈ�e�����]���Mq����ˢoDǐJ��c�	.v9\��ˑ��<��SQ�e�C�!�lc����K%������c"��ȥ�e�����ȥ�_WD��/���q����7�v�uY�Ѕ���2U��[�Ο�MQf�+j�[�O��R���_�~�H@r]U����������$���͞�W�S�J�
gFwwD�)�d��w�TջzsG�l��vP��vsG�U71���oϴuz��Ԟ{#�0; ��|0��L��>����ո O�:u��f7���O3ؕ��d���bO`Jh���%�f]Vʮ�H.�3IU/К�0M�E���2i�\�wfN���l�K��0�� ���]�u�r1\�[6FnZ����N\w��%N��d?_���Q�v���n��g5Ceq����]%�x~��7mfݰ(��Ns����J���w�*��A�&�g����,3o�U
E�����=������&<�O����2���F�"�^`��3{����|���:��%pکJu�FW| Q	��7"�Ǣu{         t   x�-�91��Px����0
T�km��8 ��	hI���Iv�d��:x����)�<�Ϻ��]�D��_�W+k�a�05�ڕa��7tm��������m��?s�+�          y  x�]V�r�*��I��g�Vb���n:}����g:�z^��jE��7�M��g�k�&8�5����^�18*O�ذ��&ճ�^+�l )�^Y2G�6���%ې�X�q��|����>��#�e{w�����\q�m���*���u�'`��y�5��kC��m����O zcƮs�M�PL�������q��N��4��;���nD��uب#�J7 ���5��#�pP�h�G����q
��s�᠍3�N�5�V������I��w�ܐ���
�ߛ�F?_Hj SAYn�S�B?J2�6��J���I���Z�5��C&�'T�9}k9�P����,�9�O`,�UpÖ��l")Ѱd"�Ԣ�M�V�Ep�����w�P ?�\`�	�41V� 9���=���|
���8ز����k��,������E��^�{�.��*�:<sE�t�;�Q�����L�\��y�ԡW�P��|�v*m߻f*� �CUKf��"?��t�I�L�s�Jf@p�Q����[U}�D�խ��!��F'��*�+�M�^�U}���}ӡe0��XZȒp�|�c�4B�
���������H,DOlrw�J�!����\<�½&\A�JNZ$7^Un��^ ��'�*t GI��!�ފ�} ԕ�=:��1��BSkh�F�C]s�����v�V���E����������u�S�\I�;�MFc�&Q@Y�ݤ��:�� ���%��k���j�HA��C\�uzlt�ТB�?��+��豿O�br	���j����;�k�?��zX��!�MjI�$��x0q٠�N�&�������3�Uv-&�����u0��ր��r��?7��.a�P2O���� ���`��i�w�{��"d�t]xr�Tj��KB���g���ݔ��G�<T�TDOmf��H�Œ�Ie'\4x���=RQHZ�*�{�"jd��ѓ�-����=@D�BD���QV�(O���͞�o��e�L;�%�Z�k��ҹ��t�O����_g�v2��b1"�d�����A[��ŭ��h$�T�^�pO
,s#N��Fiȉ����*H�R����EGٙ��}� W4���"���P����1
P���$�4%�+�I�^D����ɏ��x��{&�W�;1�GȢ��X�v��W�Z�V��+�*ς"���3����t-Pb���[�9��^P�ް#������	?t��.@٫����S��m�}s�#d��vS!8f����N� ����
W�����:���n�Gl�?�`k�,%�e��8��[q��X�2;m/�c���,;ޗ}h��⮖�)�ńF�iRU��&���n?.��-8ߤ���Ҧs��]gv��VU�?�dN      �   �  x���˒� E��CfNz�S55?���6 7�x�_?���t6.�
����j���@6�G����e1��q��:�e��+j`}E�-r�#Z~#�(P�&��a�#��)�����>����`��~w*R�ަ�x���T�_qj6���EW�PX-!���� ? L�ȗxg�5�	J�6;��i帲ո�z��=J��aA~1=�t��I�K��!v+�W�IV��`:�Mo�30C����\���DS[�M˛F[�����&���R~SJ�`�կ�j�� 7���ơ�4��xD�b���&n�|�a��.l��D�fe��U����
�4 ]>���t��L�_'���׎v[�*y��o��V�l�k�[��j��)��x��z���C뱖�4�2��hy��d䞫!;l)/+��-��.?��n��U�6      
   "  x��Xk��6�-F��]z�st�l׎�·
4�"�Ñ�5j���I}���/�����O��
�4MK�c��KktH����q�oN�XP��1��3�+
|�a��a-�,3��y[�o���[�aTG���qDs�CptR�珺_4�1��B�����"�:�ٲ�8�f�˯��[Pz�@"0�Q�w��w@�1:PA7��mJ�t���z�e��y��B��.��}�IZ �T#��^+��hKo�.���@���6��=��/R��� l0� �b�vտ��B' ޘ5��	E��U�䠬B�O���*��)9v��o
ɣ)WMP�t}���s��7�z�e8R�qIN5�|p�Q�W�	�O.B���dd2b��n�}�����N삾6�
����g`Q�%����ȯ��ܒ��YI����o E�<��"����*6�v��w�#f��9@�k����]H^����h�j�6����qtS$ Ÿ�<�8#���-r�C Y���K��V��w����I(���x�e_@��3+tX�<�e�u�"�%�u�w������f��7�S�/�*�G�AX���&��@&b��ϻ\ @lRt"E�����ӭPC�OT��c�¸C6�d1 �ٍ��*�a�y@ @k��
�PlpUn�s'�pԣx.�����@o#��$��>N���U@�@��Fhlp�TG�o�����~��j��QNg�SY$~pt;s�����F�4��������OG$EiT��c�2$�_��|��ô���E���A��Ԟ ���W���Cl��,��0d�jp�0V|�6 vAj�1��W��,��jLK��#��5�p蛾0Aź�l�p*������~����p��O���
N-Ť�5쬥��H|8��k���+  ���6}����������1���NB.��x߆��E>.wW����)����,��p����{<�1<��R�	ȕ.��qs�p;@ Y 03G�3hڟ!��<�/�bR4��i�̀�a`˛���� 8��?Y��A�0]x��oc��2���ɝ�_�bՠX�\�0�<R�C%��D�{���0���Tx��_��^+�5E�,�Z��N��j5P�.�g�k�m|Km�}���%�/�j�\����e2ʗ�
�����]��|��ؑ]���ߟ�˹�/�c;G=	,��7�Y�T|���+��K��;�[��]�`��4�?)� �����F�!Qa/w��B��r�PC8�E�8�$�=�`�~�S�E븶����u�<��&�˅��:���,Bm�I���֕��&�o�4�f��Np�zy[RM�@>L��^\
B/�>�"4��K��o}�4��4���� �/�Gu��?ojH#�K,{�L#���?=�ຆk����#�/�Q��C�ej=�1J�o��۹��h�"�_{�'�//!ToZ^~�*\�ꍠ���-�:��B���HW��2�����0<�m�Q�k���6���@6�~	ξ�^����"m���w!��x� ����ڋ�兘0tj&d�Ն��ٛ7JC!���q��{/�            x��}]s�ֱ�3�+ ��䖀"��ajb�cU<�W��}��M	I0 8����Z�{ E9q�=�k<�(~,��^ݽ�������7{�����fY�eQ���t�e��b�_�?��5~���ڻ{4ޡiZo[���x�c����޺y�{�u��5{�m�i����W�������Ϸ/^��Փ�l�Uծ������j���|����o�[�O��[��Ow��_n?��W�Ks�o�{y�+�=>[�x��^~��(��e����^.�l��h-�E��/��2J,`��yî����G㵦^�뺛IE�b1`��l��ID#�e��e�`k��i��&�ۺ{��[|\~���y������~$�x`���uc:>��<���������k^+y���7�ٯ�c[=��@{�up�K�Г9�7�MO�6m��+������*�>���}�l��6���Y�.̽0^&�2,/�)��j���<�a�U���?�Ul�/f;����b\2Ë�QD�h���o?���W�/'�W�_hc������s@0�f�p�L�X�w�@��`��_�g;cm谭:�[u� �Z��i��+���}[��+��s�_Øq��a �����ͱ�e�Կ/�3x�T ��E���e]�N�9A�bs"QaV������=�2[d�"�G��s�e�AMp���M�$Py�8ָ��s��3�ޮ����%j�������Ǭ�o{������JmQ���2���c�_���w�o�[S�7�-09>���c�]/�{�ݟ�^�{�j`�80��~�?L��i�)`��DP+��e�$b� �[��)�\{��=���8Xd�7��_/>�O�����!rJ<~�@�����#�f�Ǌ��=y���t�mݨ�����{[��ſy�
�|�[k�`����}o�c_\�ss<\ɟ�I� �8����d���(����,����b���;8A:E�sV�!^|rn�Y�H� '`�m�����|x�|����Ձ��lװ+5'|��B�`�ª��mk&"��y��$��F���u�B<�������f�������8�x�S��d;XU����h���;���ᱟ~�o�u��������0��2���}$_��?��,�:\���W^��ȳ2(G�Ȕ"B�	<�g! nyJ����pZ�c����_�<��ڌ�a�GD���r��}��l_\�o�G�%��_���T���G�ɾ&�S=eXc�����;���'į�S���n>����ȧ����x��9-�D�K�8\� ���0�Ǒ����s���2
�"�Jg �3p�IЈ�_6�X��%.��V���,Z�HGG���`J��/�|�������=��dl;���m�?�$��
������k��ʸ0�U;�%k����"h�[:4Z4����k� ����g� ���%�I���,�`�
ּ���BX���ժ2����c?K�0k��]L�s�����H�#���`�=���j��-j� �����~���e;�}۽��Z��̶ַ� ���m��\�)��[�<��\6��C�fd';��ɟ���]��Qb�{��إ�e�s8�N����s��JGa��6�0��OL���� ;�ַ{G��5�Ï/(��_�[�!nԫw|(��ٛ�wm~e��1|*����5Ca)6���Ë�W��Y���θ��	d���{8���8��z��[�@.���x�e�D̟"6��54�C�V^��u��g��0X�l9�u�A�1k����⋂��ۗ��:�X9�/�~]�~e��/i������������OU����%b�B�u)�G��W�<�;���cC�"ѽk��Ѓʇ`��8�F�6�2�.�����!��H`*X�+�a5�G�g��ţ5��n׬kp�f��"�l`�Y����x���s^�\W��q��ٶjxP�8��fk��Ֆ�r�B_%�������sUKr��uv�y���P{�6�̫��n�w8�����t���'�\[��[�B߿�p�[�K �<�a*�J�CX�E,`��`s8�x�${�sǾ�V�؁yr�s��Yd�$Ԕj$M��bđ����x.
�/������S
ZǦi����>���qM�;������H��_����g���+�Ft����F�12�5����x�s�n͆���I�M��$&��9\0ً.���/����>�i���uf�"X�f)R�4A���	�9!��=y��_j���R>�G�I3����;Gw/1�G��(�"����H� �xl%+���!�;���!`���`w���"M?���#��qo�GzL��+�	L2Ko��(Ë8j�X�n��[�8V��f]��x�L.ʂ"��1	��u�����������7�X,F��Ga2���Xq3RI�ƀc���F�A�����z�T��� H  r�iSB�|�Zg%��h�ػ,G�>��[dH_�+J6��ǚ�J� ��ޢ �~�5*b�C���!�7x�j�� 7��͊,H�i,��H�'ܧH]������Ώ� bc�|m|7y�����Y����4ScK��N�f��;�o7����Ѻ%��W�!�?�>L_,���m��\�e?����yF�.Y��|�7�z�3}1�K)� 5s���@����u7��8�IY�R�,p�'���%��h�g��,�/���� �)"k�Wi���m������po�eX���.�������h�����9��ֽ$D]�b��u�z��h�؅~�Q�ȖC��b�/H����?a�5��g�	�b4�1/�A2�YXӘ1��ؚN�b_g?h�wzrZ9r߀{H�f�KuW����ai�~�J���� ��Z Z�������P����d	����z1���-��� lSw�V,���ixQ�l
�x<�|Z�!Ns��ɬ����Wp$l*d~Q�<��\��	�9������R��k�9��|6�6v����ԣq��O��0�O/�:���l+������S��CD����N߯�k.:�OH��&K�C�n@�J���ؓꌤ[ �3�SĐ���#Z�A��������y�n�^�����n������M��m�n�o0���,>4֎�����%`��6��M�S�<\%AD�M��f�dY*p�5Kw�q;���x%�U;��3V�B*��g�p^�3�	^���<
G$�f}h�/ �{ZW��q���ڡc�r�A��)�aC�������z�&��<jb�7@���M*2�jf��`��V/��f����Ġ֊k'�o�vGl��0��0�W4��+�f�P+�63�2�t:�t:�-��R��#�^��[A!�+g�QLB�z�
N���<('�%e��YRT	����/YC��,��U9����_����Z!m�����?�r�7�"������׍�O λ�+2�;њ\mm��vNgC���?L�K��A�B�Π��%���Ri"sX�I�`�1���A�� �������a��\$����"l'A8�4�Q*�Ģe��=�x�ʵ+g<$���
0�� F{א�����-�0�k�]HΞ����r�UնR��� F��܈�|nڧ�߯,C��f�1-�E'���Y�y��%�4����!�v�e�]�)��'�E,���LI'Ś��k��p���M�=\�M��x֎��r6x�7�����޳� c'c�!	�vH{g�?�/Ŕ3��jO����
S��� �����I�Qcdt^,X�X D�\�Ke�|��ő�l��ɬw��Z�����2�"8'��(�IaB)�,0�A8�l��qۻ<p#����]?�ȤypX�U"VD´�iUc@�'��'��?m��<s��a���a;[�Cx;��-�����_k-cӰC�"����	����ʃt:��f4߁�[��S9�C�6|\���`DyeY0	�9�ke���4�Ǚ�����[1v>k�=d����OK) ��̘��`�=̩�G�    Ğ�[���7�6E}dN#)M� �@Qy���i�l��L`�#"K��՞��_��9�LgYF�9�=Jn�oUwcM����$>��D��鬡1�����o�~@����c'���ֿ�7���_����M�za����R�,S�|#���0��<��c_��d?('v� U0v��|?4�,v���?��Ym+^����f�}�r�YxA�'{Ҝ���Jck#]	�_����\�����x�5W��]]%���ef�߼���o�n�/� �~-�hǖ�g�"�)�
��'X��5G��Θ�x0̶1��ov�0��(�&���1ͣ N�G���n��~���Z*#�V20�y�L���҈Qy���|X+����
�,Z��Q;M��0;��7��"�J5�&�=j>�P����^y?�^}�����V��%��Ly��"�D���S��_٬��!�đ�E&�Y�1��dL�eA�����1����R#�����"TJ]wg��&���0%Y=���hO����%�Z���J-�m/�	��^�`���<
J���P
�;���<(D���2JAJ�$�t�/f�!���Y�=��yi
���ʺ�K��k�� U�3��$4��G�JUg��#��"�}&b��
�\z��2C6ڱx��$f��AÔ�Iܖл'q3�j]3��L[`��m��H����ͥ�� �(�q��juD o�,����u7KӢ��lt�EL�D�A>)�F�r�5�o����k[e%o�J8!;	F����H+4e�'zdF�p���yK��`kcCU�P_�>�l'�h��3y�4�0grs۝pOd*ϴ>�i���E�"\&Hh.C8 �1�!6�)�1Mg;��<ݳl�&Q F?�)s���B���"�I�w�瑾�ͅJ5��aVm�#Џ/��_ �?\k�uȈ�N�O�=\!C��$�l�8K��H6�.�w�@�*.?��_:G8��imƅ��s���zw�G)#
,0��� !���-B�8r}�W;o�ǈ���Q�=�$lGGa\���C�����~L��$X߮�=�E�i�������A���g�j�ҡv;��
�+R�gɡǫ1���&G_�{p�/ճ��	e{����Z�.�\�y����eG(����F0�K�ܮ����:Ib�2��3�\c%A��FefR�F��K��M}-QPF�ু=J^G{�ۧ��L���_��Ļ�W�F����l��/r3�ѓ:��j�ŕ�+�YM3���QFSȴ��;��H>r&ޭy4���;F��5k�i��E��<�a�L!tR���-���Q�yۜ�Q�c+9Y�;�i lj�tx��������{��w�|�}�˝��;���3��|�ͧ�w�O����;�PԼ���e�JQ  hB�cj�����<��xn�8���{.㦎��sJ>�C�VD�L�2+�6J�� ג���F��KXk��x�u4��B�tx���ޜJJ��ͪb~xNx�J>7�ژg���J�3��n+�b&M��$Z�׋l�J�%oI�|�]���b�gzZ���/fV�`�9���-�:�x�ш��V���w�"�Qd��j���i�;�|�B�r�D�JK9�y���-\)z8�QR%e�i�^G��������`�D�J��2͟1�4�LzY.�+L'
d�i��/IB
���$ʃ4�Z�b�i6=�'z<һ�~a��v`�^�о�vS���e)I�O�8r?P6��+v�IP,	�b5��IfoZ9��Tw"ޑB.pG�n�Q����,�����u�b!�R���e|�����Zp�d����'������{��HXzH��.� %]�	_�jSFJ�+�&�Mh\Y�������*�;�>�X��^��#��U���i�;���i�a,�l\Z\�Ǫ\(��g7{ eqaH���ұU����k^�X"@_�ι��a�-ls��b�Toi����L�����Y�6N�m���P�W-�����VOo� ��k׌��4��ȅ}KK�z�U�+�l���5j%+g�,������H+ե�-�Īee�}��j������b��.uZs�5E��ϓ J�R:QI4��E236�Ԑ�y�B�ٰ�4R���Z��������"�4�㖒��Q0�?*¾"ؤJ!��vr�I�_|Dw#!��P�|�S��
�-�����P���st�xB���;8A6�%S.�	" #�\f4��:�
��Y�-�XWj��k���S�D����9mJ�����~��hs�ᡛ�o.ĀC�w2ۗ�E� �W�|��ք���+�&��҇z3�Tؾ�h��Wl��E����5d�Nȧ�,�����ٔ�%D�Us��2�D�w���yBS�,!��j�!\b���䔱P3��jPBe1�cr�����+�im?K+�*�>%�Z
4��M*8�YL��\���W=�T�%-}��QmwK��4���`�[��Q&�:ƋPZ����^����B��"��XC�8C�ȳ >Q�e�ۋ �����^G���$�|K�3K�"}e��Gl�]�{�km�����ũZ������׀-���歬o�{���ۻnv���ڴ�@ q�S��u�,/I��0����ٮ��X7$(�����8j�g)B��b�H#S	��Yф~�Z��3u�!n�N=�����Hd�Wӭ���6C���ht"iH�H����m|]���y����7�ە�w���/�<K*��!�R�K�Lp�/�E�ې��S��Ih��NR�zW���8(F�2�d1g��I��P��^��S����Nǲj�=k�v�c�Wh������G��l�t���i�w=��_{�5�ڔ�DU����}����w�4���f�bk�L���XB!C���$ö��0�'�<�"OU U'��2�N�7��h'2���`[��4p���'g�T�	4[���F�
���S��J���%Ӣ��9�Elee��=ֽ+�<Qeʏ#�t�XZ�y 	zq4�o�d�P!��m�e(Yo��S@�dhq��@"ͣ!hR�]P	h�`1�I7(�M����~�"C��v�!=���hgwx�²+��!8��6��l�Q�5���^w���U;z��r���u�6V�ԩ(�eX,��Dr���H�邧ێ'x��5
i��%�d�r��=	YO�إv����K��ҝ��AB����>T�Q>4F��x�g���cϿW�B)�3G|�e��^F+�����9�r�~���C�'RJ/�i`��/�������x��e�<-8��a7��i*;Fn�մ���*TR��q�x�ҽV��i��9�d,�?���_��|J[E�/usɠ�?v��7�OJι9����HM�bj��9p�-JV/����ܗ�^ 5O��w����<Mrf�pS�lr����ľ ]��ȇ�َ���jVG)��6��lT�'	��x��x�^��t��#��������Imp�Lq���tm�z'f)����v�H){�?5��I�|����i���ꅛ�s�ԝEF��|QFQ��$c�,�87�p�8>�G�X}�4�Y���l�$gͦ7g'�Ꙥ�#�~1`�R��،.O�א��Ù��͊T�'��m����J��:��0�ɸ��]�J�cM"�г-4��NrY.�O��G��^��qop��U��0N� �ONu"hOY���(U�o����v��o\ݞ<[�Q"�9m-v�5 �����I3�7b�}BF����Bى�G7!+��f�+�H�x؍���"8#S/e �\..�<��Ob�ElN��B���L�ǯ��7E8=��q�����(��5��~m�1x�e2"�zle�ʶM9�.���K©uMc�:`�Y��rZ[�5�î嫚^R~2Π��k�m���N�����6�)�((�cU�R;�$�s�9�����Qrov´<�"�=r��b2�{"���fY�q8H�t٘��e�Ŝ�5���KiDL*#nWgR�1ž���5 ��Ab�����F�k�i�Hz\�kfC!��u��/E�B��G��9��x�lB��β2/�)���[�E��/�y��w��Wy��0|���|u=�dJ|��    k�w����d4A'.�UJ�4�|3��u|�j����0ڦ�jV���ODA%C6t�v��8w�$�#�)'2Y&�����?D��yZ�i�f�}�9��N9���Px:��x2��
�ߒ'ݳ��1���G���m8�'f��$��V�l��Z� ��4G����I�p������فXR�r��;���U��Q��rW�NE�]9�uY�_�(���)�<-�r�7��R��Hs�)2�([���t�?���>K���XoO�gv>�Y�aT�Jفv����m%��q�Bl�FKC��v�F��tG
TB
nue��q��-Nv{� ��f��n�(�����žX!pM�Te�Ժ�1'7�C]d�IGLf��(?��Y~h~�1�拃��'�$jfI/K߇�8�p��Fo�c�i��������n�0e���Ì�Ȯ(��j�h��EpJw%����-q�A��B��H�|y�W(j��6�ͳ�����]�!���goJ
Q� =�>�5�O*���֋��&�w�*�S��r߈H�Ϡ<��}����><8�Q'���bɔC���E@�<��K�,"�{d���9�W�S���fD�d'��4݊��-��E�؝p���&��ͭ�����<�wF֨LC�8鬝!�����3�p�U Z�YtB���v���n�!M�C^�@إ�[�rd���g1�4�z�3M�"?�E)����ʄd��|�i'V4<�32E~��DT���t�m:���@ (�iw�Uaݐf7�b��)="�U���W�5ju�����g�^k!�u��Ɓ%R�J�"q
��g�\J/A�~�Ub�jcd���N������t��B3�|�XF�f��<a����2�q:�F��#<�T��*8��c�am�2�� .��A�g=_Lc�W���6<��"���y���bS�3Gf�T0��';���غ��1�	y6��@ByR�g�	՝$|W�\��n���R=P7o~]�.�̨�y/�5�������2+�j|�t�[
�C[��/;3��"dCg/ ���$ 0���خ�^����y��y�d]p�YY	H��,��������Lw����%-�Pc%u����;����6Nu%R
Y�v��w�����*<��������~:�7��e�O�"�ŖD�Pɘ�@5gg&b7��X�l��l�|�X*ϥ�QD'ۦJ�G>�4�9tTo9�~msı���D
z��!�~�����������g�J+���{XwK�P:�4v����'��O�ҩmQa�^��ĕA�4�<BG�����9%y�l�9*IN&%a�R�H��g� �3*�����~F�+��W9�ۘ���=TO{cl���\썮�X�,���y�QKd��kc�6��@*��q��*�Eg,���D�e|��^�H�(�1��� �F������ά���iSW+�pm��3��O��ך��ٴ}���*>�uyT6ݺ�I�[c��׃���ZA�ܾ�A�gݶD�����?�A�"�OIOwR$�}�o?K%TFB�`'K��K	I���Ĺr�6sd)�[� ��o��)���`�]4��l:v�E��O�V���<�sm���,W߭��*2��i��i�L���|�c_�m�t&�tW�gmj��WV3ʩ��������МEs�(!�~;���3��l:c���='#5�*�ӉN7=��9���L����#�gW5hYy��2\�;�uOx��������V^pˊK3�-�6ɼ��׮9��?ʤ�_?��7mTN���|v���6�u1J$��9�U��D���GK��Du*���x�"�q��h��,�O�!�0	b���ߵ��v:�3�l�������p���ß��#�f�?�_[,�����кu��$�v�Ԍs�Cc�d����B�@�;�
����9'�ښ
�s�6 Ǥ�\[+��f��<���AxX�0i�Y��D2=������pm6G�I#��ֳ��%Nh�����F��}6}d;�H�MR�P���9F��:�����G2�1�B��C=BN�,ю�����S�,�l�]^�=�i~��Sʄ�CH�.�	�c���#�-�I^z6ю��[��	���;���t�c�v�3��L
l�Z[�8��o�y�ƣ��e4��,��qX[ֵRú;��Lk�5�r��'�
�����.+'��%��]C��~�3s�bFX.�rL`
V�4+_��/,�{fZ���K��Uw�),�NҜ�aw���s5��z�k|��Xa���M
�/��a�gEt���~����tq��0$�#��rq�#
f�85'���L�ڞb�Y�,��33	{_��|]
�?�J)�@Xݹ�<�Ô�gZ���<]���5��oz�0�$8��;�=�*y��g��Tf�:��Z�dԡo�t�¦����?�)&,s�2�J�JJs��|qY�C��/��#�`N�Q����Y��a�j�5.��ՙvi��������ޘ_�'rg�l4\6�LMW4�?�.W62��gi>7{[)�t�M|�u�F��[ɋe�-B��8���24iksS�
.RĒ��y�+�_�yA;^n
�m�W.��Br��E9�o���^���7��}`���l���.��}��kC�T���R̽w�Qְ�$<�R�"s�g�͖�BNIlD�ks��$`{��Z_6��Y��z���	/��I���v�(�J*!��y5�l	8�bu�3��O6�p�}�6�ڃvVm�IA0�l�:������ rE�F��H? �$�h/�u����ų��\�6Li5��W:VL�Ƹ�i[o���܎�ʘ�����U٥��LF��!+ϩF�7�@���=I�Бg�4ן~~��>����c��rM�:��0,j�"d��٦���gI��';�sNcf'K)��$8��%���Č��JJ}�_qc�����ߝ(����F]�/�S���(�%��i��8U`M��:�/nJ���R��/o�)���bs&�	��t�Z�̰�q�s����
sD$~M��@˼���l«tI��2+$"���t��������I�[�c��^��PY$�B_N4RVM���ˣ�z������[2�/"��q��Ɯ�̂5˯���2����_�H,vX�
�yBsڅ�T9-`�g���0��b"���f��|1[B���[I�M����C_�s��p���k��;�J�3�8���h\�l_�d�-Wֶ�nCc")��N;Fd�QqygT�ř�&�f�ܾ��W<B��gG�&8�e9E�M�"��'(h��&�����!� S�*q�F\��`x�a�5`X���ɰ��@X�[�c�dO�r2�Nt7e�VLn��ĬI�Dʚi�m�7�Ӂ����_�\'�"�6S�k�J;�j��`��%{�=�w�`]6g#�t�z:K��|������)@���X+z��6��V��P�!<<�K�������Ow~�no˟�F��p'�w����K�	���YE�7��&y_(s5�g��_9�lr7�ϋ���mu\�V����`M8���p{�N�t�Ǚ��w>]X^������a�Ψ��VVyLt$���F���>�qG8܃�O��q���{q���F�n)�&���m.���B��r=b��'�0��lƛ4�E���"8���BƑ�`1��)1͡�	k���W�✢��ؐ*1R������[+T qo��-���h�n�~��-�?�r��j�/*�{Nn�1�4��}��Jb���;*���/��9�]�Prh��l�{j���F;f��S�4;S����om�g��f��!U�����-�!Y��G�;��+A������G�nvL�)6,Hvi!i�D�7*;�GX���6��A����l����6ײt�{�+(б�+�\W(�O(�9_��V�X5䤳i9c���'Zɡ��d}�qnNv����~ e}���v̆��zq��|o�g"I3����7*ܶ�XR�0��u��Z�ð��ZD<CO�pRq���۩��ˊq����V���+���p.[Hd�X�����U�ra�����ޘ��ƽ(�5��ͭ,������!m�L��h�[	} �  ��$����&[������5�k�^�':�&�5���jM",���I'?A���D�<~��/�_��K`�,�P{�(�f���5gÈѨa�4��F��������Qa}d-��0�jG�h���lT�j��}�q8d�G�y'����j�_W)�<���Y!"�ݘ�4���."GAl�[��-�'^�wR��f
W�IS�kԆ��g�ރx��P�:��J�^"�]G	Uն8���[����e�B�7��<�0��SIL�rmYQq�*�3�������\����I��ON�-���lD�Փ�+&	Ԣ��??^/�}z=��I�n�}ݮ�uXu,��I7����ޕ@�D�+zܢ�PD%9m1]\�a��WQA��e�ۨLk�Z3VuuHt�8:�u5�q�O��6���ǹ4�d��3�R'ʯ^&:��[�,�����ۈD��D�OfW{�{:c#�V�Yn�����C� �aPg���Vi��m��v��4Q�LX+��.�.�切Ǧ�Z-���ͩ�����	��`������E�8�byBE�,^��[r��؇��h�ծŕiUDާZ��`��v�+{�oU-�g2�y�'�؏C�\ �:�c�'���Σ�Ŧ֧�8�eػ���4�bF�7n (��Gq��2�\q�+ٱ�[�"��$�G���3��<�'ZF��g�
F[_��t�tZ�{���-Ͱg�w�.;Ix�T"�R<n���,�Ɛ�RI{Ofo�����7q�ē�w��z�HNu|q��־��Xs�t��+�F�8O�x��0+D���w�ZW�r�ȕ�S�U��p���m̳k����ӻ�tl��M�Y͠�w#�*�nٴ�������\���ǝ���W�q{}�,��)\�6Y���2x��&�����։
b���
��H��C�$�6�OF�&=�= YY�EZ/��uOcө{z�{�)tX����Gx��NnR�~Q&j&�c8�l���z:�śnڢ�VEXk�OW��m1�<�lQ4�2�~Q�8��D1 7g&���N�-�i�&�U�H�q��0|-{���T���y;($��Nsw�;rȻ���5n�R�3˱��(�8����� ;T�RAw��%���>�pF�|ya��ՍqÙܘp���{i��Tz�m� �zp��l\��GYO���b�t*~�4�&��e��La7����t��q>z{�����D����Xw/�7J�=���}_���r��ݍ:�w��fy�t�zp����!L�?A��$��m�I�»��щxL����ޤ��z�
��e���GXҝ�����������V��p�&���GF'��9�[��LZ[U�v��I�̈�B&�l��7,����;�N�X�+tt=d'�[.�8��J!�F�P*3[�Q���7�����>u�z�u@�v;F'�q�k�711�WSgjk��Ͽ��X����LEd�J�v�N��8;(l�����]cw��ל�h8�%���t]�]b������w0���/5?�U            x���ˎG�-:���Fw���?���D�	��li���J\V%�����_���(��&�բ(�,"�}�=�-�^u�~��>^��������~�x�p���r���>_���������i�]>}�������������4�������~���R��7��ϧ���������~;==�q?��_������q;=n��ç����=���_�	��:��u�����#��p����x�m����z��߽��jȼ�T��R�5_�o�b����������u#�ׯ�&��?伬�%�G�q������>�Ώ����|}خO������)�Z�j6�������'Z���������H?���j�VW���A�����������Z����?�:��}s��q��><O���-�|y_�������������ß�Q�~Y2��,�=��[}��ǟ�֥|>]ϴU�w���|��ݿ�j�l�������o���F��~;7u>���Ǡ�0-*��!����Σ�,�Mߑ����\,�����O:��O�s5wy�����?��~�UwH�^��\��[m��;�����S�\��n+:T������$]�IJ��u��mN�:�yI�^����N� ]��8��2�m��������������-��~�T���r�A�����v�v<l-j
��Xԕ~�k�g^Ⱥ���t��c]�ۉW����/ ������+��\n�A�����O����~:]��u���]�7�����z��u?�W����g��z(.Oτ�]���Wah�~�p���o�����X��
d׺��i�3�5MX�_����|y~8}�t�ī]w����u�\�}D��ӥO�W��h���d��J�;�z�D��j�n��u���l��h�φX�և���x���J���OʘS����'� ���gZ�>A�8��;�S ���r����W|�Ԍ��a���C_	/0z��;��T;Щ׳��4ɻ�[��~��p����݅�Q+���'�z}��7����������9�[�@fpe���|�~���_f��Q]��Ǻ-h?^�s�qX�ϑ�1Pvя�<�3Ƈ�N?>�#k��k�N{kx��}8��Ё~�\o����W�`;J�ر��w�;��������VQ��_t��Kn)T#_�� J�8����zV���n�������W}�2𽺰���.��B���]D����j�K�]�n&�?��aW��!�j5�g^l�����V�Gړ_?�'�T���=̐x���8-����~8o�%#��=F�#m�aL��C8��&�`R�`PPA��2��]�/UWP�DB6^F�E|@��Nt(�9ao�ݝ(�1z��9к����a�oXm-	[�Ȫ�.��w�-um�]ݣj��oO�=���TϢ|�jyMm[?��<��.��B�N�qD��P2/��N�,�x����������I�I���v��H�&�u���?l5���9���=��ԙ}>=VW�8�I�� p����M�M��ɠ;�'w�K��t����&g�?x���
%��!���wh5v����M� -��뿩�3 S�h��ћ1먑z=���g�eX}�,t�Qa#Б�J�?EV5�3�2.��U�(�I�/�ۨ���ZʠJ�ht��/�NR�bLs�7�<������rP��8��6qZ �����$�=&��q-��@���&��i�O<���GFt�M)ץ�M�p��2��g��$uTme`�[��YiS��IZVB��'�(�JWz����92$=��|�4�E/�v��@���tn�%�*:M�&[�C>n���ҥZf���|���}'W��*���r�	�+��~tk�䁱�^�.O��3�)�!i-=l|���L��݁�<����C1�J�G�ki^m����1�,���r���)����o[-d�c9�g��A.a�Z��>{MBdq�#W�D)�s�`�}�@dq��Ex>~�՜��@N�ɺ�<�1���?�gJ��[�6O5�����N��G�����x�ݢ�\$�Q��Ish��Qt��y��Α-�OC��z1�]T�����X�p�6̬?Pr���9;��0Z�A���Q<�XK��j�w���|�� ��j�P�v��VW�)P��%����Y#�<q�כ��?����WM~��Lr���;7l.(�U7><v'�Y�/A	��k�	�����@��t0N��'^cټ�<s�"��)����Pw�?E������05w���|MJ�m�i�z;rRWb��{5~�;�[��) ���H����+��'���\�¥��������Ԓ���:d��#�G� 鸰������Ro�_I�����☰8��������=⎖�15�I|�1r���3���ߐ�3[���Τ��	��T�s��R�b����A��r�6N�)�eI<E��#Wb`O�Ǣ�U��	#s\.\��ß�&����|�M����nK�؆��PѤ���I�>�`e)t�������]��q|�p�������K��v��۞��������^/�d
��(��Kҍ�~G��>�B���+K���3��o\f��>z?�IJ�*s�{\�k��^7~Eļ5?#�+^�s�Mݢ׏����\�>y&/W��(�3�[��؃v�Dl�k���W� �����(�0$ (沷�q����>�o�ʼ�htș���!{-�V���Q|+r��:��2p�������HMr�u��A¥┋A���2S��_R(3�']8��z�������z��U�d�����]O�'��(�/�"*i�.<zs/�K(�aqX/7Δ|����'!��M^*�NS��i���q���R2`U"�<M�����XR�IMU�P�\6̽T[�$�<:�dN�pW�j.�Ck0E��ӯ�a ���r���C'.]Uc)@�\̀�K�r������M됔.t*�QN�!�*
���VFh<��c�<��0a�
l�^�s�Eŧ��y%�;�º(0;����d88�D@�209NZ�L�2b��v�\f�qq6�poУd�m�J�?ߙ�c�W4�D@	�dv�Wn�����ⵤOYɖ� Ud:�0*0����#Gu��Ք`G��9-5��~p	9x�}O�K��0��y
�3�ޜA�S/��rM��(,Pɶ�go���"d�����r[��R�d�5�|�n�+�2��� ���uEء�j���Yl�Շ�r�]$!*q�t
������	軮OX
���EaJ���[�yKr����2vCf�g�S��Ɂ�O:w��Θ�S�	Z��dp[���n�$��>��lN	�s���6_�^|�[�r<�<��V�n�e�g��g(���s�rS���HEDL������]���*���W��l@N3�3��>���xԱx���'�JaOp_z��H.Yj-	�>������]P���;�z284�(^3����T�ы�[��߰M1=D�J�B=SS* �%�gHY�ޡ�l4�%�(�ܬ",z����}fIs<d9�M]d�����Y!zS݀�/���e�62�r�WK�n<���2z��_غ>Y�ǅ#g!4� G�D�=��,~�tS�.竻"�B���c�
'�+�sВc�[�:�>2%r�E*b����(�L�uS�]���hP��}zs��%�-͆ݐ�>�R��|P�Up1������A�>:F�������B�4�P�ŋ ���#�׮��eIúQp�T
h������$(�OH�m,��yY�����rk��d�@`{O�!���ϟ^�	�Z�&	���P\0�!$%�?�XX�F�̒�<s�y��.����QaV~�%ap�ެ�\!~~�~�:J�:ru�ք���r�O���b�T�#�P&����?�u1��G�����		]\�p\�^5�\pwM�1쪇�����:�;cV�|���>��8�L=-iPƾ�����b��D� �MQ���}�Z����lР(���Æv�N�8��6d>I��T�H~]�8��/���`    d3;�}"�I��7eD��hH�v�18s4Iv������.�>��q��6�cy�H����t�1�r�՞�sDL���$��^`���5�<ۥrS���4A���M"�yn��)2��KaS���3=A�����8�_I��F�lu��*oi7�Ս4-��z��'���f`k��U.wD!t;�����@�2�A||�M�ϔ�C�V��n��.��j�^� �V�	�� ��[xRjO7���9�	�i{c���[J3��S��1���ibQ����3-��!¢gȀ�%[����=�'�!K��%�$��|�����25���UvId��>"�Ϟa� �a�B��[�=rn�5��n��RB�G���~dO�eZ�����冺�� =���T�$�}kF��k�.��ԗN릈��+΢K�!@u���K�	'Z�dE(%~4P/�k��D>z�)���`�+Uj[�Y�4�?���朱	&'-~��ѻֈ���ż�X��Q��i��29&�X�Դ�i_p�p�Կ��a�4��V0��W�=��,W�0/�-�YW�<�H�$&��q��U�(JM�v�_�Q�]2�t��[y%��;Ј�T��!�cuKʦ �O��iMn�g���;\Zj�	1��g ���0u��4c�M`�u�fyƦ)�[2ж�߿vZ[��/�\�G�0�K��(t�:'1Kg���H/i��=��D�q�/���_q���$ZMϊ"��S>�ȭ�����+���i+he1�ؖe��MnJ�����E7No�̉�����+vԡ%�[R�7��6F(��ucsQ5�@�y_2(7�Q�~�M�WnS�
$�����#��ح��7.�𜬈�������)z�2���Cd o�|F	���_`� ysP���+��k5�>�w�;>�|���	�5��N�U��2U}��d?�p;�8zolGi�7?I;�7T�5�Κ��5���O���[ne�J|�~�n��T��kI�=�_ V}w2���Bg<��CuYÙ�_}�j(��@� 'gt�:����j�)����x���ݏQ����"=�;�~�޾�d�j�A���ʦ�G`����`�^�	���A��P��0^Zv΀¥�ҧ���C�����Xv���BY�	cx��:k+�Zh¨2&l�BR�=T��l.��G�I"�Е)a�D�s�u#S8ED��o�C����4܂8�̉����W��F?�aX����K�ve�l�.�����<��m���$�>Iݟ����_ns��ó�������p_���Ъ�K���ާS�xp5��pȬ_�Z8�#�9̛�@��kQ|,�k2�B��)���E�;��eP<�b�I��\����u%�)Z���`$���I]3 T-���s�8��Z�z��� ]j�b(�rsXÓ���⼎,��_➓�#��D%i	��W��in�����8�M����ӗ[�@e��CSfI� /��}���̫�-+]�88q�<����#v|�/9*��)���5^Y#��PGt��!/.�3k+S�7�Bdc�5iϤ�������K^��.a6�@���E6��Tdy&���D�K�W����0[�Q�v���}u��eJ���bdr1�GJ深�j7$l�����Ġ���P���*�D��ɷ��$��i��:�|}�ݔ:�ъ���q

r�����]�f�,Z���T�|�����2�6Fk@Ͻm�[����?h3
�'(�he!�[�����Y�Wڽjc$ R��-��f��g�QU�$K+�~ T���3�26޹b�$����Z�,u���~h��I��Z����kTI���,��[����{��qH�t�/�1����t�Bne�D�Y��t�h|R�aF�>.](�w������bM��3�� <]^��T8�E��@���2��:x� ��j_���|���Q�H�\6�:I�̤\�uu�fWHd�a��D��
���"�7-k0���VG��#�!+L���15�m:N���J�'�'�0MJ�/m��V�<�vٰ�/~ٽ'�!{)���Z���	�����:n�itq�dXV�)�W��k�[�)ռ����!4�
�X2��w���T�NB�����SϮ�7�~�xI�v�j��0�*ħ2؄w��I�����h�v�I�G�W����*������������J����f�Lg���z����3},M7C�J�ZZ��^:�&�MBᴎ̚:p:tZ�c�6��
�T�F���P��X��A)�bq����O+�z��,��-I�[>�|u�ȹ�|H8�P���-_dI��'�̗[�#�_8����Eq�eL6�ʪ=e̿�Vh_ڽZ�Ui�z��,@Oe��׋6���	*;�ZzW?$������6Yr�<2/���i�s�7O7�g��^�]�_�S�P��3�}���@�"u��JH�K�z$�G�޽=��(�+�l9�gsHm�`V؄"�G�(]�Q�j��M��%o��<�o�\��aX;)��l��<�+c(�<!H��QQ�Q4I���d&�B%��8v�`P\�`��گ \�)Q0Ln�<�k=(>�����R05E2m�y��q���|N)�Z"�?���+6~JS�w�;�K�����e�̫�=��5[,J�V�YK��GV����Y�R�=�3HL�
ŀyxq�AR�n��|I������-F�vd�/�v�՘��p��7H�V��Xo�C�sb�N{o$%k(�d���鹀[@���d���j��Gk:1�����,����s�9��43��4�w	L��S#O3��`��i�~��?���9����X�mNhc��;�)�MS)���L�u��C�oU��rĔ��'[��]{�:�� ڄ^S��-%��%$�
�����R �!z���m)�.�=�#�"=15�����>��(V�`�����pT)s���r�Xkr�B���Q���,���+F2J����e��%�}�0��FOc�����i�wr�nP�V�/)T�<����������ڞ�E��~I�"z(�D�>��(��2��� D�R���P3����l�'hy��$;)4��gOE���=��j��k�6��ؒC�Z��0�-:�%&B�����~�!Tp�xO�2Z�MBnޏ1��,�C^~z�n-���V��D��B2��'�~�pNϐ�3���:h��Z��v����']>�K\��R�v]6N>�I��`�	gg�QR�7G!Z뤷�t(f|�%΀.�n��ûHe�,��f7~&��'��vV]�k�7��\Ӕ��y��̻Vg���|���xAgj�`q�a�ݰ�55�5��C��A����ߎ��D]$�5�K��wД��歛D����"��4=�M�5I�DJƜ�Y��^��a�{K���ã�ْ��KPb�)T;!#�Y5��X�t5���'����ɺ�k�8(M�M�`�(���-���kurɯ�˓=���z�/��֥m��ܻ�|��x���K�[L���ܜHl����^���R:_nv	5ݙy�d;:8��FN��
�=�5��3b^�ƑG"m^��<	E�ŏZ�l*g���r�0VhzT��;]o�,LA��[����̴�(�3���P�К���<��5��f�u]���U�7���׭�`�YYOv�1>��Q�����xL�VDӒXG�%n��C���A2r�h�F溌���-����
8>^V�Jv�̆C
��q`���g/�5"&�7R4��v:�~�7����s2m|uu��qR�T}'�K�Ӗ�Y7��8����!I���z�"�1t�8�؆�d.Dk�oNq�;Y��S�:)��A�L?�pzp��T,��T�+7^�pH!O�VV�	7ae\_����"a�9H<H�B�	fhp������o���sb�A���98o�x�z	�%*:��\6��nz2�e���Z�Yg�ٚ�Qd���`��@�11�(��q�Q�M�H��r�(�@���=��sb�y]���Y�R��'V浗Պv2�I����̋�6�9����j�bI³]b%�D6��|��5��mǓ��3do���    ���	������qz�#��'Kk�4DP;��{�$b&�-E����|q)�Fdz��!�MTv��<�)��B�i���@܅�n�_��	���n5�)��%rH9�|6�#u�%�-OG�SP�Eu`-�Ќ�O���
d�V4R��Hдµ�s,���Y��%Z
������1���������q��׻/ݟ}
�&785S�%��<?�ɭd0JC(ʍ��{j�����̖�(7�6�Ч@j����ig�d8��|&�I�|�R85�\]�V���L\viSFs�d������']Ĉ���� ��?�7�:���>ǐ����=!�Vvo%v7�d-�_+h'r˩d=��NsW��aH�$F�?6�L��x�M`kÐ��|.:
u�Z��
� ̹H1YwИ�>}�7�2�*��&��s�:�V_ G)��z"O6G��Ð����6/��-��w�@K+'�ׇ<�#�m���Ҟ"�M*���aH�
:ȫD���X�H|�a6���UJL��B����)↠�X?��6���&�H(�Z;'������N/+��n�P̌���c�	�Q1%8Y$K�" ��������j���򐱼��ք��ňh�d�=oN�ƌ�D������)�5<624�vh�p;��]X����-�޷<1�����x
н���}l���!O|�&p��P��	
�f��1-��H7=1E��a_Q7ʦ�n�1uq䌉�Vfg-�쀯9��Ҧ�ѻ63�(HW��9'��|oDde�F�Ӓ���#(��!��}۟��]YЪ�Y !dosJ�4���V%Y�fX�.�2�`j�b�L�a��gROm'`K�`jJA��*�_�$�g�6�a�!q��l
Ȗ�!D؂��V:p���(M��]�JS
�@��������U+�S��
`�m�mÔB��Љ��
���X�hs�:��Ô�:H�cC~�P�C�Y�~�#!�)�[C�uִe3UY<c��S��x�Rp�S �B)��U��Lx�ta�ڑxu�!���9�tpk.e2
��2�&Z�_zCs
����+X6C���2>Om�S���.y�:kN�5�y��.�nb'�;p#ɛ-Ƨz�*Yi!f�)ܚ"�+U2�,�=g�t�+Xs
��`g,�7M9�q��}��bD!���#�y_��6� evs���b6�����q(Y_3�!i.�$�h��FD �l�$	?�Q��4�uʴ't0���������:@���7+���v�kl��=�bN�M�G�#��dϔ�_��W	�X� {��rOLЈ.	9��-�a��c)J�i"���aU+1!x����l�e>�ݧ���!��!_*O���\P.{���`���	M��R=��;˔�p�.�����h�	c+�0�Z��3EQ"r�v�˚���t�r��"Gא�y�R1��~K&ѳ,�g�ƍ���~��@��2�rg�ڞ�"��qyD���(�H�Jj��(.l���F�pP	��aԃ�H�	k�\�,�h�Ö<��~��~(~N_�"0�ͮx����gq��f��E�$XO�lP��G�
�&:�ZߜH��WG*Η�I ��!�1�3_S ��x�Y"`O��|X���R̎YS�Ub��̺��[؝f�6�t��Q9��՗�t �ơ�:~��Y]S�H��u�ph���k����ø�(0NM��Y�˰o�)����~����"mr�����.\�j��	y��]y��ۣx�V�̿�㙪<Pj:!�| 	7̾2%����@���k������5��5��J�̄`x,�Z\�Q���]���]J8�mA��Кg�8�n�����u7jt��?��0���(~�%�$"�kt��j4,j[ob�dԡ1���Phl�mV��K��F�DIhq��=��ȸ����(EB
2�5��Q�XGn�̸�F_;��RI\7�iWVf$�W\��`���C
�z^�Q��\��c��쥀l>�l|���c�q�PWe<� m ���� �YW����7��ïh����F2ڜ��� �:�R�)�I4a�{���Q�+�%�~��� ��=�I���0�D6H
j���
{�7K��$����6i �1�!6e ���,y�p�*n�:`<�V���ڹ߆$(���̌��VT�ܳ�����/4o�(��.@K�If��� �I�$​/V��������<W����?�ܔ �.�H�Z՝r(%AU^��xQ_^��8:v)��al;>�f�HXp}��WD�EL�1'���,rp��Җ���e=v)�ZBWg���K[�q�K��K�M�W\p�~A��l)��0�R�3�D�f�RX�x2�z�(��+��+ɹf�Am�G��'t$Cn�LSx�ƍ8Ҕ��+$�%cr��6f�m�N�~y2l�a�	#����Q�K��Έ���JO���w��z(��\�*ʬ�%r��T��tE����!��� 7�	7uMTۆz�ꏔ3M���X�۩��5��$<�$�gGP��|D��P�N듎�oOHǕ�0@~/�.Sp�_�n���uR�H����,P�#��bޢq�C�4����1"pd��j��W����3���$�T-�>FCx=<���P���~#�x3�!�M2�0�bSh��v��y/�$�<e֧�q�P�:hJvҰ�3��_��d-�9�
��:<٭�Q(��!�E�7�P(Fv�(z�}&T_�o���'�C
��&g��p�X1WK�d(IshN���}�M3�
�J(o?�B�q
{�S�Dz����vJ�\H���L(K���vx��L�P�"r�����5���5�����f���U�7ھ��}�J���p8�y�f��}hT'>�c
U@��k ��C�gժ��������0,��7g�qVE��G�",
����2�������7��4���[�Q��Z�j{�JJ�3�d?5A��&ܶA��6R�8Ja���
�Wk������Δ��t�-����'$�oRR'{)��CW�0����I���1�.Sd������j�����x�L`e�xe�
E��X��{q���mH;��IN)�Y���u�[cs@}�ws��HfS 4�;�.��:S�s�����8�g���Rq�MA��V��t3�)rq��x3W�c�[F�hn1��B�%8a3�/��쿴Dku���ȂXKN3��=�]�dQ�e�`�9gl%�\GrA�������d�t!�-� .+ٔp�]�:YZ3�Jd�E��q'��k��SSMzy;��Q���c�3�R��N�U����Ӹ�!e9X��.�(�E'�P0�&�m&�]j��>3�32��ǖ3�|��>c�f���y�Lc��uk�yH��	J�UA?h΅�ݦs<�c��ٝ�<�WoUӏ(+�Ş^���z�zs
�z`�2�N��Z:ѹ��{M7�&9쉲�<�Er9�������4��#"����1�O����Q�`Q���ʩ���0i�J����X��y�&g}q���w��Ι=�[2v�:5/�`ьB��r�XZC���G�\b&��~~���	[S�B��{���T�ȇ�����|f�-���U�W��I�{\��T�m��R�:��Ӳ��2�
=�X�2.cn"�g�8Y�u�B�I�4���E˔1:����j��d0$�t�#%�
!
�J�|�S�Ё�+S#���&r��䈱�N�d�cWF�.*�D�O�CGaוࣜ�y��q��D�������G��K
��x|)�߇omd�ߞ��^�9����m@���m�����z^�5j �?��e�5ۓ�L�W��d�[e�ٽlU^���ӳL*�)��.E}:��!ف5R�Ӭ���&oM
�e4Nǚ��>2t�b����-UN�	����£i�E<�KJ��](�o�뚂���Ŝ�P"�5�s{���Y:��gS<j�[��#ϴ�Ei��
���<�Q.3���ԒT#K
e��Ծgm\#k�X6�� ��ҋ0���	P+%�x�cIA�j�҂�-RB5q�>`��ނ��[�_���l�D�ʾ;�������8�e�X� y4̘�ps�D���^1    Y�2V�Rs��|_r���rୃ�A_����2��%� �n����f�-������,]g�uU�� d���pn�gS�,��03�u��p�~;F�YyM�̊�&cKI�8�}�L�krwW�z�I1S��3� �6:U���s �5=s홢g�K�e� �ˢC����!�9�5�}�
<8���S��p�c�:�x�IW�9o*1J���U�0s�!Q�2�^u%N�m	���C
��y�J�i!��R�P��6_�0���-y,\lx��q����E'��S�	��8NȚ��F(?�׼&_S�!�j���џ�cgzo� �gJa+���l�����iTZ���W�q:��(s����Lb��Gg4��@u�CL\�0a�#Np��=�uh�����ʷ�h��8O�QпG��S�B& x��^:FrP��(��&�M�S��-�<��z��L�PīB�#ݭ��S�V�I�? C��,f��R�4F���eLŝ��Λm�%��B��i:^V�tn6��Q����B�d���N]
�
4���>�'궲n��5�]�&�(pq^�Ȃ]�eM}����r�Tl݅��~���[�p5��>B��ab�?| ���T���9�S84@ 4��i�z�x;�;:k�U���
4<���E���ܵ�aT��5'e��r��C���\�r-M�Y��	m�#NU�a&�����pr�2 i�U[���|2�F�D�N�����&niuKt��hD�ld7�A3�4.�'�n���QY6����0���G0�Y8��
����3�ެ�Ҏ�=�c��6����7��09�9K��mrb]����?�1�Ы-�>���͢�S�h�/mG2Y�;��r�3�_�n`�����1yK9!�q艼S�K�K�aJĢ`;��'a?�r�d������ހx3L+c�G�s��PRʅ��!�u�$8����tV��E�v��J $��LVj���Ia\T I��Ί�`r�Mm�+
>5L�:��:2A�\g��D���G-A��9'2�B �)LK�L���\���Mcx��\U��JbzvS�S���ː��ە|+������iLA�z��S)D�F�Z~��AQjf�@L��-N����Nùr�Oϛ���L#��%��V��M��vj�9yY����?��8�)0Vx�A���d��}"�r��Ą��՜��|Gv���h��3������:�W8� ���Mc
����S��mQ7�@b_�#����5ԙab��컺���A3�r�D�'�BÚS��������cd�.�|��+���k~7&����_>�b	,�C���Il����)�Q��p�~1D�Vw��^��V�~G�F�I��029eLB���S���A)���Gϩ��FU�����W���p��SP����ڸX6�~C��8R~q��Y6�1�G�4��:,��Bf$�׊�猉ѝ1���+�n�O�W
U���Q�-�#RwbzOd8yL������~�H��f�ܥ>{p8E���,LT���`�~�p9�6�svb��ۗ3��[&=mYu�]�*�T��fB��4DP��>p��N��A.b�g&"���4r��c�Y鍮&�ղ&͗N��w�Z_w�L_����s��uE�<!i�����s!$LD�Nx �7'�HU�c���LD�Nl����w���Ө:k��(܉W�����?����Q�Ӻ�P�"Bwb�`�瀮=��{+��;1a��m:V@>��(\�z"�vf�
�YRK;GqҊ�]5[92�K����0+ϼSz��J]��b�% �����CZU�-!�yE5:�af+�l
NJ\�������BiXQ� R�����Lbv@�:�K��&�u7��7���D|�u�0>C1�6lZ�S�f�Q�.]����w��e-L� ����I׫���W޻�/0U�D�N�CҘ�f�����Qo?�d"v�%�"���a]��l��T��+��7��d�$kp���$�c
�D��/7�@r��$�/��6�q"���[���i,��rFu�n8�,�.r����f�8{�(B�T~�'�8��(.&�>"�)�w��ぴ|>�`�;�-�g2��'�X6+�Q��ݪޑ��̠T)��J��(�y=�L%2�Tg��9���瞂���r7P�YR�3ǽ=r��Wa�p�;�jh�ў))��R��k�����^�|ᰞ%v4�Pr�,�qhX_O>Ԛ����e*7鉸���5�D&R83�\���J�x�O,yh��X1��N6:��q%r��	D�K"F/��tl�KaL��Y���dN�Z�I5���k����!�)�T�����R�WNB*�����ܗ�@��6�����G�Q��_ yI��t���A5<H"Ah��[$�����"��!Oi� &��{��CfS@���h���_UR�`R�M3�,��Κ) *��e���ҳ�f2�\�|D���R8R���.���J�����<���Ge,QUK�������W@�є11�.܄��f8�r����5�IoV�U��a��������xO���Xԉ�&��L[��8v�gd��5�ppLz!����PD܂��@y�)H3��4b��#���A�I���:�-�2������b�՛K(_Z\�s�;�س���[ڝ��
v��#hR��L���,+������֟A�[v�A����Hԉ7��."��k�&ܳ)0W�2�]
�`�$�2'�l@{��L��>�;i�_ۚM��1����4I��KA�"bŒ�{�Cw�=�V�
����iR��������a"�zTQh/_��f����t����}�x���-s�����O���zK�f>���I�s������*xF)yh���a���z�)%1iAg&�%�T�����kA�)=7I����[Ù�<�I�<�)�CE@ȹ��gh2@EQ�e&{9��x]M���/X�x�4��l�O�X�E(䗫dS���-�Q"�ʷ�}
�ƘY��W6+⦭i��(�7�9w*��E�9�nX+��I��� ��h@��ms��%Q�Mq��M�Dk�T�2AIؕ���ȝ�$A���VEG��8y�C
of�W֙ý�Jn��S:޿^�����m4��'H��Y��J��uW�-?�:3e"8�<�ȦL�F�AZM�3��3ø"�`"�{ԒS��f���8�:1&'v����pQ�>�Y�z��Ly[N���9c��\��d���
��JB�5FMޙ�։}�RaV�`�{�UXj&�ub`K�{:�3�	��B�H\v����AOTROY�b���4��.����� q�s�=�8%���ͭ_L�����Ό	��}���q�����/C�R@�-�H�ӕ1�J�ާ�� k)T����A~�pU?�j$@p�Fc
���}a-���<�x�Je^HX4�֘����ƃ1Y9CB�H���yL!S���)Ӣtn+�,L)�%#2c��1E-�4V�ζ#�4+���8�	Q� �L��Lw�tNT �*���B�S2\2�a��ʥqV7q W�4~���� �"�z�S_�o���V���4!D<���j�7'�vb����%'JsO`Q�S( 7)�s�!ԉ����aX-2�@O3Ҙ��q'�<���b��X][ՠ���\�7:�I�J"rg��A#��~��گ�� �j�d|J}W�����o�nDK+9E����ˤ��s#�m�N�M�@�Ν�d;�bSd���L׫x�&�rΔ�	��&�H�P�,��H�T{(�)Nk���p�C��vĒ��U[s
�
�ˆ,f6���b������C�@@� �Ƨd������ָ��
#"_���0�l�Z��9�9��Ly�RWL�F���VB��ע�9Bs�P�iz����г����f��M�k�XH�[��h�6�Ӫ��l<OK�f[�?d.ZxW��V��͜��5��z׭�W��.�?6� T�S����.�5~��x���T"\amǉ�N^���5�:Ҧu9ZЀY���w���LQ��wIa[��4QQ%s]�~S=�:��pę�nK��� �B�\�&�7Tyl6=B�y�~�    Ԝ����x3��7��.q)p#���~��#t0���Ϊ�H��`�a:<�}�:����>F���Y����=�w�lou�F�8K�t��f�
��9��:��W0��,�t]{���O��%cn�a8E�^>D����	�L���X�K�/kjѢ�*��Y䉍�j 0B�O�K�h)�];q5u�c�sX�#��7�vt�3�篡D�Ȃj�tJ&�Z���"�2�#@x�;3��n�!���ݡ#Ӡ���V����Ge�ͱ�;�hJwr\<��s}�!�]3چ��\S@5��m�B�U��>77�csg{Y��ݺCyG��*��&A��U�^"sh ��l������N"*[n�Q�Of�)t��%�t��Dy�w���ݼ�)�[���*6*"Ag��y����0��f����Kb�.��ޤ%L��r}�����1PJ�;q��\��*|�Z|��$��w�ק)9������� ^�R�0�ڠO_*�%�Q�EftS-Ǵu�&p��R�����R|s��):�ɑ����y�z�&L���*R�TȲ��ڍ��<��0��d3G;Jc���F0ᳲKPc̄�	��5R���+��}A��5d��!��m���G��lJJB�� =Œ�MӮ��-;WR[7i���u��1+���	�C`F֨�g7 ���d=i>46.=FI���a"�O��"'4M�������χ�h�(\*�	�Y�|�.��d?�Ms�@��]�1q}ů��%L�Ӱ�7�'Ž�y�q�5�	;̚�Z)�
�P9V�RA� i�`ٽ�!P��s?����o6�n9��h�� ��6���Hj��pVJ��K�S�䰁�
�Z ���2�_sW�rH��+��~!���1k8��6��\)�bä��W�� �\�T
S`����k�22!kt[/eQ�b�R ���;'A����M,�tUR��\�!�9s����S;��j6� �o{�]�q"����mY�nt�j:��K�ʏ�* ��8�MAI}��pǎ���e�R���_3�+#Цų���m�S� ]
A�(��h�V�Bc�17�i#F��ҥ`e���^*;��#@
���g����e`B�܃r����f�R��e�N�M��$�D=�Ј���yI����#�)�"�.��5J��z�7�Y�����uq�@N�}�	uȀ�Po!��.U���6L����T��yc�� �3��H����ujR�/���>�J��9(���%�gsy�Ol�B�z�:@�]2�@j���`��)��h��/%��L+Ɓ_AqDL��
��Q�>U�u��g��J��h��Ӹ�;$dm�a2$��Q���ʺ�� S�z�x�TY�C�"��>�;j9�>��*n]�x	;�V��?Y�,3��716�`��|Y�gS�5� �ۘ;C{�����gn���.Lʰd�AK��y�[t�_��5����r�@_�9�oΪ��t���:L)�k4	��+�kϚ�gM�Wv�QK's%�C�1	�s���[^JR��9��/$24�ʗx�%��~<�z6B!l/-Pp֔e�W�0�=�z=%~v �:i�X����=~G�sB�#2|CQf!�DႢp���z��B����#l�a,�u�XVU�l �]�~t�~��u5���P��d�hC�}��Ri��6jt��_v;*�_��1�ǘ����-��7� �1�e!G�,���Eڎ��x�p�5�eL�#;N�'�z9�CO���h
�`������O6<��M��<�0kX�{�e�����w� P�z����
�_]�/O�ZIW}b�8����<�{l&� ��{�:Y���U���58�;�Y�5��9D4�:c�l�T����
S�EІl��ڇV���\��89/%'��I�*��gMaM��wU��q��Co����R 4�-_�ɂM�OY{�,��JaOB=�K��/�'>݁0�6Ш������J�b�s3S
p�(���#�l�{%�
���q�N�/|�Q�}+�ƿ"-�(�د�?�RP)�q�ڒ���חr"4��*�v A���7̆��w�z��IL×+iO�G;f�c;#a�fѻ�R�t�,s�1?ä�Q��<�""��N�dJ��U,�1^/�H<�4��F+�bR��RzK����2Ƒ-vdwmRʈ���M~�R��xq�0�H��K7���#�s�lP/�ͫ�tgr�h���LW}r�eK�v$�gXƹqg�	�� �2W�[�5c�D2�s��G������J���^�[����pI���O�Ymsr������_�2���ύ	�˒ª!�梄���g��gpY���sd�	5���k�����g 6�ڿW���(RM\R���x��\�X�^�I��0���W8n�}rڈm뇸 r�H�dIaJ$�'n4z}�)�N�r�0�hPH`��eI��|��+#�=$[�ENo��~@Vj��v~څ/��ڑ�5�&�)d�`h��[o�5ZI㲦�c�]I^�s{BW��t�[F��	��+#hk9B��gkg�t��@����	ᴘ6��|�rRݓi����C�	`�F9�mJbY�A����JD�Nh��K�
�&��B�M��z�/Bv���%��A�֍�eR7�r������I��S� 6�Ȕ�J�k��@�h{RfL���i��1ߢ�7w����P�|�\��]�@�IA���Z���%-��3�+(�,�!2��,*�kqhw7Y��B��Ā���;���v�>��BW�,�˪rҡ�0-���B���G5�8�PR|��s76�z�[0`Ļ��.z7w�uM�B`��LD0_�L� �Jk�W���I+(-��Jb*�Q��>Vf'��^p�u�q��p��L��h�����%Gm��9כ�y������@�c�i�[��=��c���@qk�.��M�"�������$�)��B;o1�?5����L��_��������[����>�g=�'N˼[�Y��zR��o���]�r>U��2��H-Bf���L��V$u=��Ƽ�\y��#~����C
��ോ>(��cԧv�7���9�ViA����(`�wAЮ9�a3}��oLbN;w6�s�0�=6dU��6(��C\�l
���@Ȥb�����K�4�J�GJ"��r��د��ܗ�Cz�!S)��م�-��|�1Y_�t)�ם電s{���m�9�P
r:��u��X��/��#�)��������0D��O
�_�v)�[F~Z��8��/�m��].~�4���*Z9�����w)�K�RX��?�2=Q�G���2��k�d8*��i�����S��C�5V���Eh��:
rU.��m�vq�����s
�J�D�y���D����LT�+ѽ�S�q��I� ����y��~qO��;1�&�pϢa��b���Xnu�Wbw'LG��"���d�F�F�v�x|�7�3f�K�ڼ�E$Y#e���$��40{�v%�wb~K�X��u�Vp���c�N�~�4�x;�0c�a�)9��Sc$��LV��9�2����.��-<1�)�u���_o�1�UE����;3�0�1FO��X�5}v/I`q�=�4e٫5I��$m�~3r%Jxb����Ni���j���Pl�A6B���|S�z��$=!T�`H�����"��=��AАB�&���Mжg\�[�(�C
�V`,p��KP�ڴ��'y���7l9=@
��苩��n���4.%^����� ���<`�{������R�
I�Ő%�H$�v��6�|�ʌ��d5�Q#o\z/��u��5>����%A���0)�ZC�pfĔQ�����;����������z�r��)e�!���ܪ���>�"�����/����)���25�:���z1�C�F/F�c
ʺ�<�q.�ѐM�����ۢ(	hS86L �.��e�����\�p�8��,��N�<3�G0���"��NO��)X	w���y#��܏����@�u̹Z+���ik�BC����I�?���� �� a�3Q#���S�{���(�c
�z$M�)8���    �gO��"�:�Pn��L�9�X�Ǘ�tV�V�E�)����1o]~8�r�/�9q�o0�Юļ�Rv~C�
��$���L"�Nˤe*٤�@����nW*;��p���:�N$�����G�cn����a�1W�HZ�ʁ�Q��R���m�f^�+S�`�/U*�an��S�܍�#��^+Q���vXߩ�Y���u����dx��Ծ�B- 7��
ݺ�i���%e�O��N��7U��p�J"�'f[��5��������8����2�-��&�jEYpη�(�l�i�y���j�h��e(&��?��~��P9��!�yfFi���IN~m5�gf8Ú��%����.�w��j�'/�B��(扝N^'�'�j@��f]tM����Я��扡_�`�|�&�j��c��:� i���Է��St�q��9C�ҚF�:�B��Y�u32g%2ybhM�ʮ�z�=��n6�׫T�;��+��3SӦ0��IUH5$���ϊl���e��+�;CFgh����z琘��Ab0��Gǰ�,��b�;̉$����/���^V8����W6�����߮[dN������6��D�30(���u�`�ڴ�$�(y�^�$c�I��w�k/����ϞR'1\&'[[����~�aK�zւ�L��'hEq�hr����n��M2��"���wj"w� I�{I�O#���Z��ܔK
m@vB�����G�:��k
jF�׌ފ��voD�hM�DdM��
�J��*i��I�&)���L������������)7}�uMa��Qz�ct�"�(�T� ����úL�Re��6�Z�29̿+]I�c�B�q�^��2]���w��#3)`��}�_�A��WM��)��-:u{CM��V\Q�uM�Jݮ$��I�S+d�����`i�hv�L��f���N�VbL��Y�ܢ�a�>/�-)��F���;���N~�u�Pa�ghQnc2�n\�p���R  G�-Rty�=gG�:�L<����>yIa�c��%�/M~V��3o֒B�Ht���ݎ�<��K��>��d8�<}�a���8�Za�v�������~�Vc~�Eϔ���6Yˡ��sO��{H.1˿����I8�K�s�Ndꇘ�	�A����ѓ��%�N��3���m���~z�`ถrH���&�(��l+�И.1'�Ԗh0|4��H�w�bR�&iU��h��R գ�؂���"Q�x��IT�QF�B��\Ҿ%A��Ԛ8��z{�����>&�<�B���ȼ8\P��֘�s���)c�q�CZ�K&���®��V��7�SO����l�6㢧P�i<1�0D�J�����|�����ԋ��8 e�Y(!�d�5�ݴ�I:��}�ҏ�a��^(�5r7r��'F�ř9���Ľ�!6���<1Qq�|K��MQO�.�N��g�6F�P�Q�0C�SB�&�̎Ya*��fN���lv#��.3s�|��c_q>��@t^p
��*]
�@�X�Q�m�v����`�t)��C�`��<p�?tuߤ���/�B�.�^�~#�V�;��GץK���)]���-!�)B�6�Lz��t!�ǂ�?~]Ֆ�"�ʝs��}
b��V��醚L�vϘ���,@J����\VH��q�o.E"�^���e)� ��r�r]��m� ����Ud5�ҧp�D�l��7|�Ws7ȴS-�>LC��d ܯ��[N��~)�Y#5+��Fg��<N��>3}�G$�܉u��+���̙�����{�B�!jR�΢�%1��/�f��R(����f�E�?U �)���2��_� Ջ�ڝ|>(Η!�0}T�3'�F�����4!#!���Gtƃ��$ �6���14���'��!<�����;�А�� �sv( �.(G,��^��w�'�|j��;+�B�P�Rpܐd� -�����RR8Ӈ0��Li����G�6e?ͱ^��*=C�z��Ҏ�����P)��(7� E�a5L��4�jf@����(���N2v:N��&HY��i��)���\�>�Hm.)���]u�2^����/�@j�ܥ��	̔'OMze�2���6;�L�6A���.�I�03o6�h���*������T_1a����� �Tl3�[K�17�w���qL�k��g�|�1�FCz�Z�5&��4����7h
��H���9ci���w�4�MH���܋���3� u��t�9�;���E�l��'?s���g�Ԥ@Y)����A�Z@��M�L)����57.��.�}��*��p�RP�Fh��ߥ�� �Kρ�H�IVS�R�*��t6)�@�:%��R��O���M��l���*�����+c
g�p�C�v*�P�a�\d�c�chp�R 3�%�t��9����+�\��Q���r����C8^��s���Ӭ�n
��-�g'�f��� V�������e6�PjZ��|��RV��Y)d"Q0!Qj5��
��:߭�o���sw ۭ�L��yu?��d:*mS�D�s
��kO$N�ڧ��M�XKS��硩�>�,��Y�\�ǩ�YOA�0�ħ�Df���E�HׁL��lA��z ����^�5�$��x
�:h4���.4�Eg�Y<�H�6�C�Yޘ����߱����{�n'`��{]�P@�S��0���eN�P0_�A���fB|��=�%d�R�TvZ�oY�}2�; ��#��q��	z4Z=)r���z��/�����5z2h�c$r��)m��C�`�2���� �6�)���K&���1�8׍ ���֕`y~�r5~)˘z���d��ĳ�@0o���k�h�2�apk�ǡ�H��+ʩ�*�t%l��e8_B��^�/*b'=K��<�]ڪZLl2��>d�;Ǣ���3*>b!G�5�t�y�J��}Fk�V�ɒ��I|�M�)�Y�2��B��9Zx6苀�sM�����7��cdp���j2~Ma��uLO��<+�^�cE�@��%��J�B%H�L�U�������Emk
����ݍ�]�#!�I�����j�z�}���[8�G�R��A�W0ִ~�Qy�Mt	*0U�-A����G�(pÿ�PɞI�P���7n+�a���b
v�B����x+���h���w��4����n�`�9n�[�	%�ISh9���d��.����R�M��B!�qq��Jr��g�>��w~��RR�3����˩� �T���R�(1[7��]T�=٬�Մ�f҄�!�q� s�IJY7i��1p�1�<_H���T�9`J7�@5�=I��d	��q��L��AsA�W� /�����wr(!�d���w���W���7�t��b�)��>T 	=GI=G��(��;��;�� %z2�Ț񇑌l����Ac�Rڸᄯ�Hl��76�eO�#X^���Qj�v�[k�]���>cq�j8�� ��MG�
�Gl�֣��	�lwHAIӤg�;A�j`P����u�d_�����c�(o1���v��f�)X�@�[��dإ�ʗ�.�K)�>@
�f�2�D��^���F�3�B�&���\��]��'0U#�'W���B�0�����YR��Ν��Q��U���������w����n�e��ݡK�Ժf�L�J0��Y��%ȥM&pե�
r�&Q+�(��p2�im�VS�5����	���h��6Spb��)�BT����4���l
�`+K��U��+Dy
/�yA좜ecw)���z���Z���(l(N��L,Hs���8�����V��
����l���a��ء�5o�!ɹX�a��q-O������p&[O��x'l ���eM+"fs�n�s�Bnv���񾶻v-������'LM�M1�͍e�+�l�fS�S�k�[+a�H��s��Ka�|�)��,s�[M��u�T3��ʴ�`��&���y�G��#䂾� �9
�Q�U�-�
_k$]��r�PL�ё_�g��QP囷�|�xE���v �rŔ��v�?}f6h0��[]Ȅ�2Ø�p��7�v���&�    b�ZR/�s|��e��'�8Ԧ�a�ˌ!����;8�0�nÅ�}r�VSh$��6��x_��Fg��r
�j���i�
�S��"�m���E��􆨰��ra}�!�(k(̫�2uH��S;��G\dMǌ�>�!Fj��T?��N�P��	&T�S�T��$�w��Ӣ%��	C�
v�O;�`�A�Ab��qw��Pu��^x7翘&���i��o�y�j:Tʉ�:�U�����ڢ�>p(U�)Ț#'��d����I������'�׍LN�&?$�)�KӳAy"���1<}��h\���2��¨)2����T'N���#���:KQ<ǳ|�(���i�q��G�R{���_�� )��@S�i��M�I6�#Te�E�z?��\��_8���=�C��Rj�Q8R��[��.un�dlu8�>hS�կP����,�m��}��-���l
��	ڝhi�]��UCt,�:�l0�S�p�0b��w��)O�vR�F9�f��3t!�R��D��8�Rz�
�.4'q[̡S�*Ϟq>�IW���_w�+e�)H*�Ydl��da�)1�-_ �<6��!dO�^��(��k��n���ĝRX��@h/u�L�
��/MN)����������k���>��Y�gHa�rp�r��
�T<������vR�Y��[g$*�ɧ~�M	:>4^.�)ZǨ,�{��!���s
z��8;�C���T��}��S9�����P�[-F�Cࠛ+
۪���)pZ"�%�8~Fz������H����� xI�t*�Nt�)%��l
�&Xc�r����ئ2���Y}�%��$-1-W���n5�Y�5��u������1�᭩7J0�26�dL =x}����܈����֌�5�3�	`��dʶo�if�5�c��cD+��-� _º����9b����UB"|�e
�f9���b�US�#�w�V�����EG��9x�z͍�߉��~����&��c�pF��jy�X"���:��i,�W~��p����o/� o���jnʘ����1SBN��qʡ�r��R�(K$��|n�^�N��HuA[�Q��f���%�wbfvS�VT>�+Z�#ԑ���jt��a�!��B����_r��5�'�hI*N�8�� ��գ�D��)�����h?��:���
��\n5�ev���Gj1^�|^��Mf�zCF$[�s�"P���O�u�~��(�c�L��ۥ���5�QYSx4Bn����|�k{Q�)Zbh�0�`v��T��bk
mz�s�irC]�Ir5���kg�z���"����`
X�	�LF�G����99�4x�&�$�����'^�D�CO+%!%h�ݢ������:�9ɒ��h�����3�w����G=FVX<���.���i2LCo��Zd�J
:&�:�����r{��U^�M�J���5j���x�w�,}F�U&X��R5��	Z��"����lO���p���B�P�$?�&;1{��d�s{ax�F0�W��u��G;хH�j�<=Ʀ埓�bEӫ譳��D�Ұ�F� ��!��P����A״�Z`C�^�Y���	;ܧ��]wH!�i_Ю�gw�[V[wH����-/I��0%�-Z{�R��������AWvT�	�JqT�ӲQ�1�a�}��s~p\���rO[+K�T�H�QT�G������۷�V�)��aW��*> �\N�C��n
�@�Gn.*��^�c#,�/�w��H�;����8�O2��K��qE�̨� v[?8�ٚc�仳���;1�:���_��oA��̝�i=�a�^��I��l
%��-w��>��qB��n.+7�Mpg�U�q��>����x<IxϮ��;�1��r�:bs'����N���y�
)�@�l�jh�*!�7+U�鲦&{�@n6�LFN���S�!F�",�dbW�8����"�rlvΘ�g�L/�r��аo�[��x݉���q��d0����B�5��OC���u]
���L���)�c�(a�o,�U�p!Zd�}gh�<��9^�W#��_�OA��>G�|�)�a3�֋ ��l��N�1;t���j*�^��E9&M�>�[���_���&�����@��~�2�V���]#���&��a;���%Z�����O�${W=�"�Y���8���P[�������hg�)��������4)�v�O���ٜ�3��4e~>�n
����]52�4����a����[3Ϻ^�)�Yb�6�����UD^g^�FR(��L}yî�:�&P^MU�H���K���dZ��G/���VvĹN$��@ �]�݀��N����X׉A�K��ʽ~��l����
��C`U�6��������<@
�������룩��C�՜y �1���f�������?~I���$�<��[�J�CƬ�B��'����7����d��(h�:H�d��咲���xbV�,��2�;�pv���r���"�]�;n:��	2���F� �؄�):啝@����
��e�Y�$��NE�v���p���i�
�c�6����T�����D�m���1�Y��Dh���,)�]"�q&�	�Sx5���`2Z�����iɵ��S 5E�_�ٱ��#��xzz�0{L��\ $�aN2��It������ߢSH��#��o�&�X�5�Z�&S8V����$E��Ki����^��^z�ݔ|���݂�ʼ/}s�uS�"|!=��#�����n9�l>Y]�4Xb���N�z�ն���p�qO\7�A���m���!;�g'��Fu~�y��?0��H|�������)ʡ2MA�bNr�AG��D�NX��Q��9O��4l�@3B���';1;�đ,��cz'�8KRQD��L���U(�A��.V�9E�+�����r�/�����6 d�f�	�G �vfLy�A{�HsX����w�^��.uZ���*���J�3�ݕ���&R��[}���'R��H�}�{0����BQ2Jz8�ZF��w�
f��A�\XM�ω���rSPb�<�^ҜB�
�^%���d�+]�;De���a�)���I�gGQ&Vx�ůXW4��\.s
��Hq.�$�EL�f�D*���,Z����;A���.���M(�g�),*]�����8��,�^���,)����.f7�{N22{�|�F��[R8�b�H���?��m�ز��D>��^��x�bl=Hg�Z���M:4.��ۙ�%U��&�b󣌙G���{f����+`N$��#:v���wM�k4�N�~�f]��7R5�n�_Mk�M�� �>����w3�l@��>_ޟ�kkh�ϱd���[��v^�+ԎL��t�jb�����)K�5c��'��� �m��{)�S4�w�����~��?�/$�(/���z���u�σ���V:;�MK�Zf�]j� J��a�!��k�#f�^k�2�2F6�.M%����u�m�1"�s�P�_�;ÊjV�Z9[3V�P�������E
X�V�1��{�bS�����?�6�K��f)L����������3M�[S��M�������s�]A�os3���ZS��Ѯ��b�"'o����vv���ZS�Fذj���������*)���e��58CP����zܜ8��PR��M0o��^�gHzy��Dj;�@X���x��m�Ih%�@��$tr�n
�Ƙ'җ���'�-�i����7��!`C��4;�E��"�Od�b��b��J�Zŝ��PΛB��}�;�&S����W��Hs�A�U�t��Ĺ9�A��L��u �M��|P��!RH׍���_��&'�I����0'I�C�6%2��n�A�����w�U�X��Ny�x�����&�o������[N�(���jf�֧�2OBwC?[�A/��	AsSר���>ep�ٸR[�q����5-�?���Њ%m�:'�t���G��cjU#="M��wIZ^qu�q+�Sr����y��5~�e�� �{�    ^0��̦�ԛC���;G�f E�>�Z�5���C,�]ĕ�h�i�An�{�Rck��Ea�տn(�T�f	Ʊ�O~�M�fD-D�	�@g4�(k	���.�T �=��8��� a^�B�٘ד~|���K�T�Q&�ΏMɾ�b��Υ���>1���,����>������θ��GQ��RX6h�cv��*:P�iBY���:�淲3�;�$M����vR�G^q�a�.I�Y�]u�mU��re�&)3O�%8^�+nEO�qUѾ�.N�>H����$m{Wg��Du{���\�#���j�E0����%\sUm�9\]�X.�C[g�CrČ��\�̚F�*�JD��!�Q0�{��o�����h6�n .As�]��Id	SJ��/��:}���c&��V�-QZ�Ր�^��V�z�(��	R3��◂��� ���s�=]�� ���r�4��NC��*C�n�3
�S+�hr��|���O��F�������w㲉"�=ȍ���|�c��BibyG��f��C,��.�
	h4���I]���n<C]�*ŭNdP��)D�����0٭zoe��$����U`GO��#g�$��2��!�E}�XW�^(�Yl!Ξ4�-%$���n
�P�tҮj���y�r�y�b_=�)!:e��O�7�X�5�ߌ(KHo�/��o�a����6Dw���^g�Nt@eGs��N1s�+��u8�頜�n�9co�#���nh"������A=�8d�,���Òzm觛])9�Od�ֲ*�7�K{?�����ͥ�nB�2h���y_���:����3��onƅ�?���%ؼ�V�+�%�0�����Q�E/� JC��qc���E4�7Zl!�c!�&�m��I����N���cCp�����d]�2S��#�X���&�¥S.�M�\7��M8��j\Aft: ��\�;ać2IDL�؅��$�,�s��Ѡ�d��P�������C�H8�� ��u�Z��j�f�xl8�eK��M�r��3c^|���\->�p3�jBz�;3�_����]K�B�8��;=��N��Y��Լ3g�M�!�K1JM&+R�O�T$>����/��j�����0���NA���ai� { �P�u��³)N�Ⱥꛈ���:!�1���؄4;&sg�vݺ�L虤]] �J�1s?Ml�!��2�h��׷U9�D��]p3U�K�����f esO��f��-�fQ�2�3��G�8�|����i��G��-{]t�N�u����9?�"�&6��^1�w�>�0���lf�)^o��������W�I�0f<��sW�TN��+�g�S(uu���Vxd�"~C����s��;-i0�d+�롥�ն� �#���OY���NsM�?f��X�:�$,1ҁgb� �Ah�٬ش��yLm��љ`"�>��P���cfӭ���0� i��-��I�-x�P|^�ײ���0��9Nk���ě���Z5Gs.@�Fg:q�%�9X��Y��:	<����cԐ�1�ϧ)��P�����B|)$�T��[��-r"�j�:�/)���qgSnT��L}����ߗ8̠I�b�ߋ%>��>�T��N��w��s���'�P�p����.�a��d�eZ�\�K��/qQ�!"EK�>�z���f��~I��ijB��]>^Z��RS;]JvI�pBF\/@����JX�^r.Hx�s���]��tX�䡠L��b4��ECdw;THYߌ��1�h�a�=��(��<ǉ���f��M��~?��G���Ad��<c/"/ޢ� K��U�c�6Y�pB�k��:e�3#ábG��"5T���z��ɛ��oO��wx��=�'s�79A�ps�B��S˓���'�j[7((�<q�R�I1��E�ER���+��ءs��M}F���vJ���5r�;�2��>tv�C��'����m�Z!P?�����:*��\�E�b��+,&�T�Y.%��g� �q�"�+[���!i��V��I���]0��g?�w�2c�`�Y3q����1X
�m��EB��#4d�jA���	��Hg��ĥf��8���;�5C7�g���"��Ոؼ:�kЗ��=��{�����v�ɵ{�k��3-�Z/)�YBa�[G���eP���<C�M�@(z�;���IuA�q؎V��f��7m���J�ͦ����Y|��o��f
z��0�ŋd,�M�+��^�[����� (\�w���ׁ�6���	�T
m�k{���C�!4�v�z)��ֵ=���>�t��Z�*��S r9�GM� j�"zN� ]���=��Z_1�����j0��F�)t����?~ڰ��<�w>�N����&���!4CPPF��&GM�[�V<} �PY�^��!8Q�4,֋����P�wǑ�]
��� _�e�&�Kl#>%8�=O��gD3�߭�}�B���u�"�.�hǽy9��SAN	�AZ�9)?R���%�*��3t)4�#�炔hWp��Z
���k�Z�O�>�nM�Z̧��jd�&
��'T���ARf�F�N�Ͱ%��jEڜ��i��uϝ�
"'�L��M� 
5����~��w���	�#(�C���p�R �D%fd��k�}Zc��R�')e����-;�ǲ��W�*_�˹�g�+QE�]�i@3-��~��0Yd�Y�k#H�Ԟ���m�eN!WoR�il
n˭J�E)�SڶG�\!V�Z�2W��!�MZ ��˜¯�ȪD�]ˏJ��{�ϡ��XV��<���$�[%�8?1]�U9�'.s
�֘�V��zs�_���ԫ���l�sE_P��g~F^�E�Є��fr3���&�d*�Q7o~
��jL7�uy�L�R�m�Ř�g��к��d|W�%4��B�6�c����N��%b��)Tb�μhd/E��]{�ι�H�j�ПGG�y�F�)fW�v�A^�%I��L@��`s&�T�	��2�a1��%�2�^�fg���D��/T��-���h�I&K�Rgt�id��۰]
ȿ~rE��S�"�DM7��������7�8%�&���H�7Q�zK�O��!NM��!.�К����~*)�M���D�{cen`�p�5ѡ"�f��-�c�%1%���{ߚJ5���O6�V֑@��Q,k
U6j�b���^�piv��ԇwFi��Y�h5겦��zc��UG�ؐE�&)��c�)�>/#n#�<�w�@�w�zc4�┐$KOi0ġv�L��G���y���:aQ�蘿��^��F��)�Cb�w�?�h�w���0 6d�ާ �6"lF	�.��<���K�;�(��{e:͒�"k���y{&���mi��Զ�`0�	�TG��YN��fBJ�&}"�����fNNj��_�l��ҙ�	)��Oߋ�ӽ��F��x�d��d`��j���k���B����8I�	�����dB��U�* /��k��3��'�Nl���Y`\��aJ!��7�^2�릛��^<|ä�Ld	�e���8�eMf��Ľ���^|b��� �h&#��D�?{�T%��'O�U�g�<ߤ�"���o���cu3z�ё���]�������]��m<�+r۩f34��-�G+)p[�e�M�+n����E�
!S�Eb:��e'��N6�B^�ZJ
��[��}�E��a�)�"�S�\U����F�W������{�`k��Dǯ�Z0���II�M��I�ҝ��r��A��|��������H���n�N��;��=�}�.,w
E�#nLRh� ;z�����doX�g�&^ձ���_o"}���v�9����6]Rd�e~t҅d��:�:�����x��$�q�;{�����~��2��0]gD�K֧��X&R!m-B гD�O�CMۈ�db�N��w��{���;刷��2���mT�����uȅ�8�3��8�U�=̑Y:���%����{,i�܉,�"�6�O�έN��G�*�
��qɻ(-"1Ѽ�<G�ͥS�3oR��QO�|N�O2�J�&���&R@d����0���u�C���zˡ#s"S�XZ    
�b$V&a�N���b�:���Wh {ki)�j�GQ�>c��_��Z��9�Ơ�Ej9��`�M�����¿��샯�¬J:ƛ�qoc�ĉ������$4��U����*eڽ�5��m�0k�BW�~�=c$JV0�^�v�`%���TiA��Xd�����}((5n�ĭ��3�9P�r�&�4ɪ[K��B�Y��d���PS�5H"�F�r��k�����B� �`ǻP������|PP�*�{�$x�b�R� �V7��������� ��%�E-1�e,�`	3P�}I����`#��5Yp����D���0��!܊[��4���-|���=6�jۦ�m�ww)��6*{���H�`&�A=� ��-�P���a�[�,{
r��|��&�����.��,�{s�b��>𡽱�W9o��Rh3G�s����t�w��fJir�q�K
B&�����jz����30v��.P�㮱�r���g�]79�sIߨ��f�zI!Ibb�I̳j��A����B������<���ܾp �S@CV5P]���>0��D����3c��4�dI�{�WJ���@y�[J.k%����^R`RVҪ��L#@&uAo
ƶr �K
b��ƣ�m�����0����P�N�Mf��`�/��0t�+gEP[`�R�F�"4,5���>�p�tꙒ�v->52P���4Ͱ�U����
r	�~rj�@SXF=�C�� b^-X�����V�3#��p��F�i�r īٓq�LC�k<`&$��)B�'�`�˓���{Qi��)�^ߧ"E��`��!���^���V��u��V1)��~����\X�ϸ��E�:��Cj�E���@�W����z���E��(Ze;C��8%�i;�|�:_2���VF�����:�k�f����L<�]��$&N
��nb�gM�u�3Ѷ��Z��q{0S?�9Ս���Bq�L������<��A �R���G�&���J�6���.��S$��eB��ᜧU�_���e�=�4�:������{d7͕��(�%�s����-ڂ#jE�s�HT����'^ܭsKAB4��&�I���a��vOD���QS@THq������Α�-9܉t�I�*���n�R�P�Ugp�O��4Ѫ��zW	�Yzv�q���]��ٸ�@�!�9�7)�J�=�f���q�Z�D���&d��j�E�l-)>6K
�H�j�� �����e.�.) �W���uu��az|���"Q���Z5�C��;[�]�m���.�!���wb�(�����͖߅��	I��a��.)��W�Ɣw�w�/a"0ҷ���8~V�uM!�_/`;���L�lZ��8)�Y(BgDePi�psG�I!K��O'��}���eMH!	�e('9On���j��1�YS�Rv�e�tYS��+]��K!g?�u�a��{��n(��2p?'.kЧ
�a�'&�jg��7�w!s�D�M�M�#R�X<���/XחD�3�5=S p������eOs��g�Q�/�$#�8e�J��ҳ����%���	I4y٫�~�3�K�?���\�oS&�u�<�S��T���g'�{��qD�3Q'k�C���g�Au�>E�A�������뗨�	(#���WK���M���2uB��e�4v���ۖz����uj�r�>yEڕ�E�YaI�]A�s�àc���t��<z(�TS�2j�i�ʒ�*��"��_9�B��j��Qf%�������(�g�mU3�����[
���_���#������2-�����pG���[�ac��i�F㎯�:����������גC&����[���Ԇ�'We�����+�Y��������I�\��@�ya���E�`�����.MuW	)pgN+��Q�bR���ZA.��s^�RD.Y���yA�%�O����/g�f2��Hf��W��90,a"����5��$�+��2�Ȼ|�V���W�8�
��ޗ���q�$���{Y�.�>�<��V�4Gz1a��tm��3u$1l�W0��h �#W4�4*V�l�D�Q\��J�Ch�����C�����=-�m�%��D�7����K$7���y�vd���D�(ssұ���aژ�n��{u�o���W�>R��|��%p%K�������G���~�˲d>��ڻ38}��m_=��4V�JB*NL�冧 �ƞ��.VR��%���^k
~Z�9u�6\%g�"j���4HY�+̼Tԟ�.��9#
����4��-KiܽSE2s7�a)je�D����|Uom)8"ԍ�Apv򖦈ZE����}̒���dՁ ��Htp#"	C�z��:����	'�H�������L�%a	�,?�;�8��pƷ�_BZ����<�5�N���/S�2B�e��z���uܓ�bτ ��	���'u�1ƞ�=�������GH�=H��I�������v�q�F�o�
��M��@��a�͘s7��2��e�P��r�%}��P�N����l��%�JG�����g�Q�t;9�T���ׅ�to����5RV:9���)ԫ�QH�wVk㡆/�P�)l���[�%\�G(�=�ͩ� �QA��0j&:��&���COO}^���x)0�B���^�V�=�͈ٮ�^��Y�6-QGU�5J��a�62KC'Ŗ��_��.)КÙ�� �YB6tgu�+����)�`Qo��`k�rz��,��ez�R���D�:���TKb�dU#viX���im�N��������3�4Q�Zk�&bη�=��´=d"*d�\]��S!#H��%~�¶=6���x�5q)�u>0���ô��&�w�������kG�1���]R඄�
��?�u��~�*P_-^��!qA�m�m{�|��W��g%�l�ؑ"�+���[Ŝ`��]�m��`/6��~���2QBjC�z5ǈ��X�\�Ii�R�5Q�|1�Z}���6�@�(��?C���;j�g�˨��3�o|�"�"����5���mS
v6ҟ*Cs/�L�F�̬QJ�5h�B����ΰM)@Y�v��_�3���D� �w1);��ä�{�4F��􋈣mt���{{}���e��|Yte�i�(�f�[���ö9�25�gz���>�&��v245�wu���P�ՠsW��)l�cu|��}�j�|��lo`z�9� �Ub��6�%�������!�����צ3R�Doݚw������H�{�4猅�TBI�j/�`C�>��ؔ[�A'�"��¼:mr%C�K	ߒ;_�9 P�:�+!�M	��N�!�B%�O��2����L-��{�i�S*�/��X{&ִSn�jC��c a�{���2�︝�"�\Ox��d��]6����<�[� ���+U���qNȇ�x>:V��+%��ʶ1�NiNċs*�Ե�HK�k��8�"�[':�G.z�er����he�zC֪�	���l���0V��\ܹ �|6��v���u�s�v����ڮjʭR�N�w��%2S�7�.��y���r�"趤�e��N���y���u9_��L�J�DlM}�-r��D�nǚe`�� N��'���&}'�)��L�B:9����e2�����=�ؼ�̤3��#���.�����Y�?`�rD^3�י���趢�#����[���es[7Yguw���Ȧ�֩�	��(P+v�?>�7��*��ܿoI�:���㵘5�  y�'ލL!�K����7N�UL����A�"�{������d���~�qT�7��\��5�x�t��ݎ�������)������29�����%���_�2�BV��UB�Sr߶�Ј��_]��	rgS�Sh���T����$��N���M�3��~���5C�NA٥�ֺ����*�����l#+���c������Q(`b���}� �}�mK�N$��L���{J�R�n�n[
�J(�#�me�_�l�1yeWۖ����i�M��q���[�7�\R�Dy�4�lG�e�Pɡ��It��$Q�y����A�WJ�g��� }!� �hDjC�%sy�v���,I`�._SYP4hu�vdS��S�2�Wst    �7�G��1ݱKF/�����7V���c���>lj�;�N�G���PI��J�L�F��+l+�hIM���iaB&�Qg�"�H���ȁ���D�H/sE�뙕8,D�FZ�}ШKأ��C�\Iޡ�B�)��v2��A��H�3���R=����D���������$j<dP���lyr^V�'ؗ���*h����VSX5E�o6�%s���p:��L�'�j"f
����Tl��qd�⍒�C@��i'��j:bϋ�P��͑�v#ёW��B�����=#D�`ܜ+-7W{l���q�����mP^S �-��Α�`qB�R�>�	���J�gT2��h�����$�q�D�%�C�AnA�{>)�2����ǉ�j!W'X�,�`-!">ѯ�ރ4��)�	������|'t���j�[� '~u|�;�����{?�����߾AGV�c�\G����o�V���N
_l���LLѼ�U��5�ȼ����!�f�v�넽H42�A�<ֱ8��'/���V������3oD�0<xw���`WI��N�N��K,tc��3���Bf��L�5�+����Þ"�I�[�Z�on�ʓ[bue��\�y���d�Z�p1��]vmf�����C`O�^+�-��őxQ���!�_�¹�Bܻ��d����1�W���F�慄����
�CmT�罤D��-���:�wq�:M�$M4��mO!X�10���+���!��O�T��
R�F���f��"􍁛b]�k/�8]I�Wr�X�{�*��K���fkOә�C5�%�H�JK[gw��{ ��w���z|�o�urw��'���¾X�asq�ro(�[c��tNw�v#螕V�u��o|�!��[9c�����EL������8���5 Ի���S���E3��*��Y���t&w�	�4P3��[�!�P{��	A��#er�d�4�I�YC��\2�	n�'�5Ѽ���3���������Қ��d��<Ŗ:�Y*�=9X���˰S<���K
��=�C鴔AKֈc�2�|k:���Bc���2���c�=���C\B
��U����"�+#�&�>�ʥ
0�)o��6#���_�ҏ~pS
����f	�KZ���� 9�
)���?�*
)�F�2� �H>��4����ч�tE�^�T�ª:~�ojw,~SD�)�R��[$�z�{"���Mj	K�*F��f�ŭ��{����{�1����F�E�.l]ە����-PO���)�@$�W�����g$ٖ�աZ��HrGRx�!�T�[uz��20�����]��pP������(!��	��Kj�F��IZ2_�ҏ�l��7g�O1�, ���+6�w:�bXP�%{��h��D��'��Y69�c@u��+}`i":�Ee�¸-]�H�]J#)G�ysJ���=Ra4��T$�o��Z9.+�4t�e�����r�����^��;J����� �=#�n���I5n�vK�eb}�
@��J,i�frt�\���z�9�y�1�ܗ��1�X��_���p����Pk�w�Z�z��rlm��#�����ǝ���n^h���&�����_ߒ�u�3�Z}���!jU� v�h���x5|U����ݍ�)P�f2O���d
� ��@Р	���RR�G������u��%H�P��-|/{ABZI���"e�B)K
�J�����T�\k����o���JA\�N�d
?����J��ZL��B��Ĵ�Z�;��7c�ָ�$ϴG\S���Dh�F ��2�) Z��/�NH��E�[�I�֡�]�gYS ��QV� ��'��:�(a����eMb��C�*-�"�^~��@�ѻ"�~�=U}o�;�當k&#\���L	g�Y����y�'J�rD,��5��&� O�O=P`�{u��V\k�"H"z���ǘ'	@�jS���K�E���L��t�e�&^�MlB�TE�4J#=�+�Sϛ�;d���+��l૟��0
I��Ae�������@���.���\[tW0��=,Ğ2��@k�����8N����?��''�-�YȄ�|ؖ�_o��	 ���o�<?��tt. ��EP��m1V�w�p̺�q���͐%Ց�בµ%�\�~T�����>���R�6G�Q!ڣm����ȍ=^�2U�v�YB~�F�p��9��Y���RV�Z&�F��M���MZ�T���=+4�&����$��a�#~�����\R�6�P���
�'�Fb(�H�c�L��hqba���I����HK(�}�;f%���o���Z�KYR1*�U�)q�=�iz+�j��f�D+���&���Q�s���D�%R�y3#_�Peɋ�s/3_�Q��3%�{c3m�,�G}?N�^�>LF*�@[��ťR�剎��c�%&!��@�0���J�Y��;�+>ִF�b�ފ��x�a>⾽@}M�-�͸����Ѩ��r�� h�qY��áZ���.���C��qS�T�,����=��:�ZN����V�
_�9���Lk�>1�C?k�����so���XSH�d�6�_)S%����(\�Ģ���)�)\�c�y�.���ϫ�gv�㌾�t+����K�=�d�n�	��ؾ�3�S���pD5"�G~��Un��c�P�DG&�ӲOQg��@���z�e�����Ь���9�:��̅������>�i) ��#,��OF+�z6Cr�R�]N�̈M��i�fI+�*\��B?�wZФ�`-!��`�r^C�UU퀾���e8�L�K��h� �L�!��LL��@�%ܺ�:���Fd�4lA��e��Ĝ�`��/^˹�G�&��(�Qj9�9��`/W}
���P~l�9O":Y�/����ԋ���
[�e�w7���G�u�d�mg�@=E��b�C��J�3��5��0>�*l�/��O{����ȤL�?;1G�[Q��
 �b����BPNd���Y�.��J����ow�-YG�E�yW��^�����;���>!��³��Pu�`�$��5Sq%�KaY���4��0��DX��>�>���>�n I���/���;$V��)��[9����|?$�E��nPe�U;�z�=�\\��i󁒨K�`[!N
�h�]�f�]�ɦ�*s�N��|����3y�;����[O���h������yN�e>^�u�D�EEQS�4�w�]����k}����ƈ���ԫ��DD�bց~�F���@����C"Z+���ndw{��蒕���D�-N��I�k���vJ�%Dk� ��KشAU�Mݰ�P�ڐ��K
���T��q�i ��5z����	�u��%�H�L�~�7�o�9�1�%�J-�#�n�<�K�2R��1�`]��%Bp)��'�ΑM��`|ѷ�kB����@�f��h�ؾ(�x���&�T�)y'�
�;�J��`�v���9J�D��p��B�򁿯��@�괤~�BAz��g!�!	溝�(�\LD_C[�A��_ٳ7·k1}�y��j U�-��C-�����٬<�(�J&^	�߄�%��_�4��3��$ud�U��%s�������6���L�o�R�v���DHn���3��L0��"�,�
�{�_ݓ���Ĝ(�����2o���s�bfu��St��m�V���o`���-�߂H�(�����5�tT�#�� ���e�R�qHߨ˶dz|N�5�O{|	����s��HA�E�Haz�Dـx�<�ı,#��M�S@F�e�J��Jkl�N+������6��i1��Y�u!TA˳���6��SH�ڑ��r��v?Be��[���-�m���p:��)���d�����i�W��'�C�˦xO�O#�J'��ǻe$
ز���2ױŻ���.d8�,t;ZV�1�	����+ͪ��?S���Ր�Ά6��LY��޿=�:G��r}S��� �Bd��#��ʳ3����U"�Ct{ʷ��	�0H���5������ToÖ���R��Ψʼf��������m���Ə�d�%��%�$���9|6o���v��k��{�V�eoN����f��ϡ^;>�r�n���q    Y�J��N�n��^����[ZD@EZ�H�G<�F�����Ɯ��;���Ee��ڰ=�蹻���O�
�M�b�����.�5�b�� ����u��-ĺ�G""�b��(G���>�"z"�w��HAִR�2���ً��'?�J¦0�9�I��ǐB&}O�t�/(J䃳\֡���>Yy�x)`��𘫎��~-o)��u���᜸�%f�>8"E�9t�}[ܶ���Q�ɜd,��e��%X�O`��&u�R`E���%_���Y ����k���CR��%�`�+L�y��#y`>����	�R��,��	��6��2NiY���	�!�ОD��~3Į,��	���\j�{܅U�̴iPSy>9�=�1�[�@�pA5u#ؿ���JY�2:�=����u%���UMؾ�΅<�
C!�	�	9׀}���?P�N���̞�����Pp�eT�m�W��砯��8x	��U��C�f�L�͐k�����}B�9���ũ1p�����z�[F�=W�fk�g,`B��_g�0M�=��Ty�D.1j]V����׾�ٜ�l��[;�=�>�����͓7��S�B�n�b�pΓ���x �_�]�����Ӗ��eY�#�-�=��z/ɇ+	=���/����hi�W��@��Dk��'#4����(���o`$/��G�s�G&�A�Ǟ�#�v�|B�r���t�1��{�A���.\�|���]����U�1K�M��r�Δ���w�lr�(�Vg����2Q����C����Fz�DKD�b<�0P/?�eY�n�R;�=!0�Bj��@6<���z��+��2�X{a�������Ԛ�=� V�}���,[��PV}��m��rKHr��k9L#�wO�b*�.�;cB�/�O�[����:+=!J>��e��u�PF���&(q�=��9�og%{d��!������]�h�w�zB��A;me<*Q��#�(|eB�kK���o����nw�S��ׂ��8�V���.E=�ԅ����,����q)����08��YH��x��΅��^K!�S:�r0+$����7VNz�%�Q굄LL��u����>x��[תN��h��(�պ���]��Fݓs�ğ��t����DE�嬟�@�Y^�^�=^�E}��_2������ؼ�wvJ����1����yw����:]C� b��0��U��n��������qfB<�E�m���W��^���t)�~����09*�D���(H	�,%jiG���!Zt�����$�����,���y�K���!q�z%�����r3��lmԩ�r�^R{o1~�jN�P����4���-��,���ê�3�ET%�H��{
�h�}n)��moG����%Ṳ�Gޒ��?ĐFK�vIAq �m~Ǧ+��B�`U9��@h�dTLO����U�.�mڏ�ɒ|����K
zZ0���Y�1�x���;`'!�B>=`	�AT��ݏi�i�-�n˄�B��@p�o����wnT�����K�L5���G~�SSa�ӑϻ��ݾg"�Q9l1w���=��U�_#3�@��R���J�!�\v�.��ӷ�y7�M�L�i���I��R���I8���7)��צ)��I@A8���]��s���M���fmz�c�:� ~ѦE��L � ���RW�G��m��a�6S۔��e�I��\�]3�gޥ��u��DP*e���I�^�.��c���G�R�CV=��	��FF�mJN�u�������6��N�BBkSrb!j�^,է���5r���)�9%Ȗ�	톰�v�U8��p�.	Z����`���<�� o!�N��u�6�0g[Bk��} ��B�=l�� U˅�7>@(�W��Z�,E�0�Xh�n84/�X�oT��^U�C�W;��D�~Z3�ǽ�~�����:^|�'�4o��Y����*�Il�~rL��`c.������s,�Ǫ�j���T�8c�,�N��ce�N$%����(}x��>Ŋ���#>9����B&�y�=��j���;�i�N���W��?,��E,� j�
K��f�ض��L�-t9�MgX�ܡ?۫��{�9�!�vXR�DS%��
���J���D/�W$}l*ҥiW>��>ZW����|
��Qk���[N�P
ے£=��I��N,,��%?�S���Az��) C��y��%:T^�m;5�ĵ��t��J�L��
�h�=��ן��?9�A�%�6-�2�z��g�i@ץ�|sA�(�R���*h2k����F@A����r�И���ݎ������P�i�$�;\��乁Q��I�VU`読!MA������&�oˍ4�&��%7YS�S�}�.(A�?^o�ۃF�x��)Z�	�����Dr�Ab�x��~[S��h�)��d9�@��g*ǳ�Nt��S�THM�%L"Kr�'$�z�[����YS�*cIo�4Ť�$���tN=ŉ�4��]R��[#��P2tE���LwmC�m)��˘I݂Ajt�E<Ŕ�et�]8��zFvZ���7�=�d]�qғh[�f��mr�s�?��&�mKAv��3w!�H�(��/-�-� E��5��i�V�?E�1r�C��	9:��mm��P�\��H�����^�n��=?�	Ok(��i�23!����[N+~��;�¥=�a��O��ʠ��[�y��i��ֵ�XST�B��I
���z9�L�V.�P��t�i���B/濧[O�L���(���)�Mw��[�3
���[��L���:�,�(��BN��}1�6��JY3��J��Jؓ�J�Q䷚���/*'����V��U2���2������O�4U��o�����S���.�vX���Z��Zb<�=x�G�4:T��`��UV��&4�T��4��)� �!�lĻ�-1I����z�FB�a%��I�e��c�=gb���>������N�~ƨ�Ȩʉ��K&��߭��	!-״�v�뚊$N��}P�{Hs�v=�8떺��xտxxy1F"B�y�ߊ�%r-�A�,�vn���Mn�@+�TZ���K�o���(��a2�޾��S�A:k��[����TfF���Z|G��OJ�-�4�z$"^M�R6ޞ����q�e�!��ۡ?
�����i��]��-�H3�2aY��Ӗ�/�0����)4Z�TY's���ē�tJ���6�t�v�c��R`D̺+���n��h1��^��Op)�"g�U�����l�<�����ǿ-�����:V\Aҵm^��:S:��@:����Ǘ}"��$�	kh�C>�.�P����DF
���[t�i�M�S?�Fl%�O=_�
Ge�u~�o7΄�3��#х�,?�[�)���VF������I��]x�((����2�*�: ��[�D'$E����'�����W϶ʽט��!Ж�P�.;�&��%l�FS"Z�E�Q
�%H�P(����>�-�,(e�(G���8��PF�+o9]�S�Ԩ%{�>�U�_UPh�Y���)�j�K,�Ov�4�S�h��'�§i#-���Ir\���ӕt�G��k�S ��Ǯ�U�&	?S����܎��%�T%��DC@��;6��/9���ݕ�`:��_��>;8�Z����m�H��@]��/)��9��4j�^�d���H��_R�Ck�k5~���H�䋨��&�~I���rRE)N� ���z ���Ę{��ȡ
r^��a#2�L�{�c���'8!�>\q�x0��B�=bNP�|���C�y>��L�n�~�˷����I�������0��6+#_ߞ�{'Lg�f�LS��+7�d+ʆi{gC{�)��i�<8��$��m���	����h��aQ�,SDS�Y��1q�r�.�wz��_F�i̊T����#	�m�Yb��S���L�%�2B+xЬ��s~��gK���&��L��R��6}�q�&Y�zϭ�m��zQ��(0�pӗ�źw�t�wF�2���=jy�϶s��4%dJ����I��~����[�u�CF�=u���Ԅ�/�5�e-�k3٭6_U�N����    o��y���ݸwb�X]N0��N6��Υ����~�3;{ΚG�9'��RϮN��i֙H��IՉk�]���ΡBg ��t=^�έN�$*9�?�y~�B����hB�5��c��B_�VLɫ�-Q�>�n�h���D	QߏW:�;e:�KVJ��Xz�Kɴ���l�1{�J'��B`liq��$���k�a�Z��1k�M ��'����|���d�Wy�)���iO����A��Y��ﾤ�h��!:�?����6�s^ą�%�B�H-�L7�7�<�!L
`j����G]�s\���$¥�����;p|���ƫ�%Pʂ�h�W��X��]�T]�u �2�h*�d�d'�/) jѸ�v�隧���墥4���K�B)lW-�~�|ink�GM�Mi�v�K
�"pE�ۙ>׭K
�&��'���+��f\�v�˾�`���f�x��5;�~�[��S�����r�4�Nu�	b����%+*׏��	�u�Ԭ�$��5P}��5�a ��)D"ݲ�@�E:C�٢�ȍ�}MaN��q�E�et�sأrE��T��1!9�y�;ߡ�*U^��<��)�ٹ*�aDZY?��!�$߮��b^7��H���F�b����9X�e�\v�߇���̱yt�d��󽓥3�C�BdyE@�I��'��ϡ�o�{'F'�<0�O�ѽ����F6YNӀ��ʒ����V��kթlh倈s�^W�o��+�64�|��U+�N���`3��\�YP�]lR�wrt棡�M@�Q8�5D>�2�K��y���DXĔ�i9��`�9�9щG�h�������;���B���hbl-�?���NŇ2��"�R T+9&������*��G�����NHT�I��J�u��4U���
�Н�P��_�[�Q��^��(}��u����C[���3Z�������9p1|S2Z����I�N�9�MK	�e]��T3�E�ſW�
Z�J�I%OӼ��'�[&���~��d���@>9i�:�^��bJ�bJ��Tr�Ă��۾Y���2�z1�?���RU��V������$�o]I���hD�X��9~�긤�g������z�	2|�Rߵg���k
~� ց!�~%��I��V��Wϳq)���1D]ns��'D��Y�����E�)�Z��i�Q���j�"��k"�Ԯ;���f�%�"R�B�|E�,f�O��B��)6Rֺ��y�����K��B��"���$rx��s���H��9~�X3s�܆�5;D|Z�H����fv D��P20h~�VR�����S��r��(�������3���/�'A������wMl�pf���>6F��P�:�(�.d2�d*[��i9D	~ǆ1�����8B�G���j6-6-M{
������7�2W�c=�C,Ʉ�?��U��K}�:*�x�s��>���{�~F� B/8�T}@^��,��/x׀�
}F�~�֌�)H�����mwU�u�oSc�װ�:顥�j������|�V�g'R�r�Q�z{
��YԺ�ԇ��W;��׃o"��ԞB�5���$�++�H����xY�&?5W�����\J����X�W<�p��p������QC��c�I����<S������H͡�]�.p�m���#I���hM/y���,�����ֆ��k(���>x�_��ȑ4���B.������ε��D�)�%v�F?v� �
���:�[&�J��zĢn�`�:��:�����,
�)���0�%!Pj�t=����rɄ-1`]P��4ą��g1�#�/�����2e.���Y�3�S��;}ęSq"�Y�LA���s�3�+�;�G�%��b��ux���/�Eg��z��F L\њ��5�{@c���{�e����bЬ���#��z�bJ ���?�sC���?�t��PGܒza���8-h�O�&��H?�U�^{\B�\	��TbJ��N �����t�=0)�!-���k�(��G���8�x��ΔXZ%߳L�E���|�R(K�]����!䳋�c��<���)�Z֘Ӵ�������Sڏ!�DM�
벎Q=pB�����=�)O9X��
b��y
�s9���6�{���/bS
�J]�������m����B�-Pe�~���^�X*���S�ެc�G� �����~��_S������x( \
ʶ��E9��ԨכU""R���q)p[i�*o�!cd鮛���"D6L��H�J�+|���cL���8�sC'����s.c�U�9
2��!aR�<�9�i2�0n
����?���8���
�L!�Y��41��a����_��B�)�v�6�Ɓ����A���P�4�s�5���ߋ'��C�M�AG�n���$�d?����Q��9���E	����Fb�~0���x���y���-NÆ�0%=�I9blB��Q�H�A�0�����iRi$�4 �nԳ���g.e�@hV���+��z�咺�1Ǩ�Z�M7 __[���#�������\��*ȇe��*Z ��܏�e�DܩFڌ|c�8Gr8<�#Ņ̑���d�nq�� tH7>�nVGN��xS�ا��>�X Ȃ�mKE�O���_ƥ����%�)�����ޚ�v�/�l����4K�	�����5��x�0��?>�HF�?�)U�8"�L�?Y]XJ�U���^L�㳿L{*Z��꼜,���+?�z�����C5�}_�*1��N�:b�`�fG�SuP0��)�5��)�!��I{���z�K�Ո��ӵ�B%T�{�B�߾t�J��D���u����������^{4��$�k
y��4ժ|T:zY�]�]F�E�#n
sJ�n@s���6�
ryǚ�'DJ�LnY[}�eS�t���Κ� ��IOO?������'�o�<¦f^Æ �TC�Od�[��Tzp�����o��r��� L.���������b��Ϣ(����7��)��C�l����a�^̣🀞�w��<.%F�����z�ߤQ�ɤU\�Y	�n)L��caGu�-a?_�qQ�-k���#d
~j(�Lr��d��c�4~��Y[
t6������/ʐP�������ST�8�-go]�ҽ��Y��)8Z�X�{� 2����OF���ߠ��e�=�x�1�yt��:���U����8����Ո�)�"E��/ʕ�/�k�}�ޙB1r����5v�J�W[pO��?S��&��S���Y�e2�pNޏ\"�>i�qʉ�e&w<L3�邸���jP����l�_�b+�*ښ�&F�d�p%�;���Y����u(�K�D�A���7�`|�3�=b��M���B/�fݟ�1l� {�G���7���U�	�!��&"�q&���Z���k{{Pl�w��L�)��vh�RFDtK�b*�rN�N2,��'9,�U
�<��\�)Lj
R�-H-P"���N����aSSP�F+k.j�y�FzЅ�y�T��)Yb.V&uL�k�봯�p#����ԙ��tک�� ���s�)LYI���EtYJ�d��{��3��9��m��B��AC�x�G����_�A]�ڵ�<d�$�&�Y�ݖ�m�=}ջ�q`���QeǼ�Y��E��"R �N�F��ϱ%��4�6D��TH���U��Ї����C��^��U���w�[2���~�E�ۚ���,���R޶f.`��؄A�/�Q�m��?�~��ΚK�Ul��@�X��s]I�^�l�5��)���nBh�a��ܠOC��fWޭ��3� c��3,��sQ(j�_�E|��-��sw�H���I����y�3��󰢝$�64�0I�+�]���qrg�a���w���F{M󯱤���T��%٧�N2����S��y��y�~���yO"�W{��paCl��U���?�m{
ז鴠�}H��R7=��I�_�^7b;��:n��)j�
�ǱBc���M}�&�X	L�F	�ǫo�x>2m��)T��4 ����/xO^3"B
��!hZ�ˈ����'���)$�g2��gپU�A���K�����t�� h&i:�y�m�/Z] �  i�UG	��K
^h~�no$G���{d�R�nM��E�� �����^��v��_�N
�XH�K/!�66���c��ބ'ިuۧK
}V2u���s�6���C�MB��Q2��龡e�8��/[Й�K
���1)�d�G�˱WM{�R4>,��③��(��_'��;]6s�ı�^� ��~��4�Gq�j\	oH8i�(�^Γ��M��N��\ i&�&M�SE� ��D����tv����Osf�j��c��ĽՏ�H���ǩ���?��|U�W�2��N�N�`�Z6tXԛ	�`�Nݬ�R
B����-�7��gU��ga�ʂ�Թى���L���v���S:�n�'D.���"�sy9b#y���hJF;u:vB9��@̂c��ź�<�x�m��;�P��d���[���T9��Y"n	��!y��qo�C���nn�yk#�����MZIC�)��aeUJ75��{�$6��Ğ3�W��n��5��Sfo�S�!��B��x���28�d�n�"-tY�qSx�i�'�^�:ѳ��e�����Y����)XZ��p�1A5@�N��)@*��p[���ǆe���Ns
��yV�$�tҿO:���G�m����޶t�d��>6#+C� mQ�6��z�d�|z��y�s��ʨ%E���JX�+9(He��z�7ߡ[�K����T
������/����1-)�j��d�>�������L��V/��xl���ڏ��jU���h�)-�$�I�V0¦��~�����	H��,�s!S�3�!:E�я�sԱ�LOlS�S4G�aÞBpPeM�s�c!O�]��NH=�<Hh��r ��;"�Pg�Ƽ����ͷZ��k�zZS�Cp��o�S���τ��E�ڴX眑\�n��A��Hډ�7uvB9;V"�|p��#�d���@K&�B��V�f!-��B�u���k�'Ndem������A+t}s!�#�S'���p��CP2Z�p�Ej�вvKs�aQY�#ZME���\?��� ����[n�L��4-u�zY���@;�_`�`/�����1��Z`xl�_�qj�4���%�\Uvu��%bO��[���d��oA��f�}�K��H��*�퍹�݆��zl)LY��H��jG/�;{�wur��DLaI�h�%�����ժ:�ʠ���%�B�S�.>�^J��I���Ri���(D���H�{&�紥f��R�~1s��Q�j3��.���PǱ��p$N��� @
[Vv ����������XQ�]R���d�,Z���1w��'���B� m�	�_�FI&C��?�����_�3޿�8Ą?b��S�����Ҝ��>��7��P��꼥��}���9��֜"ǝ�zD�ڞ�%��b��U��}�>U}7�Ŗx��h�艾�;D��E��=����g���p��|6asc��x��rPh��䓡��7�����26:�&�8�jWP�J�Y�AOm�{y�!��qk
�fJ��,;J��t��'�������u�;۪�~x�SSx����~��Q=�nW�^�v�tce�����6G���B��o�]~k
�ȣq���H�	�B� D�bS�Z'LB�|-�,�ȘɺHG!�.��`����!������R|�N6b�L,���4�B�JE��M��g������~%<�����F)G�ݖ��N�N��|��������ɩ���=�qr�
Z���U���#���ꓔkH�3���N�s�ݰ�����>��'���{�TB�w���j?��E=~���W^:@�%y"����$�=�I"��Hd��Л���v���o�C=:ı��T�X��
�\C��7K�֖��錨y����n/&���&����L�5L�
����y{=�# Dk�h%(V+6�>�_������xI�Yԉ_I�*�'���ô��'/����z�����u��`�?9])T��E�I�	��"���K���v֏�3ƾQO�2���dL.���]o,:*�(-�ƕ��OgZ�Z��ǛY��B�h����^$�T�����h�� �Pnh��X�`�҄x��Љ�Ӧ��D��B��=�B��F�A�V�MZ�ˢ}�&���13��Ȫ��">r����� T
l*M�OrrN��:����bhw�� [p	vlg����I��M�J��5_R�R�)��É��	��ԱQ������ҍm�3��h�b��z���K?�����u��O�a����1d�2,�1���j���5�H(���6X|yҢ�߆���<#�
K�l+�Ȕ_*�Q?�����#X��ƍ��O')V'І�7����>s�	%�b	=�e�߅5�dz�L!f4ȤI��RK���[ڦ���tR��|�s�̪b���t³����%�h�h�J���%��ܛS�y1����BK!b&!�%�r6a~S�D��6O9�Y/$ӻ+�GJ �����m�P��<��f�5uq:����(i����S#bh����A��(��`��
�<����R�w,����Hrr)��Sl
����Xs��6k�K]�y�a�VH$"-���F��U�ig�`��#�I1[�<_@��y��w�.	���#��AW�h���Js�"�	Y��b+b�ē�E�XG��a暴�%�]$f�GM"H���&���h�p|�v:�*,&��.�vX��S�o"ʚ�2G}�l���I*����H"�9��>A�o�������a>8�j;+�3�\�F�.q���6�]�6���'�ʃ�a�Ӻ#�Hޅ���$5� T/��.J7Q:.��.�E�z�b+�{r��2����"ƦZ+���֗d&�J���C�=��v�>0sG"֠����4����%�V3�b���SKl!��cl?��_rX6Gwa��^�W�oB6�Km�=��t&zd��z�����g<-�� �OM��%��-D��9T������09�[#�M��с���?�C�u�
*�{��|)��n�ۭ�ꒃ��L��j���6�^�оB�d��t�b��D���'�pdj�~^r�Es�9$70��*��+f��pü�P�<��mU��OQ%�?��� ��!�jG3�l:%@�%�%a�S�"��W��z!3$R��3��|(x�'�o¹!���tq��:B���s��y���7������o���$b�V�j����)��Rd�bb~��w�!����ڤ��g� ��~�=������;���g���ӝy$x������RB�x�L�M.��p{�{�ӱ��%7��9�"�_�
Z~Q�bٽ7�{V��oD�Y���O�'1��_�i֛P���y�cηbT��8��̛xɶx�P@��?C�Z)��DU7��+/)�F#]db�����O�@(0��
qs�E�Q��t�y��ό�2o9|��V�驎z��@�����X�!v�B���!��}�	��P$��nm���K���;�҇Buz�qc��XR������nmի�kw�=�^�����!��n����Y=� ���C�)�I�+"� s��z�L�&�o��0�F��&��5K���M�0�i8i,9Ț��ٚ�
���Գ�sI�U��l�l�(�`i�q0�y�x����~\B�� ���?���/��u�n��I�eJ��`�oM�5���?��Ӷ0�w3�V#�6~�[��h�+%	#^����1�V���8�D�㺳���r.90#*���||:=��_�}�t��0�׫VI���/�DQ��d-3-a�F�?=�h���r�]Ҝ���9���:�(^i�i����N<[�1���"���>^"!U�c�gՉV�8�倫���X}K�LYz�-4��p|f����9�"7���H!�@%k���Hxj���0U[_�k]�.��W&��sM��1\������������hMQ��E0���E�RY�V<��_����?�����A            x�3��())������ ��            x�m[ɮ�F�]3��?p&�c��m-�-�ۯ{�6�U�D�&�~�r`U�d���dd'Nĵŗ���c:�?/���>���K�s>/�.��m>���q����q*���:���E[���V��z(���㮩s2S_�q��Ӊ~+��q�����|X�+��ھ���v]�d�������c����w�		�� �P��۷jx���jwu�k���4ŗ�z'E�u�]ߏ�[��<,�}9��˥��68w���	�[���e��nW�9�i�/����]�CyZ��i*�~./'ؾ��{	�\/����z�T՛�/WZ(r����LW�&��W�c��rz�庰��n+^���J���V���UcNf���'t���X�i�η3�m#���J��6�	�u�=�����7kK���df(��8^�G��e�L��!��q�??��o-9��e��\����X�v9��˴G���mR��r���Ude���ت�tg�x�����O?s�g���ƫ5���U]Nf�-~���m.�N��e���w���Ǌ���	�3Y`-���B1/:����.C�V�o�&?��]��d���'���r�ᅗ��O��Ƒd��t�j,��9�k���XW����,Î� ��ɡ�0�-w�L�)z���id#3Q:�.�,޳��~^�Ż�Y���!���U�ݔH�2c���ה����>)��)@U1��~���]�r2c��_��V�rF��a��Sbu-+�Yݖ��QH�9��}�	Q�]Nw���8,�(�n[�},R�rE�22c��v\o�3�,�������}>Ϝ`�낯�õ��ø)m�k���d��e�h��Y�J���BV�5IEA�Pn��̠\��������~�;����r��x����*�����hDh��Z��b���}�r%�oJ%^ޑ�[��
f)�l����	�`�9����E�[�x|��n���s9��]�O��C�{�Js�Dz9�<P~Vu�5yɘ����M�	�w��!�LGM��J��Q7Ty%�COms2����A����i����2$�ß�N$�e�Ӑ[9����Q�s2Swſᅗ���;!w��l#�n���Lk�̵�*e��������4�&�/�sx��o_4��|'�����L=��73^61�#�\J.A7�3K�	'��KUz�|���w��?�Jm�c��7�xYǒّ�qߺ��	��E'dpMC?��%�{�H�#Ŏ^��v��d���3J=?���r>.�f��F󁟙6o�#������̸��7ߘ�UjF�[�m6��Y��m�&>.{���5rMbA���� .�o�%�L^�r2�sQ&�ra���.?Q��(m \���"='��� i����/��VM��a��'�h���]ӵ�I������G��r<^�i���[]S����r2�PE/��"Ň������Wu6'3�Ga�|4����
��q����,�q0;�rMNf�X|Ҟ)�^���B� I�%frcy`@/J4�.	��Y�@�Aa�2���22�T���]u��#��e����Xk�Fټ޵6'3�->2\Y+�2]2�kFI��]�l� jx �Ơaʪ�28I��tA�K���pl��uSLY+����
@��<���4�D]�QK��P!�.I�ů��4���r2�4��S>�7���6�}b��6������r2�ǈs�D!8j��ϒ�m��޲&�8H�����A7�T��is���X�#��qd��������9�iz�׀h�HZΚSs�.��r��D�<���y�z�A�Ћ������Y�l�aL�����KC�	اny�n���4�oџzE	�rf V^�~�r��D`b�r2T@�n~�@ҤK�&u�^1>��H�WcNfƟ�J�xvH��R�w佨�g��*�z�����{*n;(�/��r�)x�r�������uNf`Q�#�9����݅�n� �e�a�����?�H_��I���z���4_)_U�Brt���,'3m+��z����B���ЂB�8:⁪V�eFfZm=�M��P�$7�f�ʠ5P��_�V�J]Ff���M�d�wY�}��Vu����#HŲ��L;P�A�C\ϔ����� �zK0X�4�h�*ux�Hk��̴#lp[&=U�Y��X����LmP Uge���Bш9n�Ph��W�+�JTЛ���r2����+��˻�����F'����R��QZ6�4up��jj쵾d�F{�uK&�s6J��Y�~���q6�������;��f
�V����T�/+W����VY����I��<!��$/���	}�� ���߂Jj��/2ӵ�q%���8)�������-	�x�NAҳ�tq��B�1�?���s�¡e���z���ʳ�t=e�	�$����H����r��& ,જ�t�(��m��B���y��	��r`22Ӎ���q�Y�ц��]�9��Q���W<ˢoO5���Te��<�NC��Vԋ�T���@�9��m�e���9����{�%��V�o��a�49��������!fQs�ي�P˚���j�#��<>e6z�8�('����8i{2?��ӄ�"3}H*��~E p�_�A��n�	#���MNfz?k���ц�O�@7L(��X����YY��^d�׺*�f�q��H(b.>�
&�K϶"���.WU'h�Ef���]}�'l}g�E�.�^�#kSX:�'6'3=1�a�ř1A�)z�L� ا�=?��^!���c$�NZ�'��:d�7���b���� ������ ����̑+="�F�C �����Ef[����;�����N-�^5�-�!cSq���PkMG�z4�	O�ɋ1@j��A�
�238��:�2����īr�=h��,3C�[�S�q��S�0y��lB�z���223 �*B}Ndn�����I���H�ݗ���?/23+tf{x��b.���L����$a_<��L�,�����z�����K�x|9�����*ƃ?4}Nf������(��&�JQ�h�[��xL>��s����9�����!�	�)�#7��JAB]fC�̌���F�1O���'I�����#���Jh��-pލ�3ЌS���)�j���ZI�g�у^N��� �� �E�l\I�^�%0�ڜ̌�-B���s��H�� ���]����wN��̌��@}l"��m����f��|!��.'3c+�Z]O���e�8����<Me��x"�G��S�����S^]	D��u���j�6dd��Q�޶9�)���{�K
���*���b�$9?���9����@K�=�v���6��G���1�I3�2�]��L�����zaHr�ٳ�Ɍ�*%��0
^;���MTI#ށ�,���E_dPi���z��k��I�����4��?�e�U�X�!'�q5� b Ě�\���`��9�`�#��nr2hw!wΒ�.������6��)�k�<�ܵ��[��AqS|�{�)U�2�� So�L�r5-`�1'�^�V��5y�I�:<�lN�$<����Ыjs2����T$]�� ��	ԣһ�:w	��А�����G�\�}��?oBi��!\�j�Șz�e,~�4	?K��C �^D�-ԂRA�ks�
Eu��]N�c�'Y%��C5'��+Ԑ.'3��`F�M�%MNR��s�T�������d�k���@�AZ��5�L�ŽZZr�E�����"��Z��$�N)��=��5��}/D�[��GmdF�..
(5ϷN3g*9�[�G9�{��U��AwC�NB{����:{x���?຅�3Z�Pu�d8��{�^��'���a �7�E�Gps'<PAes2ѥ����_��D�-b:�\�d��"��>.Pf���w�@q���D<upZ|�����a���=ld�k3�}W�P&�ۋG�(���r2��敷�"u)P���餠V&�5OL���ڜ�X|�?�\�x��d�����O��OQ�w9�Z��I��3`�W�x#X^|8�8e\�"�V����\�'a⥞$K����y)�渢t0�d8ƥ�2�8��� �  �7!yn�{Y�bo�S�hx�dE�E�3ia�!`��'"K`�ݱ�4�"�Ҷ�]Vy'Yv�@'`n��| �Ӵ��OK�,��/2(��{nR�:ra�~�LP/5�6'�Ξ����L:�H��I%���ES嚜�:op��<(Q��꘤�>j�5���Euc�Y��6�N�#�l	�����=���pD:���>�_�A��(����o+��<@iƜ��@E�.����m���Ы�_hП#;�L Q��;�/2�S+��%���7��x}��k���j%=>ˠ��dn3� �T�xw	�O,�zG[H�32���jl�a�2�7�8�!d�Ե�*L�\�@��	[ʫ�^#Mv�E)��}�ɠ�+~}|Kxw!2h�+��ޤ�m
]�:�x�A]_|mռ)���'��Ii���3�5o鍴��lN����ct7���I�ޮ�����ŋ�6'����c�(Ԯ�:ede�.�+���������g�� cNf,R3��
����Ql
�f�F���o+�B��gX����w�􏉖���l�Ѳs�����g��>�~ %{:��ZeG�b�G�:�"�V�IZ�p�\���r���Wb�ټȠ�a���6x��3us~�������A�x+�܋��&̞n<���}��t�F}kz�����Oe���s2�Ѡ>ϸJ� V�� �8J��q�#;����E���>�z6�bsI����X�G~Z�!�W�"�H���p���3I���V;%X<���ix������	�XRKC���o�>.�*�=Y��m�h�%B?��}@���t��_1�9���E��RV����T��s��Ṱ�+	H���gN�ɫr%N�1��z��F2�n�����I4R##3�gNp�g!7ף�&\ɵ�@�_Ag=�,�Rf��4�pR$3���	���޷��g������p�tY�~>w�2k��\�"�Ʈ�#D�ӈ9y��m+5U��+����c�� �Av�      �   y  x�m��n� @���47�_���5��l��q�.5���a��J�+�+�*r��VG���mPQ���� �(����r
�C�u~P���7E*��aW�^�E�_�Y>����1��ݧ]�&+5o?0�K������'�d��Q
W,�[��'Z� �VD���\���-Q����?�Ɋ��a4+��D�JN�{��D+I��yj��J�A���kt~ʓ�%��QG������^�sCFʜ��I�f��,C[�R�<�O��tq�6I�����V�v�s�^����O)ȖP!���~�6d�C��e��E�$�Ȏv��>�ݠ�b{֦dC�c�/\�pH��uĳu�n*���u�o�l��k�4�|w�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �         �  x�u��r�8���~O�u�-�	�$\L��l �\~�&!���my��\�*�/-u�sZP�P�}��?Y𱪁��τ�c¨�@X�3�I_0#���-y:ޒ�U��IɵʨШ�I��H�o�`��o��S>}PFFF�����t��qw�f�s���NRYr��{�"�m��&^|�= <���I�d�]��<�LT3 �E��V�ľ	$���������ů D���QEhd�$�o���~���&�>��
#ܤ�q��5�	k������0f�v��,z
w�9t�=(W��y��{� ��w����v���*梨*�A���瀚4Rt��sBx�U�e"������]���TS��%�ӯ��Q|�6$��3��U�J
�M���k��m�tv� Fba�F�?F��FO>��DU�_h�ڄ�Y�pPKя�);0k��jT(��~�+ڄ%�f&V�v��{B5ٍ�i�Q�H��K�Ǔ�/�O������M�&pK�3�ΣM�?�k�I�@U�3<0��6Q�:�Ĳ}덏c;WF�-Ԥ�t�9�̚@��>��$֬$Ĉ�#�j���U���t����PUD�6��&D�E�������eiW�sImB�VUU]����;`�m�jB)�𳊪(`�������N�Ve����$!�-:c�����ܩM�H&��¯�E5Q4����������!�hB�:cQT�����q,fI^~�)� �;�(�$`B��]���pK���p@)��5�(J��޻��i�0OG�ΐ�MxW�]jB�[���u�ӱq,cMSJ�]�f��@TX�k=�~��i0�ÒL��\�GTZ4�r��\'�*�C[�Nh�p�G�MQ�哨1U$�h��&�k���cIʦO��ڰ^�JI�CR�_E�Т"nMg�vLR�$�>/���+��Eשn0��w���k/*�{�"�-���}���i���j����0���ڐG�ףlίtW� 	�B�U��{h'ˆ�����!IhJ	|�p��#\�(�how�L��8ߕ~(¡H�8��������Ԧ��C�NВ����uk�D��7�\J�kJD�+F�{�RY�q���q�����L	�^��^�?�C�ֺ��*Fa0��[��}a��xՍCi��0]D�UVt8�h��|��}(�0jX�ݏQ���z����=v         �   x�%��0�R1#��K��#�yxV�f!0FbA,�4\_H�r���(��}0���=X!G�=�Q�i�T8l�nڅK���ٲ�m�蝼�uz!��U���$)o�/�������e�3���C�= �      �      x������ � �      �   M  x�]V�z�<���';��,���$������YI�z�~�����>ԇ�a����'2��Q��B%-}Ց'M�M���t��}q:���lK�h�5�𥣞LGN�J��;RE��8Vz򲲣Ѿ���2D'@]f���u�=%�\�pT�@ ����PI���}��R�xR��8�z���_n��h�)��|ٷ�h�h����џv�S�A��W���(���I�	$.�� @��&��	*E���;���
6 MY�p�@[t�C �"0��xY��oisߨ��d���D� ��w�>ū���+t���~I�����߼Ĺ%_��	����㯏4�v�D%}�ד��ϛ�'���e�Z�5d�X���
C�;��4�R�v �^\Q�p��s�Q#d�n����-� [ˎ���zd����+u̝G���(S�|�Q��m8���%1�3 w�"7�^5��'�is��+% ��I4B��]��M5ßw��E��n�:���J)�.���HVD�3�� ^�+g���<���4ҵ__Zi)�+�Y�U.j��4��T��1�&Tc[����@Է�mC�or]�a�d����QW�B~R���	���~`̵o�}pv<Zw�'����2O�� IΕ6��U&N5;|Wbw�鋮�t�N;�Z'c~�^�Q����ibpqJ���� �1J3�>4��,
��)ɢ��50gm�?y-���ȵ8�!.	�}��#՗�>��dV�a�Gn�\'za�Kb��:!Xd���o�󓳽����'�qߙ��Wx�@��u���2�7l0������kO?���>ջu�4?�ʪl�-kԁDmT�_I�i@~2�fش���y�Ⅶ�{/<b?,¢�3A�8��JIRȹ�?�9�����.�	$�yO�%�&'���K�0�gV�i��nm�*c�X�'(lG�"��L(:eC�<�d��'¾l%�FK����uaܥ�r�e#I��}ܘ��P�FB���8ԛ��a-�7�bK��ۄ!����Q�|��J8�W���ݔ��a�e�K�4W��&M0��ӈ�Ư������ڗ�tUf���C�&!H�#�?�{G�G��)�3���/G4�2S�����.p�D]BJ�����xg�b�!���}����4�p���5�~	웲��x7iъ�zd�gM�@���q�B��a�iP���M���n&�zV `���Y�O�d<f9w��qm�m���H���-|��lk�$Yf輆���i�-�}0�e���!˙zD^�s(r3��(���^w�3H��i�$�W��8_��u�zy�S�kM��g�
�[Q�ĺ��|�����$gN�迣��V�      �     x����n�0����F��_�E_����7"�2���>}�v8�Qt Hi����`8�n�h����@N�@��^��u]���y`�;�"L8f��-~�������y��K[#b��[�&�������-�u8�P�����Lb�ji��T!n5��<q���O���x���f�r��>b�~�B�L�n����]B�e$�9@�� M\��Mf�@i� 4�B�Z8h�aҠ��9�E@w�k���l�so�Њq�,�;K�0B����y��%���B��J��������\�є��X�h�暤��V[��x��J�yz'�y�k:�@f���\�hBbS�N��x����,0���mJ�j��7��
%��,�k0jQ���t���]-�a         =  x�uWˎ�8<�_��A=��m6;� I� �{ʅ�83�pDʘ���&)ɳZ��xd>�����Y�'�̒�C;9%Fmj���Xq�q�rf�h�u������wl�9�t'�ۋ�N;љ�tJ4C;���w�;�:/����hm�/�֣ދ�Sx䄚���w�r��}�]N�Tfi&E�W����$��Le�RdǪ(���˓	���dD7��:��a�j+LwӍq�9.k���4{�M��LX��q!g�%�b�ŝ܋�b�0+ R�տ'�qy���: ��~������(�G��_CG��ؽ���CuE`����觶U�7o�e Ni NB�Uy��@��ͺJ�9k� ޯ���Ԩ���k}�J�,nz�}f��1��<݀��
&xD����p�{M�+����>wӀ����v�7`��S)4J�KyI�!�s�˪�T��̴L�ȴH���Y�2#B͚���U �3(��GԘ�_%����i�L|�Qj_�4�c��ܬ�tt��������'0��Iz:�m�y�iK��# �CJXdB^*T=;l q��2��o�Qi�}j�a�]�5��C�͚A������W2��&N>⼂e/@�f�M�XJ��-t�5����@�X��a�λV`�M�G1;J�!��
�嘜��>��Hr  ��؋�w����z[D�(kKY��b���}�^��H��+7脊yJ�1�����3��iw��dE]�Q4��FsP8�Q�����$��b�#,:m&X�OO�Y�W�E������?TEi�`3i����O��W�j�	���99�?=�uW�	��gz���mj A	��z��O�b������S��;䞄>B�xmFwAl1<`����hsK	]�������H&N�\ C��m;���a��3X[5໨��x��`����w�h^���`i��d\�h3yǁ��4?����*�0�w��u���/T]OV�B�h���g�~4'�h����<��Y�'���͐��^P��U@��r�D�	��l��=y���"����r��.iV
y�����0h���W`���*�S�i�7O(^�XH��t�����M�=`#b���7�� �5u��x�V�"�X��j�;,e@.1s���]v�W�,��/��W5!�����C!(��!�c������"���p�p��Ec�bБh0�	%�|�b`'?���A�4�P�2�wIY���<�Y�d�S��3�Sw6������l ^�ol�c���V�����y��i���QdYU�0�n�v���<F���a�VN���ᓺ�A��y'�>ꩽ�<n�+kQ�v��1yE��ߡ�~���(Ň.�G�~��B�@E";Tڲ䌄/�Ϳ�8�	F�M�4���ƉEz�[�
�&�ڱ
0�x!����^��C%�P^��EQ��k!w���*�:s��-���
�[���	����ob�z��C�W���������V���U�z���9��X��$v8�?��]�0R�/ ]YTI��� ������vѰ�yRf�N������{b)H��p޼��~����+԰      �   D   x�3�0�{.츰�ˈ�����6\�ta��6.c�P`����/l��ta��{�b���� a�#W         �   x�u�An�0E��)8JR�Ò�e� �	��z�`�D�P�+��Ql� �����o<��J�z������%�5N���ԑ��V;�x�BChΧ��8��d|�T�ɾt@(�ʮ�j���8�16�-S�V�P��^�A�DO����M��g4x!L�Y<��ʀ�
��,]o�ɻ����6,zIS(�Q��Prz�p��a����{68=
;�9���]a��Z�"���      �     x���K��ڶ��ԯ���y?v�^TPDEQ��Y����P�ןeVf��,k��NFXQ!c�1ǜ+)lU'_�:�9�ư.c?���b���"�>@vI!�F�4���C��7��M��_t�E�����7r6���}Eo�I�4�U#����~�即"�����t\�6����{4J�f������x��"9��%)#1�	����#H�~����c�哽���M�<%�9&�q�8�E�DRT�'lQ��[9�x��7-��$��q7�9���c��gWu�tL�I6�����y/��p�K"E~��0�����
a0,��%�ki��W�>H0��!���~�@CZ
}\�\��i�΂�3�<��p�p�6��|����}�vV�wCNԯ0OQ�4�1 X���g�$���O`�q��3�C|��Z�}%���"@U�WI�I����hU�]n�x�,��v�}̯mȉ�;��sV��;w�Sx�3s�pk}�^Z�&杖⾜g�����8߉�EL�a*�x��>mҰ�#LL�j���"���X�r��˳�lO4s�y�M7Jg!4T2kd�����L����[3���%���5K|-f�g�@���Q��`z���E���)�WU��y6H@��jb��a�]v�W.��͍'ô�U��nM\�A�d��I,Fk�y�^l��Y��!�eM��AI"#;z�-`f\U�ܔ�l\eY���RdY���@������B���hw]R%8���Zr {�mW�����]�Ņ�sgvkċ`� �_�K����W�%
;Gڸ��f���"��E�&�k��88��'q��&. �`����Ǖ�D-,�e�ְ���|0%��O'f��t|^/�k3�g�tD�r<E���~+tuV�.��M�_<٫w�����#��C��3ޔ!���B�ה{%H���|���?,u�۞��ܯ�)<C���+mď���b4�˃0�v�y�kAa��G]9�Cn��Y��7T^�?�M����˸�*?���T~|����%�[����8ˎ�ܖW��o�X�h�F����q��N�;ƎEں.���:C��ּ�Uk먭j�-[�á)����o@�%��k	�(�a����Z�Le?�oPR��D���1��_t�Ӯh�;[�e�΄�_��1�����q���R���'{�K��m��9�y�o��cq֠�����7�O�Cr�P�Z^�����1��G��E��E�������&#�u�s+$�'�i$��$�-���h+�>�FN�`���B������ϨR�@�����I0}t��\�Q+=�~����512�'{q���t�ng[��a�I�~V�c��F~iX4��f��������o1E{� ��ӿ5��l.5�XI	�qO�j(|2�'�5�m	��!��wi|�3�́��C)gj���{��cˁz������~
���E��su�kP;���S�^m|V��/Li��k�Ə�/�����J��4B�����N����W6�����Ro��ϲ~��s���G�%��%�XށKZ-b�U,�1�}d�1@�.a��-��~Qְȡ>FcOmVG%����h�u�0�FYn� @�#�+W[gU^?6�Z��^%[�o ��?l[xEL��!�u� 7PkF�4,�ˢ��RTe�(���/즙ߧ{g6�V4s�F�8�����r�)�X��i>�?��GR���T�Db��féş�dR�܏+�<)cX����y�$��pLO ���Ǜ�a1#YX�����o\�k.1-jC ��d5�,]_�3�����ӂ$�r����Gg���S�Oƾ��%����&K��.u��hv�Q$��i��b����Zm�3~�rq�Cr^,�U��,X��3�2c-�Xc�w��isn��N��Oz�(p�Z�RSج�K�Θ��`jj�f0�����)Rd�F1���So������l�*��Ԗ�v&t�$.tV�<[8�\��������j����ss�l��f8��#9uo=a~]��pr
�Gq���6L����3���%Pc��f��XFB��\���59��IKn��a�����d3_Jې�
F�b%��� �%�|�PT��-l;[� gV���|���@#�܄MU|� ���
�룖�y��k�Ⅺ��C��ͬ-+s#�`���8V�(����^�o����Y��'��O���/Kp_�EL[�ur���p^潠�*������@��L���iea
c?��� ���o@G3����y�
wG��Ub%�ٲW⒳˘�B��\�1ȶN���u&!/�� C��w+����\k��y�3�⦯�2+�����߷)mٞ���)v��A :U��ː$�KH�Zd�t+2��ȷ�f�N��nUL�kϢ��M[B�덙"�oa��|�rr�I�M�y�$f��* ���«��cL��e
Ѩ%�8�-A9��<�N�����F�*w��Md	��,.���������3�&\��ʹͳ���Ҥ�^߬�-�a�b9��߆����ӫ��	�NM�(����~���(��1�O�EͰm3�1�D�O��ީ�QN4��³�f�>�j��2�Q�eF�(�m_�����-pi�r�3�-`�A�n��S���53����[��
m͏c�>���F��3�럭[%��K�jK�F�^�{09E����� �hG����]��6)����O�"6Mᳮ�'q^av��x��y����⿐=�s9��M�;�u����F4�j#"eAb�͛D��#Uj�q9�!{q����\���煶���!����f�@4��lV��uL��5��a''T��A;��U��!����dϚ�:��໻S��{&�]ǶjM�����{H�������{aK�����wZ2Y0A8*��O���]>iK�0���a>�ξH�!-i�S��:��i"�VkvK�Tͽy�zg'l6�MFaD����8C��I���갩ʳ��ph
A#c�s�O�*?�\��"�UT���	46�2(z:�'��w���%�0���):mR0��O)���6��d.9SyÝ��YM�������#�N*�����O�-XP4/��v��p�0�#0�"��bPF����½T-��֒=���mۄ��
�����p�6ڵ6��;��rտ�Y��ޝ���j�nF�[.���ح����ưD5�C|�����W�E�~ډ�	����l��'�$� 8h�[�����UlM�>y�vJ"OD�B-s�.�X�p<Ž��|�E؛�OZL�b�>�YM�M�ϋ�a���3��E��1��Cu6�^D���It�jˤ�F湄j�Y׸�WG�A��zgp��"��='��pA=`)�#�r��V@��-�Փ��b���;P%*c��%�%n9�@�-�����,���z,��F�|<nu#e��ZDQ]�έF�ا�)nSڏ�����SV�D�Zd��/UY�����ǡ��zB��s�j^������H�D���ڗ��"M["xߤ�����Sr9���;NΦ~����F,1��w���ٹ.Ŝ�i���N�7M���H�r�_Ì�Չ"
l�d����x��%L��(����ПЀ����_�3z%MBg;�ު��u�9���^F�<Ⱥ��Ѐ�&�}f�#M�qm�w7����:�����c�_�\x�^��-��Z�ė @9]�^	U�A�h�T=;�_����0��ܳel���P���$�fZG�9N#?�w�h��-�jcZ�����ٯ�T��J���Ԭ���қ��6E�l�Q�e��� ������(>��l��#iv�K��w���AK�oubBoٍ��]�p_�P=���yV|/i�k;%�aV�v���e06K>�)���J��w(�Wϵ���d=W���-a�Eg3�ҙ�6't#߰ns�;/8���2��,�ng�Ayq�꨿�qh6>F�oNv ��n��`��#~���_����     