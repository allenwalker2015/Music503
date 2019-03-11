--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.11
-- Dumped by pg_dump version 9.6.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: cama_comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cama_comments (
    id integer NOT NULL,
    author character varying,
    author_email character varying,
    author_url character varying,
    "author_IP" character varying,
    content text,
    approved character varying DEFAULT 'pending'::character varying,
    agent character varying,
    typee character varying,
    comment_parent integer,
    post_id integer,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.cama_comments OWNER TO postgres;

--
-- Name: cama_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cama_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cama_comments_id_seq OWNER TO postgres;

--
-- Name: cama_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cama_comments_id_seq OWNED BY public.cama_comments.id;


--
-- Name: cama_custom_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cama_custom_fields (
    id integer NOT NULL,
    object_class character varying,
    name character varying,
    slug character varying,
    objectid integer,
    parent_id integer,
    field_order integer,
    count integer DEFAULT 0,
    is_repeat boolean DEFAULT false,
    description text,
    status character varying
);


ALTER TABLE public.cama_custom_fields OWNER TO postgres;

--
-- Name: cama_custom_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cama_custom_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cama_custom_fields_id_seq OWNER TO postgres;

--
-- Name: cama_custom_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cama_custom_fields_id_seq OWNED BY public.cama_custom_fields.id;


--
-- Name: cama_custom_fields_relationships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cama_custom_fields_relationships (
    id integer NOT NULL,
    objectid integer,
    custom_field_id integer,
    term_order integer,
    object_class character varying,
    value text,
    custom_field_slug character varying,
    group_number integer DEFAULT 0
);


ALTER TABLE public.cama_custom_fields_relationships OWNER TO postgres;

--
-- Name: cama_custom_fields_relationships_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cama_custom_fields_relationships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cama_custom_fields_relationships_id_seq OWNER TO postgres;

--
-- Name: cama_custom_fields_relationships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cama_custom_fields_relationships_id_seq OWNED BY public.cama_custom_fields_relationships.id;


--
-- Name: cama_media; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cama_media (
    id integer NOT NULL,
    site_id integer,
    name character varying,
    is_folder boolean DEFAULT false,
    folder_path character varying,
    file_size character varying,
    dimension character varying DEFAULT ''::character varying,
    file_type character varying,
    url character varying,
    thumb character varying,
    is_public boolean DEFAULT true,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.cama_media OWNER TO postgres;

--
-- Name: cama_media_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cama_media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cama_media_id_seq OWNER TO postgres;

--
-- Name: cama_media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cama_media_id_seq OWNED BY public.cama_media.id;


--
-- Name: cama_metas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cama_metas (
    id integer NOT NULL,
    key character varying,
    value text,
    objectid integer,
    object_class character varying
);


ALTER TABLE public.cama_metas OWNER TO postgres;

--
-- Name: cama_metas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cama_metas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cama_metas_id_seq OWNER TO postgres;

--
-- Name: cama_metas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cama_metas_id_seq OWNED BY public.cama_metas.id;


--
-- Name: cama_posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cama_posts (
    id integer NOT NULL,
    title text,
    slug text,
    content text,
    content_filtered text,
    status character varying DEFAULT 'published'::character varying,
    published_at timestamp without time zone,
    post_parent integer,
    visibility character varying DEFAULT 'public'::character varying,
    visibility_value text,
    post_class character varying DEFAULT 'Post'::character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer,
    post_order integer DEFAULT 0,
    taxonomy_id integer,
    is_feature boolean DEFAULT false
);


ALTER TABLE public.cama_posts OWNER TO postgres;

--
-- Name: cama_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cama_posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cama_posts_id_seq OWNER TO postgres;

--
-- Name: cama_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cama_posts_id_seq OWNED BY public.cama_posts.id;


--
-- Name: cama_term_relationships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cama_term_relationships (
    id integer NOT NULL,
    objectid integer,
    term_order integer,
    term_taxonomy_id integer
);


ALTER TABLE public.cama_term_relationships OWNER TO postgres;

--
-- Name: cama_term_relationships_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cama_term_relationships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cama_term_relationships_id_seq OWNER TO postgres;

--
-- Name: cama_term_relationships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cama_term_relationships_id_seq OWNED BY public.cama_term_relationships.id;


--
-- Name: cama_term_taxonomy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cama_term_taxonomy (
    id integer NOT NULL,
    taxonomy character varying,
    description text,
    parent_id integer,
    count integer,
    name text,
    slug character varying,
    term_group integer,
    term_order integer,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.cama_term_taxonomy OWNER TO postgres;

--
-- Name: cama_term_taxonomy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cama_term_taxonomy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cama_term_taxonomy_id_seq OWNER TO postgres;

--
-- Name: cama_term_taxonomy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cama_term_taxonomy_id_seq OWNED BY public.cama_term_taxonomy.id;


--
-- Name: cama_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cama_users (
    id integer NOT NULL,
    username character varying,
    role character varying DEFAULT 'client'::character varying,
    email character varying,
    slug character varying,
    password_digest character varying,
    auth_token character varying,
    password_reset_token character varying,
    parent_id integer,
    password_reset_sent_at timestamp without time zone,
    last_login_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    site_id integer DEFAULT '-1'::integer,
    confirm_email_token character varying,
    confirm_email_sent_at timestamp without time zone,
    is_valid_email boolean DEFAULT true,
    first_name character varying,
    last_name character varying
);


ALTER TABLE public.cama_users OWNER TO postgres;

--
-- Name: cama_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cama_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cama_users_id_seq OWNER TO postgres;

--
-- Name: cama_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cama_users_id_seq OWNED BY public.cama_users.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    author character varying,
    author_email character varying,
    author_url character varying,
    "author_IP" character varying,
    content text,
    approved character varying DEFAULT 'pending'::character varying,
    agent character varying,
    typee character varying,
    comment_parent integer,
    post_id integer,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: custom_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custom_fields (
    id integer NOT NULL,
    object_class character varying,
    name character varying,
    slug character varying,
    objectid integer,
    parent_id integer,
    field_order integer,
    count integer DEFAULT 0,
    is_repeat boolean DEFAULT false,
    description text,
    status character varying
);


ALTER TABLE public.custom_fields OWNER TO postgres;

--
-- Name: custom_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.custom_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_fields_id_seq OWNER TO postgres;

--
-- Name: custom_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.custom_fields_id_seq OWNED BY public.custom_fields.id;


--
-- Name: custom_fields_relationships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custom_fields_relationships (
    id integer NOT NULL,
    objectid integer,
    custom_field_id integer,
    term_order integer,
    object_class character varying,
    value text,
    custom_field_slug character varying,
    group_number integer DEFAULT 0
);


ALTER TABLE public.custom_fields_relationships OWNER TO postgres;

--
-- Name: custom_fields_relationships_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.custom_fields_relationships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_fields_relationships_id_seq OWNER TO postgres;

--
-- Name: custom_fields_relationships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.custom_fields_relationships_id_seq OWNED BY public.custom_fields_relationships.id;


--
-- Name: media; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.media (
    id integer NOT NULL,
    site_id integer,
    name character varying,
    is_folder boolean DEFAULT false,
    folder_path character varying,
    file_size character varying,
    dimension character varying DEFAULT ''::character varying,
    file_type character varying,
    url character varying,
    thumb character varying,
    is_public boolean DEFAULT true,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.media OWNER TO postgres;

--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_id_seq OWNER TO postgres;

--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;


--
-- Name: metas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.metas (
    id integer NOT NULL,
    key character varying,
    value text,
    objectid integer,
    object_class character varying
);


ALTER TABLE public.metas OWNER TO postgres;

--
-- Name: metas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.metas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.metas_id_seq OWNER TO postgres;

--
-- Name: metas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.metas_id_seq OWNED BY public.metas.id;


--
-- Name: plugins_attacks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plugins_attacks (
    id bigint NOT NULL,
    path character varying,
    browser_key character varying,
    site_id bigint,
    created_at timestamp without time zone
);


ALTER TABLE public.plugins_attacks OWNER TO postgres;

--
-- Name: plugins_attacks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.plugins_attacks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plugins_attacks_id_seq OWNER TO postgres;

--
-- Name: plugins_attacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.plugins_attacks_id_seq OWNED BY public.plugins_attacks.id;


--
-- Name: plugins_contact_forms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plugins_contact_forms (
    id integer NOT NULL,
    site_id integer,
    count integer,
    parent_id integer,
    name character varying,
    slug character varying,
    description text,
    value text,
    settings text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.plugins_contact_forms OWNER TO postgres;

--
-- Name: plugins_contact_forms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.plugins_contact_forms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plugins_contact_forms_id_seq OWNER TO postgres;

--
-- Name: plugins_contact_forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.plugins_contact_forms_id_seq OWNED BY public.plugins_contact_forms.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title text,
    slug text,
    content text,
    content_filtered text,
    status character varying DEFAULT 'published'::character varying,
    published_at timestamp without time zone,
    post_parent integer,
    visibility character varying DEFAULT 'public'::character varying,
    visibility_value text,
    post_class character varying DEFAULT 'Post'::character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer,
    post_order integer DEFAULT 0,
    taxonomy_id integer,
    is_feature boolean DEFAULT false
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: term_relationships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.term_relationships (
    id integer NOT NULL,
    objectid integer,
    term_order integer,
    term_taxonomy_id integer
);


ALTER TABLE public.term_relationships OWNER TO postgres;

--
-- Name: term_relationships_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.term_relationships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.term_relationships_id_seq OWNER TO postgres;

--
-- Name: term_relationships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.term_relationships_id_seq OWNED BY public.term_relationships.id;


--
-- Name: term_taxonomy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.term_taxonomy (
    id integer NOT NULL,
    taxonomy character varying,
    description text,
    parent_id integer,
    count integer,
    name text,
    slug character varying,
    term_group integer,
    term_order integer,
    status character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.term_taxonomy OWNER TO postgres;

--
-- Name: term_taxonomy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.term_taxonomy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.term_taxonomy_id_seq OWNER TO postgres;

--
-- Name: term_taxonomy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.term_taxonomy_id_seq OWNED BY public.term_taxonomy.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying,
    role character varying DEFAULT 'client'::character varying,
    email character varying,
    slug character varying,
    password_digest character varying,
    auth_token character varying,
    password_reset_token character varying,
    parent_id integer,
    password_reset_sent_at timestamp without time zone,
    last_login_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    site_id integer DEFAULT '-1'::integer,
    confirm_email_token character varying,
    confirm_email_sent_at timestamp without time zone,
    is_valid_email boolean DEFAULT true,
    first_name character varying,
    last_name character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: cama_comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_comments ALTER COLUMN id SET DEFAULT nextval('public.cama_comments_id_seq'::regclass);


--
-- Name: cama_custom_fields id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_custom_fields ALTER COLUMN id SET DEFAULT nextval('public.cama_custom_fields_id_seq'::regclass);


--
-- Name: cama_custom_fields_relationships id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_custom_fields_relationships ALTER COLUMN id SET DEFAULT nextval('public.cama_custom_fields_relationships_id_seq'::regclass);


--
-- Name: cama_media id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_media ALTER COLUMN id SET DEFAULT nextval('public.cama_media_id_seq'::regclass);


--
-- Name: cama_metas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_metas ALTER COLUMN id SET DEFAULT nextval('public.cama_metas_id_seq'::regclass);


--
-- Name: cama_posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_posts ALTER COLUMN id SET DEFAULT nextval('public.cama_posts_id_seq'::regclass);


--
-- Name: cama_term_relationships id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_term_relationships ALTER COLUMN id SET DEFAULT nextval('public.cama_term_relationships_id_seq'::regclass);


--
-- Name: cama_term_taxonomy id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_term_taxonomy ALTER COLUMN id SET DEFAULT nextval('public.cama_term_taxonomy_id_seq'::regclass);


--
-- Name: cama_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_users ALTER COLUMN id SET DEFAULT nextval('public.cama_users_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: custom_fields id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_fields ALTER COLUMN id SET DEFAULT nextval('public.custom_fields_id_seq'::regclass);


--
-- Name: custom_fields_relationships id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_fields_relationships ALTER COLUMN id SET DEFAULT nextval('public.custom_fields_relationships_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);


--
-- Name: metas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metas ALTER COLUMN id SET DEFAULT nextval('public.metas_id_seq'::regclass);


--
-- Name: plugins_attacks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plugins_attacks ALTER COLUMN id SET DEFAULT nextval('public.plugins_attacks_id_seq'::regclass);


--
-- Name: plugins_contact_forms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plugins_contact_forms ALTER COLUMN id SET DEFAULT nextval('public.plugins_contact_forms_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: term_relationships id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.term_relationships ALTER COLUMN id SET DEFAULT nextval('public.term_relationships_id_seq'::regclass);


--
-- Name: term_taxonomy id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.term_taxonomy ALTER COLUMN id SET DEFAULT nextval('public.term_taxonomy_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 1, false);


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
\.


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 1, false);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-03-02 17:04:42.950376	2019-03-02 17:04:42.950376
\.


--
-- Data for Name: cama_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cama_comments (id, author, author_email, author_url, "author_IP", content, approved, agent, typee, comment_parent, post_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: cama_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cama_comments_id_seq', 1, false);


--
-- Data for Name: cama_custom_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cama_custom_fields (id, object_class, name, slug, objectid, parent_id, field_order, count, is_repeat, description, status) FROM stdin;
34	Theme	Default Field Group	_default	34	1	\N	0	f	\N	\N
35	_fields	Footer message	footer	\N	34	\N	0	f	\N	\N
48	Theme	Footer	footer	34	1	\N	0	f	\N	\N
49	_fields	Column Left	footer_left	\N	48	\N	0	f	\N	\N
50	_fields	Column Center	footer_center	\N	48	\N	0	f	\N	\N
51	_fields	Column Right	footer_right	\N	48	\N	0	f	\N	\N
44	Theme	Home Page	home_page	34	1	\N	0	f		\N
45	_fields	Home Page	home_page	\N	44	0	0	f	Select your home page	\N
46	_fields	Recent items from	recent_post_type	\N	44	1	0	f		\N
47	_fields	Items quantity 	home_qty	\N	44	2	0	f	Amount of items to disaplay in the lists	\N
58	_fields	Recent audio items from	recent_audio_post_type	\N	44	3	0	f		\N
59	_fields	Recent video items from	recent_video_post_type	\N	44	4	0	f		\N
52	PostType_Post	Musica - extras	_group-extras	40	1	\N	0	t		\N
53	_fields	Enlace de descarga externo	external_url	\N	52	0	0	f		\N
60	PostType_Post	Banners -extra	_group-banners-extra	44	1	\N	0	f		\N
61	_fields	URL	url	\N	60	0	0	f		\N
\.


--
-- Name: cama_custom_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cama_custom_fields_id_seq', 61, true);


--
-- Data for Name: cama_custom_fields_relationships; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cama_custom_fields_relationships (id, objectid, custom_field_id, term_order, object_class, value, custom_field_slug, group_number) FROM stdin;
95	34	53	0	Post	https://www.youtube.com/watch?v=mT9LJSad8h0	video_url	0
159	37	53	0	Post	https://www.youtube.com/watch?v=mT9LJSad8h0	external_url	0
101	2	53	0	Post	https://www.youtube.com/watch?v=mT9LJSad8h0	video_url	0
163	39	61	0	Post		url	0
150	34	35	0	Theme	<p>Copyright &copy; 2015 - Camaleon CMS. All rights reservated.</p>	footer	0
151	34	45	0	Theme	2	home_page	0
152	34	46	0	Theme	noticias	recent_post_type	0
153	34	47	0	Theme	6	home_qty	0
154	34	58	0	Theme	40	recent_audio_post_type	0
155	34	59	0	Theme	41	recent_video_post_type	0
156	34	49	0	Theme	<h4><span>Some more text</span></h4>\r\n<p><span>Integer placerat, ligula ut pellentesque laoreet, libero mauris pharetra mauris, posuere vestibulum ante purus non velit.&nbsp;</span></p>	footer_left	0
157	34	50	0	Theme	<h4><span>Some more text</span></h4>\r\n<p><span>Integer placerat, ligula ut pellentesque laoreet, libero mauris pharetra mauris, posuere vestibulum ante purus non velit.&nbsp;</span></p>	footer_center	0
158	34	51	0	Theme	<h4><strong>About Theme</strong></h4>\r\n<p>This cute theme was created to showcase your work in a simple way. Use it wisely.</p>	footer_right	0
\.


--
-- Name: cama_custom_fields_relationships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cama_custom_fields_relationships_id_seq', 163, true);


--
-- Data for Name: cama_media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cama_media (id, site_id, name, is_folder, folder_path, file_size, dimension, file_type, url, thumb, is_public, created_at, updated_at) FROM stdin;
1	1	photo-1445295029071-5151176738d0.jpeg	f	/	80225	1050x700	image	/media/1/photo-1445295029071-5151176738d0.jpeg	/media/1/thumb/photo-1445295029071-5151176738d0-jpeg.jpeg	f	2019-03-03 05:37:32.043791	2019-03-03 05:37:32.043791
2	1	photo-1438979315413-de5df30042a1.jpeg	f	/	84065	1050x700	image	/media/1/photo-1438979315413-de5df30042a1.jpeg	/media/1/thumb/photo-1438979315413-de5df30042a1-jpeg.jpeg	f	2019-03-03 05:38:08.057941	2019-03-03 05:38:08.057941
\.


--
-- Name: cama_media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cama_media_id_seq', 2, true);


--
-- Data for Name: cama_metas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cama_metas (id, key, value, objectid, object_class) FROM stdin;
14	attack_config	{"get":{"sec":20,"max":10},"post":{"sec":20,"max":5},"msg":"Requests Limit exceeded!","ban":5,"cleared":"2019-03-11 01:32:51 +0000"}	1	Site
3	_manager_1	{"media":1,"comments":1,"themes":1,"widgets":1,"nav_menu":1,"plugins":1,"users":1,"settings":1,"theme_settings":1}	3	UserRole
104	_default	{"has_category":false,"has_tags":false,"has_summary":false,"has_content":false,"has_comments":false,"has_picture":true,"has_template":true,"has_seo":true,"not_deleted":false,"has_layout":false,"default_layout":"","icon":"","default_template":"","has_single_category":false,"has_featured":false,"has_parent_structure":false,"posts_image_dimension":"","posts_thumb_versions":"","posts_thumb_size":"","is_required_picture":true,"contents_route_format":"post","default_thumb":""}	44	PostType
6	_default	{"not_deleted":true}	6	Category
48	_default	{"field_key":"url","label_eval":"","panel_hidden":"","default_value":"","multiple":"0","required":"1","translate":"0"}	53	CustomField
49	_default	{"caption":"Posts en Musica"}	52	CustomFieldGroup
8	_post_type_1	{}	11	UserRole
9	_manager_1	{}	11	UserRole
10	_default	{"version_installed":0.2}	12	Plugin
11	front_cache_elements	{"paths":[],"posts":[],"post_types":[7],"skip_posts":[],"home":true,"cache_login":true,"cache_counter":0}	1	Site
12	_default	{"version_installed":"0.0.27"}	13	Plugin
13	_default	{"version_installed":0.1}	14	Plugin
15	_default	{"version_installed":1.5}	15	Plugin
57	visits	99	1	Post
46	_default	{"field_key":"editor","translate":true,"default_value":"\\u003ch4\\u003eMy Links\\u003c/h4\\u003e \\u003cp\\u003e\\u003ca href='#'\\u003eDribbble\\u003c/a\\u003e\\u003cbr\\u003e \\u003ca href='#'\\u003eTwitter\\u003c/a\\u003e\\u003cbr\\u003e \\u003ca href='#'\\u003eFacebook\\u003c/a\\u003e\\u003c/p\\u003e"}	50	CustomField
47	_default	{"field_key":"editor","translate":true,"default_value":"\\u003ch4\\u003eAbout Theme\\u003c/h4\\u003e\\u003cp\\u003eThis cute theme was created to showcase your work in a simple way. Use it wisely.\\u003c/p\\u003e"}	51	CustomField
59	languages_site	["es"]	1	Site
35	_default	{"field_key":"editor","default_value":"Copyright \\u0026copy; 2015 - Camaleon CMS. All rights reservated."}	35	CustomField
53	template		2	Post
45	_default	{"field_key":"editor","translate":true,"default_value":"\\u003ch4\\u003eMy Bunker\\u003c/h4\\u003e\\u003cp\\u003eSome Address 987,\\u003cbr\\u003e +34 9054 5455, \\u003cbr\\u003e Madrid, Spain. \\u003c/p\\u003e"}	49	CustomField
54	layout		2	Post
55	thumb		2	Post
56	_default	{"seo_title":"","keywords":"","seo_description":"","seo_author":"","seo_image":""}	2	Post
62	template		34	Post
58	_default	{"not_deleted":true}	38	Category
34	visits	22	2	Post
73	template		36	Post
63	layout		34	Post
74	has_comments	0	36	Post
60	slug	welcome,welcome	34	Post
61	summary		34	Post
64	thumb		34	Post
52	slug	welcome,welcome	2	Post
65	summary		2	Post
1	_default	{"has_category":true,"has_tags":true,"has_summary":true,"has_content":true,"has_comments":true,"has_picture":true,"has_template":true,"has_seo":true,"not_deleted":true,"has_layout":false,"default_layout":"","icon":"","default_template":"","has_single_category":false,"has_featured":false,"has_parent_structure":false,"posts_image_dimension":"","posts_thumb_versions":"","posts_thumb_size":"","is_required_picture":false,"contents_route_format":"post","default_thumb":""}	2	PostType
7	_default	{"has_category":true,"has_tags":true,"has_summary":true,"has_content":true,"has_comments":false,"has_picture":true,"has_template":true,"has_seo":true,"not_deleted":true,"has_layout":true,"default_layout":"","icon":"","default_template":"","has_single_category":false,"has_featured":true,"has_parent_structure":false,"posts_image_dimension":"","posts_thumb_versions":"","posts_thumb_size":"","is_required_picture":false,"default_thumb":"","contents_route_format":"post"}	7	PostType
42	_default	{"field_key":"posts","label_eval":"","panel_hidden":"","post_types":["all"],"multiple":"0","required":"0"}	45	CustomField
71	slug	holi	36	Post
72	summary	The horn be designer particularly this belt carpeting real think receive advised design seen Mr. More support to question. Able proposal you a at the to bad outside a space me. Self-discipline. Secretly above material. Circumstances. 	36	Post
76	_default	{"seo_title":"","keywords":"","seo_description":"","seo_author":"","seo_image":""}	36	Post
77	slug	sample-post	1	Post
75	thumb	/media/1/photo-1438979315413-de5df30042a1.jpeg	36	Post
78	summary		1	Post
79	template		1	Post
80	has_comments	0	1	Post
81	thumb	/media/1/photo-1445295029071-5151176738d0.jpeg	1	Post
82	_default	{"seo_title":"","keywords":"","seo_description":"","seo_author":"","seo_image":""}	1	Post
43	_default	{"field_key":"select_eval","label_eval":"","panel_hidden":"","command":"camaleon_first_list_select","default_value":"","required":"0"}	46	CustomField
44	_default	{"field_key":"numeric","label_eval":"","panel_hidden":"","default_value":"6","multiple":"0","required":"0"}	47	CustomField
83	_default	{"caption":"undefined: "}	44	CustomFieldGroup
105	_default	{"field_key":"url","label_eval":"","panel_hidden":"","default_value":"","multiple":"0","required":"0","translate":"0"}	61	CustomField
106	_default	{"caption":"Posts en Banners"}	60	CustomFieldGroup
107	slug	yo	39	Post
108	thumb	/media/1/photo-1445295029071-5151176738d0.jpeg	39	Post
109	_default	{"seo_title":"","keywords":"","seo_description":"","seo_author":"","seo_image":""}	39	Post
2	_post_type_1	{"edit":[44,2,7,40,41],"edit_other":[44,2,7,40,41],"edit_publish":[44,2,7,40,41],"publish":[44,2,7,40,41],"delete":[44,2,7,40,41],"delete_other":[44,2,7,40,41],"delete_publish":[44,2,7,40,41],"manage_categories":[44,2,7,40,41],"manage_tags":[44,2,7,40,41]}	3	UserRole
86	_default	{"field_key":"post_types","label_eval":"","panel_hidden":"","multiple":"0","required":"0"}	58	CustomField
87	_default	{"field_key":"post_types","label_eval":"","panel_hidden":"","multiple":"0","required":"0"}	59	CustomField
88	_default	{"has_category":false,"has_tags":false,"has_summary":true,"has_content":true,"has_comments":true,"has_picture":true,"has_template":true,"has_seo":true,"not_deleted":false,"has_layout":false,"default_layout":"","icon":"","default_template":"","has_single_category":false,"has_featured":false,"has_parent_structure":false,"posts_image_dimension":"","posts_thumb_versions":"","posts_thumb_size":"","is_required_picture":false,"contents_route_format":"post","default_thumb":""}	40	PostType
89	_default	{"has_category":false,"has_tags":false,"has_summary":true,"has_content":true,"has_comments":true,"has_picture":true,"has_template":true,"has_seo":true,"not_deleted":false,"has_layout":false,"default_layout":"","icon":"","default_template":"","has_single_category":false,"has_featured":false,"has_parent_structure":false,"posts_image_dimension":"","posts_thumb_versions":"","posts_thumb_size":"","is_required_picture":false,"contents_route_format":"post","default_thumb":""}	41	PostType
90	slug	sdasd	37	Post
91	summary		37	Post
92	template		37	Post
93	has_comments	1	37	Post
94	thumb		37	Post
95	_default	{"seo_title":"","keywords":"","seo_description":"","seo_author":"","seo_image":""}	37	Post
96	slug	asdasd	38	Post
97	summary		38	Post
98	template		38	Post
99	has_comments	1	38	Post
100	thumb		38	Post
101	_default	{"seo_title":"","keywords":"","seo_description":"","seo_author":"","seo_image":""}	38	Post
102	visits	1	38	Post
4	_post_type_1	{"edit":[2,7,40,41,44],"edit_other":[2,7,40,41,44],"edit_publish":[2,7,40,41,44],"publish":[2,7,40,41,44],"delete":[2,7,40,41,44],"delete_other":[2,7,40,41,44],"delete_publish":[2,7,40,41,44],"manage_categories":[2,7,40,41,44],"manage_tags":[2,7,40,41,44]}	4	UserRole
5	_post_type_1	{"edit":[2,7,40,41,44]}	5	UserRole
16	_default	{"_theme":"alex5stars","save_intro":true,"refresh_cache":false,"logo":"","icon":"","home_page":"","error_404":"","page_maintenance":2,"maintenance_ips":"","page_inactive":2,"front_per_page":10,"admin_per_page":10,"comment_status":"pending","permit_anonimos_comment":"","permit_create_account":"","security_captcha_user_register":"","enable_captcha_for_comments":"","need_validate_email":"","custom_fields_show_shortcodes":true,"seo_description":"SEOasdasdasd","keywords":"sssss","seo_author":"","twitter_card":"","screenshot":"","email_from":"","email_cc":"","mailer_enabled":0,"filesystem_type":"local","filesystem_max_size":100,"filesystem_thumb_size":"100x100","file_actions_in_modals":"no","_admin_theme":"es"}	1	Site
103	visits	38	36	Post
\.


--
-- Name: cama_metas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cama_metas_id_seq', 109, true);


--
-- Data for Name: cama_posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cama_posts (id, title, slug, content, content_filtered, status, published_at, post_parent, visibility, visibility_value, post_class, created_at, updated_at, user_id, post_order, taxonomy_id, is_feature) FROM stdin;
1	Sample Post	sample-post	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pharetra ut augue in posuere. Nulla non malesuada dui. Sed egestas tortor ut purus tempor sodales. Duis non sollicitudin nulla, quis mollis neque. Integer sit amet augue ac neque varius auctor. Vestibulum malesuada leo leo, at semper libero efficitur nec. Etiam semper nisi ac nisi ullamcorper, sed tincidunt purus elementum. Mauris ac congue nibh. Quisque pretium eget leo nec suscipit.</p>\r\n<p>Vestibulum ultrices orci ut congue interdum. Morbi dolor nunc, imperdiet vel risus semper, tempor dapibus urna. Phasellus luctus pharetra enim quis volutpat. Integer tristique urna nec malesuada ullamcorper. Curabitur dictum, lectus id ultrices rhoncus, ante neque auctor erat, ut sodales nisi odio sit amet lorem. In hac habitasse platea dictumst. Quisque orci orci, hendrerit at luctus tristique, lobortis in diam. Curabitur ligula enim, rhoncus ut vestibulum a, consequat sit amet nisi. Aliquam bibendum fringilla ultrices. Aliquam erat volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In justo mi, congue in rhoncus lobortis, facilisis in est. Nam et rhoncus purus.</p>\r\n<p>Sed sagittis auctor lectus at rutrum. Morbi ultricies felis mi, ut scelerisque augue facilisis eu. In molestie quam ex. Quisque ut sapien sed odio tempus imperdiet. In id accumsan massa. Morbi quis nunc ullamcorper, interdum enim eu, finibus purus. Vestibulum ac fermentum augue, at tempus ante. Aliquam ultrices, purus ut porttitor gravida, dui augue dignissim massa, ac tempor ante dolor at arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse placerat risus est, eget varius mi ultricies in. Duis non odio ut felis dapibus eleifend. In fringilla enim lobortis placerat efficitur.</p>\r\n<p>Nulla sodales faucibus urna, quis viverra dolor facilisis sollicitudin. Aenean ac egestas nibh. Nam non tortor eget nibh scelerisque fermentum. Etiam ornare, nunc ut luctus mollis, ante dolor consectetur augue, non scelerisque odio est a nulla. Nullam cursus egestas nulla, nec commodo nibh suscipit ut. Mauris ut felis sem. Aenean at mi at nisi dictum blandit sit amet at erat. Etiam eget lobortis tellus. Curabitur in commodo arcu, at vehicula tortor.</p>	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pharetra ut augue in posuere. Nulla non malesuada dui. Sed egestas tortor ut purus tempor sodales. Duis non sollicitudin nulla, quis mollis neque. Integer sit amet augue ac neque varius auctor. Vestibulum malesuada leo leo, at semper libero efficitur nec. Etiam semper nisi ac nisi ullamcorper, sed tincidunt purus elementum. Mauris ac congue nibh. Quisque pretium eget leo nec suscipit. Vestibulum ultrices orci ut congue interdum. Morbi dolor nunc, imperdiet vel risus semper, tempor dapibus urna. Phasellus luctus pharetra enim quis volutpat. Integer tristique urna nec malesuada ullamcorper. Curabitur dictum, lectus id ultrices rhoncus, ante neque auctor erat, ut sodales nisi odio sit amet lorem. In hac habitasse platea dictumst. Quisque orci orci, hendrerit at luctus tristique, lobortis in diam. Curabitur ligula enim, rhoncus ut vestibulum a, consequat sit amet nisi. Aliquam bibendum fringilla ultrices. Aliquam erat volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In justo mi, congue in rhoncus lobortis, facilisis in est. Nam et rhoncus purus. Sed sagittis auctor lectus at rutrum. Morbi ultricies felis mi, ut scelerisque augue facilisis eu. In molestie quam ex. Quisque ut sapien sed odio tempus imperdiet. In id accumsan massa. Morbi quis nunc ullamcorper, interdum enim eu, finibus purus. Vestibulum ac fermentum augue, at tempus ante. Aliquam ultrices, purus ut porttitor gravida, dui augue dignissim massa, ac tempor ante dolor at arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse placerat risus est, eget varius mi ultricies in. Duis non odio ut felis dapibus eleifend. In fringilla enim lobortis placerat efficitur. Nulla sodales faucibus urna, quis viverra dolor facilisis sollicitudin. Aenean ac egestas nibh. Nam non tortor eget nibh scelerisque fermentum. Etiam ornare, nunc ut luctus mollis, ante dolor consectetur augue, non scelerisque odio est a nulla. Nullam cursus egestas nulla, nec commodo nibh suscipit ut. Mauris ut felis sem. Aenean at mi at nisi dictum blandit sit amet at erat. Etiam eget lobortis tellus. Curabitur in commodo arcu, at vehicula tortor.	published	\N	\N	public	\N	Post	2019-03-02 17:22:05.972862	2019-03-03 05:38:34.928039	1	1	2	f
34	Welcome	<!--:en-->welcome<!--:--><!--:es-->welcome<!--:-->	<!--:en--><p style="text-align: center;"><img src="http://camaleon.tuzitio.com/media/132/logo2.png" alt="logo" width="155" height="155" /></p>\r\n<p><strong>Camaleon CMS</strong>&nbsp;is a free and open-source tool and a fexible content management system (CMS) based on <a href="http://rubyonrails.org">Ruby on Rails 4</a>&nbsp;and MySQL.&nbsp;</p>\r\n<p>With Camaleon you can do the following:</p>\r\n<ul>\r\n<li>Create instantly a lot of sites&nbsp;in the same installation</li>\r\n<li>Manage your content information in several languages</li>\r\n<li>Extend current functionality by&nbsp;plugins (MVC structure and no more echo or prints anywhere)</li>\r\n<li>Create or install different themes for each site</li>\r\n<li>Create your own structure without coding anything (adapt Camaleon as you want&nbsp;and not you for Camaleon)</li>\r\n<li>Create your store and start to sell your products using our plugins</li>\r\n<li>Avoid web attacks</li>\r\n<li>Compare the speed and enjoy the speed of your new Camaleon site</li>\r\n<li>Customize or create your themes for mobile support</li>\r\n<li>Support&nbsp;more visitors at the same time</li>\r\n<li>Manage your information with a panel like wordpress&nbsp;</li>\r\n<li>All urls are oriented for SEO</li>\r\n<li>Multiples roles of users</li>\r\n</ul><!--:--><!--:es--><p style="text-align: center;"><img src="http://camaleon.tuzitio.com/media/132/logo2.png" alt="logo" width="155" height="155" /></p>\r\n<p><strong>Camaleon CMS</strong>&nbsp;is a free and open-source tool and a fexible content management system (CMS) based on <a href="http://rubyonrails.org">Ruby on Rails 4</a>&nbsp;and MySQL.&nbsp;</p>\r\n<p>With Camaleon you can do the following:</p>\r\n<ul>\r\n<li>Create instantly a lot of sites&nbsp;in the same installation</li>\r\n<li>Manage your content information in several languages</li>\r\n<li>Extend current functionality by&nbsp;plugins (MVC structure and no more echo or prints anywhere)</li>\r\n<li>Create or install different themes for each site</li>\r\n<li>Create your own structure without coding anything (adapt Camaleon as you want&nbsp;and not you for Camaleon)</li>\r\n<li>Create your store and start to sell your products using our plugins</li>\r\n<li>Avoid web attacks</li>\r\n<li>Compare the speed and enjoy the speed of your new Camaleon site</li>\r\n<li>Customize or create your themes for mobile support</li>\r\n<li>Support&nbsp;more visitors at the same time</li>\r\n<li>Manage your information with a panel like wordpress&nbsp;</li>\r\n<li>All urls are oriented for SEO</li>\r\n<li>Multiples roles of users</li>\r\n</ul><!--:-->	<!--:en--> Camaleon CMS is a free and open-source tool and a fexible content management system (CMS) based on Ruby on Rails 4 and MySQL.  With Camaleon you can do the following:  Create instantly a lot of sites in the same installation Manage your content information in several languages Extend current functionality by plugins (MVC structure and no more echo or prints anywhere) Create or install different themes for each site Create your own structure without coding anything (adapt Camaleon as you want and not you for Camaleon) Create your store and start to sell your products using our plugins Avoid web attacks Compare the speed and enjoy the speed of your new Camaleon site Customize or create your themes for mobile support Support more visitors at the same time Manage your information with a panel like wordpress  All urls are oriented for SEO Multiples roles of users <!--:--><!--:es--> Camaleon CMS is a free and open-source tool and a fexible content management system (CMS) based on Ruby on Rails 4 and MySQL.  With Camaleon you can do the following:  Create instantly a lot of sites in the same installation Manage your content information in several languages Extend current functionality by plugins (MVC structure and no more echo or prints anywhere) Create or install different themes for each site Create your own structure without coding anything (adapt Camaleon as you want and not you for Camaleon) Create your store and start to sell your products using our plugins Avoid web attacks Compare the speed and enjoy the speed of your new Camaleon site Customize or create your themes for mobile support Support more visitors at the same time Manage your information with a panel like wordpress  All urls are oriented for SEO Multiples roles of users <!--:-->	draft_child	\N	2	public	\N	Post	2019-03-03 04:25:06.465236	2019-03-03 04:25:06.52497	1	2	7	f
2	Welcome	<!--:en-->welcome<!--:--><!--:es-->welcome<!--:-->	<!--:en--><p style="text-align: center;"></p>\r\n<p><span>The no in the took morals, the there's rivalry. Primarily of sleep. Looked them. Western spot. Absolutely have butter immense sick away, good together the of more, passion are been thing made customary performed the been english turned absolutely steadily they concepts writing but unpleasing their fall ear project joke.</span></p>\r\n<p><span></span></p>\r\n<p><span>On people. Even a the italic, venerable, on excuse hesitated doubting help managers fully follow the with goat, it neuter. In guest pink the a or croissants she production to defined sported and in put few work texts seem warp these, quickly relieved the down affects system the when evening it of our to moving music. To with where brothers they the and way meet lead transmitting a as clear at the hall part. Decided making like an of by much ever the initial an he the to of but we've leather client terms, venerable, as with of should wrong.</span></p>\r\n<p><span></span></p><!--:--><!--:es--><p style="text-align: center;"><img src="http://camaleon.tuzitio.com/media/132/logo2.png" alt="logo" width="155" height="155" /></p>\r\n<p><strong>Camaleon CMS</strong>&nbsp;is a free and open-source tool and a fexible content management system (CMS) based on <a href="http://rubyonrails.org">Ruby on Rails 4</a>&nbsp;and MySQL.&nbsp;</p>\r\n<p>With Camaleon you can do the following:</p>\r\n<ul>\r\n<li>Create instantly a lot of sites&nbsp;in the same installation</li>\r\n<li>Manage your content information in several languages</li>\r\n<li>Extend current functionality by&nbsp;plugins (MVC structure and no more echo or prints anywhere)</li>\r\n<li>Create or install different themes for each site</li>\r\n<li>Create your own structure without coding anything (adapt Camaleon as you want&nbsp;and not you for Camaleon)</li>\r\n<li>Create your store and start to sell your products using our plugins</li>\r\n<li>Avoid web attacks</li>\r\n<li>Compare the speed and enjoy the speed of your new Camaleon site</li>\r\n<li>Customize or create your themes for mobile support</li>\r\n<li>Support&nbsp;more visitors at the same time</li>\r\n<li>Manage your information with a panel like wordpress&nbsp;</li>\r\n<li>All urls are oriented for SEO</li>\r\n<li>Multiples roles of users</li>\r\n</ul><!--:-->	<!--:en--> The no in the took morals, the there's rivalry. Primarily of sleep. Looked them. Western spot. Absolutely have butter immense sick away, good together the of more, passion are been thing made customary performed the been english turned absolutely steadily they concepts writing but unpleasing their fall ear project joke.  On people. Even a the italic, venerable, on excuse hesitated doubting help managers fully follow the with goat, it neuter. In guest pink the a or croissants she production to defined sported and in put few work texts seem warp these, quickly relieved the down affects system the when evening it of our to moving music. To with where brothers they the and way meet lead transmitting a as clear at the hall part. Decided making like an of by much ever the initial an he the to of but we've leather client terms, venerable, as with of should wrong. <!--:--><!--:es--> Camaleon CMS is a free and open-source tool and a fexible content management system (CMS) based on Ruby on Rails 4 and MySQL.  With Camaleon you can do the following:  Create instantly a lot of sites in the same installation Manage your content information in several languages Extend current functionality by plugins (MVC structure and no more echo or prints anywhere) Create or install different themes for each site Create your own structure without coding anything (adapt Camaleon as you want and not you for Camaleon) Create your store and start to sell your products using our plugins Avoid web attacks Compare the speed and enjoy the speed of your new Camaleon site Customize or create your themes for mobile support Support more visitors at the same time Manage your information with a panel like wordpress  All urls are oriented for SEO Multiples roles of users <!--:-->	published	\N	\N	public	\N	Post	2019-03-02 17:22:06.033299	2019-03-03 04:25:36.266656	1	1	7	f
36	holi	holi	<p><span>The horn be designer particularly this belt carpeting real think receive advised design seen Mr. More support to question. Able proposal you a at the to bad outside a space me. Self-discipline. Secretly above material. Circumstances.&nbsp;</span></p>	The horn be designer particularly this belt carpeting real think receive advised design seen Mr. More support to question. Able proposal you a at the to bad outside a space me. Self-discipline. Secretly above material. Circumstances. 	published	\N	\N	public	\N	Post	2019-03-03 05:30:29.940103	2019-03-03 05:30:29.940103	1	2	2	f
38	asdasd	asdasd	<p>asdasdasdasd</p>	asdasdasdasd	published	\N	\N	public	\N	Post	2019-03-03 06:17:55.69812	2019-03-03 06:17:55.69812	1	1	41	f
37	sdasd	sdasd	<p>asdasdasdasdasdasdasd</p>	asdasdasdasdasdasdasd	published	\N	\N	public	\N	Post	2019-03-03 06:17:46.089499	2019-03-03 06:26:42.352829	1	1	40	f
39	Yo	yo	\N		published	\N	\N	public	\N	Post	2019-03-10 05:39:52.112534	2019-03-10 06:08:34.109999	1	1	44	f
\.


--
-- Name: cama_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cama_posts_id_seq', 39, true);


--
-- Data for Name: cama_term_relationships; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cama_term_relationships (id, objectid, term_order, term_taxonomy_id) FROM stdin;
1	1	\N	6
34	34	\N	38
35	2	\N	38
37	36	\N	6
\.


--
-- Name: cama_term_relationships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cama_term_relationships_id_seq', 37, true);


--
-- Data for Name: cama_term_taxonomy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cama_term_taxonomy (id, taxonomy, description, parent_id, count, name, slug, term_group, term_order, status, created_at, updated_at, user_id) FROM stdin;
3	user_roles	Default roles admin	1	\N	Administrator	admin	-1	\N	\N	2019-03-02 17:22:05.501335	2019-03-02 17:22:05.501335	\N
4	user_roles	Editor Role	1	\N	Editor	editor	\N	\N	\N	2019-03-02 17:22:05.511861	2019-03-02 17:22:05.511861	\N
5	user_roles	Contributor Role	1	\N	Contributor	contributor	\N	\N	\N	2019-03-02 17:22:05.518738	2019-03-02 17:22:05.518738	\N
11	user_roles	Default roles client	1	\N	Client	client	-1	\N	\N	2019-03-02 17:22:06.116646	2019-03-02 17:22:06.116646	\N
12	plugin	\N	1	\N	front_cache	front_cache	1	\N	\N	2019-03-02 17:22:06.238524	2019-03-02 17:22:06.24859	\N
13	plugin	\N	1	\N	cama_contact_form	cama_contact_form	1	\N	\N	2019-03-02 17:22:06.352149	2019-03-02 17:22:06.36041	\N
14	plugin	\N	1	\N	attack	attack	1	\N	\N	2019-03-02 17:22:06.45028	2019-03-02 17:22:06.460329	\N
15	plugin	\N	1	\N	cama_meta_tag	cama_meta_tag	1	\N	\N	2019-03-02 17:22:06.629286	2019-03-02 17:22:06.652307	\N
34	theme	\N	1	\N	Alex 5 stars - site	alex5stars	\N	\N	\N	2019-03-02 17:51:54.002801	2019-03-03 06:18:50.419476	\N
42	nav_menu_item	40	8	\N	auto	post_type	1	2	\N	2019-03-03 06:21:11.094733	2019-03-03 06:21:11.094733	\N
8	nav_menu	\N	1	3	Main Menu	main_menu	\N	\N	\N	2019-03-02 17:22:05.843972	2019-03-02 17:22:05.843972	\N
43	nav_menu_item	41	8	\N	auto	post_type	1	3	\N	2019-03-03 06:21:14.641768	2019-03-03 06:21:14.641768	\N
44	post_type		1	\N	Banners	banners	\N	\N	\N	2019-03-10 05:33:03.928928	2019-03-10 05:33:03.928928	\N
16	theme	\N	1	\N	default	default	\N	\N	inactive	2019-03-02 17:22:06.767147	2019-03-02 17:22:06.767147	\N
6	category	\N	2	2	Uncategorized	uncategorized	1	\N	2	2019-03-02 17:22:05.544125	2019-03-02 17:22:05.544125	\N
1	site	eeeeejol	\N	\N	Alex5stars	localhost:3000	\N	\N		2019-03-02 17:22:05.382682	2019-03-02 19:35:47.073296	\N
38	category	\N	7	1	Uncategorized	uncategorized	1	\N	7	2019-03-03 03:43:14.973937	2019-03-03 03:43:14.973937	\N
2	post_type	Posts	1	\N	Noticias	noticias	\N	\N	\N	2019-03-02 17:22:05.470897	2019-03-03 04:33:44.079697	\N
7	post_type	Pages	1	\N	Páginas	paginas	\N	\N	\N	2019-03-02 17:22:05.693769	2019-03-03 04:34:41.413107	\N
39	nav_menu_item	2	8	\N	auto	post_type	1	0	\N	2019-03-03 04:37:05.739787	2019-03-03 04:37:10.65055	\N
40	post_type		1	\N	Musica	musica	\N	\N	\N	2019-03-03 06:17:06.66362	2019-03-03 06:17:06.66362	\N
41	post_type		1	\N	Videos	videos	\N	\N	\N	2019-03-03 06:17:24.348744	2019-03-03 06:17:24.348744	\N
\.


--
-- Name: cama_term_taxonomy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cama_term_taxonomy_id_seq', 44, true);


--
-- Data for Name: cama_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cama_users (id, username, role, email, slug, password_digest, auth_token, password_reset_token, parent_id, password_reset_sent_at, last_login_at, created_at, updated_at, site_id, confirm_email_token, confirm_email_sent_at, is_valid_email, first_name, last_name) FROM stdin;
2	anonymous	client	anonymous_user@local.com	\N	$2a$10$lzr9er00fIB2Tv1O9R0o9uuP39MipJSgz/vQALnyR8D1ZCPuDEt6W	VLF3SafmMCcZqTrW2-kagQ	\N	\N	\N	\N	2019-03-02 17:22:06.099236	2019-03-02 17:22:06.099236	-1	\N	\N	t	Anonymous	\N
1	admin	admin	admin@local.com	\N	$2a$10$4mSRIkVriPmZ8SUSncoVxeLEsI72soYGRu1Q7.Sa6piQ2w7FMgBwu	ngFtAW7jNctG8B0XS6UA1Q	\N	\N	\N	2019-03-10 04:34:34.006588	2019-03-02 17:22:05.92461	2019-03-10 04:34:34.011213	-1	\N	\N	t	Administrator	\N
\.


--
-- Name: cama_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cama_users_id_seq', 33, true);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, author, author_email, author_url, "author_IP", content, approved, agent, typee, comment_parent, post_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Data for Name: custom_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custom_fields (id, object_class, name, slug, objectid, parent_id, field_order, count, is_repeat, description, status) FROM stdin;
\.


--
-- Name: custom_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.custom_fields_id_seq', 1, false);


--
-- Data for Name: custom_fields_relationships; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custom_fields_relationships (id, objectid, custom_field_id, term_order, object_class, value, custom_field_slug, group_number) FROM stdin;
\.


--
-- Name: custom_fields_relationships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.custom_fields_relationships_id_seq', 1, false);


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.media (id, site_id, name, is_folder, folder_path, file_size, dimension, file_type, url, thumb, is_public, created_at, updated_at) FROM stdin;
\.


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.media_id_seq', 1, false);


--
-- Data for Name: metas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.metas (id, key, value, objectid, object_class) FROM stdin;
\.


--
-- Name: metas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.metas_id_seq', 1, false);


--
-- Data for Name: plugins_attacks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plugins_attacks (id, path, browser_key, site_id, created_at) FROM stdin;
1440	get_/	4131ef86a6c50d3df71cb64a68e8cb72	1	2019-03-11 01:32:51.35755
\.


--
-- Name: plugins_attacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.plugins_attacks_id_seq', 1440, true);


--
-- Data for Name: plugins_contact_forms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plugins_contact_forms (id, site_id, count, parent_id, name, slug, description, value, settings, created_at, updated_at) FROM stdin;
\.


--
-- Name: plugins_contact_forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.plugins_contact_forms_id_seq', 1, false);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, title, slug, content, content_filtered, status, published_at, post_parent, visibility, visibility_value, post_class, created_at, updated_at, user_id, post_order, taxonomy_id, is_feature) FROM stdin;
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20150611161134
20150926095310
20151212095328
20160504155652
20160504155653
20160517143441
20160606135421
20160609121449
20161206211917
20161215202255
20180124132318
20180704211100
20190302171425
20190302171426
20190302171427
20190302171428
20190302171429
20190302171430
20190302171431
20190302171432
20190302171433
20190302171434
20190302171435
20190302171436
20190302171437
\.


--
-- Data for Name: term_relationships; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.term_relationships (id, objectid, term_order, term_taxonomy_id) FROM stdin;
\.


--
-- Name: term_relationships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.term_relationships_id_seq', 1, false);


--
-- Data for Name: term_taxonomy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.term_taxonomy (id, taxonomy, description, parent_id, count, name, slug, term_group, term_order, status, created_at, updated_at, user_id) FROM stdin;
\.


--
-- Name: term_taxonomy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.term_taxonomy_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, role, email, slug, password_digest, auth_token, password_reset_token, parent_id, password_reset_sent_at, last_login_at, created_at, updated_at, site_id, confirm_email_token, confirm_email_sent_at, is_valid_email, first_name, last_name) FROM stdin;
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: cama_comments cama_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_comments
    ADD CONSTRAINT cama_comments_pkey PRIMARY KEY (id);


--
-- Name: cama_custom_fields cama_custom_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_custom_fields
    ADD CONSTRAINT cama_custom_fields_pkey PRIMARY KEY (id);


--
-- Name: cama_custom_fields_relationships cama_custom_fields_relationships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_custom_fields_relationships
    ADD CONSTRAINT cama_custom_fields_relationships_pkey PRIMARY KEY (id);


--
-- Name: cama_media cama_media_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_media
    ADD CONSTRAINT cama_media_pkey PRIMARY KEY (id);


--
-- Name: cama_metas cama_metas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_metas
    ADD CONSTRAINT cama_metas_pkey PRIMARY KEY (id);


--
-- Name: cama_posts cama_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_posts
    ADD CONSTRAINT cama_posts_pkey PRIMARY KEY (id);


--
-- Name: cama_term_relationships cama_term_relationships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_term_relationships
    ADD CONSTRAINT cama_term_relationships_pkey PRIMARY KEY (id);


--
-- Name: cama_term_taxonomy cama_term_taxonomy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_term_taxonomy
    ADD CONSTRAINT cama_term_taxonomy_pkey PRIMARY KEY (id);


--
-- Name: cama_users cama_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cama_users
    ADD CONSTRAINT cama_users_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: custom_fields custom_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_fields
    ADD CONSTRAINT custom_fields_pkey PRIMARY KEY (id);


--
-- Name: custom_fields_relationships custom_fields_relationships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_fields_relationships
    ADD CONSTRAINT custom_fields_relationships_pkey PRIMARY KEY (id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: metas metas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metas
    ADD CONSTRAINT metas_pkey PRIMARY KEY (id);


--
-- Name: plugins_attacks plugins_attacks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plugins_attacks
    ADD CONSTRAINT plugins_attacks_pkey PRIMARY KEY (id);


--
-- Name: plugins_contact_forms plugins_contact_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plugins_contact_forms
    ADD CONSTRAINT plugins_contact_forms_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: term_relationships term_relationships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.term_relationships
    ADD CONSTRAINT term_relationships_pkey PRIMARY KEY (id);


--
-- Name: term_taxonomy term_taxonomy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.term_taxonomy
    ADD CONSTRAINT term_taxonomy_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_cama_comments_on_approved; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_comments_on_approved ON public.cama_comments USING btree (approved);


--
-- Name: index_cama_comments_on_comment_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_comments_on_comment_parent ON public.cama_comments USING btree (comment_parent);


--
-- Name: index_cama_comments_on_post_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_comments_on_post_id ON public.cama_comments USING btree (post_id);


--
-- Name: index_cama_comments_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_comments_on_user_id ON public.cama_comments USING btree (user_id);


--
-- Name: index_cama_custom_fields_on_object_class; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_custom_fields_on_object_class ON public.cama_custom_fields USING btree (object_class);


--
-- Name: index_cama_custom_fields_on_objectid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_custom_fields_on_objectid ON public.cama_custom_fields USING btree (objectid);


--
-- Name: index_cama_custom_fields_on_parent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_custom_fields_on_parent_id ON public.cama_custom_fields USING btree (parent_id);


--
-- Name: index_cama_custom_fields_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_custom_fields_on_slug ON public.cama_custom_fields USING btree (slug);


--
-- Name: index_cama_custom_fields_relationships_on_custom_field_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_custom_fields_relationships_on_custom_field_id ON public.cama_custom_fields_relationships USING btree (custom_field_id);


--
-- Name: index_cama_custom_fields_relationships_on_custom_field_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_custom_fields_relationships_on_custom_field_slug ON public.cama_custom_fields_relationships USING btree (custom_field_slug);


--
-- Name: index_cama_custom_fields_relationships_on_object_class; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_custom_fields_relationships_on_object_class ON public.cama_custom_fields_relationships USING btree (object_class);


--
-- Name: index_cama_custom_fields_relationships_on_objectid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_custom_fields_relationships_on_objectid ON public.cama_custom_fields_relationships USING btree (objectid);


--
-- Name: index_cama_media_on_folder_path; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_media_on_folder_path ON public.cama_media USING btree (folder_path);


--
-- Name: index_cama_media_on_is_folder; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_media_on_is_folder ON public.cama_media USING btree (is_folder);


--
-- Name: index_cama_media_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_media_on_name ON public.cama_media USING btree (name);


--
-- Name: index_cama_media_on_site_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_media_on_site_id ON public.cama_media USING btree (site_id);


--
-- Name: index_cama_metas_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_metas_on_key ON public.cama_metas USING btree (key);


--
-- Name: index_cama_metas_on_object_class; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_metas_on_object_class ON public.cama_metas USING btree (object_class);


--
-- Name: index_cama_metas_on_objectid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_metas_on_objectid ON public.cama_metas USING btree (objectid);


--
-- Name: index_cama_posts_on_post_class; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_posts_on_post_class ON public.cama_posts USING btree (post_class);


--
-- Name: index_cama_posts_on_post_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_posts_on_post_parent ON public.cama_posts USING btree (post_parent);


--
-- Name: index_cama_posts_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_posts_on_slug ON public.cama_posts USING btree (slug);


--
-- Name: index_cama_posts_on_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_posts_on_status ON public.cama_posts USING btree (status);


--
-- Name: index_cama_posts_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_posts_on_user_id ON public.cama_posts USING btree (user_id);


--
-- Name: index_cama_term_relationships_on_objectid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_term_relationships_on_objectid ON public.cama_term_relationships USING btree (objectid);


--
-- Name: index_cama_term_relationships_on_term_order; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_term_relationships_on_term_order ON public.cama_term_relationships USING btree (term_order);


--
-- Name: index_cama_term_relationships_on_term_taxonomy_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_term_relationships_on_term_taxonomy_id ON public.cama_term_relationships USING btree (term_taxonomy_id);


--
-- Name: index_cama_term_taxonomy_on_parent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_term_taxonomy_on_parent_id ON public.cama_term_taxonomy USING btree (parent_id);


--
-- Name: index_cama_term_taxonomy_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_term_taxonomy_on_slug ON public.cama_term_taxonomy USING btree (slug);


--
-- Name: index_cama_term_taxonomy_on_taxonomy; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_term_taxonomy_on_taxonomy ON public.cama_term_taxonomy USING btree (taxonomy);


--
-- Name: index_cama_term_taxonomy_on_term_order; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_term_taxonomy_on_term_order ON public.cama_term_taxonomy USING btree (term_order);


--
-- Name: index_cama_term_taxonomy_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_term_taxonomy_on_user_id ON public.cama_term_taxonomy USING btree (user_id);


--
-- Name: index_cama_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_users_on_email ON public.cama_users USING btree (email);


--
-- Name: index_cama_users_on_role; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_users_on_role ON public.cama_users USING btree (role);


--
-- Name: index_cama_users_on_site_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_users_on_site_id ON public.cama_users USING btree (site_id);


--
-- Name: index_cama_users_on_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_cama_users_on_username ON public.cama_users USING btree (username);


--
-- Name: index_comments_on_approved; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_approved ON public.comments USING btree (approved);


--
-- Name: index_comments_on_comment_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_comment_parent ON public.comments USING btree (comment_parent);


--
-- Name: index_comments_on_post_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_post_id ON public.comments USING btree (post_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_custom_fields_on_object_class; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_custom_fields_on_object_class ON public.custom_fields USING btree (object_class);


--
-- Name: index_custom_fields_on_objectid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_custom_fields_on_objectid ON public.custom_fields USING btree (objectid);


--
-- Name: index_custom_fields_on_parent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_custom_fields_on_parent_id ON public.custom_fields USING btree (parent_id);


--
-- Name: index_custom_fields_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_custom_fields_on_slug ON public.custom_fields USING btree (slug);


--
-- Name: index_custom_fields_relationships_on_custom_field_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_custom_fields_relationships_on_custom_field_id ON public.custom_fields_relationships USING btree (custom_field_id);


--
-- Name: index_custom_fields_relationships_on_custom_field_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_custom_fields_relationships_on_custom_field_slug ON public.custom_fields_relationships USING btree (custom_field_slug);


--
-- Name: index_custom_fields_relationships_on_object_class; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_custom_fields_relationships_on_object_class ON public.custom_fields_relationships USING btree (object_class);


--
-- Name: index_custom_fields_relationships_on_objectid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_custom_fields_relationships_on_objectid ON public.custom_fields_relationships USING btree (objectid);


--
-- Name: index_media_on_folder_path; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_media_on_folder_path ON public.media USING btree (folder_path);


--
-- Name: index_media_on_is_folder; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_media_on_is_folder ON public.media USING btree (is_folder);


--
-- Name: index_media_on_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_media_on_name ON public.media USING btree (name);


--
-- Name: index_media_on_site_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_media_on_site_id ON public.media USING btree (site_id);


--
-- Name: index_metas_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_metas_on_key ON public.metas USING btree (key);


--
-- Name: index_metas_on_object_class; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_metas_on_object_class ON public.metas USING btree (object_class);


--
-- Name: index_metas_on_objectid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_metas_on_objectid ON public.metas USING btree (objectid);


--
-- Name: index_plugins_attacks_on_browser_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_plugins_attacks_on_browser_key ON public.plugins_attacks USING btree (browser_key);


--
-- Name: index_plugins_attacks_on_path; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_plugins_attacks_on_path ON public.plugins_attacks USING btree (path);


--
-- Name: index_plugins_attacks_on_site_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_plugins_attacks_on_site_id ON public.plugins_attacks USING btree (site_id);


--
-- Name: index_posts_on_post_class; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_posts_on_post_class ON public.posts USING btree (post_class);


--
-- Name: index_posts_on_post_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_posts_on_post_parent ON public.posts USING btree (post_parent);


--
-- Name: index_posts_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_posts_on_slug ON public.posts USING btree (slug);


--
-- Name: index_posts_on_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_posts_on_status ON public.posts USING btree (status);


--
-- Name: index_posts_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_posts_on_user_id ON public.posts USING btree (user_id);


--
-- Name: index_term_relationships_on_objectid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_term_relationships_on_objectid ON public.term_relationships USING btree (objectid);


--
-- Name: index_term_relationships_on_term_order; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_term_relationships_on_term_order ON public.term_relationships USING btree (term_order);


--
-- Name: index_term_relationships_on_term_taxonomy_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_term_relationships_on_term_taxonomy_id ON public.term_relationships USING btree (term_taxonomy_id);


--
-- Name: index_term_taxonomy_on_parent_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_term_taxonomy_on_parent_id ON public.term_taxonomy USING btree (parent_id);


--
-- Name: index_term_taxonomy_on_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_term_taxonomy_on_slug ON public.term_taxonomy USING btree (slug);


--
-- Name: index_term_taxonomy_on_taxonomy; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_term_taxonomy_on_taxonomy ON public.term_taxonomy USING btree (taxonomy);


--
-- Name: index_term_taxonomy_on_term_order; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_term_taxonomy_on_term_order ON public.term_taxonomy USING btree (term_order);


--
-- Name: index_term_taxonomy_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_term_taxonomy_on_user_id ON public.term_taxonomy USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_role; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_role ON public.users USING btree (role);


--
-- Name: index_users_on_site_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_site_id ON public.users USING btree (site_id);


--
-- Name: index_users_on_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_username ON public.users USING btree (username);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- PostgreSQL database dump complete
--

