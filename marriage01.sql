PGDMP  	    /                |            marriage    16.2    16.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17057    marriage    DATABASE     �   CREATE DATABASE marriage WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE marriage;
                postgres    false            �            1259    17058 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17061    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    215            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    216            �            1259    17062    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17065    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    217            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    218            �            1259    17066    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17069    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    219            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    220            �            1259    17070 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    17075    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    17078    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    223            �            1259    17079    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    221            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    224            �            1259    17080    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    17083 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    225            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    226            �            1259    17084    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    17090    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    227            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    228            �            1259    17091    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17094    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    229            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    230            �            1259    17095    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17100    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    231            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    232            �            1259    17101    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17106    marriage_contact    TABLE     �   CREATE TABLE public.marriage_contact (
    id bigint NOT NULL,
    "Name" character varying(500) NOT NULL,
    "Email" character varying(500) NOT NULL,
    "Message" text NOT NULL,
    "Number" character varying(20) NOT NULL
);
 $   DROP TABLE public.marriage_contact;
       public         heap    postgres    false            �            1259    17111    marriage_contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.marriage_contact_id_seq;
       public          postgres    false    234            �           0    0    marriage_contact_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.marriage_contact_id_seq OWNED BY public.marriage_contact.id;
          public          postgres    false    235            �            1259    17112    marriage_gallery    TABLE       CREATE TABLE public.marriage_gallery (
    id bigint NOT NULL,
    "EventID" integer NOT NULL,
    "EventName" character varying(255) NOT NULL,
    "EventDesc" text NOT NULL,
    "DisplayImage" character varying(100) NOT NULL,
    "HeaderImage" character varying(100) NOT NULL
);
 $   DROP TABLE public.marriage_gallery;
       public         heap    postgres    false            �            1259    17117    marriage_gallery2    TABLE     �   CREATE TABLE public.marriage_gallery2 (
    id bigint NOT NULL,
    "EventID" integer NOT NULL,
    "Image" character varying(100) NOT NULL,
    "InPortfolio" character varying(1) NOT NULL
);
 %   DROP TABLE public.marriage_gallery2;
       public         heap    postgres    false            �            1259    17120    marriage_gallery_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_gallery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.marriage_gallery_id_seq;
       public          postgres    false    236            �           0    0    marriage_gallery_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.marriage_gallery_id_seq OWNED BY public.marriage_gallery.id;
          public          postgres    false    238            �            1259    17121    marriage_galllery2_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_galllery2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.marriage_galllery2_id_seq;
       public          postgres    false    237            �           0    0    marriage_galllery2_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public.marriage_galllery2_id_seq OWNED BY public.marriage_gallery2.id;
          public          postgres    false    239            �            1259    25621    marriage_indeximagetable    TABLE     �   CREATE TABLE public.marriage_indeximagetable (
    id bigint NOT NULL,
    "PageName" text NOT NULL,
    "Image" character varying(100) NOT NULL,
    "ImagePosition" text NOT NULL
);
 ,   DROP TABLE public.marriage_indeximagetable;
       public         heap    postgres    false            �            1259    25620    marriage_indeximagetable_id_seq    SEQUENCE     �   ALTER TABLE public.marriage_indeximagetable ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.marriage_indeximagetable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    251            �            1259    17122    marriage_masterimagetable    TABLE     �   CREATE TABLE public.marriage_masterimagetable (
    id bigint NOT NULL,
    "PageName" text NOT NULL,
    "Image" character varying(100) NOT NULL,
    "ImagePosition" text NOT NULL
);
 -   DROP TABLE public.marriage_masterimagetable;
       public         heap    postgres    false            �            1259    17127     marriage_masterimagetable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_masterimagetable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.marriage_masterimagetable_id_seq;
       public          postgres    false    240            �           0    0     marriage_masterimagetable_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.marriage_masterimagetable_id_seq OWNED BY public.marriage_masterimagetable.id;
          public          postgres    false    241            �            1259    17128    marriage_mastervideotable    TABLE     �   CREATE TABLE public.marriage_mastervideotable (
    id bigint NOT NULL,
    "PageName" text NOT NULL,
    "Video" character varying(100) NOT NULL,
    "VideoPosition" text NOT NULL
);
 -   DROP TABLE public.marriage_mastervideotable;
       public         heap    postgres    false            �            1259    17133     marriage_mastervideotable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_mastervideotable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.marriage_mastervideotable_id_seq;
       public          postgres    false    242            �           0    0     marriage_mastervideotable_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.marriage_mastervideotable_id_seq OWNED BY public.marriage_mastervideotable.id;
          public          postgres    false    243            �            1259    17134    marriage_services    TABLE     A  CREATE TABLE public.marriage_services (
    id bigint NOT NULL,
    "ServiceID" integer NOT NULL,
    "ServiceName" character varying(255) NOT NULL,
    "ServiceDesc" text NOT NULL,
    "ServiceOneLiner" text NOT NULL,
    "HeaderImage" character varying(100) NOT NULL,
    "LogoImage" character varying(100) NOT NULL
);
 %   DROP TABLE public.marriage_services;
       public         heap    postgres    false            �            1259    17139    marriage_services_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.marriage_services_id_seq;
       public          postgres    false    244            �           0    0    marriage_services_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.marriage_services_id_seq OWNED BY public.marriage_services.id;
          public          postgres    false    245            �            1259    17140    marriage_stories    TABLE     �  CREATE TABLE public.marriage_stories (
    id bigint NOT NULL,
    "ClientNames" character varying(255) NOT NULL,
    "StoryName" character varying(255) NOT NULL,
    "Date" date NOT NULL,
    "Location" character varying(155) NOT NULL,
    "LogoImage" character varying(100) NOT NULL,
    "StoryID" integer NOT NULL,
    "StoryContent" text NOT NULL,
    "HeaderImage" character varying(100) NOT NULL
);
 $   DROP TABLE public.marriage_stories;
       public         heap    postgres    false            �            1259    17145    marriage_stories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_stories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.marriage_stories_id_seq;
       public          postgres    false    246            �           0    0    marriage_stories_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.marriage_stories_id_seq OWNED BY public.marriage_stories.id;
          public          postgres    false    247            �            1259    17146    marriage_testimonials    TABLE     %  CREATE TABLE public.marriage_testimonials (
    id bigint NOT NULL,
    "TestimonialID" integer NOT NULL,
    "ClientNames" character varying(255) NOT NULL,
    "ClientReview" text NOT NULL,
    "LogoImage" character varying(100) NOT NULL,
    "ServiceType" character varying(255) NOT NULL
);
 )   DROP TABLE public.marriage_testimonials;
       public         heap    postgres    false            �            1259    17151    marriage_testimonials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_testimonials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.marriage_testimonials_id_seq;
       public          postgres    false    248            �           0    0    marriage_testimonials_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.marriage_testimonials_id_seq OWNED BY public.marriage_testimonials.id;
          public          postgres    false    249            �           2604    17152    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    17153    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    17154    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    17155    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    221            �           2604    17156    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    17157    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    17158    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    17159    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    17160    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    17161    marriage_contact id    DEFAULT     z   ALTER TABLE ONLY public.marriage_contact ALTER COLUMN id SET DEFAULT nextval('public.marriage_contact_id_seq'::regclass);
 B   ALTER TABLE public.marriage_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    17162    marriage_gallery id    DEFAULT     z   ALTER TABLE ONLY public.marriage_gallery ALTER COLUMN id SET DEFAULT nextval('public.marriage_gallery_id_seq'::regclass);
 B   ALTER TABLE public.marriage_gallery ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    236            �           2604    17163    marriage_gallery2 id    DEFAULT     }   ALTER TABLE ONLY public.marriage_gallery2 ALTER COLUMN id SET DEFAULT nextval('public.marriage_galllery2_id_seq'::regclass);
 C   ALTER TABLE public.marriage_gallery2 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    237            �           2604    17164    marriage_masterimagetable id    DEFAULT     �   ALTER TABLE ONLY public.marriage_masterimagetable ALTER COLUMN id SET DEFAULT nextval('public.marriage_masterimagetable_id_seq'::regclass);
 K   ALTER TABLE public.marriage_masterimagetable ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �           2604    17165    marriage_mastervideotable id    DEFAULT     �   ALTER TABLE ONLY public.marriage_mastervideotable ALTER COLUMN id SET DEFAULT nextval('public.marriage_mastervideotable_id_seq'::regclass);
 K   ALTER TABLE public.marriage_mastervideotable ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �           2604    17166    marriage_services id    DEFAULT     |   ALTER TABLE ONLY public.marriage_services ALTER COLUMN id SET DEFAULT nextval('public.marriage_services_id_seq'::regclass);
 C   ALTER TABLE public.marriage_services ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            �           2604    17167    marriage_stories id    DEFAULT     z   ALTER TABLE ONLY public.marriage_stories ALTER COLUMN id SET DEFAULT nextval('public.marriage_stories_id_seq'::regclass);
 B   ALTER TABLE public.marriage_stories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246            �           2604    17168    marriage_testimonials id    DEFAULT     �   ALTER TABLE ONLY public.marriage_testimonials ALTER COLUMN id SET DEFAULT nextval('public.marriage_testimonials_id_seq'::regclass);
 G   ALTER TABLE public.marriage_testimonials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248            �          0    17058 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    215   ��       �          0    17062    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    217   ��       �          0    17066    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    219   �       �          0    17070 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    221   ��       �          0    17075    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   ��       �          0    17080    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    225   ��       �          0    17084    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    227   �       �          0    17091    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    229   ��       �          0    17095    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    231   ��       �          0    17101    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    233   A�       �          0    17106    marriage_contact 
   TABLE DATA           T   COPY public.marriage_contact (id, "Name", "Email", "Message", "Number") FROM stdin;
    public          postgres    false    234   !�       �          0    17112    marriage_gallery 
   TABLE DATA           r   COPY public.marriage_gallery (id, "EventID", "EventName", "EventDesc", "DisplayImage", "HeaderImage") FROM stdin;
    public          postgres    false    236   ��       �          0    17117    marriage_gallery2 
   TABLE DATA           R   COPY public.marriage_gallery2 (id, "EventID", "Image", "InPortfolio") FROM stdin;
    public          postgres    false    237   ��       �          0    25621    marriage_indeximagetable 
   TABLE DATA           \   COPY public.marriage_indeximagetable (id, "PageName", "Image", "ImagePosition") FROM stdin;
    public          postgres    false    251   ��       �          0    17122    marriage_masterimagetable 
   TABLE DATA           ]   COPY public.marriage_masterimagetable (id, "PageName", "Image", "ImagePosition") FROM stdin;
    public          postgres    false    240   �       �          0    17128    marriage_mastervideotable 
   TABLE DATA           ]   COPY public.marriage_mastervideotable (id, "PageName", "Video", "VideoPosition") FROM stdin;
    public          postgres    false    242   ��       �          0    17134    marriage_services 
   TABLE DATA           �   COPY public.marriage_services (id, "ServiceID", "ServiceName", "ServiceDesc", "ServiceOneLiner", "HeaderImage", "LogoImage") FROM stdin;
    public          postgres    false    244   ��       �          0    17140    marriage_stories 
   TABLE DATA           �   COPY public.marriage_stories (id, "ClientNames", "StoryName", "Date", "Location", "LogoImage", "StoryID", "StoryContent", "HeaderImage") FROM stdin;
    public          postgres    false    246   ��       �          0    17146    marriage_testimonials 
   TABLE DATA              COPY public.marriage_testimonials (id, "TestimonialID", "ClientNames", "ClientReview", "LogoImage", "ServiceType") FROM stdin;
    public          postgres    false    248   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    216            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    218            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
          public          postgres    false    220            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    223            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 6, true);
          public          postgres    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    226            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 105, true);
          public          postgres    false    228            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);
          public          postgres    false    230            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);
          public          postgres    false    232            �           0    0    marriage_contact_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.marriage_contact_id_seq', 8, true);
          public          postgres    false    235            �           0    0    marriage_gallery_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.marriage_gallery_id_seq', 3, true);
          public          postgres    false    238            �           0    0    marriage_galllery2_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.marriage_galllery2_id_seq', 12, true);
          public          postgres    false    239            �           0    0    marriage_indeximagetable_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.marriage_indeximagetable_id_seq', 1, true);
          public          postgres    false    250            �           0    0     marriage_masterimagetable_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.marriage_masterimagetable_id_seq', 20, true);
          public          postgres    false    241            �           0    0     marriage_mastervideotable_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.marriage_mastervideotable_id_seq', 1, true);
          public          postgres    false    243            �           0    0    marriage_services_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.marriage_services_id_seq', 6, true);
          public          postgres    false    245            �           0    0    marriage_stories_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.marriage_stories_id_seq', 5, true);
          public          postgres    false    247            �           0    0    marriage_testimonials_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.marriage_testimonials_id_seq', 7, true);
          public          postgres    false    249            �           2606    17170    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    215            �           2606    17172 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    217    217            �           2606    17174 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    217            �           2606    17176    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    215            �           2606    17178 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    219    219            �           2606    17180 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    219            �           2606    17182 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            �           2606    17184 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            �           2606    17186    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    221            �           2606    17188 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    225            �           2606    17190 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    225    225            �           2606    17192     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    221            �           2606    17194 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    227            �           2606    17196 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    229    229            �           2606    17198 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    229            �           2606    17200 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    231            �           2606    17202 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    233            �           2606    17204 &   marriage_contact marriage_contact_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.marriage_contact
    ADD CONSTRAINT marriage_contact_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.marriage_contact DROP CONSTRAINT marriage_contact_pkey;
       public            postgres    false    234            �           2606    17206 &   marriage_gallery marriage_gallery_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.marriage_gallery
    ADD CONSTRAINT marriage_gallery_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.marriage_gallery DROP CONSTRAINT marriage_gallery_pkey;
       public            postgres    false    236            �           2606    17208 )   marriage_gallery2 marriage_galllery2_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.marriage_gallery2
    ADD CONSTRAINT marriage_galllery2_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.marriage_gallery2 DROP CONSTRAINT marriage_galllery2_pkey;
       public            postgres    false    237            �           2606    25627 6   marriage_indeximagetable marriage_indeximagetable_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.marriage_indeximagetable
    ADD CONSTRAINT marriage_indeximagetable_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.marriage_indeximagetable DROP CONSTRAINT marriage_indeximagetable_pkey;
       public            postgres    false    251            �           2606    17210 8   marriage_masterimagetable marriage_masterimagetable_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.marriage_masterimagetable
    ADD CONSTRAINT marriage_masterimagetable_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.marriage_masterimagetable DROP CONSTRAINT marriage_masterimagetable_pkey;
       public            postgres    false    240            �           2606    17212 8   marriage_mastervideotable marriage_mastervideotable_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.marriage_mastervideotable
    ADD CONSTRAINT marriage_mastervideotable_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.marriage_mastervideotable DROP CONSTRAINT marriage_mastervideotable_pkey;
       public            postgres    false    242            �           2606    17214 (   marriage_services marriage_services_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.marriage_services
    ADD CONSTRAINT marriage_services_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.marriage_services DROP CONSTRAINT marriage_services_pkey;
       public            postgres    false    244            �           2606    17216 &   marriage_stories marriage_stories_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.marriage_stories
    ADD CONSTRAINT marriage_stories_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.marriage_stories DROP CONSTRAINT marriage_stories_pkey;
       public            postgres    false    246            �           2606    17218 0   marriage_testimonials marriage_testimonials_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.marriage_testimonials
    ADD CONSTRAINT marriage_testimonials_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.marriage_testimonials DROP CONSTRAINT marriage_testimonials_pkey;
       public            postgres    false    248            �           1259    17219    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    215            �           1259    17220 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    217            �           1259    17221 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    217            �           1259    17222 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    219            �           1259    17223 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            �           1259    17224 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            �           1259    17225 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    225            �           1259    17226 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    225            �           1259    17227     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    221            �           1259    17228 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    227            �           1259    17229 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    227            �           1259    17230 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    233            �           1259    17231 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    233            �           2606    17232 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    219    217    4810            �           2606    17237 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    217    215    4799            �           2606    17242 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    229    219    4835            �           2606    17247 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    222    4799                        2606    17252 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    222    221    4812                       2606    17257 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    4810    225    219                       2606    17262 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    4812    221    225                       2606    17267 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    4835    227    229                       2606    17272 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    221    4812    227            �      x������ � �      �      x������ � �      �   e  x�m�]��0���Sp�՘�$�{��Vl��H"`�;�_�n�Ն����R��m�~vS��}����.��(���+]R��������ގvC�oD�&�=ؿ���H4��j��p��*�NX�� Ć"wAG����]�'��Tdn��6/�#*oʯ���"<�O�V��yG���q~v�ܧ�ɓ[�R�M!ƶ٠/$�Y"�d92��Kt���sX�a�TC�҆6W4(Hv��=
�M\~$�%����e�z��g��K}���{D枑�z�`�����/�7u!�O]��s���"��{ ��e�k_L����掮ؾ_V]�o�;���`6$x��g���g4�l7�?�_�H�Z^���c����Z�ķ#)�]��9OC7��]
�/�ӕ�|��E����V(jΓqI���)cb�R�e~���W���8q�<m��I���_�R�ߥR�b<�o�#Ŝ )�'G�� �o����<�u�K1<��<�ߣUƿ�B�׍��s!;?j�D�k�����\I�uU��{��d5tIV�']fB�%j��.3������L	]�.M�0����6�͢~1ŧ2n��|��seS}���r����S[]      �   F  x�m�]o�@���Wp��g�|�L��*�jYjWE����T���emkӦs3sq���spk>G	��e0�G�QsB��飳^�Y���n3JT>&�����g��m�*�Zf5���a����m�`�~� �b�� ,	�X� ��b��־U�Q�o�^�0�(�r-w�ϴ�m�.���kjℂ��&k�s׬6|�h u|.�d�G����mv{kmf'��9��]���wNb�9�ӳ�0�o1�y���'��~��]L ɨdL��:\=���]V7*�φ<��Y�O�t�b�\�fA��x�.��D�|syhW�@uoR29�8D�=���-4�C�Etn^QZ��}m}X (5
��F� ��4^���.Í�'�돦�3N�-�BKą6���}�wP1w*��V�m.�jD~b\�zX��G��S���8eу��}+�S�J]�@��D��"Į�AY�>�^ʱ.���j��`��ʾG�TVi;���4]���~/�e��kCn�Н�������CfdAr����L/�����u�5'�
��
�ڬ�WTl(ؐ��R�����v���T      �      x������ � �      �      x������ � �      �   �  x����n$����SZ9��s%Y��Hp.�ol/ڣ�u 	F��C��U�bUKB F���Y$�.%�B����;�7 =q/�#����ξwWp��������x����Ç��/�O�������w�������^�5�8�t�CG�q���9N��BG�q����{�188�xN�%�T4�^\�
$4n���a{n��hZ�8��ʸs��q��k��� ��U��%Z(4r7�zv���<�������~�ٝyZ�_��5R{����y&&�_6����?o��ݣ���ۯ���?m>�?1��Y��A��Л���I�����톇�ά=Ѡ���C�1z���5�*���])H�:<��t/��@��wN����3�@���G�)�\n�ؼN�@�I:�ȫ+\;�����?<���m����Z:�b�<���.�Z~�e~ev%ʫG��Pk���(aq��V�͞�q�S�/s�,��:p�!�t@�uX��uJhk< �藁���l� =b�Aq��MjK���)iYdtjC���<���;��܆�<C���t� �B��@�E���}�B���9���Lh���y|����i7�1Ô�0���7���#���m��K���q
F�1Z��l�X�?.��}�Ҋ�U`�,lP �P6tܾDX�%r�qR�,��)���=Ŵb	9�X�$��LVKZ��yK���"�m$����b�+}tR�d�6��
l��Uq@�e��D0)k���j�;4��莡����c�
L���q��28.�C�i�@�xtp��8w��X��w�1Yu���f!�®F[�X�Jn��Wb����Fk����$�D;,�;�m�\EC,{���<�KHn�ԋZބ����jz����gA��:��)�
�8,[�Mf!��G7��ea��~V0�X�	V��m���l��-Ik%�a9�9T�TI$���xƬ�j���h-?��Y�=z�����V�9��)���G̫�7d$̑�������|���������FO�#��,9�*�S��֥ZI?��G �h���t�����J6�K�H���\�c�K�h�#���������t��>�w��m�r����b:"��XRm�[��۰�;��T����S�pR�C����]���!���|�	_]��4:�^1�����q9�+Th;v[�Wq>���jK��K7�sv �Y�&v�)ɦ�Ȯ�2,�z��x�����r�1��it��A�կ��ӗ��c�J��t o�>v7�N��I8�pVp�t��M����|�&iZ��s,�Dk�km.�χ����\ ^s���c�y��8Z�QG�^X���û�c�l)6���6�]ge$�H����a�Jg��c �����u��c9�x��B5%�HvL(���6�]�e�$@r8�[�ﬂ(&�s?n1�䄇)�;0(���c�<�MM�j�O,NТn����ks�I�Z*��Avt�tlR�x�4xHOe{ȁ؟=�I<��)�b�̕�`�rg\��i��%;��9̫ԠV���պ��ѫ2`��S.y�mS��e(�А�C�bI��Y���p��7����_Eh��'.5~�U���{Uak::�I�R�H����u(y7DV�K�Z'_�-E�oj�f�ɸ:j�Сuq����V��c�ix�5%�N���TG+h F/P��E�L.�V<F^�`H�>�����n����_��\G)�A�����u!�����H}m���rR�Z�҉5�ʓ����|Q#wxSlφJN^����jzC�f.h%>Q�˫�����\0�%�˫�s��*�10~9��b�5�t���J.�C��s<]N���Y��TT�yv��(��;�5�����~�z{?<'bz\�I�ܑ���k������m'�7�}@�1�����{��?1������,e9      �   �   x�eOI�0<ǏA��,�bZ+X�R�nEO��Tp�E3c[0gFGơ��h�$�g�I��4e.Rkp�O���\gpһ)��*.�i��J��	gӧ�%��H�%p)��|�}]W�"�����l��Qvs@Q�
V�y���3�>fWM�=6�� �o#      �   �  x����n�0���)�_͌��γ�d��RK�a���ۯ�Ɔ��@BQ�p�̜��vp�0�ή�  ����zC@ll�z���X	V�x����lic/��s�����Elc��o_P)�u������)Vn&���:��=�1Zj�g��c���ߵ潶's���!���S�δ�y�J�_��im��aL)L-��&[.�������a�ijמ�Vi�3Me�i�>^\c}�T2�Hg�����<��d<!S�#���0���/���ؗN�#fP��w�!�=M�����Q%��+炮��G;t���Ӹ����vA+Q�Dd��V�zb�&&9%�0�ï�hI��D�!̴S�.��H����e&����]ΜC�y{��u�t)3&�:�c{�>�ڟB��Ԧ�!�8�g��@�!����n������)I�$3�~�M�F��Y��PL
�&\��}����5�и��`GPŒH%!r�ȧCC���PE�BY���<b��J�Q��R���{T;,+A`B,Y��d<��O��kn4ݍ7�,*�L3!�`ɸ
}��7��`�j7?����_L�=��bd
���,Le�x�}Lߜf5���]����\�u
�����y_Է
����k�\�z���8`YPL>Hg���"|{t�wWF��& EE�E��$J+��n��&s,      �   �  x����Σ\��q�WQ�#[���pPK9���7_��Uե�˞xf=�{-(r��{Bj��J����8�A)d�����Z��?��O:���]����F t�([G=�V�j�L����=Zy��Q�-��m�Mg�mo�S��Ɂ)fE/V�k#�����M��t�-ԣ!�ս���-?���|�����lFY$������L&3�缔l���F�,�Æȥf�Eb��t��/��L�-]��j����l��\(�,��� ��# pD�DD�
�������ㅑQr����3���t/����>u>Q��E;��J�Y�e_ʁ�껝%�(1�*M���{͏Ϯ
'����~@(�F� �V2��Ԡ�m��64-�k9�u�f=����������D��C'�n{p�������y�U�g�y�F[~+���/N�hL!(�Vr;Й+�ʨyl�!mp��-y���JYy�G���KC}blw���FJ��κ9HZ�iׅ�9���_�㾔 !9:&p}+u\�32�]�S��ǥ$�{l�}>R)�$q�y��B8�oq���V��sP�T�#�,������\+���a��b!��D��� �m�2.7=Xk ��|ݫA��Ju���`>پ �]�9Ҏ�F��υ�gvd6��H�3[��[	���cc"콽Sݳ�6��.'�du��+�Tw�7�J��K�z:�f�y�Yz	Xoeb�����{�����L�����gs��
�|�����F7��ŵ���b73Uuk��(.�N�2j���G�ͦl._C��� ���o��t\�����%�'�zʞF�A"��~bx�.�D.�蘫�9s�� ͪ��	��2>F�խ�W�U;=� �)A����t��o%�Zq-� �Tw0.b�y1j&���H�JkE�)�`��t����b ��ry�4�9/����u�V�_J����S�^K �
P�&��g�L�=�E~WYu�5N|"Tё)�+<䷺,K�~��r���⠚�ַE����~)�D��x�{+��-m�SXUz[�,���`�������ѩ�=��sb���g�܃�k��gu�x��s����7� "�E��?8����ݦ�0�=��rQ��+ �x�G*��/�5�WIn+��9���et1�vf��$�ܸܠ�Gs��JC�$x���T�0�NK��W�4�e9D\�!�{�r��.�J�'ܠTtS��U���dU�v��^yY�dg_����/ύ�����6��)�-?ZQ��]� �4��auN�^B�NL�e���i�/U�Gw�C�Y��'�ϭ���Qw���n���I��$9��e�z+�Њ���۬�����Xo�R�GX���9Ѫ8�/�&��K~3	_LCG!x�8D~1q�4��K#�:}�vf�=�+�K��d籝�/H��9��2�5���J��F�W��f�ݪ�2��>=�i;��Bea�)VDO��ru��b��[��7��89(2t�d�sR?�es]F�.:jStI�`�G��*r�h9:�e?�4��S{-��(��r;(����eR�_=����̩6rtol��x��j�Qu=�Ƿ�5r�^"p���}��$������X�� ,�DV�Z����)����qb��y� (W}�ݚI�w��IF��F˼G��z	�mp��C��3�í�����f_�f���C��.G��e�.��w��|�H�V���v���qdy���� H�w�=�$I͛W�������"/�Ŀ�W��m
u5�y$��5wڔ���� r��u�3yEwHK�W?����1�#���K��UB᤺j�8va}l���؜$�i&�)>`}c$�#3�և�,Џu�<�LS͓��x�u�	#sC�f���a_6 4A�Y08�� Ǩ�-��� Q�;V�xMi�r]v�̲�:�=ƻ�]�J%u��!	"@"�cL9&��Mk�l ⓘh��	؎� �s�Bc|"�Y�q��R�01o!�f�uʻ�i8YwUars�}Y�$]�˿���.�`�.'�F]����&�	q��"˳�c�^|$�D�'��zyos�,�#w~ ��h�u����4���R��DE�`����xR��;�d&�#��$�I�#j�"�H$^�^^�P�i�
�>�x�n�{&�o�����J�-UU��o$^d�o$Nk�^���!��E��G��4�Y���H��Y��:��.���N��kZ�^�K��T�������-㺋�I!a��@ѻ��4Z���̤�]3ˌ�$}R���gN[swM��l��q7����_�k|��謜��7֘U�p�4�@��U����	�a�Nb��%s]ZeBlV�<u?i&��g��5J)��<s���<3]a�!Xm/��z˿�94F��x^�$�_��c�Ed����@���m�ME߯/U>�׳�]{��~r8tx�,�W��K��Os��F��Li8ܾVү瓍YR�m���VPK¾��"��	;���ɖ��5��T���a�b���4��:bc~�����~�<��_Hܰ���kn���	�&)l�s�j����ᶍ�����(�͏4:�E���]�P�0^ x��Q03�?Z8R���{HIC�e�R��o��%_���r�A�	i�mk7���t/yӡ�
�~���R��H;Ӽ���j�o��~C�i����'G�p��b��f�#G��A�	���VGk#<Co�͂H��A�&�Žp�R x�\�>�+��Hn�K�$غ&\a/[��~]er{�+�C���q@Z=.����J,�[k~�Vk�ad�yWt�g�͛�.�{u��6�~pL$°���!q#���]T�I���V>����i��aT��D$-Ey1��*�!��?�ʋH�:z��!TykjYG�$�v��koC�1
�4�\bw��7����݂q�]!ͩ>p����Sr�7��틒^���ܟQTn�C���Օ59J�{%��o�8�VS3�#�{��?���&Gl      �   �   x�����@E��_1^
tje�=ˀ����A��Kب�̽�9���<��)��]�=�LN�SX�IEB(T#Ii�n�O�?�����u#W�Q��F����L7W�&B8�mk��f���g�gݚ���6�8�^۲�Wok���E0�M�EI�^�E���?��e��򙣔z��x�      �   �   x�M��
�0����*v�:����.��9��R4���8���y�?����B�Dpd�M'��G#���Zy�w5Sj��=`�D��-�{D��d^��1;f����K��\������Y!�=ˑhJ����i����77���&a2�2���k� ���"Κa��پջ�|oT��K|U �?�J�      �   �   x���Mo�@E���2�._p��Ng��L�����Hb~�2��+��ܓ{�gQ�޿��<(�s�d|��9w��YaY( �L�A�T���B�@�x"R��$���������9��!"�4'�U7[=�� �^����"�c	��
Ho;x�%���LM��Gٞ��1>�;���1��6�l���6�Y�6դ򇆳qi�$�e��G�H��kb(���ԴU��f��x#5Gw�M�pм9��U˨1      �   F   x�3���KI��,�L.�N.JM�+��/�7202�50�50�74305��+�K�tJL�N/�/�K����� ]C      �   }  x�m��r�0���S��ri;mu������3� )�@h����`5:^��lv7�^�+e�i$��9��}kU&֬�퉮�c���6��'Ze�4n{.Q�l�t���Fk�Fz`�,������ '�WE���e�Ҝ)�L��Q��sn޵�i�1�3(=�V��Wh4 t[���?��^(�Ɓ�a��%=5�Á���+8���d1�C�i�1�D��wt�;Z�e���f��UL��^+a���M_���t�IA�&�^�.����I�in�"����>�B����B^�a���#
#N����}__�����M1ـ[��	aI hm��f�_D!�{������f�"*b��E�?j�Vǌ��fF��k      �   ]   x�3���KI��,�LI�/�(�O)M.��ϋ�L�7�44376�74�0�7��	6*��K�	H+�w�ts�3
��-0�tJL�V������ �t�      �   �  x�u�Ko�0�����\�K��v�$i-bĀSkk%Q�����������!i1�7Xr�f�ʺ�:��-��H�?�ԫ�pO�h�B#�aOcc�²���MS���a����N����a�-&E���j�~�.��y�l[4�Z�Hن�
$�8Hf�@Jm��>|���:ۀ��!�W��1�?�:UW�X�hD�9�����u������1�*G�P'��O��R�?��+�������<��9K{♚�Q%�Ȓ��T��\I��,ݻ�f�8�?��ݬ���yz�����u�~�c�!���$.ce�9�`��Uᶔ���,ջ��&���WK:Q'�R;�'؅̋ޒt�0����<�	�-���>�om�A�V2z?�rmx-�U���h4��K�      �   �  x���n�@���)��;(��e~�(M����DQ%�2\`쁡3�߾ΦRy����9���=�s��X������Hi;���N臁�n;OX㠜�3��ɡ�����c�z��v"gK�����ד?�ĹT�����n��� �|�Dn`9������ �Vi�a�+L|�J�2���"� �5��y��.��]��#z%G^��`�=���T h$�Mj� ����	%���:M�QǨC��V/9C3M$0�������UR�d��r:�*�.^G���3�J=��m*RD{�b)&ۖ�wHI�֤&��SR�H�\v�x��1r==�7g�W��ߝ��si��u3,u��C[ �,�q�YRPfE��j�YE��,�1���[�r��s]n�����u�Iֻ1��5�޳���:��Y��ў=c1[��ϫ*
eU����[1f�����/o�X�E,[C      �   �   x�M��N�0�g�)�5iBI;��R?�1!U�8��(���4T��	������r���4����
} %�O�``�l�Ic��E�.t+zs���D��DD��(,��"R2�3h�7*>P�$�}�*���KV��z�z,;/%�Jd�:!�����ȓ�.~�ʍ�
�M�R=���fۮ+r��˩-p=��'�w�{5Qk�[���F=��!��u���tǃ��_<�&9�߄�]�     