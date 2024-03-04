PGDMP      
                |         	   ecommerce    16.2    16.2 #               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16475 	   ecommerce    DATABASE     �   CREATE DATABASE ecommerce WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE ecommerce;
                postgres    false            �            1259    16500    Carts    TABLE     @  CREATE TABLE public."Carts" (
    id integer NOT NULL,
    "userId" integer,
    "productId" integer,
    quantity integer,
    name character varying(255),
    price numeric(10,2),
    image character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Carts";
       public         heap    postgres    false            �            1259    16499    Carts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Carts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Carts_id_seq";
       public          postgres    false    221                       0    0    Carts_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Carts_id_seq" OWNED BY public."Carts".id;
          public          postgres    false    220            �            1259    16509    Orders    TABLE     d  CREATE TABLE public."Orders" (
    id integer NOT NULL,
    "userId" integer,
    "productId" integer,
    quantity integer,
    name character varying(255),
    status character varying(255),
    price numeric(10,2),
    image character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Orders";
       public         heap    postgres    false            �            1259    16508    Orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Orders_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Orders_id_seq";
       public          postgres    false    223                       0    0    Orders_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Orders_id_seq" OWNED BY public."Orders".id;
          public          postgres    false    222            �            1259    16491    Products    TABLE     /  CREATE TABLE public."Products" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    price numeric(10,2) NOT NULL,
    image character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Products";
       public         heap    postgres    false            �            1259    16490    Products_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Products_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Products_id_seq";
       public          postgres    false    219                       0    0    Products_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Products_id_seq" OWNED BY public."Products".id;
          public          postgres    false    218            �            1259    16476    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            �            1259    16482    Users    TABLE     P  CREATE TABLE public."Users" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    role character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    16481    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          postgres    false    217                       0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          postgres    false    216            e           2604    16503    Carts id    DEFAULT     h   ALTER TABLE ONLY public."Carts" ALTER COLUMN id SET DEFAULT nextval('public."Carts_id_seq"'::regclass);
 9   ALTER TABLE public."Carts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            f           2604    16512 	   Orders id    DEFAULT     j   ALTER TABLE ONLY public."Orders" ALTER COLUMN id SET DEFAULT nextval('public."Orders_id_seq"'::regclass);
 :   ALTER TABLE public."Orders" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            d           2604    16494    Products id    DEFAULT     n   ALTER TABLE ONLY public."Products" ALTER COLUMN id SET DEFAULT nextval('public."Products_id_seq"'::regclass);
 <   ALTER TABLE public."Products" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            c           2604    16485    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217                      0    16500    Carts 
   TABLE DATA           t   COPY public."Carts" (id, "userId", "productId", quantity, name, price, image, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   '                 0    16509    Orders 
   TABLE DATA           }   COPY public."Orders" (id, "userId", "productId", quantity, name, status, price, image, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   <'                 0    16491    Products 
   TABLE DATA           c   COPY public."Products" (id, name, description, price, image, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   �'                  0    16476    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    215   �'                 0    16482    Users 
   TABLE DATA           `   COPY public."Users" (id, username, password, email, role, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   :(                  0    0    Carts_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Carts_id_seq"', 1, true);
          public          postgres    false    220                       0    0    Orders_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Orders_id_seq"', 1, true);
          public          postgres    false    222                       0    0    Products_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Products_id_seq"', 1, true);
          public          postgres    false    218                       0    0    Users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Users_id_seq"', 2, true);
          public          postgres    false    216            n           2606    16507    Carts Carts_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Carts"
    ADD CONSTRAINT "Carts_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Carts" DROP CONSTRAINT "Carts_pkey";
       public            postgres    false    221            p           2606    16516    Orders Orders_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_pkey";
       public            postgres    false    223            l           2606    16498    Products Products_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Products" DROP CONSTRAINT "Products_pkey";
       public            postgres    false    219            h           2606    16480     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    215            j           2606    16489    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    217                  x������ � �         ]   x�}�A@0׿���^[�S8�M�$?�'03��8av�5]��;ϫ�H�>���7�hC�=�M\��+����s��,���1��=            x������ � �          d   x�U�M
� ���Řӻ!� c���T��x��! "�Xt:JG֭f���hٳ�KI-���KuX��������%B�E�}:J�w�)�            x������ � �     