PGDMP                     
    {            ims %   12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)    15.4 �    L           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            M           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            N           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            O           1262    139768    ims    DATABASE     k   CREATE DATABASE ims WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';
    DROP DATABASE ims;
                postgres    false            P           0    0    DATABASE ims    ACL     $   GRANT ALL ON DATABASE ims TO admin;
                   postgres    false    3151                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            Q           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    6            R           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            �            1259    139801 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    admin    false    6            �            1259    139799    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          admin    false    6    209            S           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          admin    false    208            �            1259    139811    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    admin    false    6            �            1259    139809    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          admin    false    6    211            T           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          admin    false    210            �            1259    139793    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    admin    false    6            �            1259    139791    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          admin    false    6    207            U           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          admin    false    206            �            1259    139819 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    admin    false    6            �            1259    139829    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    admin    false    6            �            1259    139827    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          admin    false    215    6            V           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          admin    false    214            �            1259    139817    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          admin    false    213    6            W           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          admin    false    212            �            1259    139837    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    admin    false    6            �            1259    139835 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          admin    false    217    6            X           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          admin    false    216            �            1259    139897    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    admin    false    6            �            1259    139895    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          admin    false    6    219            Y           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          admin    false    218            �            1259    139783    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    admin    false    6            �            1259    139781    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          admin    false    6    205            Z           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          admin    false    204            �            1259    139772    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    admin    false    6            �            1259    139770    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          admin    false    6    203            [           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          admin    false    202            �            1259    140004    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    admin    false    6            �            1259    139930    imsApp_category    TABLE       CREATE TABLE public."imsApp_category" (
    name character varying(250) NOT NULL,
    description text NOT NULL,
    status character varying(2) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_updated timestamp with time zone NOT NULL,
    id bigint NOT NULL
);
 %   DROP TABLE public."imsApp_category";
       public         heap    admin    false    6            �            1259    140090    imsApp_category_id_seq    SEQUENCE     �   ALTER TABLE public."imsApp_category" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."imsApp_category_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          admin    false    220    6            �            1259    139967    imsApp_invoice    TABLE     -  CREATE TABLE public."imsApp_invoice" (
    id bigint NOT NULL,
    transaction character varying(250) NOT NULL,
    customer character varying(250) NOT NULL,
    total double precision NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_updated timestamp with time zone NOT NULL
);
 $   DROP TABLE public."imsApp_invoice";
       public         heap    admin    false    6            �            1259    139965    imsApp_invoice_id_seq    SEQUENCE     �   CREATE SEQUENCE public."imsApp_invoice_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."imsApp_invoice_id_seq";
       public          admin    false    226    6            \           0    0    imsApp_invoice_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."imsApp_invoice_id_seq" OWNED BY public."imsApp_invoice".id;
          public          admin    false    225            �            1259    139978    imsApp_invoice_item    TABLE     �   CREATE TABLE public."imsApp_invoice_item" (
    id bigint NOT NULL,
    price double precision NOT NULL,
    quantity double precision NOT NULL,
    invoice_id bigint NOT NULL,
    product_id bigint NOT NULL,
    stock_id bigint
);
 )   DROP TABLE public."imsApp_invoice_item";
       public         heap    admin    false    6            �            1259    139976    imsApp_invoice_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public."imsApp_invoice_item_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."imsApp_invoice_item_id_seq";
       public          admin    false    228    6            ]           0    0    imsApp_invoice_item_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."imsApp_invoice_item_id_seq" OWNED BY public."imsApp_invoice_item".id;
          public          admin    false    227            �            1259    139941    imsApp_product    TABLE     Y  CREATE TABLE public."imsApp_product" (
    id bigint NOT NULL,
    description text NOT NULL,
    status character varying(2) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_updated timestamp with time zone NOT NULL,
    code character varying(100),
    name character varying(250),
    price double precision NOT NULL
);
 $   DROP TABLE public."imsApp_product";
       public         heap    admin    false    6            �            1259    140017    imsApp_product_bom    TABLE     y  CREATE TABLE public."imsApp_product_bom" (
    category_id bigint NOT NULL,
    part_number character varying(100) NOT NULL,
    drawing_no character varying(100),
    description character varying(400),
    material character varying(100),
    material_2 character varying(100),
    quantity double precision NOT NULL,
    comment character varying(4000),
    packaging_length double precision,
    packaging_wide double precision,
    welment_profile_length double precision,
    volume double precision,
    surface_area double precision,
    weight double precision,
    picture character varying(100),
    id bigint NOT NULL
);
 (   DROP TABLE public."imsApp_product_bom";
       public         heap    admin    false    6            �            1259    140069    imsApp_product_bom_id_seq    SEQUENCE     �   ALTER TABLE public."imsApp_product_bom" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."imsApp_product_bom_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          admin    false    230    6            �            1259    139939    imsApp_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public."imsApp_product_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."imsApp_product_id_seq";
       public          admin    false    222    6            ^           0    0    imsApp_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."imsApp_product_id_seq" OWNED BY public."imsApp_product".id;
          public          admin    false    221            �            1259    139953    imsApp_stock    TABLE       CREATE TABLE public."imsApp_stock" (
    id bigint NOT NULL,
    quantity double precision NOT NULL,
    type character varying(2) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_updated timestamp with time zone NOT NULL,
    product_id bigint NOT NULL
);
 "   DROP TABLE public."imsApp_stock";
       public         heap    admin    false    6            �            1259    139951    imsApp_stock_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."imsApp_stock_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."imsApp_stock_id_seq";
       public          admin    false    224    6            _           0    0    imsApp_stock_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."imsApp_stock_id_seq" OWNED BY public."imsApp_stock".id;
          public          admin    false    223            O           2604    139804    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          admin    false    209    208    209            P           2604    139814    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          admin    false    211    210    211            N           2604    139796    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          admin    false    207    206    207            Q           2604    139822    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          admin    false    213    212    213            R           2604    139832    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          admin    false    215    214    215            S           2604    139840    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          admin    false    216    217    217            T           2604    139900    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          admin    false    218    219    219            M           2604    139786    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          admin    false    204    205    205            L           2604    139775    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          admin    false    203    202    203            W           2604    139970    imsApp_invoice id    DEFAULT     z   ALTER TABLE ONLY public."imsApp_invoice" ALTER COLUMN id SET DEFAULT nextval('public."imsApp_invoice_id_seq"'::regclass);
 B   ALTER TABLE public."imsApp_invoice" ALTER COLUMN id DROP DEFAULT;
       public          admin    false    225    226    226            X           2604    139981    imsApp_invoice_item id    DEFAULT     �   ALTER TABLE ONLY public."imsApp_invoice_item" ALTER COLUMN id SET DEFAULT nextval('public."imsApp_invoice_item_id_seq"'::regclass);
 G   ALTER TABLE public."imsApp_invoice_item" ALTER COLUMN id DROP DEFAULT;
       public          admin    false    227    228    228            U           2604    139944    imsApp_product id    DEFAULT     z   ALTER TABLE ONLY public."imsApp_product" ALTER COLUMN id SET DEFAULT nextval('public."imsApp_product_id_seq"'::regclass);
 B   ALTER TABLE public."imsApp_product" ALTER COLUMN id DROP DEFAULT;
       public          admin    false    221    222    222            V           2604    139956    imsApp_stock id    DEFAULT     v   ALTER TABLE ONLY public."imsApp_stock" ALTER COLUMN id SET DEFAULT nextval('public."imsApp_stock_id_seq"'::regclass);
 @   ALTER TABLE public."imsApp_stock" ALTER COLUMN id DROP DEFAULT;
       public          admin    false    223    224    224            2          0    139801 
   auth_group 
   TABLE DATA                 public          admin    false    209   ��       4          0    139811    auth_group_permissions 
   TABLE DATA                 public          admin    false    211   ��       0          0    139793    auth_permission 
   TABLE DATA                 public          admin    false    207   ��       6          0    139819 	   auth_user 
   TABLE DATA                 public          admin    false    213   ��       8          0    139829    auth_user_groups 
   TABLE DATA                 public          admin    false    215   ��       :          0    139837    auth_user_user_permissions 
   TABLE DATA                 public          admin    false    217   ��       <          0    139897    django_admin_log 
   TABLE DATA                 public          admin    false    219   ��       .          0    139783    django_content_type 
   TABLE DATA                 public          admin    false    205   �       ,          0    139772    django_migrations 
   TABLE DATA                 public          admin    false    203   �       F          0    140004    django_session 
   TABLE DATA                 public          admin    false    229   +�       =          0    139930    imsApp_category 
   TABLE DATA                 public          admin    false    220   ��       C          0    139967    imsApp_invoice 
   TABLE DATA                 public          admin    false    226   ��       E          0    139978    imsApp_invoice_item 
   TABLE DATA                 public          admin    false    228   S�       ?          0    139941    imsApp_product 
   TABLE DATA                 public          admin    false    222   ��       G          0    140017    imsApp_product_bom 
   TABLE DATA                 public          admin    false    230   ��       A          0    139953    imsApp_stock 
   TABLE DATA                 public          admin    false    224   ��       `           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          admin    false    208            a           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          admin    false    210            b           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
          public          admin    false    206            c           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          admin    false    214            d           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          admin    false    212            e           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          admin    false    216            f           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          admin    false    218            g           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public          admin    false    204            h           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);
          public          admin    false    202            i           0    0    imsApp_category_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."imsApp_category_id_seq"', 2, true);
          public          admin    false    232            j           0    0    imsApp_invoice_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."imsApp_invoice_id_seq"', 1, true);
          public          admin    false    225            k           0    0    imsApp_invoice_item_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."imsApp_invoice_item_id_seq"', 1, true);
          public          admin    false    227            l           0    0    imsApp_product_bom_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."imsApp_product_bom_id_seq"', 2, true);
          public          admin    false    231            m           0    0    imsApp_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."imsApp_product_id_seq"', 1, true);
          public          admin    false    221            n           0    0    imsApp_stock_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."imsApp_stock_id_seq"', 1, true);
          public          admin    false    223            g           2606    139926    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            admin    false    209            l           2606    139853 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            admin    false    211    211            o           2606    139816 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            admin    false    211            i           2606    139806    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            admin    false    209            b           2606    139844 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            admin    false    207    207            d           2606    139798 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            admin    false    207            w           2606    139834 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            admin    false    215            z           2606    139868 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            admin    false    215    215            q           2606    139824    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            admin    false    213            }           2606    139842 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            admin    false    217            �           2606    139882 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            admin    false    217    217            t           2606    139920     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            admin    false    213            �           2606    139906 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            admin    false    219            ]           2606    139790 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            admin    false    205    205            _           2606    139788 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            admin    false    205            [           2606    139780 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            admin    false    203            �           2606    140011 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            admin    false    229            �           2606    140053 0   imsApp_category imsApp_category_name_2e5730dc_pk 
   CONSTRAINT     t   ALTER TABLE ONLY public."imsApp_category"
    ADD CONSTRAINT "imsApp_category_name_2e5730dc_pk" PRIMARY KEY (name);
 ^   ALTER TABLE ONLY public."imsApp_category" DROP CONSTRAINT "imsApp_category_name_2e5730dc_pk";
       public            admin    false    220            �           2606    140051 2   imsApp_category imsApp_category_name_2e5730dc_uniq 
   CONSTRAINT     q   ALTER TABLE ONLY public."imsApp_category"
    ADD CONSTRAINT "imsApp_category_name_2e5730dc_uniq" UNIQUE (name);
 `   ALTER TABLE ONLY public."imsApp_category" DROP CONSTRAINT "imsApp_category_name_2e5730dc_uniq";
       public            admin    false    220            �           2606    139983 ,   imsApp_invoice_item imsApp_invoice_item_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."imsApp_invoice_item"
    ADD CONSTRAINT "imsApp_invoice_item_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."imsApp_invoice_item" DROP CONSTRAINT "imsApp_invoice_item_pkey";
       public            admin    false    228            �           2606    139975 "   imsApp_invoice imsApp_invoice_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."imsApp_invoice"
    ADD CONSTRAINT "imsApp_invoice_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."imsApp_invoice" DROP CONSTRAINT "imsApp_invoice_pkey";
       public            admin    false    226            �           2606    140059 =   imsApp_product_bom imsApp_product_bom_part_number_14d24e71_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public."imsApp_product_bom"
    ADD CONSTRAINT "imsApp_product_bom_part_number_14d24e71_pk" PRIMARY KEY (part_number);
 k   ALTER TABLE ONLY public."imsApp_product_bom" DROP CONSTRAINT "imsApp_product_bom_part_number_14d24e71_pk";
       public            admin    false    230            �           2606    140057 ?   imsApp_product_bom imsApp_product_bom_part_number_14d24e71_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."imsApp_product_bom"
    ADD CONSTRAINT "imsApp_product_bom_part_number_14d24e71_uniq" UNIQUE (part_number);
 m   ALTER TABLE ONLY public."imsApp_product_bom" DROP CONSTRAINT "imsApp_product_bom_part_number_14d24e71_uniq";
       public            admin    false    230            �           2606    139949 "   imsApp_product imsApp_product_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."imsApp_product"
    ADD CONSTRAINT "imsApp_product_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."imsApp_product" DROP CONSTRAINT "imsApp_product_pkey";
       public            admin    false    222            �           2606    139958    imsApp_stock imsApp_stock_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."imsApp_stock"
    ADD CONSTRAINT "imsApp_stock_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."imsApp_stock" DROP CONSTRAINT "imsApp_stock_pkey";
       public            admin    false    224            e           1259    139927    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            admin    false    209            j           1259    139864 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            admin    false    211            m           1259    139865 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            admin    false    211            `           1259    139850 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            admin    false    207            u           1259    139880 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            admin    false    215            x           1259    139879 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            admin    false    215            {           1259    139894 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            admin    false    217            ~           1259    139893 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            admin    false    217            r           1259    139921     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            admin    false    213            �           1259    139917 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            admin    false    219            �           1259    139918 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            admin    false    219            �           1259    140013 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            admin    false    229            �           1259    140012 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            admin    false    229            �           1259    140054 "   imsApp_category_name_2e5730dc_like    INDEX     v   CREATE INDEX "imsApp_category_name_2e5730dc_like" ON public."imsApp_category" USING btree (name varchar_pattern_ops);
 8   DROP INDEX public."imsApp_category_name_2e5730dc_like";
       public            admin    false    220            �           1259    139999 '   imsApp_invoice_item_invoice_id_cea710ee    INDEX     q   CREATE INDEX "imsApp_invoice_item_invoice_id_cea710ee" ON public."imsApp_invoice_item" USING btree (invoice_id);
 =   DROP INDEX public."imsApp_invoice_item_invoice_id_cea710ee";
       public            admin    false    228            �           1259    140000 '   imsApp_invoice_item_product_id_99d521b2    INDEX     q   CREATE INDEX "imsApp_invoice_item_product_id_99d521b2" ON public."imsApp_invoice_item" USING btree (product_id);
 =   DROP INDEX public."imsApp_invoice_item_product_id_99d521b2";
       public            admin    false    228            �           1259    140001 %   imsApp_invoice_item_stock_id_f6c1d146    INDEX     m   CREATE INDEX "imsApp_invoice_item_stock_id_f6c1d146" ON public."imsApp_invoice_item" USING btree (stock_id);
 ;   DROP INDEX public."imsApp_invoice_item_stock_id_f6c1d146";
       public            admin    false    228            �           1259    140034 '   imsApp_product_bom_category_id_057a6247    INDEX     q   CREATE INDEX "imsApp_product_bom_category_id_057a6247" ON public."imsApp_product_bom" USING btree (category_id);
 =   DROP INDEX public."imsApp_product_bom_category_id_057a6247";
       public            admin    false    230            �           1259    140060 ,   imsApp_product_bom_part_number_14d24e71_like    INDEX     �   CREATE INDEX "imsApp_product_bom_part_number_14d24e71_like" ON public."imsApp_product_bom" USING btree (part_number varchar_pattern_ops);
 B   DROP INDEX public."imsApp_product_bom_part_number_14d24e71_like";
       public            admin    false    230            �           1259    139964     imsApp_stock_product_id_41f65bb0    INDEX     c   CREATE INDEX "imsApp_stock_product_id_41f65bb0" ON public."imsApp_stock" USING btree (product_id);
 6   DROP INDEX public."imsApp_stock_product_id_41f65bb0";
       public            admin    false    224            �           2606    139859 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          admin    false    207    211    2916            �           2606    139854 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          admin    false    209    2921    211            �           2606    139845 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          admin    false    2911    205    207            �           2606    139874 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          admin    false    209    215    2921            �           2606    139869 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          admin    false    215    2929    213            �           2606    139888 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          admin    false    217    2916    207            �           2606    139883 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          admin    false    2929    213    217            �           2606    139907 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          admin    false    219    2911    205            �           2606    139912 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          admin    false    2929    219    213            �           2606    139984 P   imsApp_invoice_item imsApp_invoice_item_invoice_id_cea710ee_fk_imsApp_invoice_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."imsApp_invoice_item"
    ADD CONSTRAINT "imsApp_invoice_item_invoice_id_cea710ee_fk_imsApp_invoice_id" FOREIGN KEY (invoice_id) REFERENCES public."imsApp_invoice"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."imsApp_invoice_item" DROP CONSTRAINT "imsApp_invoice_item_invoice_id_cea710ee_fk_imsApp_invoice_id";
       public          admin    false    226    2960    228            �           2606    139989 P   imsApp_invoice_item imsApp_invoice_item_product_id_99d521b2_fk_imsApp_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."imsApp_invoice_item"
    ADD CONSTRAINT "imsApp_invoice_item_product_id_99d521b2_fk_imsApp_product_id" FOREIGN KEY (product_id) REFERENCES public."imsApp_product"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."imsApp_invoice_item" DROP CONSTRAINT "imsApp_invoice_item_product_id_99d521b2_fk_imsApp_product_id";
       public          admin    false    2955    228    222            �           2606    139994 L   imsApp_invoice_item imsApp_invoice_item_stock_id_f6c1d146_fk_imsApp_stock_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."imsApp_invoice_item"
    ADD CONSTRAINT "imsApp_invoice_item_stock_id_f6c1d146_fk_imsApp_stock_id" FOREIGN KEY (stock_id) REFERENCES public."imsApp_stock"(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."imsApp_invoice_item" DROP CONSTRAINT "imsApp_invoice_item_stock_id_f6c1d146_fk_imsApp_stock_id";
       public          admin    false    224    2957    228            �           2606    139959 B   imsApp_stock imsApp_stock_product_id_41f65bb0_fk_imsApp_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."imsApp_stock"
    ADD CONSTRAINT "imsApp_stock_product_id_41f65bb0_fk_imsApp_product_id" FOREIGN KEY (product_id) REFERENCES public."imsApp_product"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."imsApp_stock" DROP CONSTRAINT "imsApp_stock_product_id_41f65bb0_fk_imsApp_product_id";
       public          admin    false    224    2955    222            2   
   x���          4   
   x���          0   v  x���Mk�@E���K�D��EW�da()4i�B�G��i��_i�7�e��/&���Q�}zz~���NO/?T;�^��K1ط��ݵ���4궮֪)�z�J�X���~�:�Υ����;������gu���ͷ�QEU��9������ZM�񖏷�t�uu�����[ќuğ�X�)T��m�0��
)|��O$0��-k��_2�S� ;"�;Y�H�Z ���DT�ŁW!rp] YΝڑ��"̯��^���) <��s8���<r�vi�����n�f�{	�f2gƥ�q�L��)dz�3f`1�g	�������������|A����e�&��Iz����j��˯���̎��/t��$�� V��@��x�>�_YX}6nn��3�� �`�|�0�*[/P�O��z�������v�J;�~���y+Xz��>R X{R��|��X|?/|$���ޚ�}$�3߽�`�����y��ˏ���ۏ���<��_�|�������5��Ov��<%5�^`@�#2����JO��sU[}�ف��!�b���Pf��	)#����!UxI�"�x��Y�r�3�!�0֐� g~�ȉ�39,������X�����      6   *  x�uOMo�0��+r@DAI�V�&�I�E���*�I�-M���_��L�i>�O�{~6^o�/;�׻'P�G��1��,�5-A�'(��'U$��"�R.-�u�낖�M�$�`�4�+n�WHs��UU�ZD��YB*}(.i2 o���|������0;��=����D��g���t�����o�����~�X^��]��Ί�X�Уd���"�[��<!��gv��vF��`0�'S�߸��zC���m=��\6��"��B%����RB/�ܧ͇�X�⪬�?V�ąNk5��t:?]�wk      8   
   x���          :   
   x���          <   
   x���          .   �   x���=k�0�ݿB�0�N�~�)CCI�I�
YN裐�d�!�m'8=/�S�?쾎��?�Ͻ��~��KtI����k� �0�=7�צa�6K���8�l�6�ʂ�Kap(�¹^�W	���~F��`!F@G�?��C�������t����=��3]�s���F>�\k������[�7����>�3�TY&:�m�Ǆ�og:�I�ܶ��sH����m��8eT�[y`      ,     x���OO�0��~
njVI��������MVw�M��]���~�-�3��`�L����>}�������}ts{�3j��J�q�W6��.��i��L�lۋ����|��*Σ?W?~_�Eg�":�Mӫ���Z՝�1  
��^�j#��%���F�g�g �<!�o ��?�	���_ɡZ����4(�Z7�`�@<$*S���7aUm^�p"!�b
#�eJ<&�grB��{�c%K�?����8-=na��k�L����E�֍�-���zeE�l��n�l���嫨TS��8���hx�6t�j��5T�.f:�"�X�e��i�e�єQ�	�9TrUɮW�v���`	�a+��:�����Yb��2c����b�m�z��.dol��e���V]'�O҂cF��9?��OIp��9Z��g+٠���lɌ�-[i�Ю��5�s.(���L�֚׷��]��08�<�!:,䣶_�$d�����uwնk��qp�ԧ؉����u]/�a�l8����h�b��E��P}
��p�^�i�Y+��\Ʉ�Z�󹂙�y�������s����ｪ��A�E">�P6��[�n�|�=��yD�s��N�qM���
�� ���'S=�rdf ŀ�)�aI�O��~x�p��p��@ �]������K3Hc�碰`~����+`ؙ
�>��$�)��q�?�6]�aݬl
Q�'��%�!�Q����$4CI�]w���`"�ؚhe�,�����2�%d Y�b�y:�fON�w,�      F   L  x�5��n�@ @ѽ_1;53<��]!E)
"Z7ax�SD��Ƥ�ݳ��u�����i03��7�)M���-���#����5~O���'�&c7}FHY�I�Q�e5��q����g`<�ۗ����KU��7�K���������2m�0'�J"��f�D�M)�T����A�����<o���K���e�75��%#������0ǥ�{J�2�p�>l��}�l�g�RҮ'� ���x�B���!:%g��AIYK�l�_��BB{@��Mlshh�eJ��w��VCɪ����t���79���2<P^p�B@s	A$�������8�}1      =     x�ŏ�N�@�w��.�H���85J��C�B/z�c�y�41q������M<ZS�:�|_�/��F4��d	�{z�̚��b�,�M�2�Ϊ�hYÅ�ڄVf�kթ�k
U���D~X<7`�qބ��#M�;H��!)�Sz�\OM�7�t�_k��@��{lݩU#�� ��3�g���#⻶�xޥ�!��"r�q���.�&���ؠ�C�!A~}B�3`�m]�6v|l�ĵ�	V�'����e�i�j��Q      C   �   x�u��
�0Ew���E�*yj��I��P,T�Ul�P4����ڻ\��e��k(��jy��y1̙R��R0~ Kt��i!G�2k9�i�R��]�y�&�^�Ӣ��lxf�G^���>�D�!h�|��)� %�홋���$i���zap
��H��/��=�φa|sE9�      E   q   x���v
Q���W((M��L�S��-v,(���+��LN��,I�UR��L�Q((
�(�&�d�T�(�Հ%�SJ�K�����l KS!��'�5XA�PG��� �,8Ҵ��� �+(�      ?   �   x�u��
�@��>ş.*��jnb'!A�u�]h!u�������X�D��0�o��f��rXm�-ȡ:�MD�'R�k�@�,�`����J���*���T����>4H�&�2�@S��e'(�ᘬ�,쀙����9A5^X�kS��i>�c@Q<�bx!!�S����w���χ&���aG7      G   C  x�eN]O�0}�W��$c���'Ѕ��6�>-�+��kg�	<�S��B�%�[�Jbss{�9��p��Y<���pF�:��aQ$��iEt��y�k�IuLX�@��ND�o�r Ux�D�i0-�b�fR8���0�C���c��f�� �yN��q�g6�S���9�g)u`O��ڛ���_ߓ�Un��R[Lh���Ͳ��eDW��,m�|,��M8Ct�����*��4;4<ϵ��!�oX
�w}=m��w��;|9:�V��^���3���y�|�i���"�z�3���gRP���x����"t�7������.�f�o]�j�O򟆔      A   �   x���v
Q���W((M��L�S��-v,(�/.�O�VR��L�Q(,M�+�,��Q(�,H�QHI,I�O.JR)P^iA
�WP��R�\���������a�� D�F� ���X��P��L��������T�(ff�m`@�CMk... H2L     