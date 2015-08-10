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
ALTER TABLE ONLY public.gidb_gielement DROP CONSTRAINT model_planview_id_71a8de287a16e159_fk_gidb_representation2d_id;
ALTER TABLE ONLY public.gidb_gitemplate DROP CONSTRAINT model_planview_id_163689dbb1860a70_fk_gidb_representation2d_id;
ALTER TABLE ONLY public.gidb_templatesforecoclimate_templates DROP CONSTRAINT gidb_templa_gitemplate_id_d3e12e34a744810_fk_gidb_gitemplate_id;
ALTER TABLE ONLY public.gidb_humanprefimage DROP CONSTRAINT gidb_huma_gi_instance_id_1516ca13e8391f92_fk_gidb_giinstance_id;
ALTER TABLE ONLY public.gidb_giveggrowthstate DROP CONSTRAINT gidb_givegg_gi_element_id_26b5e524613070c5_fk_gidb_gielement_id;
ALTER TABLE ONLY public.gidb_giveggrowthstate DROP CONSTRAINT gidb_give_gi_instance_id_7de17f6cd09a0553_fk_gidb_giinstance_id;
ALTER TABLE ONLY public.gidb_gitemplate_gi_elements DROP CONSTRAINT gidb_gitempl_gielement_id_681e5c98b11569d2_fk_gidb_gielement_id;
ALTER TABLE ONLY public.gidb_gitemplate_gi_elements DROP CONSTRAINT gidb_gitem_gitemplate_id_312eb370c172a8ab_fk_gidb_gitemplate_id;
ALTER TABLE ONLY public.gidb_giinstance DROP CONSTRAINT gidb_giinsta_watershed_id_76a4e105dadcb349_fk_gidb_watershed_id;
ALTER TABLE ONLY public.gidb_giinstance DROP CONSTRAINT gidb_giinsta_template_id_4b242195a3e5c787_fk_gidb_gitemplate_id;
ALTER TABLE ONLY public.gidb_gielement DROP CONSTRAINT gidb_g_soil_type_id_6362f68dfd6b4e96_fk_gidb_rhessyssoiltype_id;
ALTER TABLE ONLY public.gidb_gitemplate DROP CONSTRAINT gidb_g_model_3d_id_3b515f15d383c449_fk_gidb_representation3d_id;
ALTER TABLE ONLY public.gidb_gielement DROP CONSTRAINT gidb_g_model_3d_id_269dd9eaa31053e0_fk_gidb_representation3d_id;
ALTER TABLE ONLY public.gidb_watershed DROP CONSTRAINT e775d39af60cf111dbb743964f184a09;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id;
ALTER TABLE ONLY public.gidb_templatesforecoclimate_templates DROP CONSTRAINT d9987587bc5dcf0bc6076ce8dcfc15d1;
ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_1d10c57f535fb363_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id;
DROP INDEX public.gidb_watershed_74963935;
DROP INDEX public.gidb_templatesforecoclimate_templates_96c364d8;
DROP INDEX public.gidb_templatesforecoclimate_templates_55f75f3c;
DROP INDEX public.gidb_templatesforecoclimate_name_688e9cb3137220a4_like;
DROP INDEX public.gidb_rhessysstratumtype_name_24296bff517bdef9_like;
DROP INDEX public.gidb_rhessysstratumtyp_rhessys_default_id_3c329dfd9b3ee2e3_like;
DROP INDEX public.gidb_rhessyssoiltype_rhessys_default_id_48a90f132337c8c5_like;
DROP INDEX public.gidb_rhessyssoiltype_name_27c28007b22ae869_like;
DROP INDEX public.gidb_representation3d_name_170845e7c93594fe_like;
DROP INDEX public.gidb_representation2d_name_1a2dc9d9e4906ffb_like;
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
ALTER TABLE ONLY public.gidb_rhessyssoiltype DROP CONSTRAINT gidb_rhessyssoiltype_rhessys_default_id_key;
ALTER TABLE ONLY public.gidb_rhessyssoiltype DROP CONSTRAINT gidb_rhessyssoiltype_pkey;
ALTER TABLE ONLY public.gidb_rhessyssoiltype DROP CONSTRAINT gidb_rhessyssoiltype_name_key;
ALTER TABLE ONLY public.gidb_representation3d DROP CONSTRAINT gidb_representation3d_pkey;
ALTER TABLE ONLY public.gidb_representation3d DROP CONSTRAINT gidb_representation3d_name_key;
ALTER TABLE ONLY public.gidb_representation2d DROP CONSTRAINT gidb_representation2d_pkey;
ALTER TABLE ONLY public.gidb_representation2d DROP CONSTRAINT gidb_representation2d_name_key;
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
ALTER TABLE ONLY public.corsheaders_corsmodel DROP CONSTRAINT corsheaders_corsmodel_pkey;
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
ALTER TABLE public.gidb_representation3d ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_representation2d ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_humanprefimage ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_giveggrowthstate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_gitemplate_gi_elements ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_gitemplate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_giinstance ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_gielement ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.corsheaders_corsmodel ALTER COLUMN id DROP DEFAULT;
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
DROP SEQUENCE public.gidb_rhessyssoiltype_id_seq;
DROP TABLE public.gidb_rhessyssoiltype;
DROP SEQUENCE public.gidb_representation3d_id_seq;
DROP TABLE public.gidb_representation3d;
DROP SEQUENCE public.gidb_representation2d_id_seq;
DROP TABLE public.gidb_representation2d;
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
DROP SEQUENCE public.corsheaders_corsmodel_id_seq;
DROP TABLE public.corsheaders_corsmodel;
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
-- Name: corsheaders_corsmodel; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE corsheaders_corsmodel (
    id integer NOT NULL,
    cors character varying(255) NOT NULL
);


ALTER TABLE public.corsheaders_corsmodel OWNER TO postgres;

--
-- Name: corsheaders_corsmodel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE corsheaders_corsmodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.corsheaders_corsmodel_id_seq OWNER TO postgres;

--
-- Name: corsheaders_corsmodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE corsheaders_corsmodel_id_seq OWNED BY corsheaders_corsmodel.id;


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
    model_3d_id integer,
    model_planview_id integer,
    soil_type_id integer,
    stratum_type_id integer
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
    name character varying(64) NOT NULL,
    pref_image character varying(100) NOT NULL,
    gi_instance_id integer NOT NULL
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
-- Name: gidb_representation2d; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_representation2d (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    rep_file character varying(100) NOT NULL,
    rep_thumbnail character varying(100)
);


ALTER TABLE public.gidb_representation2d OWNER TO postgres;

--
-- Name: gidb_representation2d_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_representation2d_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_representation2d_id_seq OWNER TO postgres;

--
-- Name: gidb_representation2d_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_representation2d_id_seq OWNED BY gidb_representation2d.id;


--
-- Name: gidb_representation3d; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_representation3d (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    rep_file character varying(100) NOT NULL,
    rep_thumbnail character varying(100) NOT NULL
);


ALTER TABLE public.gidb_representation3d OWNER TO postgres;

--
-- Name: gidb_representation3d_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_representation3d_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_representation3d_id_seq OWNER TO postgres;

--
-- Name: gidb_representation3d_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_representation3d_id_seq OWNED BY gidb_representation3d.id;


--
-- Name: gidb_rhessyssoiltype; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_rhessyssoiltype (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    rhessys_default_id character varying(8) NOT NULL
);


ALTER TABLE public.gidb_rhessyssoiltype OWNER TO postgres;

--
-- Name: gidb_rhessyssoiltype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_rhessyssoiltype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_rhessyssoiltype_id_seq OWNER TO postgres;

--
-- Name: gidb_rhessyssoiltype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_rhessyssoiltype_id_seq OWNED BY gidb_rhessyssoiltype.id;


--
-- Name: gidb_rhessysstratumtype; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_rhessysstratumtype (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    rhessys_default_id character varying(8) NOT NULL
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
    model_url character varying(1024) NOT NULL,
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

ALTER TABLE ONLY corsheaders_corsmodel ALTER COLUMN id SET DEFAULT nextval('corsheaders_corsmodel_id_seq'::regclass);


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

ALTER TABLE ONLY gidb_representation2d ALTER COLUMN id SET DEFAULT nextval('gidb_representation2d_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_representation3d ALTER COLUMN id SET DEFAULT nextval('gidb_representation3d_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_rhessyssoiltype ALTER COLUMN id SET DEFAULT nextval('gidb_rhessyssoiltype_id_seq'::regclass);


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
19	Can add token	7	add_token
20	Can change token	7	change_token
21	Can delete token	7	delete_token
22	Can add cors model	8	add_corsmodel
23	Can change cors model	8	change_corsmodel
24	Can delete cors model	8	delete_corsmodel
25	Can add Watershed	9	add_watershed
26	Can change Watershed	9	change_watershed
27	Can delete Watershed	9	delete_watershed
28	Can add Green infrastructure instance	10	add_giinstance
29	Can change Green infrastructure instance	10	change_giinstance
30	Can delete Green infrastructure instance	10	delete_giinstance
31	Can add Human preference image	11	add_humanprefimage
32	Can change Human preference image	11	change_humanprefimage
33	Can delete Human preference image	11	delete_humanprefimage
34	Can add Green infrastructure growth state	12	add_giveggrowthstate
35	Can change Green infrastructure growth state	12	change_giveggrowthstate
36	Can delete Green infrastructure growth state	12	delete_giveggrowthstate
37	Can add Eco-climate GI template	13	add_templatesforecoclimate
38	Can change Eco-climate GI template	13	change_templatesforecoclimate
39	Can delete Eco-climate GI template	13	delete_templatesforecoclimate
40	Can add Green infrastructure template	14	add_gitemplate
41	Can change Green infrastructure template	14	change_gitemplate
42	Can delete Green infrastructure template	14	delete_gitemplate
43	Can add Green infrastructure element	15	add_gielement
44	Can change Green infrastructure element	15	change_gielement
45	Can delete Green infrastructure element	15	delete_gielement
46	Can add RHESSys stratum type	16	add_rhessysstratumtype
47	Can change RHESSys stratum type	16	change_rhessysstratumtype
48	Can delete RHESSys stratum type	16	delete_rhessysstratumtype
49	Can add RHESSys soil type	17	add_rhessyssoiltype
50	Can change RHESSys soil type	17	change_rhessyssoiltype
51	Can delete RHESSys soil type	17	delete_rhessyssoiltype
52	Can add 2D visual representation	18	add_representation2d
53	Can change 2D visual representation	18	change_representation2d
54	Can delete 2D visual representation	18	delete_representation2d
55	Can add 3D visual representation	19	add_representation3d
56	Can change 3D visual representation	19	change_representation3d
57	Can delete 3D visual representation	19	delete_representation3d
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 57, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$20000$YtFODxdboWmi$KAKx17rxVy8XmflW1eoPb4z+JNK1LZ0fTMdbzaSs7sw=	2015-07-29 15:48:17.994254+00	t	admin			brian_miles@unc.edu	t	t	2015-07-28 19:05:33.587913+00
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
16a2133de2cc2a9c5d5b6c589262e0774f077bda	2015-07-28 19:05:53.441736+00	1
\.


--
-- Data for Name: corsheaders_corsmodel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY corsheaders_corsmodel (id, cors) FROM stdin;
\.


--
-- Name: corsheaders_corsmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('corsheaders_corsmodel_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2015-07-28 19:05:53.443726+00	16a2133de2cc2a9c5d5b6c589262e0774f077bda	16a2133de2cc2a9c5d5b6c589262e0774f077bda	1		7	1
2	2015-07-28 19:07:36.736387+00	1	Tree placeholder	1		18	1
3	2015-07-28 19:07:57.056563+00	1	Tree model placeholder	1		19	1
4	2015-07-28 19:09:02.442305+00	1	evergreen	1		16	1
5	2015-07-28 19:09:08.050713+00	2	deciduous	1		16	1
6	2015-07-28 19:09:13.809959+00	3	grass	1		16	1
7	2015-07-28 19:09:19.625897+00	4	nonveg	1		16	1
8	2015-07-28 19:09:26.9868+00	5	deciduous_BES	1		16	1
9	2015-07-28 19:09:34.100458+00	6	lawn_10cm	1		16	1
10	2015-07-28 19:09:39.597054+00	7	lawn_5cm	1		16	1
11	2015-07-28 19:09:45.334683+00	8	lawn_2cm	1		16	1
12	2015-07-28 19:09:52.01942+00	9	eucalypt	1		16	1
13	2015-07-28 19:10:06.55295+00	1	clay	1		17	1
14	2015-07-28 19:10:14.368862+00	2	silt-clay	1		17	1
15	2015-07-28 19:10:21.597635+00	3	silty-clay-loam	1		17	1
16	2015-07-28 19:10:28.902358+00	4	sandy-clay	1		17	1
17	2015-07-28 19:10:35.66716+00	5	sandy-clay-loam	1		17	1
18	2015-07-28 19:10:43.261275+00	6	clay-loam	1		17	1
19	2015-07-28 19:10:49.448297+00	7	silt	1		17	1
20	2015-07-28 19:10:58.017286+00	8	silt-loam	1		17	1
21	2015-07-28 19:11:03.933605+00	9	loam	1		17	1
22	2015-07-28 19:11:16.999249+00	10	sand	1		17	1
23	2015-07-28 19:11:24.799067+00	11	loamy-sand	1		17	1
24	2015-07-28 19:11:31.86797+00	12	sandy-loam	1		17	1
25	2015-07-28 19:11:40.679827+00	13	rock	1		17	1
26	2015-07-28 19:11:48.048237+00	14	water	1		17	1
27	2015-07-28 19:12:48.775832+00	1	Tree element	1		15	1
28	2015-07-28 19:13:06.841495+00	2	Rain garden element	1		15	1
29	2015-07-28 19:13:24.884839+00	1	Tree template	1		14	1
30	2015-07-28 19:13:40.917317+00	2	Rain garden template	1		14	1
31	2015-07-28 19:13:52.271223+00	1	Baltimore	1		13	1
32	2015-07-28 19:14:47.902768+00	1	Dead Run 5, Baltimore County, MD	1		9	1
33	2015-07-28 19:15:24.893048+00	1	Tree template at SRID=4326;POINT (-76.6360473632816621 39.3040037155156696)	1		10	1
34	2015-07-29 13:28:31.709649+00	2	Simple Rain Garden	1		19	1
35	2015-07-29 15:31:12.187685+00	2	Deciduous (Game)	1		18	1
36	2015-07-29 15:31:36.302597+00	3	Coniferous (Game)	1		18	1
37	2015-07-29 15:32:01.188217+00	4	Rain Garden (Game)	1		18	1
38	2015-07-29 15:32:24.302299+00	5	Grass (Game)	1		18	1
39	2015-07-29 15:33:56.954234+00	6	Coniferous (Construction)	1		18	1
40	2015-07-29 15:34:15.137126+00	7	Deciduous (Construction)	1		18	1
41	2015-07-29 15:34:42.802907+00	8	Rain Garden (Construction)	1		18	1
42	2015-07-29 15:35:00.398652+00	9	Grass (Construction)	1		18	1
43	2015-07-29 15:35:15.158283+00	10	Marsh (Construction)	1		18	1
44	2015-07-29 15:36:42.79407+00	11	Coniferous (ARCH)	1		18	1
45	2015-07-29 15:37:04.863396+00	12	Deciduous (ARCH)	1		18	1
46	2015-07-29 15:37:26.478267+00	13	Rain Garden (ARCH)	1		18	1
47	2015-07-29 15:37:44.376726+00	14	Grass (ARCH)	1		18	1
48	2015-07-29 15:38:22.841106+00	15	Coniferous (Hybrid)	1		18	1
49	2015-07-29 15:38:40.049543+00	16	Deciduous (Hybrid)	1		18	1
50	2015-07-29 15:52:51.57962+00	3	River Birch	1		19	1
51	2015-07-29 15:54:11.213928+00	4	Tussock Sedge	1		19	1
52	2015-07-29 15:54:47.517253+00	5	Grey Oak	1		19	1
53	2015-07-29 17:02:41.1372+00	4	Rain Garden (Game)	2	Changed rep_file and rep_thumbnail.	18	1
54	2015-07-29 18:37:27.598447+00	6	Flowered Rain Garden	1		19	1
55	2015-07-29 18:41:46.939845+00	2	Rain garden template	2	Changed model_3d and model_planview.	14	1
56	2015-07-29 18:42:50.507262+00	1	Tree template	2	Changed model_3d and model_planview.	14	1
57	2015-07-29 18:52:17.886772+00	11	Coniferous (ARCH)	2	Changed rep_thumbnail.	18	1
58	2015-07-29 18:52:43.432035+00	6	Coniferous (Construction)	2	Changed rep_thumbnail.	18	1
59	2015-07-29 18:53:21.164338+00	3	Coniferous (Game)	2	Changed rep_thumbnail.	18	1
60	2015-07-29 18:53:26.37428+00	6	Coniferous (Construction)	2	No fields changed.	18	1
61	2015-07-29 18:53:29.806268+00	11	Coniferous (ARCH)	2	No fields changed.	18	1
62	2015-07-29 18:53:52.883944+00	15	Coniferous (Hybrid)	2	Changed rep_thumbnail.	18	1
63	2015-07-29 18:54:22.653488+00	12	Deciduous (ARCH)	2	Changed rep_file and rep_thumbnail.	18	1
64	2015-07-29 18:54:37.147898+00	7	Deciduous (Construction)	2	Changed rep_thumbnail.	18	1
65	2015-07-29 18:54:49.106034+00	2	Deciduous (Game)	2	Changed rep_thumbnail.	18	1
66	2015-07-29 18:55:02.158828+00	16	Deciduous (Hybrid)	2	Changed rep_thumbnail.	18	1
67	2015-07-29 18:55:17.330837+00	14	Grass (ARCH)	2	Changed rep_thumbnail.	18	1
68	2015-07-29 18:55:28.679641+00	9	Grass (Construction)	2	Changed rep_thumbnail.	18	1
69	2015-07-29 18:55:46.500339+00	5	Grass (Game)	2	Changed rep_thumbnail.	18	1
70	2015-07-29 18:55:56.328444+00	10	Marsh (Construction)	2	Changed rep_thumbnail.	18	1
71	2015-07-29 18:56:16.103004+00	13	Rain Garden (ARCH)	2	Changed rep_thumbnail.	18	1
72	2015-07-29 18:56:48.7434+00	4	Rain Garden (Game)	2	Changed rep_file and rep_thumbnail.	18	1
73	2015-07-29 18:56:57.09831+00	4	Rain Garden (Game)	2	No fields changed.	18	1
74	2015-07-29 19:25:46.039716+00	7	Fenced Rain Garden	1		19	1
75	2015-07-29 19:26:31.279862+00	8	Fenced and Flowered Rain Garden	1		19	1
76	2015-07-29 19:31:46.727767+00	7	Fenced Rain Garden	2	Changed rep_thumbnail.	19	1
77	2015-07-29 19:31:59.504119+00	8	Fenced and Flowered Rain Garden	2	Changed rep_thumbnail.	19	1
78	2015-07-29 19:32:13.414786+00	6	Flowered Rain Garden	2	Changed rep_thumbnail.	19	1
79	2015-07-29 19:32:21.099479+00	2	Simple Rain Garden	2	Changed rep_thumbnail.	19	1
80	2015-07-29 20:05:50.247761+00	7	Fenced Rain Garden	2	Changed rep_thumbnail.	19	1
81	2015-07-29 20:06:05.530603+00	8	Fenced and Flowered Rain Garden	2	Changed rep_thumbnail.	19	1
82	2015-07-29 20:06:16.285699+00	6	Flowered Rain Garden	2	Changed rep_thumbnail.	19	1
83	2015-07-29 20:06:27.595969+00	2	Simple Rain Garden	2	Changed rep_thumbnail.	19	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 83, true);


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
7	authtoken	token
8	corsheaders	corsmodel
9	gidb	watershed
10	gidb	giinstance
11	gidb	humanprefimage
12	gidb	giveggrowthstate
13	gidb	templatesforecoclimate
14	gidb	gitemplate
15	gidb	gielement
16	gidb	rhessysstratumtype
17	gidb	rhessyssoiltype
18	gidb	representation2d
19	gidb	representation3d
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 19, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-07-28 19:03:21.335937+00
2	auth	0001_initial	2015-07-28 19:03:21.706764+00
3	admin	0001_initial	2015-07-28 19:03:21.792144+00
4	contenttypes	0002_remove_content_type_name	2015-07-28 19:03:21.83442+00
5	auth	0002_alter_permission_name_max_length	2015-07-28 19:03:21.848667+00
6	auth	0003_alter_user_email_max_length	2015-07-28 19:03:21.862463+00
7	auth	0004_alter_user_username_opts	2015-07-28 19:03:21.878302+00
8	auth	0005_alter_user_last_login_null	2015-07-28 19:03:21.892229+00
9	auth	0006_require_contenttypes_0002	2015-07-28 19:03:21.907208+00
10	authtoken	0001_initial	2015-07-28 19:03:21.98039+00
11	gidb	0001_initial	2015-07-28 19:03:22.987351+00
12	gidb	0002_auto_20150725_0053	2015-07-28 19:03:23.129132+00
13	sessions	0001_initial	2015-07-28 19:03:23.204642+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 13, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
n1amcat9va3b8ygfae7nfrm8rckcq9no	ODIzMmEyODc2ODg0NjNkZDNkMGQwZjRiY2YyYjY3NjI3MDVjZDIwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImJjMDUxOGY1Njg5ZTgyNWFhYzg2ZDhjYmIxYzk2MDA0MDAxOTE3NDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-08-11 19:05:42.566388+00
b3jukrosaomsfkxsuo3e16ia5llh8514	ODIzMmEyODc2ODg0NjNkZDNkMGQwZjRiY2YyYjY3NjI3MDVjZDIwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImJjMDUxOGY1Njg5ZTgyNWFhYzg2ZDhjYmIxYzk2MDA0MDAxOTE3NDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-08-11 19:06:04.2828+00
yo9no3p7rz56zpi9abt5a2i2xx2x7ap2	ODIzMmEyODc2ODg0NjNkZDNkMGQwZjRiY2YyYjY3NjI3MDVjZDIwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImJjMDUxOGY1Njg5ZTgyNWFhYzg2ZDhjYmIxYzk2MDA0MDAxOTE3NDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-08-11 19:06:17.520706+00
qk0ibb08od08iqdzh4f9llyv8yultff9	ODIzMmEyODc2ODg0NjNkZDNkMGQwZjRiY2YyYjY3NjI3MDVjZDIwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImJjMDUxOGY1Njg5ZTgyNWFhYzg2ZDhjYmIxYzk2MDA0MDAxOTE3NDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-08-11 20:54:12.138337+00
9uvo9np5knvm2te11pr6rnsp6rjwf4x9	ODIzMmEyODc2ODg0NjNkZDNkMGQwZjRiY2YyYjY3NjI3MDVjZDIwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImJjMDUxOGY1Njg5ZTgyNWFhYzg2ZDhjYmIxYzk2MDA0MDAxOTE3NDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-08-11 22:14:18.127994+00
8e4d814zzd3mlruqceyg6lxk5q1yoda1	ZWViOWVmNGNlMDk1NmYwM2Y3Mjg2NzRkZTJmNTJjMDI5YzMyNDM3Mzp7fQ==	2015-08-12 13:49:39.505654+00
v0uoc64p34aoiz1dfr40dw993ybiiq6j	ODIzMmEyODc2ODg0NjNkZDNkMGQwZjRiY2YyYjY3NjI3MDVjZDIwNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImJjMDUxOGY1Njg5ZTgyNWFhYzg2ZDhjYmIxYzk2MDA0MDAxOTE3NDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-08-12 15:48:17.996376+00
\.


--
-- Data for Name: gidb_gielement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_gielement (id, name, model_3d_id, model_planview_id, soil_type_id, stratum_type_id) FROM stdin;
1	Tree element	1	1	\N	2
2	Rain garden element	1	1	12	2
\.


--
-- Name: gidb_gielement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_gielement_id_seq', 2, true);


--
-- Data for Name: gidb_giinstance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_giinstance (id, placement_poly, template_id, watershed_id) FROM stdin;
1	0103000020E61000000100000004000000230000000E2A53C079000098C9A8434012000000B72653C03300009815A84340230000005A2953C033000098DDA34340230000000E2A53C079000098C9A84340	1	1
2	0103000020E61000000100000005000000E2360AC0B64B60C1BB039E18E42B5241B796AFE6814B60C137499634F72B52411D6FA0CF7F4B60C123FE13C1AD2B52410E339EE5AC4B60C156C19A089D2B5241E2360AC0B64B60C1BB039E18E42B5241	1	1
3	0103000020E610000001000000040000003A69E697984B60C1F65363F5D62B5241EA1F82A17B4B60C13030C0B8DE2B52410EA706FF974B60C17BF63B0C9A2B52413A69E697984B60C1F65363F5D62B5241	1	1
4	0103000020E61000000100000004000000EEF148A27F4B60C13FD6D4C9FA2B524137F2FFC79B4B60C1F5671D65F12B5241AC4E4CE8944B60C1915DDC72D42B5241EEF148A27F4B60C13FD6D4C9FA2B5241	1	1
5	0103000020E6100000010000000500000054746AC69D4B60C1E492EDB6D32B5241D59FF1EF954B60C19A450576D42B52416CAB47D3954B60C143DE9F0ACE2B52413D7741469B4B60C12DFD2FBECD2B524154746AC69D4B60C1E492EDB6D32B5241	1	1
6	0103000020E6100000010000000C0000004BC2819BAC4B60C13EB447AA4C2B5241776C3267834B60C103F019B46E2B5241E6F3E6A4504B60C1FC4AAC51412B5241A48A4B4C454B60C1388342610A2B5241C1F8F92D494B60C1471128A5FC2A52413D78A6D6514B60C1F701783BD52A524144917C526A4B60C1CB3F98A2D42A52415A72EC9E6A4B60C17AD4AEECEB2A524170A53F458A4B60C147F9F8D7D22A52413C6E50E4AF4B60C173BBD870D32A524152FDDCD6904B60C1CA57C76FFE2A52414BC2819BAC4B60C13EB447AA4C2B5241	1	1
7	0103000020E6100000010000000500000015C0DC7AB04B60C16B98B462FB2B524125FCDE64834B60C15C0ACF1E092C52413350101C804B60C18828E803CB2B5241DA356311C84B60C14E4C8B40C32B524115C0DC7AB04B60C16B98B462FB2B5241	1	1
8	0103000020E6100000010000000500000024DA59A5B74B60C19742652ED22B5241008D89D4904B60C10CFB1EB5E12B5241F8094C30A34B60C15D4ED99DA02B52418A30B498B64B60C1D2069324B02B524124DA59A5B74B60C19742652ED22B5241	1	1
9	0103000020E610000001000000050000003A2F320BA34B60C14D7CE9DA162C524134FE2CC2604B60C171B18ADE132C5241B744CC8C624B60C1474BE491D42B52418B606734964B60C19742652ED22B52413A2F320BA34B60C14D7CE9DA162C5241	1	1
10	0103000020E61000000100000005000000DB1D34449E4B60C1EE52BC46E82B5241F1ACC0367F4B60C17225F3F7FE2B52415187F1A8804B60C1C378ADE0BD2B5241DCE666EF9A4B60C1E8AD4EE4BA2B5241DB1D34449E4B60C1EE52BC46E82B5241	1	1
11	0103000020E610000001000000050000001BFCACF9824B60C1AC16847BE62B5241D8E71286814B60C19A3EEA89E62B5241DB4BE77E814B60C16227B69FE32B524166623F74824B60C1C0C5609DE22B52411BFCACF9824B60C1AC16847BE62B5241	1	1
12	0103000020E610000001000000040000007B7B2489654B60C1306931F1212C5241853D59F0644B60C1EF76FBC1E32B5241DBAC450D654B60C1ACBCFCF5212C52417B7B2489654B60C1306931F1212C5241	1	1
13	0103000020E61000000100000004000000A9D29ACE714B60C1ED241CD9CE2B5241A7FEA251724B60C1C0EA82BED12B5241C9583CC5734B60C1C4241FB0D12B5241A9D29ACE714B60C1ED241CD9CE2B5241	1	1
14	0103000020E610000001000000050000003A3646127E4B60C168775EDEDF2B5241379F1BAE7B4B60C1298490E0E22B52410E100C32794B60C139BB6A2BDC2B5241475014127C4B60C110756D24D92B52413A3646127E4B60C168775EDEDF2B5241	1	1
15	0103000020E610000001000000050000005A508A1A7D4B60C1886AF7E7DF2B5241F72432257C4B60C1EE314CEAE02B52419466DEA07A4B60C184478E2BDA2B52415C0BD0097D4B60C1E7A0D41AD92B52415A508A1A7D4B60C1886AF7E7DF2B5241	2	1
16	0103000020E61000000100000005000000906655D47F4B60C163843E55CD2B5241D2F899DC7E4B60C18999D75ECD2B5241D6D20AD37E4B60C13C04EA7BC92B5241BCD1A346804B60C13060846DC92B5241906655D47F4B60C163843E55CD2B5241	2	1
17	0103000020E61000000100000005000000613A1B66844B60C1CDA6E982E32B5241DF46A376824B60C13CC01C96E32B52413CB6136D824B60C18FFB2CB3DF2B5241DF778B5C844B60C1E4E8F99FDF2B5241613A1B66844B60C1CDA6E982E32B5241	1	1
18	0103000020E6100000010000000500000058F3C5E1824B60C13FAF2CC4DC2B524197EBCF4B844B60C1964BD7D2D82B5241756593E1804B60C11F423D0AD62B5241F07AEAEF804B60C173A1A3DEDB2B524158F3C5E1824B60C13FAF2CC4DC2B5241	2	1
19	0103000020E6100000010000000600000030473D9F864B60C1B8158303CF2B524154D16EBA834B60C1ED990B19D02B52418C6462C6834B60C14768B5F4D42B524152D99737854B60C16F5E93EDD32B5241EAF1CF32854B60C16D3B1CFCD12B524130473D9F864B60C1B8158303CF2B5241	2	1
20	0103000020E61000000100000005000000900869F1834B60C16E87EA71E62B5241D8E71286814B60C19A3EEA89E62B52414ABDDDFB804B60C1F5F04EBAE02B52412F5BCDDA844B60C154FAE893E02B5241900869F1834B60C16E87EA71E62B5241	1	1
21	0103000020E61000000100000007000000AC1DEB4A874B60C1A84E606DE22B52411D6861F8814B60C1087C2DA2E22B5241F7288463824B60C13E9A3DD0DB2B524175C181D9834B60C1722893BADC2B5241E34625D0854B60C12D599391DF2B52410114BF43874B60C122912C83DF2B5241AC1DEB4A874B60C1A84E606DE22B5241	2	1
22	0103000020E610000001000000060000004566BB878A4B60C1C90409C0D22B524124172214894B60C1D03F70CED22B52412FF2F50C894B60C15CB13DE4CF2B524143258F808A4B60C1227AD6D5CF2B52414FBD378B894B60C168232CD8D02B52414566BB878A4B60C1C90409C0D22B5241	2	1
23	0103000020E61000000100000007000000269CD9CE844B60C1B4BB3DB8DB2B5241705253067E4B60C1473AB302DB2B52411E2435F37D4B60C1ECB4D53CD32B5241A31B7BC7824B60C126241C14D22B524163DB2C55824B60C18342D7FBD52B52416989A1BA854B60C17C64F9D2D62B5241269CD9CE844B60C1B4BB3DB8DB2B5241	2	1
24	0103000020E610000001000000050000000114BF43874B60C122912C83DF2B524107A699F3814B60C1DA98B5B0E02B52418144A6E7814B60C1914D0AD5DB2B524167490F40864B60C1D6581BB1DA2B52410114BF43874B60C122912C83DF2B5241	2	1
25	0103000020E610000001000000060000005B798B2A864B60C1537F82F2D12B52417137014E824B60C1756AA411D32B52410CFEC240814B60C1C182A65CCA2B5241A2078E9B854B60C12CD07331CA2B5241F294D26F8A4B60C198BAB608C92B52415B798B2A864B60C1537F82F2D12B5241	1	1
26	0103000020E61000000100000005000000032619C3864B60C143CF8196DD2B52419BC8FF7F804B60C1A2931BBFE02B5241D062E6807D4B60C1D0BE9024D72B524199F9F440834B60C1A3DE9316D12B5241032619C3864B60C143CF8196DD2B5241	2	1
27	0103000020E610000001000000060000009E6B15E1874B60C12839A818ED2B5241AB932402844B60C123880F3FED2B5241DB2BA1EC834B60C1F5757280E42B5241B62739D6864B60C12E3A615CE52B5241681FEB63864B60C13C761E44E92B52419E6B15E1874B60C12839A818ED2B5241	2	1
28	0103000020E6100000010000000A000000BB6931C4854B60C1D13DE8B5DA2B524195544EF2804B60C1BD715FD7DC2B52414712B2F67C4B60C11D78F754D12B52412FF993C8814B60C1CFF98233CF2B5241DDF9C852824B60C1F69E1B03D52B52410B6B4C1D854B60C13051853DC92B52415964AA0B884B60C12AF7E90ACC2B5241064005A4864B60C1F410FAF4D02B5241AC514498884B60C1FA463DD3D22B5241BB6931C4854B60C1D13DE8B5DA2B5241	1	1
\.


--
-- Name: gidb_giinstance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_giinstance_id_seq', 28, true);


--
-- Data for Name: gidb_gitemplate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_gitemplate (id, name, model_3d_id, model_planview_id) FROM stdin;
2	Rain garden template	2	4
1	Tree template	5	2
\.


--
-- Data for Name: gidb_gitemplate_gi_elements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_gitemplate_gi_elements (id, gitemplate_id, gielement_id) FROM stdin;
3	2	2
4	1	1
\.


--
-- Name: gidb_gitemplate_gi_elements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_gitemplate_gi_elements_id_seq', 4, true);


--
-- Name: gidb_gitemplate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_gitemplate_id_seq', 2, true);


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

COPY gidb_humanprefimage (id, name, pref_image, gi_instance_id) FROM stdin;
\.


--
-- Name: gidb_humanprefimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_humanprefimage_id_seq', 1, false);


--
-- Data for Name: gidb_representation2d; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_representation2d (id, name, rep_file, rep_thumbnail) FROM stdin;
1	Tree placeholder	./badtree_overhead_Xli6YFb.png	
8	Rain Garden (Construction)	./rain07282015.png	./rain07282015_pNilGwu.png
3	Coniferous (Game)	./GamingTree_LCD.png	./gamingtree_lcd1.png
6	Coniferous (Construction)	./ConiferSimple07282015.png	./conifersimple072820151.png
11	Coniferous (ARCH)	./NLE.png	./nle1.png
15	Coniferous (Hybrid)	./Conifer07282015.png	./conifer072820151.png
12	Deciduous (ARCH)	./BLD_DIKNW5v.png	./bld1.png
7	Deciduous (Construction)	./Trees07282015.png	./trees072820151.png
2	Deciduous (Game)	./GamingTree2_LCD.png	./gamingtree2_lcd1.png
16	Deciduous (Hybrid)	./Decid07282018.png	./decid072820181.png
14	Grass (ARCH)	./Grass.png	./grass1.png
9	Grass (Construction)	./Grass07282015.png	./grass072820151.png
5	Grass (Game)	./GamingGrass_LCD.png	./gaminggrass_lcd1.png
10	Marsh (Construction)	./Marsh07282015.png	./marsh072820151.png
13	Rain Garden (ARCH)	./Rain.png	./rain1.png
4	Rain Garden (Game)	./GamingRain_LCD_zcfFxhG.png	./gamingrain_lcd1.png
\.


--
-- Name: gidb_representation2d_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_representation2d_id_seq', 16, true);


--
-- Data for Name: gidb_representation3d; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_representation3d (id, name, rep_file, rep_thumbnail) FROM stdin;
1	Tree model placeholder	./badtree_overhead_yCdKlUy.png	./badtree_overhead_gT8UAAJ.png
3	River Birch	./mesh.DAE	./thumbnail.png
4	Tussock Sedge	./mesh_Yg5lF8J.DAE	./thumbnail_gfEc66y.png
5	Grey Oak	./mesh_a4tslDu.DAE	./thumbnail_vUm58U1.png
7	Fenced Rain Garden	./Rain_Fence.DAE	./Rain_Fence_Thumbnail_y3IYhBh.png
8	Fenced and Flowered Rain Garden	./RainFlowerFence.DAE	./Rain_tall_Flower_Fence_Thumbnail_xwE8ugU.png
6	Flowered Rain Garden	./Raingarden_Flower07292015_1poly.max	./Rain_tall_Flower_Thumbnail_384dlcI.png
2	Simple Rain Garden	./RainGarden072920151Poly.DAE	./Rain_NoGrass_S4jq4ew.png
\.


--
-- Name: gidb_representation3d_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_representation3d_id_seq', 8, true);


--
-- Data for Name: gidb_rhessyssoiltype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_rhessyssoiltype (id, name, rhessys_default_id) FROM stdin;
1	clay	1
2	silt-clay	2
3	silty-clay-loam	3
4	sandy-clay	4
5	sandy-clay-loam	5
6	clay-loam	6
7	silt	7
8	silt-loam	8
9	loam	9
10	sand	10
11	loamy-sand	11
12	sandy-loam	12
13	rock	13
14	water	14
\.


--
-- Name: gidb_rhessyssoiltype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_rhessyssoiltype_id_seq', 14, true);


--
-- Data for Name: gidb_rhessysstratumtype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_rhessysstratumtype (id, name, rhessys_default_id) FROM stdin;
1	evergreen	1
2	deciduous	2
3	grass	3
4	nonveg	4
5	deciduous_BES	21
6	lawn_10cm	31
7	lawn_5cm	32
8	lawn_2cm	33
9	eucalypt	11
\.


--
-- Name: gidb_rhessysstratumtype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_rhessysstratumtype_id_seq', 9, true);


--
-- Data for Name: gidb_templatesforecoclimate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_templatesforecoclimate (id, name) FROM stdin;
1	Baltimore
\.


--
-- Name: gidb_templatesforecoclimate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_templatesforecoclimate_id_seq', 1, true);


--
-- Data for Name: gidb_templatesforecoclimate_templates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_templatesforecoclimate_templates (id, templatesforecoclimate_id, gitemplate_id) FROM stdin;
1	1	1
2	1	2
\.


--
-- Name: gidb_templatesforecoclimate_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_templatesforecoclimate_templates_id_seq', 2, true);


--
-- Data for Name: gidb_watershed; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_watershed (id, name, model_url, template_menu_id) FROM stdin;
1	Dead Run 5, Baltimore County, MD	https://www.hydroshare.org/django_irods/download/6dbb0dfb8f3a498881e4de428cb1587c/data/contents/DR5_3m_nonburned_DEM_rain_duration_DEM_float_lctest_raingarden.zip	1
\.


--
-- Name: gidb_watershed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_watershed_id_seq', 1, true);


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
-- Name: corsheaders_corsmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY corsheaders_corsmodel
    ADD CONSTRAINT corsheaders_corsmodel_pkey PRIMARY KEY (id);


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
-- Name: gidb_representation2d_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_representation2d
    ADD CONSTRAINT gidb_representation2d_name_key UNIQUE (name);


--
-- Name: gidb_representation2d_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_representation2d
    ADD CONSTRAINT gidb_representation2d_pkey PRIMARY KEY (id);


--
-- Name: gidb_representation3d_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_representation3d
    ADD CONSTRAINT gidb_representation3d_name_key UNIQUE (name);


--
-- Name: gidb_representation3d_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_representation3d
    ADD CONSTRAINT gidb_representation3d_pkey PRIMARY KEY (id);


--
-- Name: gidb_rhessyssoiltype_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_rhessyssoiltype
    ADD CONSTRAINT gidb_rhessyssoiltype_name_key UNIQUE (name);


--
-- Name: gidb_rhessyssoiltype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_rhessyssoiltype
    ADD CONSTRAINT gidb_rhessyssoiltype_pkey PRIMARY KEY (id);


--
-- Name: gidb_rhessyssoiltype_rhessys_default_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_rhessyssoiltype
    ADD CONSTRAINT gidb_rhessyssoiltype_rhessys_default_id_key UNIQUE (rhessys_default_id);


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
-- Name: gidb_representation2d_name_1a2dc9d9e4906ffb_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_representation2d_name_1a2dc9d9e4906ffb_like ON gidb_representation2d USING btree (name varchar_pattern_ops);


--
-- Name: gidb_representation3d_name_170845e7c93594fe_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_representation3d_name_170845e7c93594fe_like ON gidb_representation3d USING btree (name varchar_pattern_ops);


--
-- Name: gidb_rhessyssoiltype_name_27c28007b22ae869_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_rhessyssoiltype_name_27c28007b22ae869_like ON gidb_rhessyssoiltype USING btree (name varchar_pattern_ops);


--
-- Name: gidb_rhessyssoiltype_rhessys_default_id_48a90f132337c8c5_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_rhessyssoiltype_rhessys_default_id_48a90f132337c8c5_like ON gidb_rhessyssoiltype USING btree (rhessys_default_id varchar_pattern_ops);


--
-- Name: gidb_rhessysstratumtyp_rhessys_default_id_3c329dfd9b3ee2e3_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_rhessysstratumtyp_rhessys_default_id_3c329dfd9b3ee2e3_like ON gidb_rhessysstratumtype USING btree (rhessys_default_id varchar_pattern_ops);


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
-- Name: gidb_g_model_3d_id_269dd9eaa31053e0_fk_gidb_representation3d_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gielement
    ADD CONSTRAINT gidb_g_model_3d_id_269dd9eaa31053e0_fk_gidb_representation3d_id FOREIGN KEY (model_3d_id) REFERENCES gidb_representation3d(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gidb_g_model_3d_id_3b515f15d383c449_fk_gidb_representation3d_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gitemplate
    ADD CONSTRAINT gidb_g_model_3d_id_3b515f15d383c449_fk_gidb_representation3d_id FOREIGN KEY (model_3d_id) REFERENCES gidb_representation3d(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: model_planview_id_163689dbb1860a70_fk_gidb_representation2d_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gitemplate
    ADD CONSTRAINT model_planview_id_163689dbb1860a70_fk_gidb_representation2d_id FOREIGN KEY (model_planview_id) REFERENCES gidb_representation2d(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: model_planview_id_71a8de287a16e159_fk_gidb_representation2d_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_gielement
    ADD CONSTRAINT model_planview_id_71a8de287a16e159_fk_gidb_representation2d_id FOREIGN KEY (model_planview_id) REFERENCES gidb_representation2d(id) DEFERRABLE INITIALLY DEFERRED;


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

