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
ALTER TABLE ONLY public.gidb_watershed DROP CONSTRAINT gidb_watershed_region_id_3b3df8ce5dffd1c6_fk_gidb_region_id;
ALTER TABLE ONLY public.gidb_templatesforecoclimate_templates DROP CONSTRAINT gidb_templa_gitemplate_id_d3e12e34a744810_fk_gidb_gitemplate_id;
ALTER TABLE ONLY public.gidb_humanprefimage DROP CONSTRAINT gidb_huma_gi_instance_id_1516ca13e8391f92_fk_gidb_giinstance_id;
ALTER TABLE ONLY public.gidb_giveggrowthstate DROP CONSTRAINT gidb_givegg_gi_element_id_26b5e524613070c5_fk_gidb_gielement_id;
ALTER TABLE ONLY public.gidb_giveggrowthstate DROP CONSTRAINT gidb_give_gi_instance_id_7de17f6cd09a0553_fk_gidb_giinstance_id;
ALTER TABLE ONLY public.gidb_gitemplate_gi_elements DROP CONSTRAINT gidb_gitempl_gielement_id_681e5c98b11569d2_fk_gidb_gielement_id;
ALTER TABLE ONLY public.gidb_gitemplate_gi_elements DROP CONSTRAINT gidb_gitem_gitemplate_id_312eb370c172a8ab_fk_gidb_gitemplate_id;
ALTER TABLE ONLY public.gidb_giinstance DROP CONSTRAINT gidb_giinsta_watershed_id_76a4e105dadcb349_fk_gidb_watershed_id;
ALTER TABLE ONLY public.gidb_giinstance DROP CONSTRAINT gidb_giinsta_template_id_4b242195a3e5c787_fk_gidb_gitemplate_id;
ALTER TABLE ONLY public.gidb_giinstance DROP CONSTRAINT gidb_giinsta_scenario_id_52b5a4be86199bf7_fk_gidb_giscenario_id;
ALTER TABLE ONLY public.gidb_gielement DROP CONSTRAINT gidb_g_soil_type_id_6362f68dfd6b4e96_fk_gidb_rhessyssoiltype_id;
ALTER TABLE ONLY public.gidb_gitemplate DROP CONSTRAINT gidb_g_model_3d_id_3b515f15d383c449_fk_gidb_representation3d_id;
ALTER TABLE ONLY public.gidb_gielement DROP CONSTRAINT gidb_g_model_3d_id_269dd9eaa31053e0_fk_gidb_representation3d_id;
ALTER TABLE ONLY public.gidb_watershed DROP CONSTRAINT gidb__boundary_id_21928be4554d932a_fk_gidb_watershedboundary_id;
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
DROP INDEX public.gidb_watershedboundary_boundary_id;
DROP INDEX public.gidb_watershed_eb01ad15;
DROP INDEX public.gidb_watershed_74963935;
DROP INDEX public.gidb_watershed_0f442f96;
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
DROP INDEX public.gidb_giinstance_adc0676c;
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
ALTER TABLE ONLY public.gidb_watershedboundary DROP CONSTRAINT gidb_watershedboundary_pkey;
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
ALTER TABLE ONLY public.gidb_region DROP CONSTRAINT gidb_region_pkey;
ALTER TABLE ONLY public.gidb_humanprefimage DROP CONSTRAINT gidb_humanprefimage_pkey;
ALTER TABLE ONLY public.gidb_giveggrowthstate DROP CONSTRAINT gidb_giveggrowthstate_pkey;
ALTER TABLE ONLY public.gidb_gitemplate DROP CONSTRAINT gidb_gitemplate_pkey;
ALTER TABLE ONLY public.gidb_gitemplate DROP CONSTRAINT gidb_gitemplate_name_key;
ALTER TABLE ONLY public.gidb_gitemplate_gi_elements DROP CONSTRAINT gidb_gitemplate_gi_elements_pkey;
ALTER TABLE ONLY public.gidb_gitemplate_gi_elements DROP CONSTRAINT gidb_gitemplate_gi_elements_gitemplate_id_gielement_id_key;
ALTER TABLE ONLY public.gidb_giscenario DROP CONSTRAINT gidb_giscenario_pkey;
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
ALTER TABLE public.gidb_watershedboundary ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_watershed ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_templatesforecoclimate_templates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_templatesforecoclimate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_rhessysstratumtype ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_rhessyssoiltype ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_representation3d ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_representation2d ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_region ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_humanprefimage ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_giveggrowthstate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_gitemplate_gi_elements ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_gitemplate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.gidb_giscenario ALTER COLUMN id DROP DEFAULT;
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
DROP SEQUENCE public.gidb_watershedboundary_id_seq;
DROP TABLE public.gidb_watershedboundary;
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
DROP SEQUENCE public.gidb_region_id_seq;
DROP TABLE public.gidb_region;
DROP SEQUENCE public.gidb_humanprefimage_id_seq;
DROP TABLE public.gidb_humanprefimage;
DROP SEQUENCE public.gidb_giveggrowthstate_id_seq;
DROP TABLE public.gidb_giveggrowthstate;
DROP SEQUENCE public.gidb_gitemplate_id_seq;
DROP SEQUENCE public.gidb_gitemplate_gi_elements_id_seq;
DROP TABLE public.gidb_gitemplate_gi_elements;
DROP TABLE public.gidb_gitemplate;
DROP SEQUENCE public.gidb_giscenario_id_seq;
DROP TABLE public.gidb_giscenario;
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
    major_axis double precision,
    minor_axis double precision,
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
    scenario_id integer NOT NULL,
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
-- Name: gidb_giscenario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_giscenario (
    id integer NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.gidb_giscenario OWNER TO postgres;

--
-- Name: gidb_giscenario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_giscenario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_giscenario_id_seq OWNER TO postgres;

--
-- Name: gidb_giscenario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_giscenario_id_seq OWNED BY gidb_giscenario.id;


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
-- Name: gidb_region; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_region (
    id integer NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.gidb_region OWNER TO postgres;

--
-- Name: gidb_region_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_region_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_region_id_seq OWNER TO postgres;

--
-- Name: gidb_region_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_region_id_seq OWNED BY gidb_region.id;


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
    boundary_id integer,
    region_id integer NOT NULL,
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
-- Name: gidb_watershedboundary; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gidb_watershedboundary (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    boundary geometry(Polygon,4326) NOT NULL
);


ALTER TABLE public.gidb_watershedboundary OWNER TO postgres;

--
-- Name: gidb_watershedboundary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gidb_watershedboundary_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gidb_watershedboundary_id_seq OWNER TO postgres;

--
-- Name: gidb_watershedboundary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gidb_watershedboundary_id_seq OWNED BY gidb_watershedboundary.id;


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

ALTER TABLE ONLY gidb_giscenario ALTER COLUMN id SET DEFAULT nextval('gidb_giscenario_id_seq'::regclass);


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

ALTER TABLE ONLY gidb_region ALTER COLUMN id SET DEFAULT nextval('gidb_region_id_seq'::regclass);


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
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_watershedboundary ALTER COLUMN id SET DEFAULT nextval('gidb_watershedboundary_id_seq'::regclass);


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
25	Can add region	9	add_region
26	Can change region	9	change_region
27	Can delete region	9	delete_region
28	Can add Watershed	10	add_watershed
29	Can change Watershed	10	change_watershed
30	Can delete Watershed	10	delete_watershed
31	Can add watershed boundary	11	add_watershedboundary
32	Can change watershed boundary	11	change_watershedboundary
33	Can delete watershed boundary	11	delete_watershedboundary
34	Can add Scenario	12	add_giscenario
35	Can change Scenario	12	change_giscenario
36	Can delete Scenario	12	delete_giscenario
37	Can add Green infrastructure instance	13	add_giinstance
38	Can change Green infrastructure instance	13	change_giinstance
39	Can delete Green infrastructure instance	13	delete_giinstance
40	Can add Human preference image	14	add_humanprefimage
41	Can change Human preference image	14	change_humanprefimage
42	Can delete Human preference image	14	delete_humanprefimage
43	Can add Green infrastructure growth state	15	add_giveggrowthstate
44	Can change Green infrastructure growth state	15	change_giveggrowthstate
45	Can delete Green infrastructure growth state	15	delete_giveggrowthstate
46	Can add Eco-climate GI template	16	add_templatesforecoclimate
47	Can change Eco-climate GI template	16	change_templatesforecoclimate
48	Can delete Eco-climate GI template	16	delete_templatesforecoclimate
49	Can add Green infrastructure template	17	add_gitemplate
50	Can change Green infrastructure template	17	change_gitemplate
51	Can delete Green infrastructure template	17	delete_gitemplate
52	Can add Green infrastructure element	18	add_gielement
53	Can change Green infrastructure element	18	change_gielement
54	Can delete Green infrastructure element	18	delete_gielement
55	Can add RHESSys stratum type	19	add_rhessysstratumtype
56	Can change RHESSys stratum type	19	change_rhessysstratumtype
57	Can delete RHESSys stratum type	19	delete_rhessysstratumtype
58	Can add RHESSys soil type	20	add_rhessyssoiltype
59	Can change RHESSys soil type	20	change_rhessyssoiltype
60	Can delete RHESSys soil type	20	delete_rhessyssoiltype
61	Can add 2D visual representation	21	add_representation2d
62	Can change 2D visual representation	21	change_representation2d
63	Can delete 2D visual representation	21	delete_representation2d
64	Can add 3D visual representation	22	add_representation3d
65	Can change 3D visual representation	22	change_representation3d
66	Can delete 3D visual representation	22	delete_representation3d
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 66, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$20000$tSfyRiuNyQGD$7GfJFtCBzXj43Z6PQKQnDWrXvWlKxn3EK/QpauFxH8g=	2015-11-14 00:33:37.326973+00	t	admin			brian_miles@unc.edu	t	t	2015-11-13 21:07:36.801657+00
2	pbkdf2_sha256$20000$etyNnMCD4hA2$FedAw6kCwKN5KFc/0bXkWhleouZM/XFTl7ANXHHdzHQ=	2015-11-16 15:27:05+00	f	birdview				t	t	2015-11-16 15:25:38+00
3	pbkdf2_sha256$20000$JiywEFfbkICU$61itqZ9BhGNvtqo0+n9PGyZiFjI4F80uKsoFBFst0RI=	2015-11-16 15:29:31.161468+00	f	streetview				t	t	2015-11-16 15:26:01+00
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

SELECT pg_catalog.setval('auth_user_id_seq', 3, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
1	2	19
2	2	20
3	2	21
4	2	25
5	2	26
6	2	27
7	2	28
8	2	29
9	2	30
10	2	31
11	2	32
12	2	33
13	2	34
14	2	35
15	2	36
16	2	37
17	2	38
18	2	39
19	2	40
20	2	41
21	2	42
22	2	43
23	2	44
24	2	45
25	2	46
26	2	47
27	2	48
28	2	49
29	2	50
30	2	51
31	2	52
32	2	53
33	2	54
34	2	55
35	2	56
36	2	57
37	2	58
38	2	59
39	2	60
40	2	61
41	2	62
42	2	63
43	2	64
44	2	65
45	2	66
46	3	19
47	3	20
48	3	21
49	3	25
50	3	26
51	3	27
52	3	28
53	3	29
54	3	30
55	3	31
56	3	32
57	3	33
58	3	34
59	3	35
60	3	36
61	3	37
62	3	38
63	3	39
64	3	40
65	3	41
66	3	42
67	3	43
68	3	44
69	3	45
70	3	46
71	3	47
72	3	48
73	3	49
74	3	50
75	3	51
76	3	52
77	3	53
78	3	54
79	3	55
80	3	56
81	3	57
82	3	58
83	3	59
84	3	60
85	3	61
86	3	62
87	3	63
88	3	64
89	3	65
90	3	66
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 90, true);


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY authtoken_token (key, created, user_id) FROM stdin;
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
1	2015-11-14 00:38:28.36814+00	1	Coniferous (ARCH)	1		21	1
2	2015-11-14 00:39:00.501421+00	2	Coniferous (Construction)	1		21	1
3	2015-11-14 00:39:46.476796+00	3	Coniferous (Game)	1		21	1
4	2015-11-14 00:40:12.878678+00	4	Coniferous (Hybrid)	1		21	1
5	2015-11-14 00:40:43.609349+00	5	Deciduous (ARCH)	1		21	1
6	2015-11-14 00:41:16.001124+00	6	Deciduous (Construction)	1		21	1
7	2015-11-14 00:41:43.930842+00	7	Deciduous (Game)	1		21	1
8	2015-11-14 00:42:08.700504+00	8	Deciduous (Hybrid)	1		21	1
9	2015-11-14 00:42:36.219151+00	9	Grass (ARCH)	1		21	1
10	2015-11-14 00:43:06.732921+00	10	Grass (Construction)	1		21	1
11	2015-11-14 00:43:52.560793+00	11	Grass (Game)	1		21	1
12	2015-11-14 00:44:20.37621+00	12	Marsh (Construction)	1		21	1
13	2015-11-14 00:44:51.474306+00	13	Rain Garden (ARCH)	1		21	1
14	2015-11-14 00:45:25.200324+00	14	Rain Garden (Construction)	1		21	1
15	2015-11-14 00:46:19.517497+00	15	Rain Garden (Game)	1		21	1
16	2015-11-14 00:47:52.717358+00	1	Fenced Rain Garden	1		22	1
17	2015-11-14 00:48:45.470662+00	2	Fenced and Flowered Rain Garden	1		22	1
18	2015-11-14 00:49:38.919725+00	3	Flowered Rain Garden	1		22	1
19	2015-11-14 00:50:08.755624+00	4	Grey Oak	1		22	1
20	2015-11-14 00:50:32.770347+00	5	River Birch	1		22	1
21	2015-11-14 00:51:15.41609+00	6	Simple Rain Garden	1		22	1
22	2015-11-14 00:51:47.079459+00	7	Tussock Sedge	1		22	1
23	2015-11-14 00:52:56.908652+00	1	clay	1		20	1
24	2015-11-14 00:53:01.201402+00	2	sand	1		20	1
25	2015-11-14 00:53:09.375813+00	3	loamy-sand	1		20	1
26	2015-11-14 00:53:16.946238+00	4	sandy-loam	1		20	1
27	2015-11-14 00:53:21.987425+00	5	rock	1		20	1
28	2015-11-14 00:53:25.727023+00	6	water	1		20	1
29	2015-11-14 00:53:31.153505+00	7	silt-clay	1		20	1
30	2015-11-14 00:53:38.512707+00	8	silty-clay-loam	1		20	1
31	2015-11-14 00:53:46.375189+00	9	sandy-clay	1		20	1
32	2015-11-14 00:53:53.68482+00	10	sandy-clay-loam	1		20	1
33	2015-11-14 00:53:59.25007+00	11	clay-loam	1		20	1
34	2015-11-14 00:54:04.373709+00	12	silt	1		20	1
35	2015-11-14 00:54:09.073254+00	13	silt-loam	1		20	1
36	2015-11-14 00:54:15.163465+00	14	loam	1		20	1
37	2015-11-14 00:54:50.9147+00	1	evergreen	1		19	1
38	2015-11-14 00:55:00.982634+00	2	eucalypt	1		19	1
39	2015-11-14 00:55:10.820529+00	3	deciduous	1		19	1
40	2015-11-14 00:55:19.819163+00	4	deciduous_BES	1		19	1
41	2015-11-14 00:55:25.698538+00	5	grass	1		19	1
42	2015-11-14 00:55:32.798342+00	6	lawn_10cm	1		19	1
43	2015-11-14 00:55:40.523124+00	7	lawn_5cm	1		19	1
44	2015-11-14 00:55:47.456677+00	8	lawn_2cm	1		19	1
45	2015-11-14 00:55:52.808859+00	9	nonveg	1		19	1
46	2015-11-14 00:58:35.644611+00	1	Fenced Rain Garden	1		18	1
47	2015-11-14 00:59:15.641617+00	2	Tree element	1		18	1
48	2015-11-14 00:59:57.052724+00	1	Deciduous tree	1		17	1
49	2015-11-14 01:00:23.266351+00	2	Rain garden	1		17	1
50	2015-11-14 01:00:48.237346+00	1	Baltimore	1		16	1
51	2015-11-14 01:02:17.75261+00	1	Region object	1		9	1
52	2015-11-14 01:02:57.012155+00	1	Dead Run 5, Baltimore County, MD	1		10	1
53	2015-11-14 01:07:03.587778+00	1	Dead Run 5, Baltimore County, MD	2	Changed boundary.	10	1
54	2015-11-16 15:25:38.09665+00	2	birdview	1		4	1
55	2015-11-16 15:26:01.302197+00	3	streetview	1		4	1
56	2015-11-16 15:26:21.035887+00	2	birdview	2	Changed is_staff.	4	1
57	2015-11-16 15:26:27.476495+00	3	streetview	2	Changed is_staff.	4	1
58	2015-11-16 15:28:12.501399+00	2	birdview	2	Changed user_permissions and last_login.	4	1
59	2015-11-16 15:28:45.422267+00	3	streetview	2	Changed user_permissions.	4	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 59, true);


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
9	gidb	region
10	gidb	watershed
11	gidb	watershedboundary
12	gidb	giscenario
13	gidb	giinstance
14	gidb	humanprefimage
15	gidb	giveggrowthstate
16	gidb	templatesforecoclimate
17	gidb	gitemplate
18	gidb	gielement
19	gidb	rhessysstratumtype
20	gidb	rhessyssoiltype
21	gidb	representation2d
22	gidb	representation3d
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 22, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-11-13 21:04:20.706822+00
2	auth	0001_initial	2015-11-13 21:04:20.776454+00
3	admin	0001_initial	2015-11-13 21:04:20.80027+00
4	contenttypes	0002_remove_content_type_name	2015-11-13 21:04:20.838162+00
5	auth	0002_alter_permission_name_max_length	2015-11-13 21:04:20.852628+00
6	auth	0003_alter_user_email_max_length	2015-11-13 21:04:20.866661+00
7	auth	0004_alter_user_username_opts	2015-11-13 21:04:20.881477+00
8	auth	0005_alter_user_last_login_null	2015-11-13 21:04:20.895379+00
9	auth	0006_require_contenttypes_0002	2015-11-13 21:04:20.897266+00
10	authtoken	0001_initial	2015-11-13 21:04:20.917706+00
11	sessions	0001_initial	2015-11-13 21:04:20.930751+00
12	gidb	0001_initial	2015-11-13 21:08:42.237158+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 12, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
otv2w3ao3u60rcyxjfnquk6aqfljojjf	ZmVkMzFmM2Q5ZTNmOWMwYjEwZDMxNWUzYTdmMGY4NWUxN2U0ZWU1ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjA1ZTk0YmJiNzEzODdkYjYyYTI1YTAwMDYwYzE0NWMxMDc4ODYzN2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-11-27 21:07:43.580443+00
1gw428jviovu53v9eeudffx1ghskmw1o	ZmVkMzFmM2Q5ZTNmOWMwYjEwZDMxNWUzYTdmMGY4NWUxN2U0ZWU1ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjA1ZTk0YmJiNzEzODdkYjYyYTI1YTAwMDYwYzE0NWMxMDc4ODYzN2IiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-11-28 00:33:37.329142+00
yggdc0nfkq5iunue7jix5x34knuzja23	NDYxYWY0ODUxZjczZTFhNTU2ZmU5MmQ1ZTAyMzYxMTEyZTlkOTA4YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImE4YmIxNWJlZjMzMjI1NmZmNmZjOGEzMTJkYTM1MjZmYjU4YzZlNmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2015-11-30 15:28:07.804744+00
884cx2xefrfqwpelsffr237fgce385oq	MjhlZTAyNzFhNTQwNGNjZTE4MmJkOWFhYWM4MjJjOWYyYTA5YzgyZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImVlNzgzYzRlMmNlMjgxOWIyNTEwODdjNmM1MjQyMWE1NTdmMmVhZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2015-11-30 15:29:31.163465+00
\.


--
-- Data for Name: gidb_gielement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_gielement (id, name, major_axis, minor_axis, model_3d_id, model_planview_id, soil_type_id, stratum_type_id) FROM stdin;
1	Fenced Rain Garden	3.00000000000000008e-05	3.00000000000000008e-05	1	15	4	3
2	Tree element	2.00000000000000016e-05	2.00000000000000016e-05	4	7	\N	3
\.


--
-- Name: gidb_gielement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_gielement_id_seq', 2, true);


--
-- Data for Name: gidb_giinstance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_giinstance (id, placement_poly, scenario_id, template_id, watershed_id) FROM stdin;
\.


--
-- Name: gidb_giinstance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_giinstance_id_seq', 1, false);


--
-- Data for Name: gidb_giscenario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_giscenario (id, name) FROM stdin;
\.


--
-- Name: gidb_giscenario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_giscenario_id_seq', 1, false);


--
-- Data for Name: gidb_gitemplate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_gitemplate (id, name, model_3d_id, model_planview_id) FROM stdin;
1	Deciduous tree	4	7
2	Rain garden	1	15
\.


--
-- Data for Name: gidb_gitemplate_gi_elements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_gitemplate_gi_elements (id, gitemplate_id, gielement_id) FROM stdin;
1	1	2
2	2	1
\.


--
-- Name: gidb_gitemplate_gi_elements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_gitemplate_gi_elements_id_seq', 2, true);


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
-- Data for Name: gidb_region; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_region (id, name) FROM stdin;
1	Baltimore, MD
\.


--
-- Name: gidb_region_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_region_id_seq', 1, true);


--
-- Data for Name: gidb_representation2d; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_representation2d (id, name, rep_file, rep_thumbnail) FROM stdin;
1	Coniferous (ARCH)	./NLE_Jj0QsjR.png	./nle1_NCp328c.png
2	Coniferous (Construction)	./ConiferSimple07282015_TezDwaM.png	./conifersimple072820151_5SoAnbI.png
3	Coniferous (Game)	./GamingTree_LCD_UHRRWKw.png	./gamingtree_lcd1_8UF6RAF.png
4	Coniferous (Hybrid)	./Conifer07282015_tKYgafs.png	./conifer072820151_qed17yy.png
5	Deciduous (ARCH)	./BLD_DIKNW5v_2kXXQ6n.png	./bld1_SSnb4zF.png
6	Deciduous (Construction)	./Trees07282015_oQPw1PO.png	./trees072820151_wExldab.png
7	Deciduous (Game)	./GamingTree2_LCD_8ADMWAG.png	./gamingtree2_lcd1_BLc39Fn.png
8	Deciduous (Hybrid)	./Decid07282018_QXHcB8X.png	./decid072820181_hn1frjB.png
9	Grass (ARCH)	./Grass_fIX0VgT.png	./grass1_uZlZcor.png
10	Grass (Construction)	./Grass07282015_ALFsne1.png	./grass072820151_wkg7oGI.png
11	Grass (Game)	./GamingGrass_LCD_dG1Usy9.png	./gaminggrass_lcd1_zqrbH36.png
12	Marsh (Construction)	./Marsh07282015_G55Q7E9.png	./marsh072820151_Qi7HXZ7.png
13	Rain Garden (ARCH)	./Rain_Som86Xw.png	./rain1_xKDCnuE.png
14	Rain Garden (Construction)	./rain07282015_fJwV97N.png	./rain07282015_pNilGwu_YCHYjEy.png
15	Rain Garden (Game)	./GamingRain_LCD_zcfFxhG_r4aqIPt.png	./gamingrain_lcd1_AtQ7tgf.png
\.


--
-- Name: gidb_representation2d_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_representation2d_id_seq', 15, true);


--
-- Data for Name: gidb_representation3d; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_representation3d (id, name, rep_file, rep_thumbnail) FROM stdin;
1	Fenced Rain Garden	./Rain_Fence_RLMoa4N.DAE	./Rain_Fence_Thumbnail_14WrVCT.png
2	Fenced and Flowered Rain Garden	./RainFlowerFence_Npbd6Vv.DAE	./Rain_tall_Flower_Thumbnail_aaDbE9k.png
3	Flowered Rain Garden	./Raingarden_Flower07292015_1poly_FOxcYof.max	./Rain_tall_Flower_Thumbnail_VFzVw4i.png
4	Grey Oak	./mesh_a4tslDu_f77JDX1.DAE	./thumbnail_vUm58U1_h8V6lSc.png
5	River Birch	./mesh_etFNwef.DAE	./thumbnail_XLFRStG.png
6	Simple Rain Garden	./RainGarden072920151Poly_inYfwWI.DAE	./Rain_NoGrass_oUtyQVa.png
7	Tussock Sedge	./mesh_Yg5lF8J_mXNKqOP.DAE	./thumbnail_gfEc66y_GKPUv4C.png
\.


--
-- Name: gidb_representation3d_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_representation3d_id_seq', 7, true);


--
-- Data for Name: gidb_rhessyssoiltype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_rhessyssoiltype (id, name, rhessys_default_id) FROM stdin;
1	clay	1
2	sand	10
3	loamy-sand	11
4	sandy-loam	12
5	rock	13
6	water	14
7	silt-clay	2
8	silty-clay-loam	3
9	sandy-clay	4
10	sandy-clay-loam	5
11	clay-loam	6
12	silt	7
13	silt-loam	8
14	loam	9
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
2	eucalypt	11
3	deciduous	2
4	deciduous_BES	21
5	grass	3
6	lawn_10cm	31
7	lawn_5cm	32
8	lawn_2cm	33
9	nonveg	4
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

COPY gidb_watershed (id, name, model_url, boundary_id, region_id, template_menu_id) FROM stdin;
1	Dead Run 5, Baltimore County, MD	https://www.hydroshare.org/django_irods/download/6dbb0dfb8f3a498881e4de428cb1587c/data/contents/DR5_3m_nonburned_DEM_rain_duration_DEM_float_lctest_raingarden.zip	1	1	1
\.


--
-- Name: gidb_watershed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_watershed_id_seq', 1, true);


--
-- Data for Name: gidb_watershedboundary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gidb_watershedboundary (id, name, boundary) FROM stdin;
1	Dead Run 5	0103000020E610000001000000460400007BC27295393053C0407585D4DFA54340761939AF373053C06B857AD2DFA5434029DB90AE373053C006AE474CE1A54340A4FC73BB363053C07B1E424BE1A543400F451CBC363053C0EEF574D1DFA543405254C2562B3053C0C1712DC5DFA5434011166B572B3053C07749604BDEA54340E9823171293053C01B825349DEA54340B62E8372293053C0A730B955DBA543407E79667F283053C07AB5B254DBA543404D39B880283053C0BD621861D8A5434065F77E9A263053C06B3D0B5FD8A543404903D699263053C0DF66D8D8D9A5434071AD9CB3243053C09202CBD6D9A54340969C4AB2243053C0405465CADCA54340795FF4D8213053C0A0C750C7DCA5434045869DD9213053C01E9F834DDBA543406BD180E6203053C030A67C4CDBA543404A022AE7203053C0587DAFD2D9A5434006AD46DA213053C03976B6D3D9A54340ED2042DC213053C0A5F94E66D5A54340899425E9203053C0E7004865D5A543402DC5CEE9203053C0BED67AEBD3A54340DE3E79101E3053C04C8E65E8D3A54340E0EFCF0F1E3053C055B83262D5A54340B863B31C1D3053C0B1802B61D5A54340D3BC5C1D1D3053C0BB565EE7D3A54340E13A402A1C3053C06A0F57E6D3A543400E9EE92A1C3053C01DE5896CD2A543404726CD371B3053C0238E826BD2A54340FDB823371B3053C066B84FE5D3A543409C33CE5D183053C0F85439E2D3A5434040BF775E183053C0E02A6C68D2A5434014165BDF0E3053C0CA8C1D5ED2A54340CE0605E00E3053C0DD6250E4D0A54340F099E8EC0D3053C0D42F48E3D0A54340169F3EEC0D3053C0B959155DD2A5434032B105060C3053C068C4045BD2A5434046C0AF060C3053C09F9A37E1D0A54340905393130B3053C06F382FE0D0A54340B56C3D140B3053C0580E6266CFA543403145E83A083053C097894863CFA54340A27C923B083053C0455F7BE9CDA543405B247648073053C04DBE72E8CDA54340DA652049073053C0B993A56ECCA54340B9170456063053C013E39C6DCCA543404563AE56063053C035B8CFF3CAA54340B95DB13EF52F53C0C8EB28E1CAA54340525F5C3FF52F53C085C15B67C9A5434034687AA6ED2F53C005450B5FC9A54340A8BA25A7ED2F53C0D31A3EE5C7A543403E1DD1CDEA2F53C0EBE81EE2C7A5434071AC25CDEA2F53C0F312EC5BC9A54340FB6D09DAE92F53C0798DE15AC9A54340E4E8B4DAE92F53C07E6314E1C7A54340244C6001E72F53C0F474F4DDC7A5434058E50B02E72F53C0D24A2764C6A54340BC962A69DF2F53C0BD70CF5BC6A54340CE80D669DF2F53C0BD4602E2C4A5434099228290DC2F53C0C151E0DEC4A54340F32A2E91DC2F53C097271365C3A5434093C1A1D1D72F53C01F55D95FC3A5434072FC4DD2D72F53C0E02A0CE6C1A54340B1F131DFD62F53C04A6B00E5C1A543409F36DEDFD62F53C0C140336BC0A543404337FAD2D72F53C048003F6CC0A54340B8AC52D4D72F53C028AAA478BDA5434042996EC7D82F53C0E359B079BDA54340B12A73C9D82F53C0F9D5480CB9A543407E5C57D6D72F53C072263D0BB9A54340C02EB9DBD72F53C07EB8D33CADA5434099B19DE8D62F53C0ACF9C73BADA54340C0F549E9D62F53C07CCAFAC1ABA54340C00F1303D52F53C0CD1DE3BFABA5434055C06B04D52F53C095BE48CCA8A54340B1615011D42F53C0C5D03CCBA8A5434004C4FC11D42F53C0C4A06F51A7A54340876FE11ED32F53C048A36350A7A54340E7DB8D1FD32F53C0F87296D6A5A543409891722CD22F53C0D2658AD5A5A5434008081F2DD22F53C03335BD5BA4A54340D6C7033AD12F53C06318B15AA4A543404B475739D12F53C0F0487ED4A5A5434017FD3B46D02F53C05C1C72D3A5A543405D728F45D02F53C0834C3F4DA7A54340DCC9585FCE2F53C010C4264BA7A54340C88BFF5DCE2F53C02223C13EAAA543406923E46ACD2F53C038C7B43DAAA543402D7A376ACD2F53C034F681B7ABA54340BB071C77CC2F53C0818A75B6ABA5434054546F76CC2F53C010B94230ADA54340D5D75383CB2F53C0993D362FADA54340441AA782CB2F53C0C36B03A9AEA54340AB938B8FCA2F53C084E0F6A7AEA543401D04328ECA2F53C0D03B919BB1A543406369169BC92F53C0BEA0849AB1A5434062C5BC99C92F53C088FA1E8EB4A543407D16A1A6C82F53C09D4F128DB4A54340483AF4A5C82F53C0FC7BDF06B6A543404A81D8B2C72F53C04FC1D205B6A54340EA9A2BB2C72F53C04CED9F7FB7A54340F114F4CBC52F53C0A648867DB7A54340491A47CBC52F53C0257453F7B8A54340484D2BD8C42F53C0308A46F6B8A543409534CAD4C42F53C07B5E4857C0A54340FD34AEE1C32F53C082643B56C0A54340C62501E1C32F53C0F38D08D0C1A543402C1CE5EDC22F53C03984FBCEC1A5434055E98AECC22F53C0E4D595C2C4A5434093CB6EF9C12F53C053BC88C1C4A5434023EF1BFAC12F53C0BC93BB47C3A543408CDBFF06C12F53C07D6AAE46C3A543402D09AD07C12F53C09641E1CCC1A54340B0FF9014C02F53C0B208D4CBC1A543405E373E15C02F53C07EDF0652C0A5434021382222BF2F53C0EE96F950C0A54340DF79CF22BF2F53C07F6D2CD7BEA543406B0080BDB32F53C0443D88CABEA543407CBB2DBEB32F53C02414BB50BDA54340F6E6F5D7B12F53C0CBDA9E4EBDA5434032B6A3D8B12F53C075B1D1D4BBA5434012F66BF2AF2F53C05939B5D2BBA543407AD919F3AF2F53C0C40FE858BAA54340A503FEFFAE2F53C028BCD957BAA543401CF1AB00AF2F53C056920CDEB8A543407125900DAE2F53C0122FFEDCB8A54340DE2DE20CAE2F53C0DE58CB56BAA543401858C619AD2F53C0D9E5BC55BAA54340A84A0415AD2F53C09A0059AAC4A54340302EE821AC2F53C0757D4AA9C4A543403F09DE1FAC2F53C07CF1B116C9A543407CCEC12CAB2F53C06F5EA315C9A54340F1B7132CAB2F53C05C84708FCAA54340CFFC2F1FAC2F53C076177F90CAA54340CFBDC91BAC2F53C067D080F1D1A543405E46AD28AB2F53C00B3D72F0D1A543408B01A326AB2F53C0DCA7D95DD6A54340D46B8633AA2F53C09A04CB5CD6A543406F292A32AA2F53C0FD496550D9A5434064D34625AB2F53C05CED7351D9A5434037BC9824AB2F53C0A60F41CBDAA5434025087C31AA2F53C0396C32CADAA54340D1E6CD30AA2F53C0148EFF43DCA54340896A944AA82F53C0F617E241DCA543403BFF3749A82F53C0745A7C35DFA54340BC5AFE62A62F53C03DA55E33DFA54340C5105062A62F53C0E9C52BADE0A543408434336FA52F53C0A8D31CACE0A5434060E0846EA52F53C0DFF3E925E2A5434013FA677BA42F53C0DEF1DA24E2A543405458167CA42F53C0B1D10DABE0A5434070544CD69D2F53C0BF0BA3A3E0A5434072F9FAD69D2F53C093EBD529DFA54340C027DEE39C2F53C0E66BC628DFA54340CFD68CE49C2F53C0824BF9AEDDA543409D80360B9A2F53C0556ECAABDDA54340F84DE50B9A2F53C0C04DFD31DCA54340A2D3AB25982F53C01FC1DD2FDCA5434027B55A26982F53C059A010B6DAA5434035023E33972F53C086C200B5DAA54340C9EDEC33972F53C06AA1333BD9A54340FC44D040962F53C0ECB3233AD9A543409C3A7F41962F53C08C9256C0D7A54340039C624E952F53C0629546BFD7A54340B59B114F952F53C0C4737945D6A543404707F55B942F53C0F1666944D6A543400711A45C942F53C00D459CCAD4A54340C7868769932F53C08D288CC9D4A54340959A366A932F53C05806BF4FD3A543406C9AFD83912F53C0529E9E4DD3A543403F00268A912F53C0805C6805C6A543404DDB0997902F53C06A115804C6A543408B97329D902F53C008B521BCB8A5434073614E90912F53C09BFF31BDB8A5434051AFAC91912F53C064AE97C9B5A543400D65C884922F53C026E9A7CAB5A54340C8817785922F53C0F8BFDA50B4A543402BD65B92912F53C04885CA4FB4A543403A318498912F53C04B049407A7A54340B4E068A5902F53C062BA8306A7A54340B47176A7902F53C029341C99A2A54340E5A3919A912F53C0E97D2C9AA2A5434001CA409B912F53C077505F20A1A54340EDA125A8902F53C0CB064F1FA1A543403E62E2AA902F53C0DC4D1A389BA54340DD61FD9D912F53C054972A399BA5434076AD5B9F912F53C0C038904598A5434010C240AC902F53C06BEF7F4498A543405E514EAE902F53C0305F18D793A54340638433BB8F2F53C0490608D693A54340853141BD8F2F53C03E73A0688FA54340E08226CA8E2F53C0C90A90678FA543403E0A85CB8E2F53C030A7F5738CA54340EF6F6AD88D2F53C01F2FE5728CA543404C0BC9D98D2F53C056CA4A7F89A543406191E3CC8E2F53C045425B8089A54340DCD492CD8E2F53C0560F8E0688A54340F150ADC08F2F53C081779E0788A54340D6356AC38F2F53C015A8692082A5434039E24FD08E2F53C02240591F82A54340ADEE0CD38E2F53C09A6B24387CA54340A2C3F2DF8D2F53C026F413377CA54340B6AA00E28D2F53C06651ACC977A543406BB71AD58E2F53C0AEC8BCCA77A5434037FAC9D58E2F53C0B791EF5076A54340A0F7AFE28D2F53C0851ADF4F76A5434007DEBDE48D2F53C0C07377E271A5434047C2D7D78E2F53C0CCEA87E371A54340D90487D88E2F53C07BB2BA6970A54340B72A6DE58D2F53C07D3BAA6870A5434053DA96EB8D2F53C03D32732063A543404C5B7DF88C2F53C00BAC621F63A5434086B12CF98C2F53C0867095A561A54340963C13068C2F53C0A3DA84A461A54340465D21088C2F53C036261D375DA5434063B0EE218A2F53C0ACCBFB345DA5434002994D238A2F53C0FF5161415AA54340DF563430892F53C03E8D50405AA54340E84FF232892F53C007961B5954A543403936D93F882F53C0CAC10A5854A5434073BE8840882F53C034833DDE52A5434002AF6F4D872F53C04E9F2CDD52A5434085D3CE4E872F53C03E2192E94FA5434059D8B55B862F53C0BE2D81E84FA54340E010155D862F53C075AEE6F44CA54340545CCA83832F53C0F575B3F14CA54340C2A11A83832F53C09CB5806B4EA543401AC0E89C812F53C03C415E694EA54340532CF89E812F53C0AA81F6FB49A54340F459DFAB802F53C01230E5FA49A5434092BC9EAE802F53C03A2CB01344A54340AA1286BB7F2F53C022CB9E1244A543408F61A5BF7F2F53C0A93BCF373BA543406FF48CCC7E2F53C030CBBD363BA54340ADA54CCF7E2F53C077BA884F35A543400F6134DC7D2F53C07F3A774E35A543405757E4DC7D2F53C08BF5A9D433A5434077E2B3F67B2F53C08FC686D233A54340F6D703F67B2F53C0670B544C35A54340CE0ABB1C792F53C0DDCE1E4935A54340E5E10A1C792F53C03C13ECC236A54340DEF6C142762F53C00B49B6BF36A5434090AF1142762F53C0E18C833938A54340B6A6C868732F53C00D354D3638A5434002411868732F53C061781AB039A543407C7CE781712F53C01EEFF5AD39A5434080023781712F53C0FE31C3273BA543403C961E8E702F53C0B8D5B0263BA54340DE8DBD8C702F53C06D5A4B1A3EA543405C0ED67F712F53C0CEB65D1B3EA543406225147D712F53C05DBC920244A5434072CE2C70722F53C04109A50344A54340A94AA96A722F53C0D6040FD24FA543409F44C25D732F53C0734221D34FA543405377615C732F53C02ABEBBC652A5434096857A4F742F53C02EECCDC752A543404ACC194E742F53C09E6668BB55A543406387E767722F53C0A6FA43B955A543406E163767722F53C03A37113357A54340E4E91D74712F53C09DE9FE3157A54340C06E6D73712F53C0DD25CCAB58A54340985EEFB36C2F53C0A7B56FA658A54340D7B03EB36C2F53C045F13C205AA54340ACAFD9E6682F53C0BBE2F11B5AA54340E1858AE7682F53C058A724A258A543403E780C28642F53C0BD73C59C58A54340776F5B27642F53C0D9AE92165AA54340D1EF2841622F53C00D2C6C145AA54340C0D27740622F53C0B166398E5BA543409CAB12745E2F53C03FA4EB895BA54340096661735E2F53C051DEB8035DA543406917FCA65A2F53C023206AFF5CA5434052A94AA65A2F53C0AC5937795EA543402733E5D9562F53C0BC9FE7745EA543408C9C33D9562F53C0BBD8B4EE5FA5434010351AE6552F53C0E3C2A0ED5FA54340489468E5552F53C072FB6D6761A54340C03F1C0C532F53C0725B316461A5434092806A0B532F53C08393FEDD62A54340E492043F4F2F53C0DEE1ACD962A5434033AB523E4F2F53C068197A5364A5434075A01F584D2F53C023E2505164A543407CA46D574D2F53C031191ECB65A543407CF6207E4A2F53C03BD0DFC765A543401CDC6E7D4A2F53C0CD06AD4167A54340551022A4472F53C030306E3E67A543408DD76FA3472F53C03D663BB868A543400E913CBD452F53C01B3311B668A54340FF438ABC452F53C0BE68DE2F6AA543405C3C3DE3422F53C0FBA59E2C6AA54340E7D08AE2422F53C018DB6BA66BA54340946257FC402F53C08E0A41A46BA54340D5E2A4FB402F53C0333F0E1E6DA54340639F57223E2F53C04A90CD1A6DA543403E01A5213E2F53C06BC49A946EA54340F96A713B3C2F53C073566F926EA5434089B8BE3A3C2F53C0288A3C0C70A543406DE3A4473B2F53C089BB260B70A54340D026F2463B2F53C0E2EEF38471A543406489A46D382F53C07D24B28171A5434052D33E6C382F53C0C9894C7574A543409813BDAC332F53C02DA8DD6F74A543403A2170AD332F53C0FE7510F672A543402E0A8AA0342F53C07DC226F772A54340AB1756A3342F53C02DF6F10F6DA543402F573CB0332F53C0E7A9DB0E6DA54340087F55B2332F53C0530D74A168A5434001DD3BBF322F53C07FB15DA068A54340830BA2C0322F53C09647C3AC65A54340C37D88CD312F53C028DCACAB65A5434042C0EECE312F53C0FE7012B862A54340CB46D5DB302F53C0F7F5FBB662A54340127288DC302F53C0EEBF2E3D61A54340BC026FE92F2F53C03E35183C61A54340103822EA2F2F53C0F6FE4AC25FA54340860255D0312F53C0840478C45FA54340922308D1312F53C0B9CDAA4A5EA54340C17E21C4322F53C0E338C14B5EA54340A295D4C4322F53C0C001F4D15CA543403C89209E352F53C0A9E436D55CA54340B581D39E352F53C00BAD695B5BA543402E100685372F53C0A0F5955D5BA543405EF4B885372F53C08BBDC8E359A543408F31D278382F53C02FCADEE459A54340930B8579382F53C0B591116B58A5434080D86B86372F53C01F85FB6958A5434097A0D187372F53C04213617655A54340BD81B894362F53C011F74A7555A54340D06F6B95362F53C0B4BD7DFB53A54340345B52A2352F53C0D79167FA53A54340555305A3352F53C037589A8052A54340E248ECAF342F53C0B41C847F52A54340114B9FB0342F53C0C0E2B60551A54340BC4A86BD332F53C09097A00451A54340F85639BE332F53C05D5DD38A4FA54340E36020CB322F53C08702BD894FA543402D77D3CB322F53C012C8EF0F4EA543403E8BBAD8312F53C0905DD90E4EA54340672C3ADC312F53C07A34D7AD46A54340C2E552CF322F53C0B49EEDAE46A54340B4FB05D0322F53C03962203545A543406B5A37B6342F53C066074D3745A54340B66003B9342F53C0C01118503FA54340BED9EAC5332F53C03DC7014F3FA54340C3F050C7332F53C08C4A675B3CA54340267E38D4322F53C06FF0505A3CA5434094BE51D6322F53C00433E9EC37A543405C6A39E3312F53C05BC9D2EB37A54340D489ECE3312F53C0A389057236A54340CBABA30A2F2F53C08BEEC16E36A54340FA6DF0092F2F53C0192E8FE837A543402072A7302C2F53C05C054BE537A54340E915F42F2C2F53C06B44185F39A54340195AC3492A2F53C03685EA5C39A543409AE90F492A2F53C0D1C3B7D63AA54340C219DF62282F53C09EC589D43AA54340F9942B62282F53C0D203574E3CA5434031B1FA7B262F53C09BC6284C3CA543401F18477B262F53C05804F6C53DA5434046201695242F53C02888C7C33DA54340EB726294242F53C068C5943D3FA5434049E118BB212F53C00D954E3A3FA54340FCACCCBB212F53C0F65781C03DA543405D31B4C8202F53C025D369BF3DA543401E0768C9202F53C0C1959C453CA54340A8954FD61F2F53C0400185443CA54340777503D71F2F53C094C3B7CA3AA54340CFDC1BCA202F53C00458CFCB3AA543408B5D37CC202F53C0E89C675E36A5434089141FD91F2F53C0A308505D36A543407B92EEDB1F2F53C0B40A1B7630A54340EE71D6E81E2F53C0F166037530A543401D2EF2EA1E2F53C025A59B072CA54340082CDAF71D2F53C0D7F183062CA543406C1F8EF81D2F53C09DB0B68C2AA543406317A6EB1E2F53C0DF63CE8D2AA543409C005AEC1E2F53C04022011429A54340C21242F91D2F53C0126FE91229A543400806F6F91D2F53C0352D1C9927A543405522DE061D2F53C05C6A049827A54340EF1C46081D2F53C0C1E569A424A54340764D2E151C2F53C04C1352A324A54340CA54E2151C2F53C081D0842923A54340251AFA081D2F53C0E8A29C2A23A543404C17AE091D2F53C0C25FCFB021A54340D58DDDEF1E2F53C04CD5FEB221A54340B37691F01E2F53C0BA91313920A54340FF27A9E31F2F53C0D534493A20A54340B1065DE41F2F53C0E1F07BC01EA54340E5AD74D7202F53C0398493C11EA543406A8228D8202F53C0E03FC6471DA543408C1F40CB212F53C06FC3DD481DA543406D7E5BCD212F53C023F475DB18A54340E7802CE71F2F53C09FDD46D918A543404D5FE0E71F2F53C0F997795F17A54340AFEAC8F41E2F53C035F5615E17A5434024D37CF51E2F53C03DAF94E415A54340C26865021E2F53C0CDFC7CE315A54340475B19031E2F53C099B6AF6914A543400DFB01101D2F53C07FF4976814A5434021F469111D2F53C03967FD7411A5434023A8521E1C2F53C08195E57311A54340B3AE061F1C2F53C06C4E18FA0FA54340F26CEF2B1B2F53C0126D00F90FA54340A29E0B2E1B2F53C0FE95988B0BA54340457BF43A1A2F53C016A5808A0BA54340D195A83B1A2F53C0C65CB3100AA543408F7C9148192F53C0325C9B0F0AA54340E457DD47192F53C075A468890BA5434046EE976E162F53C0384420860BA5434048314C6F162F53C027FC520C0AA543405418357C152F53C0B4BC3A0B0AA5434068B29D7D152F53C0AC2BA01707A54340FE9F41B1112F53C01D913E1307A54340882A8DB0112F53C092D90B8D08A5434000FF47D70E2F53C07200C28908A54340236B93D60E2F53C05D488F030AA543407909370A0B2F53C033F52BFF09A543401B4D82090B2F53C09A3CF9780BA54340ECC3253D072F53C0B1ED94740BA543400BDF703C072F53C0863462EE0CA54340CEB25949062F53C075F948ED0CA54340A7D4EF47062F53C0EC85E3E00FA543408513AA6E032F53C0037697DD0FA543405B2E1470032F53C0E3E9FCE90CA5434054D6E589012F53C044E6C9E70CA54340E4F79A8A012F53C0C19FFC6D0BA5434065B46CA4FF2E53C0605DC96B0BA543401EEA21A5FF2E53C0AF16FCF109A5434082D20AB2FE2E53C0F75DE2F009A54340AA9255B1FE2E53C097A4AF6A0BA543408F0CF9E4FA2E53C04B2448660BA5434036A443E4FA2E53C0646A15E00CA54340F674A13EF42E53C042EC5DD80CA543401924573FF42E53C093A6905E0BA543402403404CF32E53C02C31765D0BA5434055BCF54CF32E53C039EBA8E309A543408CA5DE59F22E53C029668EE209A54340CB68945AF22E53C0FA1FC16808A54340954F6674F02E53C0CBE68B6608A5434001271C75F02E53C058A0BEEC06A54340A41BA9B5EB2E53C0987E38E706A543409E073DB4EB2E53C0870AD3DA09A543408998C9F4E62E53C0345F4BD509A54340DD5B13F4E62E53C068A4184F0BA543409F1BE50DE52E53C0B8F1E14C0BA543405ABD510FE52E53C04567475908A5434092B13A1CE42E53C07CF62B5808A54340750CF11CE42E53C0C8B05EDE06A54340D60ADA29E32E53C0543043DD06A54340A9D4462BE32E53C01CA4A8E903A5434056E72F38E22E53C00C148DE803A543404556E638E22E53C086CDBF6E02A543401273CF45E12E53C0C92DA46D02A54340DCDDF247E12E53C04E583C00FEA443401A19DC54E02E53C008A920FFFDA44340059C9255E02E53C045615385FCA44340A4F72096DB2E53C06909C87FFCA4434014ADD796DB2E53C09BC1FA05FBA44340AC9C93BDD82E53C00F6AA602FBA44340E7C8DCBCD82E53C0AAB1737CFCA44340B39A98E3D52E53C071CC1E79FCA443408AA8E1E2D52E53C09313ECF2FDA44340885C9D09D32E53C0AFA096EFFDA44340F64BE608D32E53C04EE76369FFA44340FE7DCF15D22E53C02C4C4768FFA44340D7CDF417D22E53C08977DFFAFAA443407C7D0B0BD32E53C07C12FCFBFAA44340F2EE0C10D32E53C02E165FA7F0A44340DC572303D42E53C0FFA07BA8F0A443403F694805D42E53C0FDC1133BECA44340EBB35EF8D42E53C0EA3C303CECA44340FFAACCF9D42E53C07DA69548E9A4434076E1E2ECD52E53C09111B249E9A4434011C450EED52E53C0A3791756E6A443405FE666E1D62E53C0E8D43357E6A4434084B4D4E2D62E53C09C3B9963E3A44340B1C2EAD5D72E53C00787B564E3A44340919FA1D6D72E53C0C939E8EAE1A44340C8A7CDBCD92E53C057A120EDE1A443405F7084BDD92E53C0AA535373E0A44340756A9AB0DA2E53C0CD6F6F74E0A44340E02851B1DA2E53C0C521A2FADEA44340F21867A4DB2E53C0202EBEFBDEA4434031CD1DA5DB2E53C0A8DFF081DDA443402CB33398DC2E53C03FDC0C83DDA443403D5DEA98DC2E53C0628D3F09DCA443403215167FDE2E53C04D57770BDCA44340FBAACC7FDE2E53C00908AA91DAA443401DF3234CE22E53C0F7DE1896DAA443406360DA4CE22E53C0268F4B1CD9A443408FF00533E42E53C02E9C821ED9A443408D49BC33E42E53C0DE4BB5A4D7A44340F183FD0CE72E53C0626907A8D7A443408ABEB30DE72E53C08B183A2ED6A4434026DBF4E6E92E53C064A88B31D6A4434056F7AAE7E92E53C01A57BEB7D4A4434023F6EBC0EC2E53C050590FBBD4A44340F0F3A1C1EC2E53C081074241D3A44340EFD4E29AEF2E53C00D7C9244D3A4434055B4989BEF2E53C0C329C5CAD1A4434008E1C381F12E53C0187EFACCD1A4434027AC7982F12E53C04B2B2D53D0A4434085388F75F22E53C0D2BD4754D0A4434077F94476F22E53C0A26A7ADACEA44340B68ADB1BF92E53C0D4B332E2CEA44340D204911CF92E53C0F35F6568CDA4434005F6BB02FB2E53C08D79996ACDA4434098C12604FB2E53C07DD0FE76CAA443400C263CF7FB2E53C099C51878CAA44340A181F1F7FB2E53C08B704BFEC8A443401BDC06EBFC2E53C0E05565FFC8A44340842DBCEBFC2E53C06E009885C7A4434049CEE6D1FE2E53C0D49BCB87C7A44340690B9CD2FE2E53C0EA45FE0DC6A44340D751B1C5FF2E53C0FBFB170FC6A44340CB8466C6FF2E53C0A8A54A95C4A44340F339A69F022F53C05D699798C4A44340834E5BA0022F53C09712CA1EC3A44340211C46AD012F53C0C88BB01DC3A443404F59B0AE012F53C04CDD152AC0A443404B3B9BBB002F53C0E846FC28C0A44340E66350BC002F53C033EF2EAFBEA44340732811E3FD2E53C0E3CDE1ABBEA44340A843E6E5FD2E53C0816CACC4B8A443406B58D1F2FC2E53C0829792C3B8A443408B4AF1F4FC2E53C03E8B2A56B4A4434075B12FCEFF2E53C082DA7759B4A44340E6159ACFFF2E53C09425DD65B1A44340C0CEAEC2002F53C01CCBF666B1A44340C7F663C3002F53C0217029EDAFA443408510E075062F53C0E806C2F3AFA44340D1FB9476062F53C037ABF479AEA44340D5A0A969072F53C098E20D7BAEA44340F6815E6A072F53C082864001ADA4434049EEB0360B2F53C0A7C6A405ADA44340E6A665370B2F53C0046AD78BABA4434036C98E1D0D2F53C0A42B098EABA44340D324DA1C0D2F53C06788D607ADA443402AC0EE0F0E2F53C0B451EF08ADA44340715AA3100E2F53C0E3F4218FABA443401C7DCCF60F2F53C038585391ABA44340170381F70F2F53C0FEFA8517AAA44340618A95EA102F53C003959E18AAA4434035064AEB102F53C05A37D19EA8A443406F835EDE112F53C09BC1E99FA8A4434015F512DF112F53C09A631C26A7A44340436827D2122F53C011DE3427A7A44340869E44D4122F53C0D1C1CCB9A2A44340AE4930E1112F53C08247B4B8A2A44340722C99E2112F53C0798819C59FA44340E2EB84EF102F53C093FE00C49FA44340F15DA2F1102F53C0ADDD98569BA44340D5C4DECA132F53C0B94BE2599BA44340E0672ACA132F53C08DACAFD39CA44340521A7B96172F53C0C6B810D89CA44340D54E2F97172F53C0BA57435E9BA443402294577D192F53C0687F73609BA443405CB40B7E192F53C0F71DA6E699A443400FCD1F711A2F53C02A1ABEE799A443401CE3D3711A2F53C04BB8F06D98A44340B4F1E7641B2F53C0BCA4086F98A4434096FD9B651B2F53C074423BF596A44340C206C44B1D2F53C00DEC6AF796A44340E5F52B4D1D2F53C05826D00394A4434051E63F401E2F53C076E3E70494A44340B0D3F3401E2F53C00F801A8B92A4434060EDDF4D1D2F53C000C3028A92A44340CCE4934E1D2F53C0465F351091A4434001C1A7411E2F53C0471C4D1191A4434042AE5B421E2F53C030B87F978FA4434038F7AA0E222F53C0BC0EDE9B8FA443406A32F70D222F53C00D73AB1591A44340E90E0B01232F53C073E1C21691A443409AC9BE01232F53C0137DF59C8FA4434038F7AA0E222F53C0BC0EDE9B8FA44340DD097A11222F53C02D7AA8B489A44340E207B5EA242F53C05E95EEB789A443403EFACFEC242F53C0F161864A85A443408D6EBCF9232F53C06F136F4985A44340B7CE23FB232F53C0F844D45582A443403C571008232F53C0DCE6BC5482A4434064CB7709232F53C02C1722617FA443403D686416222F53C073A90A607FA4434065F0CB17222F53C08FD86F6C7CA44340543FDF0A232F53C02546876D7CA4434033F9920B232F53C029DDB9F37AA443400C83B9F1242F53C01689E8F57AA44340A4286DF2242F53C09F1F1B7C79A443407DD9A6CB272F53C06FAB607F79A44340B0605ACC272F53C07841930578A44340A2916DBF282F53C09650AA0678A443408B14BABE282F53C096BA778079A44340A74FCDB1292F53C00CBA8E8179A443409DDC19B1292F53C0D3235CFB7AA44340476740972B2F53C0ACF389FD7AA4434069088D962B2F53C0285D57777CA44340E957A0892C2F53C0982D6E787CA443401803ED882C2F53C0D4963BF27DA443408EB6136F2E2F53C09A0869F47DA44340E875606E2E2F53C0A871366E7FA44340CFD973612F2F53C002134D6F7FA4434038A3C0602F2F53C0CB7B1AE980A443404B11D453302F53C0820D31EA80A44340C1E42053302F53C0F875FE6382A443400A5D3446312F53C004F8146582A443408D3A8145312F53C03A60E2DE83A44340713FA82B332F53C048350FE183A443401F31F52A332F53C03F9DDC5A85A44340C0BD081E342F53C046F0F25B85A4434079B9551D342F53C00458C0D586A443405B506910352F53C05B9BD6D686A443402356B60F352F53C0D102A45088A443402698DDF5362F53C0735AD05288A4434018B22AF5362F53C0A9C19DCC89A443405E5D3EE8372F53C0F7D5B3CD89A443405F818BE7372F53C0F43C81478BA44340C2369FDA382F53C09B4197488BA44340D164ECD9382F53C046A864C28CA4434006E413C03A2F53C0888290C48CA443403F2661BF3A2F53C0F9E85D3E8EA4434008F074B23B2F53C095BE733F8EA4434057BE3FB53B2F53C084223E5888A44340031D2CC23A2F53C0264D285788A44340D812F7C43A2F53C0FCABF26F82A44340BA8B0AB83B2F53C02081087182A4434013F26FB93B2F53C072AE6D7D7FA44340C85683AC3C2F53C0C473837E7FA44340C0FF35AD3C2F53C0DD09B6047EA443406B5A49A03D2F53C068BFCB057EA4434039F9FBA03D2F53C02855FE8B7CA44340E6490F943E2F53C0E8FA138D7CA4434088DEC1943E2F53C0409046137BA443401225D5873F2F53C040265C147BA4434089AF87883F2F53C028BB8E9A79A443400AEC9A7B402F53C06341A49B79A44340566C4D7C402F53C0F0D5D62178A44340D89E606F412F53C05D4CEC2278A44340F7141370412F53C08EE01EA976A44340593D2663422F53C0374734AA76A443404EA9D863422F53C0FADA663075A443408F04123D452F53C078B0A63375A44340C8878D40452F53C0908DA3D26DA44340BF73A033462F53C0FCB4B8D36DA44340E7B65234462F53C09746EB596CA44340CE986527472F53C0435E005B6CA44340BB0ACA28472F53C04C80656769A4434083D8DC1B482F53C024887A6869A4434046078F1C482F53C09618ADEE67A44340F5CAA10F492F53C0A210C2EF67A443408DEF5310492F53C0B4A0F47566A44340DF6279F64A2F53C08F611E7866A443406F83DDF74A2F53C07A80838463A443403A7415D14D2F53C089ABC18763A44340518263D04D2F53C0701C8F0165A4434007F2C08F522F53C0727FF50665A443409C320F8F522F53C03FF0C28066A44340CFEC2182532F53C0583BD78166A4434074377081532F53C0EAABA4FB67A44340D1FB8274542F53C057E7B8FC67A443408050D173542F53C0A857867669A44340B7EDF659562F53C0809FAE7869A4434093564559562F53C08B0F7CF26AA44340552F584C572F53C0F21B90F36AA443403FA2A64B572F53C0BB8B5D6D6CA443406A2EF2175B2F53C06620AD716CA443400F93A3185B2F53C05DB0DFF76AA44340781EDCF15D2F53C0A3BA1AFB6AA443402AD82AF15D2F53C0D62AE8746CA4434083BB3DE45E2F53C08DB9FB756CA44340427F8CE35E2F53C07229C9EF6DA44340665AB2C9602F53C0D317F0F16DA443404F3201C9602F53C08887BD6B6FA443400D2A14BC612F53C037E7D06C6FA44340050C63BB612F53C0A7569EE670A44340FA0D76AE622F53C0ACA6B1E770A44340F4E513AD622F53C09D844CDB73A443406B123A93642F53C0B7F572DD73A443409C12D891642F53C08DD20DD176A4434023BD245E682F53C091F859D576A443409D94D55E682F53C0118A8C5B75A443409A17222B6C2F53C059B4D75F75A443409068712A6C2F53C01B23A5D976A44340D3E9AA036F2F53C0F7DDDCDC76A443403240D1E9702F53C098B601DF76A44340AAC320E9702F53C03F25CF5878A443400EF933DC712F53C00C7AE15978A44340938683DB712F53C071E8AED379A4434032C696CE722F53C0992DC1D479A44340C28C85CC722F53C0F57629427EA44340C6A6BFA5752F53C092E85F457EA4434034125FA4752F53C0DCC2FA3881A4434041C1D3567B2F53C061FE653F81A44340E5CE83577B2F53C00B9198C57FA4434040AC0BFD812F53C039E012CD7FA4434063E55BFC812F53C0F14DE04681A4434077586FEF822F53C02788F14781A44340CBDE0FEE822F53C0AA628C3B84A44340ABED36D4842F53C026A8AE3D84A443404F96E6D4842F53C0F03AE1C382A4434028910DBB862F53C06E4103C682A443408425BDBB862F53C0C9D3354C81A443406BF30A888A2F53C0F323795081A44340455FBA888A2F53C0B6B5ABD67FA443404E32E16E8C2F53C060FFCCD87FA44340E189906F8C2F53C0B990FF5E7EA443404F08DE3B902F53C02B6741637EA4434061378D3C902F53C0FBF773E97CA443406038C715932F53C09DB3A4EC7CA443403D6AD417932F53C07B633C7F78A44340BBA1E70A942F53C06A824C8078A443401FA8960B942F53C0AC117F0677A443407830D0E4962F53C00310AF0977A4434079187FE5962F53C0BD9EE18F75A44340795FA5CB982F53C0EB4E019275A4434079DAB1CD982F53C0D9F8982471A44340B3DFC4C0992F53C032B9A82571A4434024A973C1992F53C06F46DBAB6FA443405CA486B49A2F53C004F7EAAC6FA44340A26335B59A2F53C0D8831D336EA44340EF455B9B9C2F53C0BDB53C356EA44340EBF0099C9C2F53C02B426FBB6CA4434005D81C8F9D2F53C07AC37EBC6CA443409E197A909D2F53C036DBE3C869A44340490CEB42A32F53C04B983FCF69A44340179CA445A32F53C069C209E863A44340DA9CDC1EA62F53C015CC36EB63A4434055E28A1FA62F53C0A955697162A443407F41782CA52F53C032625A7062A443400891262DA52F53C072EB8CF660A44340C0273920A62F53C0DADE9BF760A443401E6DE720A62F53C0BA67CE7D5FA44340CCF9F913A72F53C05B4BDD7E5FA44340FD34A814A72F53C0DBD30F055EA44340ADB7BA07A82F53C0AEA71E065EA4434097860C07A82F53C0411FEC7F5FA4434060131FFAA82F53C072E3FA805FA44340593ACDFAA82F53C0D26B2D075EA4434017BDDFEDA92F53C03A203C085EA443403BA031EDA92F53C0E89709825FA443402D4769C6AC2F53C0FD5635855FA44340B44517C7AC2F53C023DF670B5EA44340ABC829BAAD2F53C0AA54760C5EA4434006BDD7BAAD2F53C06DDCA8925CA44340F3AEFCA0AF2F53C03B98C5945CA44340D1CE4EA0AF2F53C09910930E5EA44340F48364DEBD2F53C0EABD621E5EA44340703BB7DDBD2F53C0C33630985FA443405E1F3983C42F53C057678C9F5FA443401A21E683C42F53C01BEEBE255EA443408BA5F876C52F53C0A8DACB265EA443409F945278C52F53C015E730335BA44340D3559C44C92F53C0C7FB63375BA44340D6244945C92F53C0428196BD59A4434089F16D2BCB2F53C02FADAFBF59A4434042AC1A2CCB2F53C04232E24558A44340A0082D1FCC2F53C096B0EE4658A44340DF7A8C22CC2F53C08C44EBE550A443408C22D5EECF2F53C0959F1CEA50A44340A79A28EECF2F53C0711CEA6352A4434005034DD4D12F53C0C36B026652A44340B276F9D4D12F53C0CCEE34EC50A44340E6A00BC8D22F53C0D1FE40ED50A4434057375FC7D22F53C0DB7B0E6752A443400609A893D62F53C0001F3E6B52A44340A1864F92D62F53C09418D95E55A4434037187478D82F53C00F8CF06055A4434038452079D82F53C0590F23E753A44340E0C2445FDA2F53C0D9433AE953A443401AAA985EDA2F53C0A7C0076355A4434016F3AA51DB2F53C06443136455A443405CE4FE50DB2F53C0F4BFE0DD56A4434095371144DC2F53C00A33ECDE56A44340EA326543DC2F53C058AFB95858A443403F907736DD2F53C0BC12C55958A44340CC8A2337DD2F53C06296F7DF56A4434044D86C03E12F53C0968624E456A4434052AA1804E12F53C0B409576A55A44340313D3DEAE22F53C064236D6C55A44340F7FAE8EAE22F53C015A69FF253A44340E4F831B7E62F53C09A1CCBF653A443402D8EDDB7E62F53C0B19EFD7C52A4434089642684EA2F53C08619288152A443404FD1D184EA2F53C0199B5A0751A4434021801A51EE2F53C0361A840B51A4434065C4C551EE2F53C0399BB6914FA44340E107EA37F02F53C05BFCCA934FA44340D6D73E37F02F53C0767B980D51A443400D888703F42F53C05981C01151A44340B0783102F42F53C0027F5B0554A4434013B943F5F42F53C04859650654A44340ACB6EEF5F42F53C08FDA978C52A443403E346E9BFB2F53C00D1ADB9352A443408EC6189AFB2F53C0EF17768755A443408D5C3D80FD2F53C067C1888955A443401417E87EFD2F53C033BE237D58A44340F9321F58003053C06D483F8058A443406CA51F56003053C087C1A7ED5CA44340B81C3249013053C0A5D4B0EE5CA44340A127DD47013053C087CE4BE25FA443402CB3EF3A023053C007D254E35FA4434016D29A39023053C0ABCAEFD662A44340BE51E505063053C0D43B13DB62A4434056C19004063053C07A33AECE65A443409C75A3F7063053C093E8B6CF65A44340B9B34DF8063053C0D46CE95564A44340F95D60EB073053C02712F25664A44340ED910AEC073053C0189624DD62A4434049D22FD2093053C07FB135DF62A44340F4F1D9D2093053C0F534686561A443401888ECC50A3053C007AB706661A44340989D96C60A3053C0292EA3EC5FA443402342CE9F0D3053C0F031BCEF5FA443407C5CD09D0D3053C005A8245D64A443401507E3900E3053C054DF2C5E64A44340DD1939900E3053C0725BFAD765A443406F835E76103053C0F59A0ADA65A4434065AAB475103053C0CC16D85367A443407069C768113053C0091FE05467A44340769A1D68113053C0979AADCE68A443409763305B123053C02A93B5CF68A44340AA9E865A123053C0780E83496AA44340FB71994D133053C05CF78A4A6AA443402FFC454C133053C002ED253E6DA443407FCB6B32153053C0D18F35406DA44340BE24C231153053C0380A03BA6EA443409116D524163053C01BC40ABB6EA44340DD792B24163053C0473ED83470A44340DB753E17173053C078E8DF3570A44340F82A9814173053C0E5CD151D76A4434084068521163053C082230E1C76A443408B69DB20163053C0049CDB9577A443401C98EE13173053C07746E39677A4434030054513173053C0A5BEB01079A44340BE766BF9183053C070E4BF1279A4434000F8C1F8183053C06A5C8D8C7AA44340F33AD5EB193053C0C7D7948D7AA44340845182EA193053C0D0C62F817DA44340CAA895DD1A3053C0913237827DA443401B3EECDC1A3053C09EA904FC7EA44340F60013C31C3053C00B5213FE7EA443406C57BCC31C3053C0E5DA45847DA443403614575C243053C082077E8C7DA443400A09055B243053C035F6188080A443402875184E253053C027B51F8180A443409F86744B253053C0C88E556886A443402E1B883E263053C02F3E5C6986A443408829DF3D263053C0D6B329E387A44340F1051A17293053C0DB633DE687A4434091327116293053C04ED90A6089A4434092DB84092A3053C0EC49116189A443404212DC082A3053C010BFDEDA8AA44340434652BB2F3053C0F21804E18AA4434091B9A9BA2F3053C0148ED15A8CA443403077BDAD303053C0C190D75B8CA44340C5F965AE303053C0971B0AE28AA4434000618D94323053C0B7F115E48AA443404ECF3595323053C0277C486A89A44340DD784988333053C0964F4E6B89A44340FFDCF188333053C0A0D980F187A443401A1C196F353053C041518CF387A4434031CC706E353053C04BC7596D89A443408BC9AB47383053C0FB846A7089A44340EB970347383053C0CDFA37EA8AA44340F74B173A393053C0F76F3DEB8AA443407B73BF3A393053C018FA6F7189A443406B1DD32D3A3053C0805F757289A44340C23A7B2E3A3053C039E9A7F887A44340A27AA2143C3053C0CA84B2FA87A44340586852133C3053C025714DEE8AA44340921C66063D3053C072A752EF8AA44340131F6E043D3053C0AE07BB5C8FA44340B1F181F73D3053C0662EC05D8FA4434087FCD9F63D3053C02FA38DD790A4434035B601DD3F3053C088C197D990A4434036D559DC3F3053C01736655392A443402640D18E453053C03718825992A4434075E4788F453053C061A3B4DF90A44340ACC18C82463053C0AC3CB9E090A443407B27E581463053C08CB1865A92A44340DBDD205B493053C03A1F945D92A44340EF61795A493053C0F29361D793A4434098538D4D4A3053C077EE65D893A44340DCFD964B4A3053C09D4ACE4598A44340EA0DAB3E4B3053C08995D24698A4434003A6033E4B3053C00509A0C099A443404DC017314C3053C04544A4C199A443408E04C92F4C3053C03E2A3FB59CA443400AD6B43C4B3053C0E7EE3AB49CA443407435173A4B3053C0B9B6709BA2A4434098DE02474A3053C07A6B6C9AA2A44340C2F9B3454A3053C0544D078EA5A44340B9238B5F483053C08087FE8BA5A443408281455C483053C0CAB501EDACA443401A1F5A4F493053C0C82006EEACA44340B8B3C54A493053C0DB20A442B7A44340126104244C3053C08404B145B7A443401E440E224C3053C0174919B3BBA44340FD4623154D3053C0AA751DB4BBA44340F89CD4134D3053C0804CB8A7BEA44340E085BF204C3053C0D41FB4A6BEA443404FA97A1D4C3053C0DD32B707C6A44340F9F28F104D3053C0C65FBB08C6A443409D9DE80F4D3053C011C98882C7A4434076F1FD024E3053C04FE68C83C7A4434029A656024E3053C0464F5AFDC8A443404B6281E84F3053C0AC5A62FFC8A443402A2BDAE74F3053C062C32F79CAA443406793EFDA503053C08DB1337ACAA443403639A1D9503053C01682CE6DCDA44340B9B5B6CC513053C0A360D26ECDA44340896F68CB513053C0F92F6D62D0A443405A007EBE523053C0E0FE7063D0A443402BCE2FBD523053C0FBCC0B57D3A4434025291ACA513053C0FCFD0756D3A44340AF9B7DC7513053C0FE953D3DD9A443402C6993BA523053C02E65413ED9A44340573645B9523053C0412FDC31DCA4434027185BAC533053C0D2EEDF32DCA4434055F90CAB533053C0B0B77A26DFA4434062EF229E543053C09B677E27DFA4434002EA7B9D543053C09CCB4BA1E0A4434037EA9190553053C0E06B4FA2E0A44340E7EEEA8F553053C089CF1C1CE2A4434055F90083563053C01E60201DE2A44340C416B381563053C0A326BB10E5A44340EB72F55A593053C0587AC513E5A44340E59F4E5A593053C032DD928DE6A44340EC1A91335C3053C093A39C90E6A443403066EA325C3053C03F066A0AE8A44340779900265D3053C0FA286D0BE8A4434047990C245D3053C02D4FD578ECA44340A847F6305C3053C04C2CD277ECA44340B4924F305C3053C0AE8D9FF1EDA443401937393D5B3053C00B5B9CF0EDA44340FA77923C5B3053C001BC696AEFA443400D474F63583053C0A7C55F67EFA443408B69A862583053C031262DE1F0A44340EAF9916F573053C094B429E0F0A443403912EB6E573053C0B514F759F2A443408798D47B563053C05A93F358F2A44340ADA62D7B563053C013F3C0D2F3A443408B1BEAA1533053C08610B6CFF3A44340FFFA9BA0533053C0C0CE50C3F6A44340226385AD523053C05F0E4DC2F6A44340A948DEAC523053C0F76C1A3CF8A44340F604B1C6503053C0F7BC123AF8A44340AA3358C7503053C0715E45C0F6A4434055D5FDFA4C3053C0F84135BCF6A44340F826AFF94C3053C043FECFAFF9A44340A6CF81134B3053C08591C7ADF9A443402864DA124B3053C011EF9427FBA443407DAEC31F4A3053C013A19026FBA44340D4381C1F4A3053C046FE5DA0FCA443401D79052C493053C083A0599FFCA4434048F95D2B493053C04AFD2619FEA44340702F4738483053C0C58F2218FEA4434049915036483053C002A48A8502A5434035A93943473053C0A226868402A543404AC3F33F473053C021EC88E509A54340B5A8DC4C463053C0CB5E84E409A54340556B8D4B463053C0C3111FD80CA54340903C7658453053C0A1741AD70CA54340AE93CE57453053C09CCDE7500EA543409AB0718B413053C0ACBBD44C0EA54340F381198C413053C0E56207D30CA5434096F6D3B23E3053C08970F8CF0CA5434037E67BB33E3053C091172B560BA54340D99D4DCD3C3053C027D220540BA543401496FDCB3C3053C09683BB470EA543406B25CFE53A3053C01CFFB0450EA543403C0D27E53A3053C033577EBF0FA54340E4CA0FF2393053C058FD78BE0FA5434086A867F1393053C00D55463811A54340205C50FE383053C06DEB403711A54340972FA8FD383053C0C7420EB112A5434017D9900A383053C063C908B012A5434062A2E809383053C06520D62914A54340DE41D116373053C03C97D02814A54340FE002916373053C0CFED9DA215A543408ED93E972D3053C03931639815A543408E7FE7972D3053C019DB951E14A54340FD5FA1BE2A3053C0BB09831B14A54340A29BF8BD2A3053C0B55F509515A54340B531E1CA293053C06DFA499415A543402F6338CA293053C00E50170E17A5434045EF20D7283053C002DB100D17A543402A8C7DD4283053C0F82D46F41CA54340D6EF65E1273053C006A93FF31CA54340CF0CBDE0273053C0EEFC0C6D1EA543405D66A5ED263053C03768066C1EA543403EB101EB263053C01EB43B5324A5434079E2E9F7253053C0800F355224A54340450C9DF4253053C0B9A637B32BA54340F70A8501253053C027F230B22BA5434011073300253053C09A92CBA52EA5434086F11A0D243053C03ACEC4A42EA5434062E5710C243053C0ED1D921E30A54340DBC55919233053C0CA498B1D30A543402C990718233053C010E8251133A543407465EF24223053C017041F1033A54340EB444624223053C0AC52EC8934A5434017072E31213053C0F25EE58834A54340A0B1DB2F213053C010FB7F7C37A54340AE5FC33C203053C088F7787B37A543404421CC38203053C087C3485640A54340B192B3451F3053C002B0415540A5434086D66D3E1F3053C0B0DB139150A54340BDD8544B1E3053C0F1B70C9050A54340E9D0B3461E3053C030A7A9E45AA543408115CD391F3053C03FCBB0E55AA54340B9947A381F3053C0CD554BD95DA5434099ED932B203053C0406A52DA5DA543403BB7EA2A203053C019AF1F545FA543404A98E8A9293053C07C1B635E5FA54340806991AA293053C02DD695E45DA54340921CC4902B3053C08795A2E65DA5434076E5C98E2B3053C0B4640A5462A54340615DE3812C3053C0EFAC105562A543401F44E97F2C3053C0407978C266A5434075DA02732D3053C0E5B17EC366A543403C88B1712D3053C0833819B769A54340EA32CB642E3053C088611FB869A54340B5F479632E3053C0F8E6B9AB6CA54340CE3560702D3053C0DABDB3AA6CA5434027E30E6F2D3053C0C3414E9E6FA54340985C5C48303053C0388E60A16FA5434086D1B347303053C0D5CF2D1B71A54340E4AECD3A313053C0ECC9331C71A54340E32D253A313053C04A0B019672A5434075153F2D323053C0B4F5069772A54340849E962C323053C0BC36D41074A54340F781CA12343053C080DCDF1274A5434060BC7911343053C0CD5D7A0677A5434074C29304353053C03019800777A54340B369EB03353053C058594D8178A543402A8A1FEA363053C010A1588378A54340934577E9363053C0FDE025FD79A54340322B5DF6353053C0F24420FC79A54340D8516BF2353053C052BDEFD682A54340D3FA50FF343053C04711EAD582A543405D4800FE343053C0EE8B84C985A5434021DDE50A343053C015D07EC885A54340B2B2EC08343053C07B85E6358AA543403729D215333053C0C8B9E0348AA5434082BB2915333053C082F5ADAE8BA54340F8270F22323053C0051AA8AD8BA5434025486D1F323053C07E05DD9491A5434026048812333053C02CE1E29591A543402B96DF11333053C03C1BB00F93A54340575CFA04343053C037E7B51093A543406CF85104343053C00A21838A94A54340359987EA353053C0F2898E8C94A54340F6093EE7353053C05AA690ED9BA54340B219C5A63A3053C0A61AACF29BA54340C3DE74A53A3053C0818A46E69EA54340EE0DAB8B3C3053C0FB1751E89EA543403DFB5A8A3C3053C0BA86EBDBA1A543401E27767D3D3053C0F5B5F0DCA1A54340CE27CE7C3D3053C0DBECBD56A3A54340FE9304633F3053C0441CC858A3A54340ACBDB4613F3053C04D89624CA6A543404873996E3E3053C05A795D4BA6A54340A3BC016A3E3053C0FBEBF99FB0A54340D54D1D5D3F3053C041FCFEA0B0A543408676CD5B3F3053C03D639994B3A543406CC10442413053C0C854A396B3A54340EAE95C41413053C0DA877010B5A54340A0997834423053C019697511B5A543402ECCD033423053C0E59B428BB6A543400086EC26433053C0736D478CB6A543409FC24426433053C0FA9F1406B8A543409A866019443053C0DE611907B8A5434048CDB818443053C01094E680B9A54340809BD40B453053C04B46EB81B9A543403FEC2C0B453053C03678B8FBBAA54340E8131118443053C0F2C5B3FABAA543401B8D2B12443053C0D277EA42C8A54340DC590F1F433053C06FB5E541C8A54340D295671E433053C0F1E3B2BBC9A54340F9DD1245403053C0513EA4B8C9A5434088FB6A44403053C0516C7132CBA5434044B44E513F3053C0F16A6C31CBA54340A7C7A6503F3053C0989839ABCCA5434043768A5D3E3053C0748734AACCA543407C7FE25C3E3053C0B3B40124CEA54340C3C8A9763C3053C02D63F721CEA5434069A7B1743C3053C0AFE85E8FD2A54340C52D95813B3053C035A8598ED2A543406F18ED803B3053C003D42608D4A54340B094D08D3A3053C0C5832107D4A543404F16308B3A3053C0592F56EED9A54340346A1398393053C030CF50EDD9A543407BC27295393053C0407585D4DFA54340
\.


--
-- Name: gidb_watershedboundary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gidb_watershedboundary_id_seq', 1, true);


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
-- Name: gidb_giscenario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_giscenario
    ADD CONSTRAINT gidb_giscenario_pkey PRIMARY KEY (id);


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
-- Name: gidb_region_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_region
    ADD CONSTRAINT gidb_region_pkey PRIMARY KEY (id);


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
-- Name: gidb_watershedboundary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gidb_watershedboundary
    ADD CONSTRAINT gidb_watershedboundary_pkey PRIMARY KEY (id);


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
-- Name: gidb_giinstance_adc0676c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_giinstance_adc0676c ON gidb_giinstance USING btree (scenario_id);


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
-- Name: gidb_watershed_0f442f96; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_watershed_0f442f96 ON gidb_watershed USING btree (region_id);


--
-- Name: gidb_watershed_74963935; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_watershed_74963935 ON gidb_watershed USING btree (template_menu_id);


--
-- Name: gidb_watershed_eb01ad15; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_watershed_eb01ad15 ON gidb_watershed USING btree (boundary_id);


--
-- Name: gidb_watershedboundary_boundary_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX gidb_watershedboundary_boundary_id ON gidb_watershedboundary USING gist (boundary);


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
-- Name: gidb__boundary_id_21928be4554d932a_fk_gidb_watershedboundary_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_watershed
    ADD CONSTRAINT gidb__boundary_id_21928be4554d932a_fk_gidb_watershedboundary_id FOREIGN KEY (boundary_id) REFERENCES gidb_watershedboundary(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: gidb_giinsta_scenario_id_52b5a4be86199bf7_fk_gidb_giscenario_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_giinstance
    ADD CONSTRAINT gidb_giinsta_scenario_id_52b5a4be86199bf7_fk_gidb_giscenario_id FOREIGN KEY (scenario_id) REFERENCES gidb_giscenario(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: gidb_watershed_region_id_3b3df8ce5dffd1c6_fk_gidb_region_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gidb_watershed
    ADD CONSTRAINT gidb_watershed_region_id_3b3df8ce5dffd1c6_fk_gidb_region_id FOREIGN KEY (region_id) REFERENCES gidb_region(id) DEFERRABLE INITIALLY DEFERRED;


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

