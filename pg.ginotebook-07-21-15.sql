--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.gidb_gielement DROP CONSTRAINT stratum_type_id_2557b42e2beb06e8_fk_gidb_rhessysstratumtype_id;
ALTER TABLE ONLY public.gidb_templatesforecoclimate_templates DROP CONSTRAINT gidb_templa_gitemplate_id_d3e12e34a744810_fk_gidb_gitemplate_id;
ALTER TABLE ONLY public.gidb_humanprefimage DROP CONSTRAINT gidb_huma_gi_instance_id_1516ca13e8391f92_fk_gidb_giinstance_id;
ALTER TABLE ONLY public.gidb_giveggrowthstate DROP CONSTRAINT gidb_givegg_gi_element_id_26b5e524613070c5_fk_gidb_gielement_id;
ALTER TABLE ONLY public.gidb_giveggrowthstate DROP CONSTRAINT gidb_give_gi_instance_id_7de17f6cd09a0553_fk_gidb_giinstance_id;
ALTER TABLE ONLY public.gidb_gitemplate_gi_elements DROP CONSTRAINT gidb_gitempl_gielement_id_681e5c98b11569d2_fk_gidb_gielement_id;
ALTER TABLE ONLY public.gidb_gitemplate_gi_elements DROP CONSTRAINT gidb_gitem_gitemplate_id_312eb370c172a8ab_fk_gidb_gitemplate_id;
ALTER TABLE ONLY public.gidb_giinstance DROP CONSTRAINT gidb_giinsta_watershed_id_76a4e105dadcb349_fk_gidb_watershed_id;
ALTER TABLE ONLY public.gidb_giinstance DROP CONSTRAINT gidb_giinsta_template_id_4b242195a3e5c787_fk_gidb_gitemplate_id;
ALTER TABLE ONLY public.gidb_gielement DROP CONSTRAINT gidb_g_soil_type_id_6362f68dfd6b4e96_fk_gidb_rhessyssoiltype_id;
ALTER TABLE ONLY public.gidb_watershed DROP CONSTRAINT e775d39af60cf111dbb743964f184a09;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id;
ALTER TABLE ONLY public.gidb_templatesforecoclimate_templates DROP CONSTRAINT d9987587bc5dcf0bc6076ce8dcfc15d1;
ALTER TABLE ONLY public.gidb_gielement DROP CONSTRAINT d5be244a795f9ab257fe81a5dd082945;
ALTER TABLE ONLY public.gidb_representation2d DROP CONSTRAINT d0e4c619a0d42605203ccab69db5f502;
ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_1d10c57f535fb363_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id;
ALTER TABLE ONLY public.gidb_representation3d DROP CONSTRAINT a7edbbd5aee2471d55e7e3e76772b424;
ALTER TABLE ONLY public.gidb_gielement DROP CONSTRAINT "D92e91d71baa7ff3c6bf631db21f8c1e";
ALTER TABLE ONLY public.gidb_gitemplate DROP CONSTRAINT "D8f9858e2169d111857abd08c756d7f3";
ALTER TABLE ONLY public.gidb_gitemplate DROP CONSTRAINT "D3e07f7331115147efa34836b35d4570";
DROP INDEX public.gidb_watershed_74963935;
DROP INDEX public.gidb_templatesforecoclimate_templates_96c364d8;
DROP INDEX public.gidb_templatesforecoclimate_templates_55f75f3c;
DROP INDEX public.gidb_templatesforecoclimate_name_688e9cb3137220a4_like;
DROP INDEX public.gidb_rhessysstratumtype_name_24296bff517bdef9_like;
DROP INDEX public.gidb_rhesssyssoiltype_name_5c5539aede76a8e1_like;
DROP INDEX public.gidb_humanprefimage_408976f3;
DROP INDEX public.gidb_giveggrowthstate_8b2a9db7;
DROP INDEX public.gidb_giveggrowthstate_408976f3;
DROP INDEX public.gidb_gitemplate_name_256e8e81d4972494_like;
DROP INDEX public.gidb_gitemplate_gi_elements_bdefbcb1;
DROP INDEX public.gidb_gitemplate_gi_elements_55f75f3c;
DROP INDEX public.gidb_gitemplate_a0e82500;
DROP INDEX public.gidb_gitemplate_90375285;
DROP INDEX public.gidb_giinstance_placement_poly_id;
DROP INDEX public.gidb_giinstance_b9ddc459;
DROP INDEX public.gidb_giinstance_74f53564;
DROP INDEX public.gidb_gielement_e733fdfc;
DROP INDEX public.gidb_gielement_cda9a308;
DROP INDEX public.gidb_gielement_a0e82500;
DROP INDEX public.gidb_gielement_90375285;
DROP INDEX public.django_session_session_key_461cfeaa630ca218_like;
DROP INDEX public.django_session_de54fa62;
DROP INDEX public.django_admin_log_e8701ad4;
DROP INDEX public.django_admin_log_417f1b1c;
DROP INDEX public.authtoken_token_key_7222ec672cd32dcd_like;
DROP INDEX public.auth_user_username_51b3b110094b8aae_like;
DROP INDEX public.auth_user_user_permissions_e8701ad4;
DROP INDEX public.auth_user_user_permissions_8373b171;
DROP INDEX public.auth_user_groups_e8701ad4;
DROP INDEX public.auth_user_groups_0e939a4f;
DROP INDEX public.auth_permission_417f1b1c;
DROP INDEX public.auth_group_permissions_8373b171;
DROP INDEX public.auth_group_permissions_0e939a4f;
DROP INDEX public.auth_group_name_253ae2a6331666e8_like;
ALTER TABLE ONLY public.gidb_watershed DROP CONSTRAINT gidb_watershed_pkey;
ALTER TABLE ONLY public.gidb_templatesforecoclimate_templates DROP CONSTRAINT gidb_templatesforecoclimate_templates_pkey;
ALTER TABLE ONLY public.gidb_templatesforecoclimate_templates DROP CONSTRAINT gidb_templatesforecoclimate_t_templatesforecoclimate_id_git_key;
ALTER TABLE ONLY public.gidb_templatesforecoclimate DROP CONSTRAINT gidb_templatesforecoclimate_pkey;
ALTER TABLE ONLY public.gidb_templatesforecoclimate DROP CONSTRAINT gidb_templatesforecoclimate_name_key;
ALTER TABLE ONLY public.gidb_rhessysstratumtype DROP CONSTRAINT gidb_rhessysstratumtype_rhessys_default_id_key;
ALTER TABLE ONLY public.gidb_rhessysstratumtype DROP CONSTRAINT gidb_rhessysstratumtype_pkey;
ALTER TABLE ONLY public.gidb_rhessysstratumtype DROP CONSTRAINT gidb_rhessysstratumtype_name_key;
ALTER TABLE ONLY public.gidb_rhessyssoiltype DROP CONSTRAINT gidb_rhesssyssoiltype_rhessys_default_id_key;
ALTER TABLE ONLY public.gidb_rhessyssoiltype DROP CONSTRAINT gidb_rhesssyssoiltype_pkey;
ALTER TABLE ONLY public.gidb_rhessyssoiltype DROP CONSTRAINT gidb_rhesssyssoiltype_name_key;
ALTER TABLE ONLY public.gidb_representation DROP CONSTRAINT gidb_representation_pkey;
ALTER TABLE ONLY public.gidb_representation3d DROP CONSTRAINT gidb_representation3d_pkey;
ALTER TABLE ONLY public.gidb_representation2d DROP CONSTRAINT gidb_representation2d_pkey;
ALTER TABLE ONLY public.gidb_humanprefimage DROP CONSTRAINT gidb_humanprefimage_pkey;
ALTER TABLE ONLY public.gidb_giveggrowthstate DROP CONSTRAINT gidb_giveggrowthstate_pkey;
ALTER TABLE ONLY public.gidb_gitemplate DROP CONSTRAINT gidb_gitemplate_pkey;
ALTER TABLE ONLY public.gidb_gitemplate DROP CONSTRAINT gidb_gitemplate_name_key;
ALTER TABLE ONLY public.gidb_gitemplate_gi_elements DROP CONSTRAINT gidb_gitemplate_gi_elements_pkey;
ALTER TABLE ONLY public.gidb_gitemplate_gi_elements DROP CONSTRAINT gidb_gitemplate_gi_elements_gitemplate_id_gielement_id_key;
ALTER TABLE ONLY public.gidb_giinstance DROP CONSTRAINT gidb_giinstance_pkey;
ALTER TABLE ONLY public.gidb_gielement DROP CONSTRAINT gidb_gielement_pkey;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE public.gidb_watershed ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_templatesforecoclimate_templates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_templatesforecoclimate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_rhessysstratumtype ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_rhessyssoiltype ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_representation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_humanprefimage ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_giveggrowthstate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_gitemplate_gi_elements ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_gitemplate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_giinstance ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_gielement ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.gidb_watershed_id_seq;
DROP TABLE public.gidb_watershed;
DROP SEQUENCE public.gidb_templatesforecoclimate_templates_id_seq;
DROP TABLE public.gidb_templatesforecoclimate_templates;
DROP SEQUENCE public.gidb_templatesforecoclimate_id_seq;
DROP TABLE public.gidb_templatesforecoclimate;
DROP SEQUENCE public.gidb_rhessysstratumtype_id_seq;
DROP TABLE public.gidb_rhessysstratumtype;
DROP SEQUENCE public.gidb_rhesssyssoiltype_id_seq;
DROP TABLE public.gidb_rhessyssoiltype;
DROP SEQUENCE public.gidb_representation_id_seq;
DROP TABLE public.gidb_representation3d;
DROP TABLE public.gidb_representation2d;
DROP TABLE public.gidb_representation;
DROP SEQUENCE public.gidb_humanprefimage_id_seq;
DROP TABLE public.gidb_humanprefimage;
DROP SEQUENCE public.gidb_giveggrowthstate_id_seq;
DROP TABLE public.gidb_giveggrowthstate;
DROP SEQUENCE public.gidb_gitemplate_id_seq;
DROP SEQUENCE public.gidb_gitemplate_gi_elements_id_seq;
DROP TABLE public.gidb_gitemplate_gi_elements;
DROP TABLE public.gidb_gitemplate;
DROP SEQUENCE public.gidb_giinstance_id_seq;
DROP TABLE public.gidb_giinstance;
DROP SEQUENCE public.gidb_gielement_id_seq;
DROP TABLE public.gidb_gielement;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP TABLE public.authtoken_token;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
DROP EXTENSION postgis;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO postgres;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: gidb_gielement; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_gielement (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    soil_type_id integer,
    stratum_type_id integer,
    model_3d_id integer,
    model_planview_id integer
);


ALTER TABLE public.gidb_gielement OWNER TO postgres;

--
-- Name: gidb_gielement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_gielement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_gielement_id_seq OWNER TO postgres;

--
-- Name: gidb_gielement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_gielement_id_seq OWNED BY gidb_gielement.id;


--
-- Name: gidb_giinstance; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_giinstance (
    id integer NOT NULL,
    placement_poly geometry(Polygon,4326) NOT NULL,
    template_id integer NOT NULL,
    watershed_id integer NOT NULL
);


ALTER TABLE public.gidb_giinstance OWNER TO postgres;

--
-- Name: gidb_giinstance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_giinstance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_giinstance_id_seq OWNER TO postgres;

--
-- Name: gidb_giinstance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_giinstance_id_seq OWNED BY gidb_giinstance.id;


--
-- Name: gidb_gitemplate; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_gitemplate (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    model_3d_id integer NOT NULL,
    model_planview_id integer NOT NULL
);


ALTER TABLE public.gidb_gitemplate OWNER TO postgres;

--
-- Name: gidb_gitemplate_gi_elements; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_gitemplate_gi_elements (
    id integer NOT NULL,
    gitemplate_id integer NOT NULL,
    gielement_id integer NOT NULL
);


ALTER TABLE public.gidb_gitemplate_gi_elements OWNER TO postgres;

--
-- Name: gidb_gitemplate_gi_elements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_gitemplate_gi_elements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_gitemplate_gi_elements_id_seq OWNER TO postgres;

--
-- Name: gidb_gitemplate_gi_elements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_gitemplate_gi_elements_id_seq OWNED BY gidb_gitemplate_gi_elements.id;


--
-- Name: gidb_gitemplate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_gitemplate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_gitemplate_id_seq OWNER TO postgres;

--
-- Name: gidb_gitemplate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_gitemplate_id_seq OWNED BY gidb_gitemplate.id;


--
-- Name: gidb_giveggrowthstate; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_giveggrowthstate (
    id integer NOT NULL,
    leaf_area_index double precision,
    stem_density double precision,
    height double precision,
    gi_element_id integer NOT NULL,
    gi_instance_id integer NOT NULL
);


ALTER TABLE public.gidb_giveggrowthstate OWNER TO postgres;

--
-- Name: gidb_giveggrowthstate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_giveggrowthstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_giveggrowthstate_id_seq OWNER TO postgres;

--
-- Name: gidb_giveggrowthstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_giveggrowthstate_id_seq OWNED BY gidb_giveggrowthstate.id;


--
-- Name: gidb_humanprefimage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_humanprefimage (
    id integer NOT NULL,
    pref_image character varying(100) NOT NULL,
    gi_instance_id integer NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.gidb_humanprefimage OWNER TO postgres;

--
-- Name: gidb_humanprefimage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_humanprefimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_humanprefimage_id_seq OWNER TO postgres;

--
-- Name: gidb_humanprefimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_humanprefimage_id_seq OWNED BY gidb_humanprefimage.id;


--
-- Name: gidb_representation; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_representation (
    id integer NOT NULL,
    rep_file character varying(100) NOT NULL,
    rep_thumbnail character varying(100) NOT NULL
);


ALTER TABLE public.gidb_representation OWNER TO postgres;

--
-- Name: gidb_representation2d; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_representation2d (
    representation_ptr_id integer NOT NULL
);


ALTER TABLE public.gidb_representation2d OWNER TO postgres;

--
-- Name: gidb_representation3d; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_representation3d (
    representation_ptr_id integer NOT NULL
);


ALTER TABLE public.gidb_representation3d OWNER TO postgres;

--
-- Name: gidb_representation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_representation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_representation_id_seq OWNER TO postgres;

--
-- Name: gidb_representation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_representation_id_seq OWNED BY gidb_representation.id;


--
-- Name: gidb_rhessyssoiltype; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_rhessyssoiltype (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    rhessys_default_id integer NOT NULL
);


ALTER TABLE public.gidb_rhessyssoiltype OWNER TO postgres;

--
-- Name: gidb_rhesssyssoiltype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_rhesssyssoiltype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_rhesssyssoiltype_id_seq OWNER TO postgres;

--
-- Name: gidb_rhesssyssoiltype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_rhesssyssoiltype_id_seq OWNED BY gidb_rhessyssoiltype.id;


--
-- Name: gidb_rhessysstratumtype; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_rhessysstratumtype (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    rhessys_default_id integer NOT NULL
);


ALTER TABLE public.gidb_rhessysstratumtype OWNER TO postgres;

--
-- Name: gidb_rhessysstratumtype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_rhessysstratumtype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_rhessysstratumtype_id_seq OWNER TO postgres;

--
-- Name: gidb_rhessysstratumtype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_rhessysstratumtype_id_seq OWNED BY gidb_rhessysstratumtype.id;


--
-- Name: gidb_templatesforecoclimate; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_templatesforecoclimate (
    id integer NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.gidb_templatesforecoclimate OWNER TO postgres;

--
-- Name: gidb_templatesforecoclimate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_templatesforecoclimate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_templatesforecoclimate_id_seq OWNER TO postgres;

--
-- Name: gidb_templatesforecoclimate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_templatesforecoclimate_id_seq OWNED BY gidb_templatesforecoclimate.id;


--
-- Name: gidb_templatesforecoclimate_templates; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_templatesforecoclimate_templates (
    id integer NOT NULL,
    templatesforecoclimate_id integer NOT NULL,
    gitemplate_id integer NOT NULL
);


ALTER TABLE public.gidb_templatesforecoclimate_templates OWNER TO postgres;

--
-- Name: gidb_templatesforecoclimate_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_templatesforecoclimate_templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_templatesforecoclimate_templates_id_seq OWNER TO postgres;

--
-- Name: gidb_templatesforecoclimate_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_templatesforecoclimate_templates_id_seq OWNED BY gidb_templatesforecoclimate_templates.id;


--
-- Name: gidb_watershed; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_watershed (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    model_url character varying(512) NOT NULL,
    template_menu_id integer NOT NULL
);


ALTER TABLE public.gidb_watershed OWNER TO postgres;

--
-- Name: gidb_watershed_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_watershed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_watershed_id_seq OWNER TO postgres;

--
-- Name: gidb_watershed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_watershed_id_seq OWNED BY gidb_watershed.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gielement ALTER COLUMN id SET DEFAULT nextval('gidb_gielement_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_giinstance ALTER COLUMN id SET DEFAULT nextval('gidb_giinstance_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gitemplate ALTER COLUMN id SET DEFAULT nextval('gidb_gitemplate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gitemplate_gi_elements ALTER COLUMN id SET DEFAULT nextval('gidb_gitemplate_gi_elements_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_giveggrowthstate ALTER COLUMN id SET DEFAULT nextval('gidb_giveggrowthstate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_humanprefimage ALTER COLUMN id SET DEFAULT nextval('gidb_humanprefimage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_representation ALTER COLUMN id SET DEFAULT nextval('gidb_representation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_rhessyssoiltype ALTER COLUMN id SET DEFAULT nextval('gidb_rhesssyssoiltype_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_rhessysstratumtype ALTER COLUMN id SET DEFAULT nextval('gidb_rhessysstratumtype_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_templatesforecoclimate ALTER COLUMN id SET DEFAULT nextval('gidb_templatesforecoclimate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_templatesforecoclimate_templates ALTER COLUMN id SET DEFAULT nextval('gidb_templatesforecoclimate_templates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_watershed ALTER COLUMN id SET DEFAULT nextval('gidb_watershed_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add watershed	7	add_watershed
20	Can change watershed	7	change_watershed
21	Can delete watershed	7	delete_watershed
22	Can add gi instance	8	add_giinstance
23	Can change gi instance	8	change_giinstance
24	Can delete gi instance	8	delete_giinstance
25	Can add human pref image	9	add_humanprefimage
26	Can change human pref image	9	change_humanprefimage
27	Can delete human pref image	9	delete_humanprefimage
28	Can add gi veg growth state	10	add_giveggrowthstate
29	Can change gi veg growth state	10	change_giveggrowthstate
30	Can delete gi veg growth state	10	delete_giveggrowthstate
31	Can add templates for eco climate	11	add_templatesforecoclimate
32	Can change templates for eco climate	11	change_templatesforecoclimate
33	Can delete templates for eco climate	11	delete_templatesforecoclimate
34	Can add gi template	12	add_gitemplate
35	Can change gi template	12	change_gitemplate
36	Can delete gi template	12	delete_gitemplate
37	Can add gi element	13	add_gielement
38	Can change gi element	13	change_gielement
39	Can delete gi element	13	delete_gielement
40	Can add rhes sys stratum type	14	add_rhessysstratumtype
41	Can change rhes sys stratum type	14	change_rhessysstratumtype
42	Can delete rhes sys stratum type	14	delete_rhessysstratumtype
46	Can add representation	16	add_representation
47	Can change representation	16	change_representation
48	Can delete representation	16	delete_representation
49	Can add representation2d	17	add_representation2d
50	Can change representation2d	17	change_representation2d
51	Can delete representation2d	17	delete_representation2d
52	Can add representation3d	18	add_representation3d
53	Can change representation3d	18	change_representation3d
54	Can delete representation3d	18	delete_representation3d
55	Can add token	19	add_token
56	Can change token	19	change_token
57	Can delete token	19	delete_token
58	Can add RHESSys soil type	20	add_rhessyssoiltype
59	Can change RHESSys soil type	20	change_rhessyssoiltype
60	Can delete RHESSys soil type	20	delete_rhessyssoiltype
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 60, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$20000$WsNbFwwEg5hM$vMh1gACE0LcQWSGjE0PK4CTYxTd64/ImnMf9gbAwwWQ=	2015-07-21 18:27:14.690554+00	t	admin			admin@example.com	t	t	2015-07-20 21:17:19.739212+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	gidb	watershed
8	gidb	giinstance
9	gidb	humanprefimage
10	gidb	giveggrowthstate
11	gidb	templatesforecoclimate
12	gidb	gitemplate
13	gidb	gielement
14	gidb	rhessysstratumtype
16	gidb	representation
17	gidb	representation2d
18	gidb	representation3d
19	authtoken	token
20	gidb	rhessyssoiltype
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 20, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-07-20 20:58:19.399113+00
2	auth	0001_initial	2015-07-20 20:58:19.757062+00
3	admin	0001_initial	2015-07-20 20:58:19.837705+00
4	contenttypes	0002_remove_content_type_name	2015-07-20 20:58:19.879439+00
5	auth	0002_alter_permission_name_max_length	2015-07-20 20:58:19.900219+00
6	auth	0003_alter_user_email_max_length	2015-07-20 20:58:19.913239+00
7	auth	0004_alter_user_username_opts	2015-07-20 20:58:19.925319+00
8	auth	0005_alter_user_last_login_null	2015-07-20 20:58:19.938311+00
9	auth	0006_require_contenttypes_0002	2015-07-20 20:58:19.940052+00
10	gidb	0001_initial	2015-07-20 20:58:20.80809+00
11	sessions	0001_initial	2015-07-20 20:58:20.876522+00
12	authtoken	0001_initial	2015-07-21 14:52:09.39916+00
13	gidb	0002_humanprefimage_name	2015-07-21 15:18:00.938383+00
14	gidb	0003_auto_20150721_1825	2015-07-21 18:25:15.838886+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 14, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
54oqiebt49cocwjdbleco668ch83yjde	ZTgzZDA5MGRiMDJmNGIyZDlhYmRjODlmODhkZjlhYTY0ZTRjMzMwMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjUyMDg5NDY1ZGM3ZGZjMTE4YzMxNjI1YTY1MjllNTg3M2I1ZjJiZmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-08-04 18:27:14.692503+00
\.


--
-- Data for Name: gidb_gielement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_gielement (id, name, soil_type_id, stratum_type_id, model_3d_id, model_planview_id) FROM stdin;
\.


--
-- Name: gidb_gielement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_gielement_id_seq', 1, false);


--
-- Data for Name: gidb_giinstance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_giinstance (id, placement_poly, template_id, watershed_id) FROM stdin;
\.


--
-- Name: gidb_giinstance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_giinstance_id_seq', 1, false);


--
-- Data for Name: gidb_gitemplate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_gitemplate (id, name, model_3d_id, model_planview_id) FROM stdin;
\.


--
-- Data for Name: gidb_gitemplate_gi_elements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_gitemplate_gi_elements (id, gitemplate_id, gielement_id) FROM stdin;
\.


--
-- Name: gidb_gitemplate_gi_elements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_gitemplate_gi_elements_id_seq', 1, false);


--
-- Name: gidb_gitemplate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_gitemplate_id_seq', 1, false);


--
-- Data for Name: gidb_giveggrowthstate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_giveggrowthstate (id, leaf_area_index, stem_density, height, gi_element_id, gi_instance_id) FROM stdin;
\.


--
-- Name: gidb_giveggrowthstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_giveggrowthstate_id_seq', 1, false);


--
-- Data for Name: gidb_humanprefimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_humanprefimage (id, pref_image, gi_instance_id, name) FROM stdin;
\.


--
-- Name: gidb_humanprefimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_humanprefimage_id_seq', 1, false);


--
-- Data for Name: gidb_representation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_representation (id, rep_file, rep_thumbnail) FROM stdin;
\.


--
-- Data for Name: gidb_representation2d; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_representation2d (representation_ptr_id) FROM stdin;
\.


--
-- Data for Name: gidb_representation3d; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_representation3d (representation_ptr_id) FROM stdin;
\.


--
-- Name: gidb_representation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_representation_id_seq', 1, false);


--
-- Name: gidb_rhesssyssoiltype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_rhesssyssoiltype_id_seq', 1, false);


--
-- Data for Name: gidb_rhessyssoiltype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_rhessyssoiltype (id, name, rhessys_default_id) FROM stdin;
\.


--
-- Data for Name: gidb_rhessysstratumtype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_rhessysstratumtype (id, name, rhessys_default_id) FROM stdin;
\.


--
-- Name: gidb_rhessysstratumtype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_rhessysstratumtype_id_seq', 1, false);


--
-- Data for Name: gidb_templatesforecoclimate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_templatesforecoclimate (id, name) FROM stdin;
\.


--
-- Name: gidb_templatesforecoclimate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_templatesforecoclimate_id_seq', 1, false);


--
-- Data for Name: gidb_templatesforecoclimate_templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_templatesforecoclimate_templates (id, templatesforecoclimate_id, gitemplate_id) FROM stdin;
\.


--
-- Name: gidb_templatesforecoclimate_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_templatesforecoclimate_templates_id_seq', 1, false);


--
-- Data for Name: gidb_watershed; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_watershed (id, name, model_url, template_menu_id) FROM stdin;
\.


--
-- Name: gidb_watershed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_watershed_id_seq', 1, false);


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: gidb_gielement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_gielement
    ADD CONSTRAINT gidb_gielement_pkey PRIMARY KEY (id);


--
-- Name: gidb_giinstance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_giinstance
    ADD CONSTRAINT gidb_giinstance_pkey PRIMARY KEY (id);


--
-- Name: gidb_gitemplate_gi_elements_gitemplate_id_gielement_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_gitemplate_gi_elements
    ADD CONSTRAINT gidb_gitemplate_gi_elements_gitemplate_id_gielement_id_key UNIQUE (gitemplate_id, gielement_id);


--
-- Name: gidb_gitemplate_gi_elements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_gitemplate_gi_elements
    ADD CONSTRAINT gidb_gitemplate_gi_elements_pkey PRIMARY KEY (id);


--
-- Name: gidb_gitemplate_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_gitemplate
    ADD CONSTRAINT gidb_gitemplate_name_key UNIQUE (name);


--
-- Name: gidb_gitemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_gitemplate
    ADD CONSTRAINT gidb_gitemplate_pkey PRIMARY KEY (id);


--
-- Name: gidb_giveggrowthstate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_giveggrowthstate
    ADD CONSTRAINT gidb_giveggrowthstate_pkey PRIMARY KEY (id);


--
-- Name: gidb_humanprefimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_humanprefimage
    ADD CONSTRAINT gidb_humanprefimage_pkey PRIMARY KEY (id);


--
-- Name: gidb_representation2d_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_representation2d
    ADD CONSTRAINT gidb_representation2d_pkey PRIMARY KEY (representation_ptr_id);


--
-- Name: gidb_representation3d_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_representation3d
    ADD CONSTRAINT gidb_representation3d_pkey PRIMARY KEY (representation_ptr_id);


--
-- Name: gidb_representation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_representation
    ADD CONSTRAINT gidb_representation_pkey PRIMARY KEY (id);


--
-- Name: gidb_rhesssyssoiltype_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_rhessyssoiltype
    ADD CONSTRAINT gidb_rhesssyssoiltype_name_key UNIQUE (name);


--
-- Name: gidb_rhesssyssoiltype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_rhessyssoiltype
    ADD CONSTRAINT gidb_rhesssyssoiltype_pkey PRIMARY KEY (id);


--
-- Name: gidb_rhesssyssoiltype_rhessys_default_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_rhessyssoiltype
    ADD CONSTRAINT gidb_rhesssyssoiltype_rhessys_default_id_key UNIQUE (rhessys_default_id);


--
-- Name: gidb_rhessysstratumtype_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_rhessysstratumtype
    ADD CONSTRAINT gidb_rhessysstratumtype_name_key UNIQUE (name);


--
-- Name: gidb_rhessysstratumtype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_rhessysstratumtype
    ADD CONSTRAINT gidb_rhessysstratumtype_pkey PRIMARY KEY (id);


--
-- Name: gidb_rhessysstratumtype_rhessys_default_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_rhessysstratumtype
    ADD CONSTRAINT gidb_rhessysstratumtype_rhessys_default_id_key UNIQUE (rhessys_default_id);


--
-- Name: gidb_templatesforecoclimate_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_templatesforecoclimate
    ADD CONSTRAINT gidb_templatesforecoclimate_name_key UNIQUE (name);


--
-- Name: gidb_templatesforecoclimate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_templatesforecoclimate
    ADD CONSTRAINT gidb_templatesforecoclimate_pkey PRIMARY KEY (id);


--
-- Name: gidb_templatesforecoclimate_t_templatesforecoclimate_id_git_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_templatesforecoclimate_templates
    ADD CONSTRAINT gidb_templatesforecoclimate_t_templatesforecoclimate_id_git_key UNIQUE (templatesforecoclimate_id, gitemplate_id);


--
-- Name: gidb_templatesforecoclimate_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_templatesforecoclimate_templates
    ADD CONSTRAINT gidb_templatesforecoclimate_templates_pkey PRIMARY KEY (id);


--
-- Name: gidb_watershed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_watershed
    ADD CONSTRAINT gidb_watershed_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_7222ec672cd32dcd_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX authtoken_token_key_7222ec672cd32dcd_like ON authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: gidb_gielement_90375285; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_gielement_90375285 ON gidb_gielement USING btree (model_planview_id);


--
-- Name: gidb_gielement_a0e82500; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_gielement_a0e82500 ON gidb_gielement USING btree (model_3d_id);


--
-- Name: gidb_gielement_cda9a308; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_gielement_cda9a308 ON gidb_gielement USING btree (stratum_type_id);


--
-- Name: gidb_gielement_e733fdfc; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_gielement_e733fdfc ON gidb_gielement USING btree (soil_type_id);


--
-- Name: gidb_giinstance_74f53564; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_giinstance_74f53564 ON gidb_giinstance USING btree (template_id);


--
-- Name: gidb_giinstance_b9ddc459; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_giinstance_b9ddc459 ON gidb_giinstance USING btree (watershed_id);


--
-- Name: gidb_giinstance_placement_poly_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_giinstance_placement_poly_id ON gidb_giinstance USING gist (placement_poly);


--
-- Name: gidb_gitemplate_90375285; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_gitemplate_90375285 ON gidb_gitemplate USING btree (model_planview_id);


--
-- Name: gidb_gitemplate_a0e82500; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_gitemplate_a0e82500 ON gidb_gitemplate USING btree (model_3d_id);


--
-- Name: gidb_gitemplate_gi_elements_55f75f3c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_gitemplate_gi_elements_55f75f3c ON gidb_gitemplate_gi_elements USING btree (gitemplate_id);


--
-- Name: gidb_gitemplate_gi_elements_bdefbcb1; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_gitemplate_gi_elements_bdefbcb1 ON gidb_gitemplate_gi_elements USING btree (gielement_id);


--
-- Name: gidb_gitemplate_name_256e8e81d4972494_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_gitemplate_name_256e8e81d4972494_like ON gidb_gitemplate USING btree (name varchar_pattern_ops);


--
-- Name: gidb_giveggrowthstate_408976f3; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_giveggrowthstate_408976f3 ON gidb_giveggrowthstate USING btree (gi_instance_id);


--
-- Name: gidb_giveggrowthstate_8b2a9db7; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_giveggrowthstate_8b2a9db7 ON gidb_giveggrowthstate USING btree (gi_element_id);


--
-- Name: gidb_humanprefimage_408976f3; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_humanprefimage_408976f3 ON gidb_humanprefimage USING btree (gi_instance_id);


--
-- Name: gidb_rhesssyssoiltype_name_5c5539aede76a8e1_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_rhesssyssoiltype_name_5c5539aede76a8e1_like ON gidb_rhessyssoiltype USING btree (name varchar_pattern_ops);


--
-- Name: gidb_rhessysstratumtype_name_24296bff517bdef9_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_rhessysstratumtype_name_24296bff517bdef9_like ON gidb_rhessysstratumtype USING btree (name varchar_pattern_ops);


--
-- Name: gidb_templatesforecoclimate_name_688e9cb3137220a4_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_templatesforecoclimate_name_688e9cb3137220a4_like ON gidb_templatesforecoclimate USING btree (name varchar_pattern_ops);


--
-- Name: gidb_templatesforecoclimate_templates_55f75f3c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_templatesforecoclimate_templates_55f75f3c ON gidb_templatesforecoclimate_templates USING btree (gitemplate_id);


--
-- Name: gidb_templatesforecoclimate_templates_96c364d8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_templatesforecoclimate_templates_96c364d8 ON gidb_templatesforecoclimate_templates USING btree (templatesforecoclimate_id);


--
-- Name: gidb_watershed_74963935; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_watershed_74963935 ON gidb_watershed USING btree (template_menu_id);


--
-- Name: D3e07f7331115147efa34836b35d4570; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gitemplate
    ADD CONSTRAINT "D3e07f7331115147efa34836b35d4570" FOREIGN KEY (model_planview_id) REFERENCES gidb_representation2d(representation_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: D8f9858e2169d111857abd08c756d7f3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gitemplate
    ADD CONSTRAINT "D8f9858e2169d111857abd08c756d7f3" FOREIGN KEY (model_3d_id) REFERENCES gidb_representation3d(representation_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: D92e91d71baa7ff3c6bf631db21f8c1e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gielement
    ADD CONSTRAINT "D92e91d71baa7ff3c6bf631db21f8c1e" FOREIGN KEY (model_3d_id) REFERENCES gidb_representation3d(representation_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: a7edbbd5aee2471d55e7e3e76772b424; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_representation3d
    ADD CONSTRAINT a7edbbd5aee2471d55e7e3e76772b424 FOREIGN KEY (representation_ptr_id) REFERENCES gidb_representation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token_user_id_1d10c57f535fb363_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_1d10c57f535fb363_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: d0e4c619a0d42605203ccab69db5f502; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_representation2d
    ADD CONSTRAINT d0e4c619a0d42605203ccab69db5f502 FOREIGN KEY (representation_ptr_id) REFERENCES gidb_representation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: d5be244a795f9ab257fe81a5dd082945; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gielement
    ADD CONSTRAINT d5be244a795f9ab257fe81a5dd082945 FOREIGN KEY (model_planview_id) REFERENCES gidb_representation2d(representation_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: d9987587bc5dcf0bc6076ce8dcfc15d1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_templatesforecoclimate_templates
    ADD CONSTRAINT d9987587bc5dcf0bc6076ce8dcfc15d1 FOREIGN KEY (templatesforecoclimate_id) REFERENCES gidb_templatesforecoclimate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: e775d39af60cf111dbb743964f184a09; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_watershed
    ADD CONSTRAINT e775d39af60cf111dbb743964f184a09 FOREIGN KEY (template_menu_id) REFERENCES gidb_templatesforecoclimate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gidb_g_soil_type_id_6362f68dfd6b4e96_fk_gidb_rhessyssoiltype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gielement
    ADD CONSTRAINT gidb_g_soil_type_id_6362f68dfd6b4e96_fk_gidb_rhessyssoiltype_id FOREIGN KEY (soil_type_id) REFERENCES gidb_rhessyssoiltype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gidb_giinsta_template_id_4b242195a3e5c787_fk_gidb_gitemplate_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_giinstance
    ADD CONSTRAINT gidb_giinsta_template_id_4b242195a3e5c787_fk_gidb_gitemplate_id FOREIGN KEY (template_id) REFERENCES gidb_gitemplate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gidb_giinsta_watershed_id_76a4e105dadcb349_fk_gidb_watershed_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_giinstance
    ADD CONSTRAINT gidb_giinsta_watershed_id_76a4e105dadcb349_fk_gidb_watershed_id FOREIGN KEY (watershed_id) REFERENCES gidb_watershed(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gidb_gitem_gitemplate_id_312eb370c172a8ab_fk_gidb_gitemplate_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gitemplate_gi_elements
    ADD CONSTRAINT gidb_gitem_gitemplate_id_312eb370c172a8ab_fk_gidb_gitemplate_id FOREIGN KEY (gitemplate_id) REFERENCES gidb_gitemplate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gidb_gitempl_gielement_id_681e5c98b11569d2_fk_gidb_gielement_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gitemplate_gi_elements
    ADD CONSTRAINT gidb_gitempl_gielement_id_681e5c98b11569d2_fk_gidb_gielement_id FOREIGN KEY (gielement_id) REFERENCES gidb_gielement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gidb_give_gi_instance_id_7de17f6cd09a0553_fk_gidb_giinstance_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_giveggrowthstate
    ADD CONSTRAINT gidb_give_gi_instance_id_7de17f6cd09a0553_fk_gidb_giinstance_id FOREIGN KEY (gi_instance_id) REFERENCES gidb_giinstance(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gidb_givegg_gi_element_id_26b5e524613070c5_fk_gidb_gielement_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_giveggrowthstate
    ADD CONSTRAINT gidb_givegg_gi_element_id_26b5e524613070c5_fk_gidb_gielement_id FOREIGN KEY (gi_element_id) REFERENCES gidb_gielement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gidb_huma_gi_instance_id_1516ca13e8391f92_fk_gidb_giinstance_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_humanprefimage
    ADD CONSTRAINT gidb_huma_gi_instance_id_1516ca13e8391f92_fk_gidb_giinstance_id FOREIGN KEY (gi_instance_id) REFERENCES gidb_giinstance(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gidb_templa_gitemplate_id_d3e12e34a744810_fk_gidb_gitemplate_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_templatesforecoclimate_templates
    ADD CONSTRAINT gidb_templa_gitemplate_id_d3e12e34a744810_fk_gidb_gitemplate_id FOREIGN KEY (gitemplate_id) REFERENCES gidb_gitemplate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: stratum_type_id_2557b42e2beb06e8_fk_gidb_rhessysstratumtype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gielement
    ADD CONSTRAINT stratum_type_id_2557b42e2beb06e8_fk_gidb_rhessysstratumtype_id FOREIGN KEY (stratum_type_id) REFERENCES gidb_rhessysstratumtype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

