PGDMP                         x           postgres    10.15    10.15 >    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            N           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    4            �            1259    24687    articulo    TABLE     �   CREATE TABLE public.articulo (
    articulo_id integer NOT NULL,
    descripcion character varying,
    precio_publico integer,
    precio_mayorista integer,
    activo boolean
);
    DROP TABLE public.articulo;
       public         postgres    false    4            �            1259    24685    articulo_articulo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articulo_articulo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.articulo_articulo_id_seq;
       public       postgres    false    211    4            O           0    0    articulo_articulo_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.articulo_articulo_id_seq OWNED BY public.articulo.articulo_id;
            public       postgres    false    210            �            1259    24636 	   categoria    TABLE     ^   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nombre character varying(200)
);
    DROP TABLE public.categoria;
       public         postgres    false    4            �            1259    24639    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying,
    apellido character varying,
    direccion character varying,
    telefono character varying
);
    DROP TABLE public.cliente;
       public         postgres    false    4            �            1259    24645    cliente_mascota    TABLE     �   CREATE TABLE public.cliente_mascota (
    id integer NOT NULL,
    id_cliente integer,
    id_mascota integer,
    activo boolean
);
 #   DROP TABLE public.cliente_mascota;
       public         postgres    false    4            �            1259    24648    cliente_mascota_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_mascota_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_mascota_id_seq;
       public       postgres    false    4    203            P           0    0    cliente_mascota_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_mascota_id_seq OWNED BY public.cliente_mascota.id;
            public       postgres    false    204            �            1259    24611    familia    TABLE     W   CREATE TABLE public.familia (
    id integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.familia;
       public         postgres    false    4            �            1259    24617    familia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.familia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.familia_id_seq;
       public       postgres    false    4    197            Q           0    0    familia_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.familia_id_seq OWNED BY public.familia.id;
            public       postgres    false    198            �            1259    24650    mascota    TABLE     y   CREATE TABLE public.mascota (
    id_mascota integer NOT NULL,
    nombre character varying,
    id_categoria integer
);
    DROP TABLE public.mascota;
       public         postgres    false    4            �            1259    24619 	   personaje    TABLE     q   CREATE TABLE public.personaje (
    id integer NOT NULL,
    nombre character varying,
    id_familia integer
);
    DROP TABLE public.personaje;
       public         postgres    false    4            �            1259    24625    personajes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personajes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.personajes_id_seq;
       public       postgres    false    4    199            R           0    0    personajes_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.personajes_id_seq OWNED BY public.personaje.id;
            public       postgres    false    200            �            1259    24656    servicio    TABLE     �   CREATE TABLE public.servicio (
    fecha_servicio date,
    id_cliente character varying,
    estado character varying,
    id_tipo_servicio integer,
    id_servicio integer NOT NULL
);
    DROP TABLE public.servicio;
       public         postgres    false    4            �            1259    24662    servicio_id_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.servicio_id_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.servicio_id_servicio_seq;
       public       postgres    false    4    206            S           0    0    servicio_id_servicio_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.servicio_id_servicio_seq OWNED BY public.servicio.id_servicio;
            public       postgres    false    207            �            1259    24664    tipo_servicio    TABLE     t   CREATE TABLE public.tipo_servicio (
    id_tipo_servicio integer NOT NULL,
    nombre_servicio character varying
);
 !   DROP TABLE public.tipo_servicio;
       public         postgres    false    4            �            1259    24670 "   tipo_servicio_id_tipo_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_servicio_id_tipo_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tipo_servicio_id_tipo_servicio_seq;
       public       postgres    false    208    4            T           0    0 "   tipo_servicio_id_tipo_servicio_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.tipo_servicio_id_tipo_servicio_seq OWNED BY public.tipo_servicio.id_tipo_servicio;
            public       postgres    false    209            �            1259    24696    venta    TABLE     �   CREATE TABLE public.venta (
    venta_id integer NOT NULL,
    fecha_venta date,
    monto_total integer,
    cliente_id character varying,
    nro_factura character varying,
    activo boolean
);
    DROP TABLE public.venta;
       public         postgres    false    4            �            1259    24694    venta_venta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_venta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.venta_venta_id_seq;
       public       postgres    false    213    4            U           0    0    venta_venta_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.venta_venta_id_seq OWNED BY public.venta.venta_id;
            public       postgres    false    212            �
           2604    24690    articulo articulo_id    DEFAULT     |   ALTER TABLE ONLY public.articulo ALTER COLUMN articulo_id SET DEFAULT nextval('public.articulo_articulo_id_seq'::regclass);
 C   ALTER TABLE public.articulo ALTER COLUMN articulo_id DROP DEFAULT;
       public       postgres    false    210    211    211            �
           2604    24672    cliente_mascota id    DEFAULT     x   ALTER TABLE ONLY public.cliente_mascota ALTER COLUMN id SET DEFAULT nextval('public.cliente_mascota_id_seq'::regclass);
 A   ALTER TABLE public.cliente_mascota ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203            �
           2604    24627 
   familia id    DEFAULT     h   ALTER TABLE ONLY public.familia ALTER COLUMN id SET DEFAULT nextval('public.familia_id_seq'::regclass);
 9   ALTER TABLE public.familia ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197            �
           2604    24628    personaje id    DEFAULT     m   ALTER TABLE ONLY public.personaje ALTER COLUMN id SET DEFAULT nextval('public.personajes_id_seq'::regclass);
 ;   ALTER TABLE public.personaje ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    199            �
           2604    24673    servicio id_servicio    DEFAULT     |   ALTER TABLE ONLY public.servicio ALTER COLUMN id_servicio SET DEFAULT nextval('public.servicio_id_servicio_seq'::regclass);
 C   ALTER TABLE public.servicio ALTER COLUMN id_servicio DROP DEFAULT;
       public       postgres    false    207    206            �
           2604    24674    tipo_servicio id_tipo_servicio    DEFAULT     �   ALTER TABLE ONLY public.tipo_servicio ALTER COLUMN id_tipo_servicio SET DEFAULT nextval('public.tipo_servicio_id_tipo_servicio_seq'::regclass);
 M   ALTER TABLE public.tipo_servicio ALTER COLUMN id_tipo_servicio DROP DEFAULT;
       public       postgres    false    209    208            �
           2604    24699    venta venta_id    DEFAULT     p   ALTER TABLE ONLY public.venta ALTER COLUMN venta_id SET DEFAULT nextval('public.venta_venta_id_seq'::regclass);
 =   ALTER TABLE public.venta ALTER COLUMN venta_id DROP DEFAULT;
       public       postgres    false    212    213    213            F          0    24687    articulo 
   TABLE DATA               f   COPY public.articulo (articulo_id, descripcion, precio_publico, precio_mayorista, activo) FROM stdin;
    public       postgres    false    211            <          0    24636 	   categoria 
   TABLE DATA               /   COPY public.categoria (id, nombre) FROM stdin;
    public       postgres    false    201            =          0    24639    cliente 
   TABLE DATA               T   COPY public.cliente (id_cliente, nombre, apellido, direccion, telefono) FROM stdin;
    public       postgres    false    202            >          0    24645    cliente_mascota 
   TABLE DATA               M   COPY public.cliente_mascota (id, id_cliente, id_mascota, activo) FROM stdin;
    public       postgres    false    203            8          0    24611    familia 
   TABLE DATA               -   COPY public.familia (id, nombre) FROM stdin;
    public       postgres    false    197            @          0    24650    mascota 
   TABLE DATA               C   COPY public.mascota (id_mascota, nombre, id_categoria) FROM stdin;
    public       postgres    false    205            :          0    24619 	   personaje 
   TABLE DATA               ;   COPY public.personaje (id, nombre, id_familia) FROM stdin;
    public       postgres    false    199            A          0    24656    servicio 
   TABLE DATA               e   COPY public.servicio (fecha_servicio, id_cliente, estado, id_tipo_servicio, id_servicio) FROM stdin;
    public       postgres    false    206            C          0    24664    tipo_servicio 
   TABLE DATA               J   COPY public.tipo_servicio (id_tipo_servicio, nombre_servicio) FROM stdin;
    public       postgres    false    208            H          0    24696    venta 
   TABLE DATA               d   COPY public.venta (venta_id, fecha_venta, monto_total, cliente_id, nro_factura, activo) FROM stdin;
    public       postgres    false    213            V           0    0    articulo_articulo_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.articulo_articulo_id_seq', 1, true);
            public       postgres    false    210            W           0    0    cliente_mascota_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_mascota_id_seq', 3, true);
            public       postgres    false    204            X           0    0    familia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.familia_id_seq', 10, true);
            public       postgres    false    198            Y           0    0    personajes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.personajes_id_seq', 9, true);
            public       postgres    false    200            Z           0    0    servicio_id_servicio_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.servicio_id_servicio_seq', 2, true);
            public       postgres    false    207            [           0    0 "   tipo_servicio_id_tipo_servicio_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.tipo_servicio_id_tipo_servicio_seq', 4, true);
            public       postgres    false    209            \           0    0    venta_venta_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.venta_venta_id_seq', 1, false);
            public       postgres    false    212            �
           2606    24706    articulo articulo_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT articulo_pk PRIMARY KEY (articulo_id);
 >   ALTER TABLE ONLY public.articulo DROP CONSTRAINT articulo_pk;
       public         postgres    false    211            �
           2606    24676 "   cliente_mascota cliente_mascota_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.cliente_mascota
    ADD CONSTRAINT cliente_mascota_pk PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.cliente_mascota DROP CONSTRAINT cliente_mascota_pk;
       public         postgres    false    203            �
           2606    24678    cliente cliente_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pk PRIMARY KEY (id_cliente);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pk;
       public         postgres    false    202            �
           2606    24630    familia familia_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.familia
    ADD CONSTRAINT familia_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.familia DROP CONSTRAINT familia_pk;
       public         postgres    false    197            �
           2606    24680    mascota mascota_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.mascota
    ADD CONSTRAINT mascota_pk PRIMARY KEY (id_mascota);
 <   ALTER TABLE ONLY public.mascota DROP CONSTRAINT mascota_pk;
       public         postgres    false    205            �
           2606    24682    servicio servicio_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT servicio_pk PRIMARY KEY (id_servicio);
 >   ALTER TABLE ONLY public.servicio DROP CONSTRAINT servicio_pk;
       public         postgres    false    206            �
           2606    24684    tipo_servicio tipo_servicio_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public.tipo_servicio
    ADD CONSTRAINT tipo_servicio_pk PRIMARY KEY (id_tipo_servicio);
 H   ALTER TABLE ONLY public.tipo_servicio DROP CONSTRAINT tipo_servicio_pk;
       public         postgres    false    208            �
           2606    24704    venta venta_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pk PRIMARY KEY (venta_id);
 8   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pk;
       public         postgres    false    213            �
           2606    24631    personaje personajes_familia_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.personaje
    ADD CONSTRAINT personajes_familia_fk FOREIGN KEY (id_familia) REFERENCES public.familia(id);
 I   ALTER TABLE ONLY public.personaje DROP CONSTRAINT personajes_familia_fk;
       public       postgres    false    199    197    2735            F   !   x�3�t���LI�44500�44�%\1z\\\ ^��      <   +   x�3�,H-*��2�LO,��2����L83s�KR��b���� �v
B      =   k   x�˱
�@ �9���9:J��.�]�A��������1���P�T6��~z�ê����Z-P$��w$"̌�^G�Ik��aJ��=<��I��`}�Q�"."���v      >   #   x�3�4�4�,�2�4�J����g�W� D�j      8      x������ � �      @   5   x�3���L���4�2�,�OJ��4�2�,H�K���4�2�,�/��4����� u      :      x������ � �      A   :   x�3202�54�52�4�L͋/(�ON-�r��`rf�F����9�%�@�W� �"�      C   :   x�3�LJ<�1�ˈ�,1�4/19���<.c���"(ۄ39��$U!%U����D�=... 7y^      H      x������ � �      >    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            N           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    4            �            1259    24687    articulo    TABLE     �   CREATE TABLE public.articulo (
    articulo_id integer NOT NULL,
    descripcion character varying,
    precio_publico integer,
    precio_mayorista integer,
    activo boolean
);
    DROP TABLE public.articulo;
       public         postgres    false    4            �            1259    24685    articulo_articulo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articulo_articulo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.articulo_articulo_id_seq;
       public       postgres    false    211    4            O           0    0    articulo_articulo_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.articulo_articulo_id_seq OWNED BY public.articulo.articulo_id;
            public       postgres    false    210            �            1259    24636 	   categoria    TABLE     ^   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nombre character varying(200)
);
    DROP TABLE public.categoria;
       public         postgres    false    4            �            1259    24639    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying,
    apellido character varying,
    direccion character varying,
    telefono character varying
);
    DROP TABLE public.cliente;
       public         postgres    false    4            �            1259    24645    cliente_mascota    TABLE     �   CREATE TABLE public.cliente_mascota (
    id integer NOT NULL,
    id_cliente integer,
    id_mascota integer,
    activo boolean
);
 #   DROP TABLE public.cliente_mascota;
       public         postgres    false    4            �            1259    24648    cliente_mascota_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_mascota_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_mascota_id_seq;
       public       postgres    false    4    203            P           0    0    cliente_mascota_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_mascota_id_seq OWNED BY public.cliente_mascota.id;
            public       postgres    false    204            �            1259    24611    familia    TABLE     W   CREATE TABLE public.familia (
    id integer NOT NULL,
    nombre character varying
);
    DROP TABLE public.familia;
       public         postgres    false    4            �            1259    24617    familia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.familia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.familia_id_seq;
       public       postgres    false    4    197            Q           0    0    familia_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.familia_id_seq OWNED BY public.familia.id;
            public       postgres    false    198            �            1259    24650    mascota    TABLE     y   CREATE TABLE public.mascota (
    id_mascota integer NOT NULL,
    nombre character varying,
    id_categoria integer
);
    DROP TABLE public.mascota;
       public         postgres    false    4            �            1259    24619 	   personaje    TABLE     q   CREATE TABLE public.personaje (
    id integer NOT NULL,
    nombre character varying,
    id_familia integer
);
    DROP TABLE public.personaje;
       public         postgres    false    4            �            1259    24625    personajes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personajes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.personajes_id_seq;
       public       postgres    false    4    199            R           0    0    personajes_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.personajes_id_seq OWNED BY public.personaje.id;
            public       postgres    false    200            �            1259    24656    servicio    TABLE     �   CREATE TABLE public.servicio (
    fecha_servicio date,
    id_cliente character varying,
    estado character varying,
    id_tipo_servicio integer,
    id_servicio integer NOT NULL
);
    DROP TABLE public.servicio;
       public         postgres    false    4            �            1259    24662    servicio_id_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.servicio_id_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.servicio_id_servicio_seq;
       public       postgres    false    4    206            S           0    0    servicio_id_servicio_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.servicio_id_servicio_seq OWNED BY public.servicio.id_servicio;
            public       postgres    false    207            �            1259    24664    tipo_servicio    TABLE     t   CREATE TABLE public.tipo_servicio (
    id_tipo_servicio integer NOT NULL,
    nombre_servicio character varying
);
 !   DROP TABLE public.tipo_servicio;
       public         postgres    false    4            �            1259    24670 "   tipo_servicio_id_tipo_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_servicio_id_tipo_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tipo_servicio_id_tipo_servicio_seq;
       public       postgres    false    208    4            T           0    0 "   tipo_servicio_id_tipo_servicio_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.tipo_servicio_id_tipo_servicio_seq OWNED BY public.tipo_servicio.id_tipo_servicio;
            public       postgres    false    209            �            1259    24696    venta    TABLE     �   CREATE TABLE public.venta (
    venta_id integer NOT NULL,
    fecha_venta date,
    monto_total integer,
    cliente_id character varying,
    nro_factura character varying,
    activo boolean
);
    DROP TABLE public.venta;
       public         postgres    false    4            �            1259    24694    venta_venta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.venta_venta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.venta_venta_id_seq;
       public       postgres    false    213    4            U           0    0    venta_venta_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.venta_venta_id_seq OWNED BY public.venta.venta_id;
            public       postgres    false    212            �
           2604    24690    articulo articulo_id    DEFAULT     |   ALTER TABLE ONLY public.articulo ALTER COLUMN articulo_id SET DEFAULT nextval('public.articulo_articulo_id_seq'::regclass);
 C   ALTER TABLE public.articulo ALTER COLUMN articulo_id DROP DEFAULT;
       public       postgres    false    210    211    211            �
           2604    24672    cliente_mascota id    DEFAULT     x   ALTER TABLE ONLY public.cliente_mascota ALTER COLUMN id SET DEFAULT nextval('public.cliente_mascota_id_seq'::regclass);
 A   ALTER TABLE public.cliente_mascota ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203            �
           2604    24627 
   familia id    DEFAULT     h   ALTER TABLE ONLY public.familia ALTER COLUMN id SET DEFAULT nextval('public.familia_id_seq'::regclass);
 9   ALTER TABLE public.familia ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197            �
           2604    24628    personaje id    DEFAULT     m   ALTER TABLE ONLY public.personaje ALTER COLUMN id SET DEFAULT nextval('public.personajes_id_seq'::regclass);
 ;   ALTER TABLE public.personaje ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    199            �
           2604    24673    servicio id_servicio    DEFAULT     |   ALTER TABLE ONLY public.servicio ALTER COLUMN id_servicio SET DEFAULT nextval('public.servicio_id_servicio_seq'::regclass);
 C   ALTER TABLE public.servicio ALTER COLUMN id_servicio DROP DEFAULT;
       public       postgres    false    207    206            �
           2604    24674    tipo_servicio id_tipo_servicio    DEFAULT     �   ALTER TABLE ONLY public.tipo_servicio ALTER COLUMN id_tipo_servicio SET DEFAULT nextval('public.tipo_servicio_id_tipo_servicio_seq'::regclass);
 M   ALTER TABLE public.tipo_servicio ALTER COLUMN id_tipo_servicio DROP DEFAULT;
       public       postgres    false    209    208            �
           2604    24699    venta venta_id    DEFAULT     p   ALTER TABLE ONLY public.venta ALTER COLUMN venta_id SET DEFAULT nextval('public.venta_venta_id_seq'::regclass);
 =   ALTER TABLE public.venta ALTER COLUMN venta_id DROP DEFAULT;
       public       postgres    false    212    213    213            F          0    24687    articulo 
   TABLE DATA               f   COPY public.articulo (articulo_id, descripcion, precio_publico, precio_mayorista, activo) FROM stdin;
    public       postgres    false    211   q       <          0    24636 	   categoria 
   TABLE DATA               /   COPY public.categoria (id, nombre) FROM stdin;
    public       postgres    false    201   �       =          0    24639    cliente 
   TABLE DATA               T   COPY public.cliente (id_cliente, nombre, apellido, direccion, telefono) FROM stdin;
    public       postgres    false    202   �       >          0    24645    cliente_mascota 
   TABLE DATA               M   COPY public.cliente_mascota (id, id_cliente, id_mascota, activo) FROM stdin;
    public       postgres    false    203   X       8          0    24611    familia 
   TABLE DATA               -   COPY public.familia (id, nombre) FROM stdin;
    public       postgres    false    197   �       @          0    24650    mascota 
   TABLE DATA               C   COPY public.mascota (id_mascota, nombre, id_categoria) FROM stdin;
    public       postgres    false    205   �       :          0    24619 	   personaje 
   TABLE DATA               ;   COPY public.personaje (id, nombre, id_familia) FROM stdin;
    public       postgres    false    199   �       A          0    24656    servicio 
   TABLE DATA               e   COPY public.servicio (fecha_servicio, id_cliente, estado, id_tipo_servicio, id_servicio) FROM stdin;
    public       postgres    false    206   
       C          0    24664    tipo_servicio 
   TABLE DATA               J   COPY public.tipo_servicio (id_tipo_servicio, nombre_servicio) FROM stdin;
    public       postgres    false    208   T       H          0    24696    venta 
   TABLE DATA               d   COPY public.venta (venta_id, fecha_venta, monto_total, cliente_id, nro_factura, activo) FROM stdin;
    public       postgres    false    213   �       V           0    0    articulo_articulo_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.articulo_articulo_id_seq', 1, true);
            public       postgres    false    210            W           0    0    cliente_mascota_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_mascota_id_seq', 3, true);
            public       postgres    false    204            X           0    0    familia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.familia_id_seq', 10, true);
            public       postgres    false    198            Y           0    0    personajes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.personajes_id_seq', 9, true);
            public       postgres    false    200            Z           0    0    servicio_id_servicio_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.servicio_id_servicio_seq', 2, true);
            public       postgres    false    207            [           0    0 "   tipo_servicio_id_tipo_servicio_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.tipo_servicio_id_tipo_servicio_seq', 4, true);
            public       postgres    false    209            \           0    0    venta_venta_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.venta_venta_id_seq', 1, false);
            public       postgres    false    212            �
           2606    24706    articulo articulo_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT articulo_pk PRIMARY KEY (articulo_id);
 >   ALTER TABLE ONLY public.articulo DROP CONSTRAINT articulo_pk;
       public         postgres    false    211            �
           2606    24676 "   cliente_mascota cliente_mascota_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.cliente_mascota
    ADD CONSTRAINT cliente_mascota_pk PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.cliente_mascota DROP CONSTRAINT cliente_mascota_pk;
       public         postgres    false    203            �
           2606    24678    cliente cliente_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pk PRIMARY KEY (id_cliente);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pk;
       public         postgres    false    202            �
           2606    24630    familia familia_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.familia
    ADD CONSTRAINT familia_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.familia DROP CONSTRAINT familia_pk;
       public         postgres    false    197            �
           2606    24680    mascota mascota_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.mascota
    ADD CONSTRAINT mascota_pk PRIMARY KEY (id_mascota);
 <   ALTER TABLE ONLY public.mascota DROP CONSTRAINT mascota_pk;
       public         postgres    false    205            �
           2606    24682    servicio servicio_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT servicio_pk PRIMARY KEY (id_servicio);
 >   ALTER TABLE ONLY public.servicio DROP CONSTRAINT servicio_pk;
       public         postgres    false    206            �
           2606    24684    tipo_servicio tipo_servicio_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public.tipo_servicio
    ADD CONSTRAINT tipo_servicio_pk PRIMARY KEY (id_tipo_servicio);
 H   ALTER TABLE ONLY public.tipo_servicio DROP CONSTRAINT tipo_servicio_pk;
       public         postgres    false    208            �
           2606    24704    venta venta_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pk PRIMARY KEY (venta_id);
 8   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pk;
       public         postgres    false    213            �
           2606    24631    personaje personajes_familia_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.personaje
    ADD CONSTRAINT personajes_familia_fk FOREIGN KEY (id_familia) REFERENCES public.familia(id);
 I   ALTER TABLE ONLY public.personaje DROP CONSTRAINT personajes_familia_fk;
       public       postgres    false    199    197    2735           