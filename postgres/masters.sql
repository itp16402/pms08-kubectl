--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Debian 13.3-1.pgdg100+1)
-- Dumped by pg_dump version 13.3 (Debian 13.3-1.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: a111; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.a111 (
    id integer NOT NULL,
    auditstart date NOT NULL,
    auditend date NOT NULL,
    foldercopy integer,
    entitytype integer NOT NULL,
    turnover numeric NOT NULL,
    branch character varying(4000) NOT NULL,
    agreementdate date NOT NULL,
    letterdate date NOT NULL,
    financialstatementsdate date NOT NULL,
    appointmentdate date NOT NULL,
    reportdate date NOT NULL,
    archivingdate date NOT NULL,
    consecutiveyears integer NOT NULL,
    statutoryaudit integer,
    taxaudit integer,
    hours integer NOT NULL,
    acceptance character varying(4000) NOT NULL,
    projectid integer NOT NULL
);


ALTER TABLE public.a111 OWNER TO postgres;

--
-- Name: TABLE a111; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.a111 IS 'Βασικές Πληροφορίες Ανάθεσης';


--
-- Name: COLUMN a111.auditstart; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.auditstart IS 'Ελεγχόμενη χρήση (αρχή)';


--
-- Name: COLUMN a111.auditend; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.auditend IS 'Ελεγχόμενη χρήση (τέλος)';


--
-- Name: COLUMN a111.foldercopy; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.foldercopy IS 'Αντιγραφή Φακέλου';


--
-- Name: COLUMN a111.entitytype; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.entitytype IS 'Κατηγορία Οντότητας';


--
-- Name: COLUMN a111.turnover; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.turnover IS 'Κύκλος εργασιών';


--
-- Name: COLUMN a111.branch; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.branch IS 'Κλάδος';


--
-- Name: COLUMN a111.agreementdate; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.agreementdate IS 'Ημερομηνία εντολής ανάθεσης';


--
-- Name: COLUMN a111.letterdate; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.letterdate IS 'Ημερομηνία επιστολής ανάθεσης';


--
-- Name: COLUMN a111.financialstatementsdate; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.financialstatementsdate IS 'Ημερομηνία σύνταξης οικονομικών καταστάσεων';


--
-- Name: COLUMN a111.appointmentdate; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.appointmentdate IS 'Ημερομηνία Γ.Σ. εκλογής ορκωτών ελεγκτών';


--
-- Name: COLUMN a111.reportdate; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.reportdate IS 'Ημερομηνία έκδοσης έκθεσης ελέγχου';


--
-- Name: COLUMN a111.archivingdate; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.archivingdate IS 'Ημερομηνία αρχειοθέτησης ';


--
-- Name: COLUMN a111.consecutiveyears; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.consecutiveyears IS 'Συνεχόμενα έτη ίδιου εταίρου ανάθεσης';


--
-- Name: COLUMN a111.statutoryaudit; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.statutoryaudit IS 'Α.Μ. Τακτικού Ελέγχου';


--
-- Name: COLUMN a111.taxaudit; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.taxaudit IS 'Α.Μ. Φορολογικού Ελέγχου';


--
-- Name: COLUMN a111.hours; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.hours IS 'Ελεγκτικές ώρες ανάθεσης';


--
-- Name: COLUMN a111.acceptance; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a111.acceptance IS 'Αποδοχή (ή μη) της ανάθεσης';


--
-- Name: a111_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.a111_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.a111_id_seq OWNER TO postgres;

--
-- Name: a111_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.a111_id_seq OWNED BY public.a111.id;


--
-- Name: a221; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.a221 (
    id integer NOT NULL,
    baseid integer,
    ovamount numeric(10,2),
    taxovamount numeric(10,2),
    documentationbase character varying(4000),
    projectid integer
);


ALTER TABLE public.a221 OWNER TO postgres;

--
-- Name: TABLE a221; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.a221 IS 'Ουσιώδες μέγεθος';


--
-- Name: COLUMN a221.baseid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a221.baseid IS 'Βάση υπολογισμού ουσιώδους μεγέθους';


--
-- Name: COLUMN a221.ovamount; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a221.ovamount IS 'Γενικό Επίπεδο Ουσιώδους Μεγέθους';


--
-- Name: COLUMN a221.taxovamount; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a221.taxovamount IS 'Γενικό Επίπεδο Ουσιώδους Μεγέθους Φορολογικού';


--
-- Name: COLUMN a221.documentationbase; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a221.documentationbase IS 'Τεκμηρίωση επιλογής βάσης και Γενικού Επιπέδου Ουσιώδους Μεγέθους';


--
-- Name: a221_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.a221_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.a221_id_seq OWNER TO postgres;

--
-- Name: a221_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.a221_id_seq OWNED BY public.a221.id;


--
-- Name: a231; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.a231 (
    id integer NOT NULL,
    peramount numeric(10,2) NOT NULL,
    projectid integer NOT NULL
);


ALTER TABLE public.a231 OWNER TO postgres;

--
-- Name: TABLE a231; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.a231 IS 'Σημαντικοί Λογαριασμοί και Σχετικοί Ισχυρισμοί';


--
-- Name: COLUMN a231.peramount; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.a231.peramount IS 'Ουσιώδες Μέγεθος Εκτέλεσης';


--
-- Name: a231_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.a231_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.a231_id_seq OWNER TO postgres;

--
-- Name: a231_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.a231_id_seq OWNED BY public.a231.id;


--
-- Name: add221overall; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.add221overall (
    id integer NOT NULL,
    baseid integer NOT NULL,
    interimbaseamount numeric(20,2) NOT NULL,
    examount numeric(20,2),
    finalbaseamount numeric(20,2),
    minlimit numeric(20,2) NOT NULL,
    maxlimit numeric(20,2) NOT NULL,
    ovamount numeric(20,2),
    percentage numeric(20,2),
    a221id integer NOT NULL
);


ALTER TABLE public.add221overall OWNER TO postgres;

--
-- Name: TABLE add221overall; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.add221overall IS 'Πινακάκι στον a221: ΓΕΝΙΚΟ ΕΠΙΠΕΔΟ ΟΥΣΙΩΔΟΥΣ ΜΕΓΕΘΟΥΣ (Overall Materiality)';


--
-- Name: COLUMN add221overall.baseid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add221overall.baseid IS 'Βάση';


--
-- Name: COLUMN add221overall.interimbaseamount; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add221overall.interimbaseamount IS 'Ποσό Βάσης Ενδιαμέσου';


--
-- Name: COLUMN add221overall.examount; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add221overall.examount IS 'Ποσό αναγωγής';


--
-- Name: COLUMN add221overall.finalbaseamount; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add221overall.finalbaseamount IS 'Ποσό Βάσης Τελικού';


--
-- Name: COLUMN add221overall.minlimit; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add221overall.minlimit IS 'Κατώτερο Όριο';


--
-- Name: COLUMN add221overall.maxlimit; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add221overall.maxlimit IS 'Ανώτερο Όριο';


--
-- Name: COLUMN add221overall.ovamount; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add221overall.ovamount IS 'Επιλογή ποσού';


--
-- Name: COLUMN add221overall.percentage; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add221overall.percentage IS 'Ποσοστό';


--
-- Name: add221overall_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.add221overall_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.add221overall_id_seq OWNER TO postgres;

--
-- Name: add221overall_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.add221overall_id_seq OWNED BY public.add221overall.id;


--
-- Name: add221performance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.add221performance (
    id integer NOT NULL,
    year character varying(4000) NOT NULL,
    ovamount numeric(10,2),
    percentage numeric(10,2),
    peramount numeric(10,2),
    taxperamount numeric(10,2),
    a221id integer NOT NULL
);


ALTER TABLE public.add221performance OWNER TO postgres;

--
-- Name: TABLE add221performance; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.add221performance IS 'Πινακάκι στον a221: ΟΥΣΙΩΔΕΣ ΜΕΓΕΘΟΣ ΕΚΤΕΛΕΣΗΣ (Performance Materiality)';


--
-- Name: COLUMN add221performance.year; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add221performance.year IS 'Έτος';


--
-- Name: COLUMN add221performance.ovamount; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add221performance.ovamount IS 'Γενικό Επίπεδο Ουσιώδους Μεγέθους';


--
-- Name: COLUMN add221performance.percentage; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add221performance.percentage IS 'Ποσοστό';


--
-- Name: COLUMN add221performance.peramount; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add221performance.peramount IS 'Ουσιώδες Μέγεθος Εκτέλεσης';


--
-- Name: COLUMN add221performance.taxperamount; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add221performance.taxperamount IS 'Ουσιώδες Μέγεθος Εκτέλεσης Φορολογικού';


--
-- Name: add221performance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.add221performance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.add221performance_id_seq OWNER TO postgres;

--
-- Name: add221performance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.add221performance_id_seq OWNED BY public.add221performance.id;


--
-- Name: add231; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.add231 (
    id integer NOT NULL,
    isologismosdictionaryid integer NOT NULL,
    isimportant integer NOT NULL,
    y integer NOT NULL,
    pd integer NOT NULL,
    ak integer NOT NULL,
    ap integer NOT NULL,
    dd integer NOT NULL,
    tp integer NOT NULL,
    assessment integer NOT NULL,
    a231id integer NOT NULL,
    isimportantrisk integer,
    isimportantassessment integer
);


ALTER TABLE public.add231 OWNER TO postgres;

--
-- Name: TABLE add231; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.add231 IS 'Πινακάκι στον a231.';


--
-- Name: COLUMN add231.isologismosdictionaryid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add231.isologismosdictionaryid IS 'Γραμμή οικονομικών καταστάσεων';


--
-- Name: COLUMN add231.isimportant; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add231.isimportant IS 'Σημαντική;';


--
-- Name: COLUMN add231.y; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add231.y IS 'Ύπαρξη';


--
-- Name: COLUMN add231.pd; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add231.pd IS 'Πληρότητα / Διαχωρισμός';


--
-- Name: COLUMN add231.ak; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add231.ak IS 'Ακρίβεια';


--
-- Name: COLUMN add231.ap; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add231.ap IS 'Αποτίμηση';


--
-- Name: COLUMN add231.dd; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add231.dd IS 'Δικαιώματα & Δεσμεύσεις';


--
-- Name: COLUMN add231.tp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add231.tp IS 'Ταξινόμηση - Παρουσίαση';


--
-- Name: COLUMN add231.assessment; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add231.assessment IS 'Εκτίμηση;';


--
-- Name: COLUMN add231.isimportantrisk; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add231.isimportantrisk IS 'Είναι σημαντικός κίνδυνος; (κρυφό πεδίο)';


--
-- Name: COLUMN add231.isimportantassessment; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.add231.isimportantassessment IS 'Είναι σημαντική εκτίμηση; (κρυφό πεδίο)';


--
-- Name: add231_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.add231_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.add231_id_seq OWNER TO postgres;

--
-- Name: add231_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.add231_id_seq OWNED BY public.add231.id;


--
-- Name: base; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.base (
    id integer NOT NULL,
    name character varying(4000) NOT NULL,
    nlslang character varying(4000) NOT NULL
);


ALTER TABLE public.base OWNER TO postgres;

--
-- Name: TABLE base; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.base IS 'Λίστα με τις βάσεις ουσιώδους μεγέθους που χρησιμοποιύνται στον πίνακα materiality_base';


--
-- Name: base_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.base_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_id_seq OWNER TO postgres;

--
-- Name: base_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.base_id_seq OWNED BY public.base.id;


--
-- Name: flowchart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flowchart (
    id integer NOT NULL,
    phase integer,
    name character varying,
    formname character varying,
    nlslang character varying,
    formtype character varying,
    sorder numeric(10,2),
    type character varying,
    icon character varying,
    css character varying,
    flowchartparentid integer,
    state character varying(50)
);


ALTER TABLE public.flowchart OWNER TO postgres;

--
-- Name: flowchart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.flowchart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flowchart_id_seq OWNER TO postgres;

--
-- Name: flowchart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flowchart_id_seq OWNED BY public.flowchart.id;


--
-- Name: flowchartchild; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flowchartchild (
    id integer NOT NULL,
    phase integer,
    name character varying,
    formname character varying,
    nlslang character varying,
    formtype character varying,
    sorder numeric(10,2),
    type character varying,
    icon character varying,
    css character varying,
    flowchartid integer,
    state character varying(50)
);


ALTER TABLE public.flowchartchild OWNER TO postgres;

--
-- Name: flowchartchild_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.flowchartchild_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flowchartchild_id_seq OWNER TO postgres;

--
-- Name: flowchartchild_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flowchartchild_id_seq OWNED BY public.flowchartchild.id;


--
-- Name: flowchartparent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flowchartparent (
    id integer NOT NULL,
    phase integer,
    name character varying,
    formname character varying,
    nlslang character varying,
    formtype character varying,
    sorder numeric(10,2),
    type character varying,
    icon character varying,
    css character varying
);


ALTER TABLE public.flowchartparent OWNER TO postgres;

--
-- Name: flowchartparent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.flowchartparent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flowchartparent_id_seq OWNER TO postgres;

--
-- Name: flowchartparent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flowchartparent_id_seq OWNED BY public.flowchartparent.id;


--
-- Name: formlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.formlist (
    id integer NOT NULL,
    formname character varying
);


ALTER TABLE public.formlist OWNER TO postgres;

--
-- Name: TABLE formlist; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.formlist IS 'Λίστα με όλες τις φόρμες';


--
-- Name: formlist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.formlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.formlist_id_seq OWNER TO postgres;

--
-- Name: formlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.formlist_id_seq OWNED BY public.formlist.id;


--
-- Name: formrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.formrole (
    id integer NOT NULL,
    formlistid integer,
    userroleid integer,
    state integer
);


ALTER TABLE public.formrole OWNER TO postgres;

--
-- Name: TABLE formrole; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.formrole IS 'Ανάθεση ρόλου ανά φόρμα και εντολή και κατάσταση επεξεργασίας της φόρμας';


--
-- Name: COLUMN formrole.state; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.formrole.state IS '0: Αποθήκευση, 1: Ολοκλήρωση/ Review, 2: Επεξεργασία';


--
-- Name: formrole_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.formrole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.formrole_id_seq OWNER TO postgres;

--
-- Name: formrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.formrole_id_seq OWNED BY public.formrole.id;


--
-- Name: forms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forms (
    id integer NOT NULL,
    tablename character varying(255) NOT NULL,
    nlslang character varying(255),
    formtype character varying(255),
    keli character varying(255),
    onoma character varying(10000) NOT NULL,
    typos character varying(4000) NOT NULL,
    svalues character varying(4000),
    infos character varying(10000),
    cell character varying(4000),
    sfunction character varying(4000),
    css character varying(4000),
    sorder numeric(10,2),
    sprint integer,
    optional integer,
    comments character varying(10000),
    help character varying(15000),
    upload character varying,
    value integer
);


ALTER TABLE public.forms OWNER TO postgres;

--
-- Name: forms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forms_id_seq OWNER TO postgres;

--
-- Name: forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.forms_id_seq OWNED BY public.forms.id;


--
-- Name: isologismosdictionary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.isologismosdictionary (
    id integer NOT NULL,
    line character varying(255),
    type character varying,
    nlslang character varying,
    amount numeric NOT NULL
);


ALTER TABLE public.isologismosdictionary OWNER TO postgres;

--
-- Name: TABLE isologismosdictionary; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.isologismosdictionary IS 'Γραμμές ισολογισμού';


--
-- Name: isologismosdictionary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.isologismosdictionary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.isologismosdictionary_id_seq OWNER TO postgres;

--
-- Name: isologismosdictionary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.isologismosdictionary_id_seq OWNED BY public.isologismosdictionary.id;


--
-- Name: materialitybase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materialitybase (
    id integer NOT NULL,
    baseid integer NOT NULL,
    add integer,
    subtract integer
);


ALTER TABLE public.materialitybase OWNER TO postgres;

--
-- Name: TABLE materialitybase; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.materialitybase IS 'Mapping βάσης ουσιώδους μεγέθους με γραμμή ισολογισμού';


--
-- Name: COLUMN materialitybase.baseid; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.materialitybase.baseid IS 'Βάση';


--
-- Name: COLUMN materialitybase.add; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.materialitybase.add IS 'Γραμμή που προστίθεται';


--
-- Name: COLUMN materialitybase.subtract; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.materialitybase.subtract IS 'Γραμμή που αφαιρείται';


--
-- Name: materialitybase_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.materialitybase_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materialitybase_id_seq OWNER TO postgres;

--
-- Name: materialitybase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.materialitybase_id_seq OWNED BY public.materialitybase.id;


--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    id integer NOT NULL,
    orderid integer NOT NULL,
    year character varying,
    recorddate timestamp without time zone,
    assignmentcontrolhours integer,
    customername character varying,
    status character varying,
    ordertypedescription character varying,
    ordertypecomments character varying
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Name: TABLE project; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.project IS 'Έργο';


--
-- Name: projectuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projectuser (
    id integer NOT NULL,
    projectid integer,
    userid integer
);


ALTER TABLE public.projectuser OWNER TO postgres;

--
-- Name: TABLE projectuser; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.projectuser IS 'Χρήστης ανά έργο';


--
-- Name: projectuser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projectuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projectuser_id_seq OWNER TO postgres;

--
-- Name: projectuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projectuser_id_seq OWNED BY public.projectuser.id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    id integer NOT NULL,
    role character varying
);


ALTER TABLE public.role OWNER TO postgres;

--
-- Name: TABLE role; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.role IS 'Ρόλοι';


--
-- Name: COLUMN role.role; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.role.role IS '1. owner - Ονοματεπώνυμο εταίρου ανάθεσης
2. admin - Ονοματεπώνυμο υπεύθυνου ανάθεσης
3. member - Μέλη Ελεγκτικής Ομάδας';


--
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_id_seq OWNER TO postgres;

--
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    firstname character varying NOT NULL,
    lastname character varying NOT NULL,
    email character varying NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    active integer NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: TABLE "user"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public."user" IS 'Χρήστες';


--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: userrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userrole (
    id integer NOT NULL,
    userid integer NOT NULL,
    roleid integer NOT NULL,
    projectid integer
);


ALTER TABLE public.userrole OWNER TO postgres;

--
-- Name: TABLE userrole; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.userrole IS 'Αντιστοίχιση χρήστη - ρόλου.';


--
-- Name: userrole_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.userrole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userrole_id_seq OWNER TO postgres;

--
-- Name: userrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.userrole_id_seq OWNED BY public.userrole.id;


--
-- Name: a111 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.a111 ALTER COLUMN id SET DEFAULT nextval('public.a111_id_seq'::regclass);


--
-- Name: a221 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.a221 ALTER COLUMN id SET DEFAULT nextval('public.a221_id_seq'::regclass);


--
-- Name: a231 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.a231 ALTER COLUMN id SET DEFAULT nextval('public.a231_id_seq'::regclass);


--
-- Name: add221overall id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.add221overall ALTER COLUMN id SET DEFAULT nextval('public.add221overall_id_seq'::regclass);


--
-- Name: add221performance id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.add221performance ALTER COLUMN id SET DEFAULT nextval('public.add221performance_id_seq'::regclass);


--
-- Name: add231 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.add231 ALTER COLUMN id SET DEFAULT nextval('public.add231_id_seq'::regclass);


--
-- Name: base id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.base ALTER COLUMN id SET DEFAULT nextval('public.base_id_seq'::regclass);


--
-- Name: flowchart id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flowchart ALTER COLUMN id SET DEFAULT nextval('public.flowchart_id_seq'::regclass);


--
-- Name: flowchartchild id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flowchartchild ALTER COLUMN id SET DEFAULT nextval('public.flowchartchild_id_seq'::regclass);


--
-- Name: flowchartparent id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flowchartparent ALTER COLUMN id SET DEFAULT nextval('public.flowchartparent_id_seq'::regclass);


--
-- Name: formlist id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formlist ALTER COLUMN id SET DEFAULT nextval('public.formlist_id_seq'::regclass);


--
-- Name: formrole id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formrole ALTER COLUMN id SET DEFAULT nextval('public.formrole_id_seq'::regclass);


--
-- Name: forms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms ALTER COLUMN id SET DEFAULT nextval('public.forms_id_seq'::regclass);


--
-- Name: isologismosdictionary id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.isologismosdictionary ALTER COLUMN id SET DEFAULT nextval('public.isologismosdictionary_id_seq'::regclass);


--
-- Name: materialitybase id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materialitybase ALTER COLUMN id SET DEFAULT nextval('public.materialitybase_id_seq'::regclass);


--
-- Name: projectuser id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectuser ALTER COLUMN id SET DEFAULT nextval('public.projectuser_id_seq'::regclass);


--
-- Name: role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Name: userrole id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userrole ALTER COLUMN id SET DEFAULT nextval('public.userrole_id_seq'::regclass);


--
-- Data for Name: a111; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.a111 (id, auditstart, auditend, foldercopy, entitytype, turnover, branch, agreementdate, letterdate, financialstatementsdate, appointmentdate, reportdate, archivingdate, consecutiveyears, statutoryaudit, taxaudit, hours, acceptance, projectid) FROM stdin;
1	2020-10-10	2020-10-10	0	0	0	string	2020-10-10	2020-10-10	2020-10-10	2020-10-10	2020-10-10	2020-10-10	0	0	0	0	string	135691
2	2021-05-01	2021-06-29	\N	0	2	sadasf	2021-05-31	2021-05-31	2021-05-31	2021-06-01	2021-06-01	2021-06-28	2	\N	\N	250	Nai	149461
\.


--
-- Data for Name: a221; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.a221 (id, baseid, ovamount, taxovamount, documentationbase, projectid) FROM stdin;
2	\N	\N	\N	\N	135691
3	2	291655.00	\N	\N	149461
\.


--
-- Data for Name: a231; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.a231 (id, peramount, projectid) FROM stdin;
16	189575.75	149461
\.


--
-- Data for Name: add221overall; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.add221overall (id, baseid, interimbaseamount, examount, finalbaseamount, minlimit, maxlimit, ovamount, percentage, a221id) FROM stdin;
3	3	1640083.23	\N	\N	16400.83	49202.50	\N	\N	3
4	4	416414.61	\N	\N	4164.15	12492.44	\N	\N	3
5	5	-2055297.38	\N	\N	-102764.87	-205529.74	\N	\N	3
1	1	61458152.79	\N	\N	800000.00	24000000.00	13140.00	1.46	3
2	2	1448638.52	\N	\N	400000.00	750000.00	291655.00	44.87	3
\.


--
-- Data for Name: add221performance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.add221performance (id, year, ovamount, percentage, peramount, taxperamount, a221id) FROM stdin;
2	2015	\N	\N	\N	\N	2
3	2017	291655.00	65.00	189575.75	0.00	3
\.


--
-- Data for Name: add231; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.add231 (id, isologismosdictionaryid, isimportant, y, pd, ak, ap, dd, tp, assessment, a231id, isimportantrisk, isimportantassessment) FROM stdin;
276	2	0	0	0	0	0	0	0	0	16	0	0
277	5	0	0	0	0	0	0	0	0	16	0	0
278	7	0	0	0	0	0	0	0	0	16	0	0
279	8	0	0	0	0	0	0	0	0	16	0	0
280	10	0	0	0	0	0	0	0	0	16	0	0
281	12	0	0	0	0	0	0	0	0	16	0	0
282	13	0	0	0	0	0	0	0	0	16	0	0
283	17	0	0	0	0	0	0	0	0	16	0	0
284	19	0	0	0	0	0	0	0	0	16	0	0
285	22	0	0	0	0	0	0	0	0	16	0	0
286	23	0	0	0	0	0	0	0	0	16	0	0
287	26	0	0	0	0	0	0	0	0	16	0	0
288	27	0	0	0	0	0	0	0	0	16	0	0
289	1	0	0	0	0	0	0	0	0	16	0	0
290	34	0	0	0	0	0	0	0	0	16	0	0
291	38	0	0	0	0	0	0	0	0	16	0	0
292	41	0	0	0	0	0	0	0	0	16	0	0
293	43	0	0	0	0	0	0	0	0	16	0	0
294	47	0	0	0	0	0	0	0	0	16	0	0
295	49	0	0	0	0	0	0	0	0	16	0	0
296	51	0	0	0	0	0	0	0	0	16	0	0
297	55	0	0	0	0	0	0	0	0	16	0	0
298	59	0	0	0	0	0	0	0	0	16	0	0
299	62	0	0	0	0	0	0	0	0	16	0	0
300	67	0	0	0	0	0	0	0	0	16	0	0
\.


--
-- Data for Name: base; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.base (id, name, nlslang) FROM stdin;
1	Περιουσιακά στοιχεία	el
2	Ίδια Κεφάλαια	el
3	Έσοδα	el
4	Έξοδα	el
5	Κέρδη προ φόρων	el
\.


--
-- Data for Name: flowchart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flowchart (id, phase, name, formname, nlslang, formtype, sorder, type, icon, css, flowchartparentid, state) FROM stdin;
2	1	Αποδοχή	statutory/acceptance	el	T	1.00	sub	av_timer	\N	1	statutory/acceptance
3	2	Σχεδιασμός	statutory/planning	el	T	1.00	sub	content_copy	\N	1	statutory/planning
\.


--
-- Data for Name: flowchartchild; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flowchartchild (id, phase, name, formname, nlslang, formtype, sorder, type, icon, css, flowchartid, state) FROM stdin;
5	1	1.1 Βασικές Πληροφορίες Ανάθεσης	a111	el	T	1.10	link	remove_red_eye	\N	2	acceptance-first-step
8	1	1.2 Ομάδα Ελέγχου	a121	el	T	1.20	link	remove_red_eye	\N	2	acceptance-second-step
6	2	2.1 Ουσιώδες Μέγεθος	a221	el	T	2.10	link	remove_red_eye	\N	3	planning-first-step
7	2	2.2 Σημαντικοί Λογαριασμοί	a231	el	T	2.20	link	remove_red_eye	\N	3	planning-second-step
\.


--
-- Data for Name: flowchartparent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flowchartparent (id, phase, name, formname, nlslang, formtype, sorder, type, icon, css) FROM stdin;
1	1	Τακτικός	statutory	el	T	1.00	sub	\N	\N
\.


--
-- Data for Name: formlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.formlist (id, formname) FROM stdin;
1	a111
3	a231
2	a221
4	a121
\.


--
-- Data for Name: formrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.formrole (id, formlistid, userroleid, state) FROM stdin;
6	2	35	\N
7	1	5	\N
8	3	5	\N
9	2	5	\N
13	1	11	\N
14	3	11	\N
15	2	11	\N
16	1	14	\N
17	3	14	\N
18	2	14	\N
19	1	17	\N
20	3	17	\N
21	2	17	\N
22	1	20	\N
23	3	20	\N
24	2	20	\N
25	1	23	\N
26	3	23	\N
27	2	23	\N
28	1	26	\N
29	3	26	\N
30	2	26	\N
31	1	29	\N
32	3	29	\N
33	2	29	\N
34	2	38	\N
4	1	35	0
36	4	35	\N
37	4	5	\N
38	4	8	\N
39	4	11	\N
40	4	14	\N
41	4	17	\N
42	4	20	\N
43	4	23	\N
44	4	26	\N
45	4	29	\N
10	1	8	1
46	1	41	1
12	2	8	0
5	3	35	0
11	3	8	0
\.


--
-- Data for Name: forms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.forms (id, tablename, nlslang, formtype, keli, onoma, typos, svalues, infos, cell, sfunction, css, sorder, sprint, optional, comments, help, upload, value) FROM stdin;
6783	a121	el	T		OWNER	OWNER		\N				0.00	0	0	\N	\N	\N	\N
6784	a121	el	T		Αναζητήστε Υπέυθυνο ανάθεσης	SEARCH ADMIN PLACE HOLDER		\N				0.00	0	0	\N	\N	\N	\N
6785	a121	el	T		Αναζητήστε Μέλος	SEARCH PLACE HOLDER		\N				0.00	0	0	\N	\N	\N	\N
6787	a121	el	T		Αναζητήστε EQCR	SEARCH EQCR PLACE HOLDER		\N				0.00	0	0	\N	\N	\N	\N
6792	a121	en	T		OWNER	OWNER		\N				0.00	0	0	\N	\N	\N	\N
6793	a121	en	T		Search Admin	SEARCH ADMIN PLACE HOLDER		\N				0.00	0	0	\N	\N	\N	\N
6796	a121	en	T		Search EQCR	SEARCH EQCR PLACE HOLDER		\N				0.00	0	0	\N	\N	\N	\N
6786	a121	el	T		Ονοματεπώνυμο Reviewer	EQCR		\N				4.00	0	0	\N	\N	\N	\N
6788	a121	el	T		Ονοματεπώνυμο υπεύθυνου ανάθεσης	ADMIN		\N				2.00	0	0	\N	\N	\N	\N
6789	a121	el	T		Μέλη Ελεγκτικής Ομάδας	MEMBER		\N				3.00	0	0	\N	\N	\N	\N
6790	a121	el	T		Ονοματεπώνυμο εταίρου ανάθεσης (partner)	PARTNER		\N				1.00	0	0	\N	\N	\N	\N
6795	a121	en	T		First and last name of engagement's manager	EQCR		\N				4.00	0	0	\N	\N	\N	\N
6797	a121	en	T		First and last name of engagement's manager	ADMIN		\N				2.00	0	0	\N	\N	\N	\N
6798	a121	en	T		Engagement team members	MEMBER		\N				3.00	0	0	\N	\N	\N	\N
6799	a121	en	T		First and last name of engagement's partner	PARTNER		\N				1.00	0	0	\N	\N	\N	\N
6794	a121	en	T		Search Member	SEARCH PLACE HOLDER		\N				0.00	0	0	\N	\N	\N	\N
6881	BUTTONS	en	T	title	Labels for Buttons	TITLE					custom-help	0.00	0	0			\N	\N
6801	LOGIN	el	T		Όνομα χρήστη	USERNAME PLACEHOLDER		\N				0.00	0	0	\N	\N	\N	\N
6802	LOGIN	el	T		Συνθηματικό	PASSWORD PLACEHOLDER		\N				0.00	0	0	\N	\N	\N	\N
6803	LOGIN	el	T		Σύνδεση	LOGIN BUTTON		\N				0.00	0	0	\N	\N	\N	\N
6805	LOGIN	en	T		Username	USERNAME PLACEHOLDER		\N				0.00	0	0	\N	\N	\N	\N
6806	LOGIN	en	T		Log In	LOGIN BUTTON		\N				0.00	0	0	\N	\N	\N	\N
6807	LOGIN	en	T		Password	PASSWORD PLACEHOLDER		\N				0.00	0	0	\N	\N	\N	\N
6808	LOGIN	el	T		Το όνομα χρήστη είναι υποχρεωτικό.	USERNAME REQUIRED		\N				0.00	0	0	\N	\N	\N	\N
6809	LOGIN	en	T		Username is required.	USERNAME REQUIRED		\N				0.00	0	0	\N	\N	\N	\N
6810	LOGIN	el	T		Το συνθηματικό είναι υποχρεωτικό.	PASSWORD REQUIRED		\N				0.00	0	0	\N	\N	\N	\N
6811	LOGIN	en	T		Password is required.	PASSWORD REQUIRED		\N				0.00	0	0	\N	\N	\N	\N
6813	LOGIN	en	T		Register	REGISTER BUTTON		\N				0.00	0	0	\N	\N	\N	\N
6878	RADIOBUTTONS	el	T	title	Λεκτικά Radio Buttons	TITLE		\N				0.00	0	0		\N	\N	0
6812	LOGIN	el	T		Εγγραφή	REGISTER BUTTON		\N				0.00	0	0	\N	\N	\N	\N
6879	RADIOBUTTONS	en	T	title	Labels for Radio Buttons	TITLE		\N				0.00	0	0		\N	\N	0
6888	FORM FIELDS	en	T	title	Labels management	TITLE		\N			custom-info	0.00	0	0	\N	\N	\N	\N
6889	FORM FIELDS	en	T		Complete	YES BUTTON		\N			custom-info	0.00	0	0	\N	\N	\N	\N
6890	FORM FIELDS	en	T		Cancel	NO BUTTON		\N			custom-info	0.00	0	0	\N	\N	\N	\N
6891	FORM FIELDS	en	T		Label	TABLE HEADERS		\N			custom-info	1.00	0	0	\N	\N	\N	\N
6892	FORM FIELDS	en	T		Type	TABLE HEADERS		\N			custom-info	2.00	0	0	\N	\N	\N	\N
6800	LOGIN	el	T	title	Σύνδεση στην εφαρμογή	TITLE		\N				0.00	0	0	\N	\N	\N	\N
6804	LOGIN	en	T	title	Login to App	TITLE		\N				0.00	0	0	\N	\N	\N	\N
6876	AFTER ORDER SELECTED	en	T	title	Display with project info	TITLE						0.00	0	0		\N	\N	\N
6877	AFTER ORDER SELECTED	el	T	title	Πληροφορίες project	TITLE						0.00	0	0		\N	\N	\N
6893	FORM FIELDS	en	T		Actions	TABLE HEADERS		\N			custom-info	3.00	0	0	\N	\N	\N	\N
6882	DELETE TABLE	el	T	title	Λεκτικά για το γενικό dialog της διαγραφής	TITLE		\N			custom-info	6.00	0	0	\N	\N	\N	\N
6883	DELETE TABLE	en	T	title	Labels for general delete dialog	TITLE		\N			custom-info	6.00	0	0	\N	\N	\N	\N
6884	DELETE MEMBER	el	T	title	Λεκτικά για το dialog διαγραφής μέλους	TITLE		\N			custom-info	6.00	0	0	\N	\N	\N	\N
6885	DELETE MEMBER	en	T	title	Labels for delete member dialog	TITLE		\N			custom-info	6.00	0	0	\N	\N	\N	\N
6886	EDIT TABLE	el	T	title	Λεκτικά για το dialog της επεξεργασίας φορμών	TITLE		\N			custom-info	6.00	0	0	\N	\N	\N	\N
6887	EDIT TABLE	en	T	title	Labels for forms edit dialog	TITLE		\N			custom-info	6.00	0	0	\N	\N	\N	\N
6791	a121	en	T	title	1.2.1 - Engagement Team	TITLE		\N			custom-info	2.00	0	0	\N	\N	\N	\N
6880	BUTTONS	el	T	title	Λεκτικά Buttons	TITLE					custom-help	0.00	0	0			\N	\N
6782	a121	el	T	title	1.2.1 - Ομάδα Ελέγχου	TITLE		\N			custom-info	2.00	0	0	\N	\N	\N	\N
6894	ASSIGN TABLE	el	title	title	Αντιστοίχηση φόρμας(φορμών) στο μέλος:	TITLE	\N	\N	\N	\N	custom-info	0.00	\N	\N	\N	\N	\N	\N
6895	ASSIGN TABLE	el	title	\N	Επιλέξτε την/τις φόρμα(ες):	PARAGRAPH	\N	\N	\N	\N	\N	1.00	\N	\N	\N	\N	\N	\N
6896	ASSIGN TABLE	el	title	\N	Εντάξει	YES BUTTON	\N	\N	\N	\N	\N	2.00	\N	\N	\N	\N	\N	\N
6897	ASSIGN TABLE	el	title	\N	Επιστροφή	NO BUTTON	\N	\N	\N	\N	\N	3.00	\N	\N	\N	\N	\N	\N
6898	ASSIGN TABLE	en	title	title	Assing form(s) to member:	TITLE	\N	\N	\N	\N	custom-info	0.00	\N	\N	\N	\N	\N	\N
6899	ASSIGN TABLE	en	title	\N	Select all wanted form(s):	PARAGRAPH	\N	\N	\N	\N	\N	1.00	\N	\N	\N	\N	\N	\N
6900	ASSIGN TABLE	en	title	\N	Ok	YES BUTTON	\N	\N	\N	\N	\N	2.00	\N	\N	\N	\N	\N	\N
6901	ASSIGN TABLE	en	title	\N	Return	NO BUTTON	\N	\N	\N	\N	\N	3.00	\N	\N	\N	\N	\N	\N
6814	LOGIN	el	T		Δεν έχετε λογαριασμό;	REGISTER TEXT		\N				0.00	0	0	\N	\N	\N	\N
6815	LOGIN	en	T		Don't have an account?	REGISTER TEXT		\N				0.00	0	0	\N	\N	\N	\N
6852	FORMS TABLE	en	T	title	Application vocabulary management	TITLE		\N			custom-info	0.00	0	0	\N	\N	\N	\N
6853	FORMS TABLE	el	T	title	Διαχείριση λεκτικών εφαρμογής	TITLE		\N			custom-info	0.00	0	0	\N	\N	\N	\N
6834	REGISTER	en	T	title	Register to App	TITLE		\N				0.00	0	0	\N	\N	\N	\N
6816	REGISTER	el	T	title	Εγγραφή στην εφαρμογή	TITLE		\N				0.00	0	0	\N	\N	\N	\N
6868	FORM FIELDS	el	T	title	Διαχείριση λεκτικών	TITLE		\N			custom-info	0.00	0	0	\N	\N	\N	\N
6840	REGISTER	el	T		Email	EMAIL PLACEHOLDER		\N				4.00	0	0	\N	\N	\N	\N
6841	REGISTER	el	T		Πρέπει να πληκτρολογήσετε ένα email.	EMAIL REQUIRED		\N				4.10	0	0	\N	\N	\N	\N
6842	REGISTER	el	T		Πρέπει να πληκτρολογήσετε ένα έγκυρο email.	VALID EMAIL REQUIRED		\N				4.20	0	0	\N	\N	\N	\N
6844	REGISTER	en	T		You must include an email address.	EMAIL REQUIRED		\N				4.10	0	0	\N	\N	\N	\N
6845	REGISTER	en	T		You must include a valid email address.	VALID EMAIL REQUIRED		\N				4.20	0	0	\N	\N	\N	\N
6843	REGISTER	en	T		Email address	EMAIL PLACEHOLDER		\N				4.00	0	0	\N	\N	\N	\N
6854	FORMS TABLE	el	T		Επιστροφή	NO BUTTON						6.00	0	0		\N	\N	\N
6855	FORMS TABLE	el	T		Εντάξει	YES BUTTON						6.00	0	0		\N	\N	\N
6871	FORM FIELDS	el	T		Ολοκλήρωση	YES BUTTON		\N			custom-info	0.00	0	0	\N	\N	\N	\N
6835	REGISTER	en	T		Username	USERNAME PLACEHOLDER		\N				3.00	0	0	\N	\N	\N	\N
6839	REGISTER	en	T		Password	PASSWORD PLACEHOLDER		\N				5.00	0	0	\N	\N	\N	\N
6821	REGISTER	en	T		You must include your last name.	LAST NAME REQUIRED		\N				2.10	0	0	\N	\N	\N	\N
6856	FORMS TABLE	en	T		Ok	YES BUTTON						6.00	0	0		\N	\N	\N
6857	FORMS TABLE	en	T		Return	NO BUTTON						6.00	0	0		\N	\N	\N
6872	FORM FIELDS	el	T		Ακύρωση	NO BUTTON		\N			custom-info	0.00	0	0	\N	\N	\N	\N
6817	REGISTER	el	T		Όνομα χρήστη	USERNAME PLACEHOLDER		\N				3.00	0	0	\N	\N	\N	\N
6818	REGISTER	el	T		Όνομα	FIRST NAME PLACEHOLDER		\N				1.00	0	0	\N	\N	\N	\N
6819	REGISTER	el	T		Επώνυμο	LAST NAME PLACEHOLDER		\N				2.00	0	0	\N	\N	\N	\N
6820	REGISTER	el	T		Πρέπει να πληκτρολογήσετε το όνομα σας.	FIRST NAME REQUIRED		\N				1.10	0	0	\N	\N	\N	\N
6822	REGISTER	el	T		Πρέπει να πληκτρολογήσετε το επώνυμό σας.	LAST NAME REQUIRED		\N				2.10	0	0	\N	\N	\N	\N
6824	REGISTER	el	T		Πρέπει να πληκτρολογήσετε ένα όνομα χρήστη.	USERNAME REQUIRED		\N				3.10	0	0	\N	\N	\N	\N
6823	REGISTER	en	T		You must include your first name.	FIRST NAME REQUIRED		\N				1.10	0	0	\N	\N	\N	\N
6825	REGISTER	en	T		You must include an username.	USERNAME REQUIRED		\N				3.10	0	0	\N	\N	\N	\N
6836	REGISTER	en	T		First Name	FIRST NAME PLACEHOLDER		\N				1.00	0	0	\N	\N	\N	\N
6837	REGISTER	en	T		Last Name	LAST NAME PLACEHOLDER		\N				2.00	0	0	\N	\N	\N	\N
6828	REGISTER	en	T		You must include password.	PASSWORD REQUIRED		\N				5.10	0	0	\N	\N	\N	\N
6846	REGISTER	en	T		Confirm Password	CONFIRM PASSWORD PLACEHOLDER		\N				6.00	0	0	\N	\N	\N	\N
6847	REGISTER	el	T		Επιβεβαίωση Κωδικού	CONFIRM PASSWORD PLACEHOLDER		\N				6.00	0	0	\N	\N	\N	\N
6826	REGISTER	el	T		Κωδικός	PASSWORD PLACEHOLDER		\N				5.00	0	0	\N	\N	\N	\N
6827	REGISTER	el	T		Πρέπει να πληκτρολογήσετε ένα κωδικό.	PASSWORD REQUIRED		\N				5.10	0	0	\N	\N	\N	\N
6848	REGISTER	en	T		You must include confirm password.	CONFIRM PASSWORD REQUIRED		\N				6.10	0	0	\N	\N	\N	\N
6849	REGISTER	el	T		Πρέπει να πληκτρολογήσετε τον παραπάνω κωδικό.	CONFIRM PASSWORD REQUIRED		\N				6.10	0	0	\N	\N	\N	\N
6850	REGISTER	en	T		Passwords do not match.	VALID CONFIRM PASSWORD REQUIRED		\N				6.20	0	0	\N	\N	\N	\N
6851	REGISTER	el	T		Οι κωδικοί πρόσβασης δεν ταιριάζουν.	VALID CONFIRM PASSWORD REQUIRED		\N				6.20	0	0	\N	\N	\N	\N
6863	FORMS TABLE	el	T		Γλώσσα	TABLE HEADERS		\N			custom-info	1.00	0	0	\N	\N	\N	\N
6862	FORMS TABLE	en	T		Language	TABLE HEADERS		\N			custom-info	1.00	0	0	\N	\N	\N	\N
6858	FORMS TABLE	en	T		Vocabulary	TABLE HEADERS		\N			custom-info	2.00	0	0	\N	\N	\N	\N
6859	FORMS TABLE	el	T		Λεκτικά	TABLE HEADERS		\N			custom-info	2.00	0	0	\N	\N	\N	\N
6860	FORMS TABLE	en	T		Actions	TABLE HEADERS		\N			custom-info	3.00	0	0	\N	\N	\N	\N
6861	FORMS TABLE	el	T		Ενέργειες	TABLE HEADERS		\N			custom-info	3.00	0	0	\N	\N	\N	\N
6864	REGISTER	en	T		Login	LOGIN BUTTON		\N				9.00	0	0	\N	\N	\N	\N
6865	REGISTER	el	T		Σύνδεση	LOGIN BUTTON		\N				9.00	0	0	\N	\N	\N	\N
6866	REGISTER	en	T		Already have an account?	LOGIN TEXT		\N				8.00	0	0	\N	\N	\N	\N
6867	REGISTER	el	T		Έχετε ήδη λογαριασμό;	LOGIN TEXT		\N				8.00	0	0	\N	\N	\N	\N
6830	REGISTER	el	T		Δημιουργία του Λογαριασμού	REGISTER BUTTON		\N				7.00	0	0	\N	\N	\N	\N
6831	REGISTER	en	T		Create Αccount	REGISTER BUTTON		\N				7.00	0	0	\N	\N	\N	\N
6869	FORM FIELDS	el	T		Λεκτικό	TABLE HEADERS		\N			custom-info	1.00	0	0	\N	\N	\N	\N
6870	FORM FIELDS	el	T		Ενέργειες	TABLE HEADERS		\N			custom-info	3.00	0	0	\N	\N	\N	\N
6873	FORM FIELDS	el	T		Τύπος	TABLE HEADERS		\N			custom-info	2.00	0	0	\N	\N	\N	\N
6874	HOME	en	T		Tables	FORMS HEADER						1.00	0	0		\N	\N	\N
6875	HOME	el	T		Πίνακες	FORMS HEADER						1.00	0	0		\N	\N	\N
394	a221	el	T		Καταχωρίστε το Ισογύζιο για Ενδιάμεση Χρήση ή Τελική Χρήση του ελέγχου	IMPORT BALANCE		\N			custom-legend-h3	20.00	0	0	\N	Θα πρέπει να καταχωρήσετε Ισοζύγιο στην φόρμα 1.3.1 της φάσης της Αποδοχής, επιλέγοντας το βήμα 1.3: Εισαγωή: Ισοζυγίου	\N	\N
397	a221	el	T		Μέγιστη επιτρεπτή τιμή	MAXVALUE		\N			\N	18.00	0	0	\N	\N	\N	\N
424	a221	el	T		Ελάχιστη επιτρεπτή τιμή	MINVALUE		\N			\N	19.00	0	0	\N	\N	\N	\N
3296	a111	el	T	endDate	Ελεγχόμενη χρήση (τέλος)	DATE	Επιλέξτε Ημερομηνία	\N				7.00	0	0	OK	\N	\N	\N
3293	a111	el	T	turnover	Κύκλος εργασιών	NUMBER		\N				10.00	0	0	OK	\N	\N	\N
3294	a111	el	T	branch	Κλάδος	TEXT		\N				11.00	0	0	OK	\N	\N	\N
3297	a111	el	T	agreementDate	Ημερομηνία εντολής ανάθεσης	DATE	Επιλέξτε Ημερομηνία	\N				12.00	0	0	OK	\N	\N	\N
3291	RADIOBUTTONS	el	T	LOSS	Ζημιογόνα	RESULTS		\N				1.00	0	0		\N	\N	1
3310	RADIOBUTTONS	el	T	PROFIT	Κερδοφόρα	RESULTS		\N				0.00	0	0		\N	\N	0
3607	a111	el	T	acceptance	Αποδοχή (ή μη) της ανάθεσης	TEXT		\N				23.00	0	0	NEW	\N	\N	\N
3649	HOME	en	T	year	Audit period	PROJECT HEADERS	year					1.50	0	0		\N	\N	\N
3648	HOME	en	T	recordDate	Record Date	PROJECT HEADERS	recordDate					1.60	0	0		\N	\N	\N
3623	a111	el	T	balanceSheetType	Κατηγορία Οντότητας	RADIO_ENTITY_TYPE		\N				9.00	0	0	OK	\N	\N	\N
3625	a221	el	T	overAmount	Γενικό Επίπεδο Ουσιώδους Μεγέθους	NUMBER		\N			\N	6.00	0	0	\N	\N	\N	\N
3624	HOME	en	T	orderTypeComments	Engagement type	PROJECT HEADERS	orderTypeComments					1.30	0	0		\N	\N	\N
3650	HOME	en	T	roles	Role	PROJECT HEADERS	roles					1.40	0	0		\N	\N	\N
3626	a221	el	T		Ουσιώδες μέγεθος εκτέλεσης (Performance Materiality)	LEGEND		\N			custom-legend-h3	8.00	0	0	\N	\N	\N	\N
3702	a221	el	T	baseId	Βάση υπολογισμού ουσιώδους μεγέθους	MATERIALITY_BASE		\N			custom-help	4.00	0	0	\N	Η βάση υπολογισμού του ουσιώδους μεγέθους αποτελεί ένα επιλεγμένο σημείο αναφοράς ως αφετηρία για τον καθορισμό του ουσιώδους μεγέθους για τις οικονομικές καταστάσεις ως σύνολο. Το ΔΠΕ 320(παρ. Α3, Α4) παραθέτει διάφορους παράγοντες που μπορούν να επηρεάσουν τον εντοπισμό ενός κατάλληλου σημείου αναφοράς.	\N	\N
3651	HOME	el	T	roles	Ρόλος	PROJECT HEADERS	roles					1.40	0	0		\N	\N	\N
3653	HOME	el	T	year	Χρήση	PROJECT HEADERS	year					1.50	0	0		\N	\N	\N
3654	HOME	el	T	recordDate	Ημερομηνία Εγγραφής	PROJECT HEADERS	recordDate					1.60	0	0		\N	\N	\N
3693	a221	el	T		Γενικό επίπεδο ουσιώδους μεγέθους (Overall Materiality)	LEGEND		\N			custom-legend-h3	4.00	0	0	\N	\N	\N	\N
3921	BUTTONS	el	T		Αποθήκευση	SAVE					custom-help	1.00	0	0			\N	\N
3969	a111	el	T	title	1.1.1 - Βασικές Πληροφορίες Ανάθεσης	TITLE		\N			custom-info	1.00	0	0	\N	\N	\N	\N
3923	BUTTONS	el	T		Επεξεργασία	EDIT					custom-help	2.00	0	0			\N	\N
3930	BUTTONS	el	T		Επιστροφή	RETURN					custom-help	3.00	0	0			\N	\N
3931	BUTTONS	el	T		Ολοκλήρωση	COMPLETE					custom-help	4.00	0	0			\N	\N
3932	BUTTONS	en	T		Save	SAVE					custom-help	1.00	0	0			\N	\N
3933	BUTTONS	en	T		Edit	EDIT					custom-help	2.00	0	0			\N	\N
3934	BUTTONS	en	T		Return	RETURN					custom-help	3.00	0	0			\N	\N
3935	BUTTONS	en	T		Finalize	COMPLETE					custom-help	4.00	0	0			\N	\N
4016	a111	en	T	acceptance	Acceptance (or not) of the engagement	ΤΕΧΤ		\N				23.00	0	0		\N	\N	\N
3991	a111	en	T	title	1.1.1 - Audit Engagement Overview	TITLE		\N			custom-info	1.00	0	0	\N	\N	\N	\N
3980	BUTTONS	el	T		Προβολή	VIEW					custom-help	3.00	0	0			\N	\N
3981	BUTTONS	en	T		View	VIEW					custom-help	4.00	0	0			\N	\N
4031	EDIT TABLE	el	T		Είστε σίγουροι;	TITLE		\N			custom-info	6.00	0	0	\N	\N	\N	\N
4030	a111	en	T	turnover	Revenue	NUMBER		\N				10.00	0	0		\N	\N	\N
4040	EDIT TABLE	en	T		Are you sure?	TITLE		\N			custom-info	6.00	0	0	\N	\N	\N	\N
4027	a111	en	T	branch	Industry	ΤΕΧΤ		\N				11.00	0	0		\N	\N	\N
4066	HOME	en	T	orderId	Engagement ID	PROJECT HEADERS	orderId					1.10	0	0		\N	\N	\N
4065	HOME	el	T	orderId	Α.Μ. εντολής	PROJECT HEADERS	orderId					1.10	0	0		\N	\N	\N
4038	HOME	en	T	customerName	Client	PROJECT HEADERS	customer					1.20	0	0		\N	\N	\N
4067	HOME	el	T	customerName	Πελάτης	PROJECT HEADERS	customer					1.20	0	0		\N	\N	\N
4032	EDIT TABLE	el	T		Με αυτή την ενέργεια η διαδικασία του ελέγχου θα επιστρέψει στο βήμα που θα επεξεργαστείτε.	PARAGRAPH						6.00	0	0		\N	\N	\N
4033	EDIT TABLE	en	T		No, cancel!	1						6.00	0	0		\N	\N	\N
4034	EDIT TABLE	en	T		Yes, continue!	0						6.00	0	0		\N	\N	\N
4035	EDIT TABLE	en	T		This action will return the control process to the step you are editing.	PARAGRAPH						6.00	0	0		\N	\N	\N
4036	EDIT TABLE	el	T		Ναι, συνέχεια!	0						6.00	0	0		\N	\N	\N
4037	EDIT TABLE	el	T		Όχι, ακύρωση!	1						6.00	0	0		\N	\N	\N
4056	HOME	el	T	orderTypeComments	Τύπος ελέγχου	PROJECT HEADERS	orderTypeComments					1.30	0	0		\N	\N	\N
4049	a111	el	T		Επωνυμία	SOLON API NAME		\N				1.00	0	0		\N	\N	\N
4050	a111	en	T		Name	SOLON API NAME		\N				1.00	0	0		\N	\N	\N
4148	RADIOBUTTONS	el	T	GENERAL_ASSEMBLY	Πρακτικό Γενικής Συνέλευσης	a215_CATEGORY					custom-help	0.00	0	0		\N	\N	0
4149	RADIOBUTTONS	en	T		Yes	YES_NO_DSP					custom-help	0.00	0	0		\N	\N	0
4150	RADIOBUTTONS	el	T		Ναι	YES_NO_DSP					custom-help	0.00	0	0		\N	\N	0
4151	RADIOBUTTONS	en	T		Public/Listed	ENTITY_TYPE					custom-help	0.00	0	0		\N	\N	0
4152	RADIOBUTTONS	el	T	BOARD	Πρακτικό Διοικητικού Συμβουλίου	a215_CATEGORY					custom-help	1.00	0	0		\N	\N	1
4195	RADIOBUTTONS	en	T	1	Component	a141Check					custom-help	1.00	0	0		\N	\N	1
4199	RADIOBUTTONS	el	T		Όχι	YES_NO_DSP					custom-help	1.00	0	0		\N	\N	1
4200	RADIOBUTTONS	en	T		No	YES_NO_DSP					custom-help	1.00	0	0		\N	\N	1
4201	RADIOBUTTONS	el	T		ΔΣΠ	YES_NO_DSP					custom-help	2.00	0	0		\N	\N	2
4239	RADIOBUTTONS	en	T		Yes	YES_NO					custom-help	0.00	0	0		\N	\N	0
4240	RADIOBUTTONS	en	T		GREEK GAAP	ECONOMIC_SITUATION					custom-help	0.00	0	0		\N	\N	0
4241	RADIOBUTTONS	el	T		ΕΛΠ	ECONOMIC_SITUATION					custom-help	0.00	0	0		\N	\N	0
4242	RADIOBUTTONS	en	T	0	Group	a141Check	 	 	 	 	custom-help	0.00	0	0	 	\N	\N	0
4243	RADIOBUTTONS	el	T		Δημοσίου Ενδιαφέροντος	ENTITY_TYPE					custom-help	0.00	0	0		\N	\N	0
4244	RADIOBUTTONS	el	T	0	Μητρικής	a141Check		 	 	 	custom-help	0.00	0	0	 	\N	\N	0
4246	RADIOBUTTONS	el	T		Μη δημοσίου ενδιαφέροντος	ENTITY_TYPE					custom-help	1.00	0	0		\N	\N	1
4248	RADIOBUTTONS	en	T		Private	ENTITY_TYPE					custom-help	1.00	0	0		\N	\N	1
4249	RADIOBUTTONS	el	T	1	Συστατικού	a141Check		 	 	 	custom-help	1.00	0	0	 	\N	\N	1
4250	RADIOBUTTONS	el	T		Ναι	YES_NO					custom-help	0.00	0	0		\N	\N	0
4251	RADIOBUTTONS	en	T		No	YES_NO					custom-help	1.00	0	0		\N	\N	1
4252	RADIOBUTTONS	en	T		IFRS	ECONOMIC_SITUATION	 	 	 	 	custom-help	1.00	0	0	 	\N	\N	1
4254	RADIOBUTTONS	el	T		ΔΛΠ	ECONOMIC_SITUATION					custom-help	1.00	0	0		\N	\N	1
4255	RADIOBUTTONS	en	T	BOARD	Πρακτικό Διοικητικού Συμβουλίου	a215_CATEGORY					custom-help	1.00	0	0		\N	\N	1
4293	a111	el	T	financialStatementsDate	Ημερομηνία σύνταξης οικονομικών καταστάσεων	DATE	Επιλέξτε Ημερομηνία	\N				14.00	0	0	OK	\N	\N	\N
4287	RADIOBUTTONS	el	T		Όχι	YES_NO					custom-help	1.00	0	0		\N	\N	1
4297	RADIOBUTTONS	en	T	GENERAL_ASSEMBLY	Πρακτικό Γενικής Συνέλευσης	a215_CATEGORY					custom-help	0.00	0	0		\N	\N	0
4430	RADIOBUTTONS	en	T		N/A	YES_NO_DSP					custom-help	2.00	0	0		\N	\N	2
4390	DELETE TABLE	el	T		Είστε σίγουροι;	TITLE		\N			custom-info	6.00	0	0	\N	\N	\N	\N
4372	DELETE TABLE	el	T		Με αυτή την ενέργεια θα διαγράψετε την εγγραφή σας!	PARAGRAPH						6.00	0	0		\N	\N	\N
4452	NAVBAR	en	T		Standard Financial Statements	STANDARD FINANCIAL STATEMENTS						2.20	0	0		\N	\N	\N
4454	NAVBAR	en	T		Standard Commercial Financial Statements	STANDARD COMMERCIAL FINANCIAL STATEMENTS						2.30	0	0		\N	\N	\N
4455	DELETE TABLE	el	T		Ναι, συνέχεια!	YES BUTTON						6.00	0	0		\N	\N	\N
4456	DELETE TABLE	el	T		Όχι, ακύρωση!	NO BUTTON						6.00	0	0		\N	\N	\N
4459	NAVBAR	el	T		Πρότυπο Εμπορικό Ισοζύγιο	STANDARD COMMERCIAL FINANCIAL STATEMENTS						2.30	0	0	Πρότυπο Εμπορικό Ισοζύγιο	\N	\N	\N
4460	NAVBAR	el	T		Πρότυπο Ισοζύγιο	STANDARD FINANCIAL STATEMENTS	216					2.20	0	0	Πρότυπο Ισοζύγιο	\N	\N	\N
4500	NAVBAR	en	T		Actions	ACTIONS						0.00	0	0		\N	\N	\N
4501	NAVBAR	el	T		Προβολές	DISPLAYS						1.00	0	0		\N	Προσθήκη Αρχείου	\N
4502	NAVBAR	en	T		Displays	DISPLAYS						1.00	0	0		\N	\N	\N
4503	NAVBAR	el	T		Πρότυπα Αρχεία	TOOLS						2.00	0	0		\N	\N	\N
4504	NAVBAR	en	T		Standard Files	TOOLS						2.00	0	0		\N	\N	\N
4505	NAVBAR	en	T		Balance	BALANCE	balance					1.30	0	0		\N	\N	\N
4506	NAVBAR	el	T		Ισοζύγιο	BALANCE	balance					1.30	0	0		\N	Προσθήκη Αρχείου	\N
4507	LOGOUT	el	T		Αποσύνδεση	LOGOUT						3.00	0	0		\N	exit_to_app	\N
4513	LOGOUT	en	T		Logout	LOGOUT						3.00	0	0		\N	\N	\N
4538	NAVBAR	el	T		Ενέργειες	ACTIONS						0.00	0	0		\N	\N	\N
4554	NAVBAR	en	T		Standard Calendar	STANDARD CALENDAR						2.10	0	0		\N	\N	\N
4555	NAVBAR	el	T		Πρότυπο Ημερολόγιο	STANDARD CALENDAR						2.10	0	0	Πρότυπο Ημερολόγιο	\N	\N	\N
4701	AFTER ORDER SELECTED	el	T		Α.Μ. Ελέγχου:	ORDERID						1.50	0	0		\N	\N	\N
4704	AFTER ORDER SELECTED	en	T		Engagement ID:	ORDERID						1.50	0	0		\N	\N	\N
4707	AFTER ORDER SELECTED	el	T		Είδος Ελέγχου:	ORDER TYPE						1.30	0	0		\N	\N	\N
4731	AFTER ORDER SELECTED	el	T		Α.Φ.Μ.:	AFM						1.60	0	0		\N	\N	\N
4733	AFTER ORDER SELECTED	el	T		Επωνυμία Εταιρείας:	COMPANY NAME						1.10	0	0		\N	\N	\N
4734	AFTER ORDER SELECTED	el	T		Κατάσταση ελέγχου:	STATUS						1.20	0	0		\N	\N	\N
4736	AFTER ORDER SELECTED	el	T		Χρήση:	YEAR						1.50	0	0		\N	\N	\N
4742	AFTER ORDER SELECTED	en	T		Company Name:	COMPANY NAME						1.30	0	0		\N	\N	\N
4743	AFTER ORDER SELECTED	en	T		V.A.T.:	AFM						1.50	0	0		\N	\N	\N
4744	AFTER ORDER SELECTED	en	T		Order Status:	STATUS						1.20	0	0		\N	\N	\N
4745	AFTER ORDER SELECTED	en	T		Order Type:	ORDER TYPE						1.10	0	0		\N	\N	\N
4751	AFTER ORDER SELECTED	en	T		Year:	YEAR						1.50	0	0		\N	\N	\N
4857	DELETE MEMBER	el	T		Είστε σίγουροι;	TITLE		\N			custom-info	6.00	0	0	\N	\N	\N	\N
4844	NAVBAR	el	T		Ημερολόγιο	CALENDAR	calendar					1.30	0	0		\N	Προσθήκη Αρχείου	\N
4845	NAVBAR	en	T		Calendar	CALENDAR	calendar					1.30	0	0		\N	\N	\N
4855	DELETE MEMBER	en	T		Yes, continue!	YES BUTTON						6.00	0	0		\N	\N	\N
4858	DELETE MEMBER	el	T		Με αυτή την ενέργεια θα διαγράψετε το επιλεγμένο μέλος!	PARAGRAPH MEMBER						6.00	0	0		\N	\N	\N
4859	DELETE MEMBER	en	T		This action will delete the selected member!	PARAGRAPH MEMBER						6.00	0	0		\N	\N	\N
4860	DELETE MEMBER	el	T		Με αυτή την ενέργεια θα διαγράψετε τον υπεύθυνο ανάθεσης!	PARAGRAPH ADMIN						6.00	0	0		\N	\N	\N
4861	DELETE MEMBER	en	T		This action will delete the selected admin!	PARAGRAPH ADMIN						6.00	0	0		\N	\N	\N
4869	DELETE MEMBER	el	T		Όχι, ακύρωση!	NO BUTTON						6.00	0	0		\N	\N	\N
4870	DELETE MEMBER	el	T		Ναι, συνέχεια!	YES BUTTON						6.00	0	0		\N	\N	\N
4873	DELETE TABLE	en	T		No, cancel!	NO BUTTON						6.00	0	0		\N	\N	\N
4874	DELETE TABLE	en	T		With this action you will delete your row!	PARAGRAPH						6.00	0	0		\N	\N	\N
4875	DELETE TABLE	en	T		Yes, continue!	YES BUTTON						6.00	0	0		\N	\N	\N
4876	DELETE MEMBER	en	T		No, cancel!	NO BUTTON						6.00	0	0		\N	\N	\N
4884	DELETE TABLE	en	T		Are you sure?	TITLE		\N			custom-info	6.00	0	0	\N	\N	\N	\N
4894	DELETE MEMBER	en	T		Are you sure?	TITLE		\N			custom-info	6.00	0	0	\N	\N	\N	\N
5025	a111	en	T	archivingDate	Archiving date	DATE	Choose a Date	60 days subsequent to the auditor's report				17.00	0	0		\N	\N	\N
5027	a111	el	T	archivingDate	Ημερομηνία αρχειοθέτησης 	DATE	Επιλέξτε Ημερομηνία	60 ημέρες μετά την έκδοση της έκθεσης ελέγχου				17.00	0	0	OK	\N	\N	\N
5040	a111	el	T	startDate	Ελεγχόμενη χρήση (αρχή)	DATE	Επιλέξτε Ημερομηνία	\N				6.00	0	0	OK	\N	\N	\N
5041	a111	en	T	startDate	Start of reporting period	DATE	Choose a Date	\N				6.00	0	0		\N	\N	\N
5042	a111	en	T	balanceSheetType	Entity type	RADIO_ENTITY_TYPE	Public / Listed, Private, Governmental	\N				9.00	0	0		\N	\N	\N
5043	a111	en	T	agreementDate	Date of engagement order	DATE	Choose a Date	\N				12.00	0	0		\N	\N	\N
5037	a111	el	T	letterDate	Ημερομηνία επιστολής ανάθεσης	DATE	Επιλέξτε Ημερομηνία	\N				13.00	0	0	OK	\N	\N	\N
5044	a111	en	T	letterDate	Date of engagement letter	DATE	Choose a Date	\N				13.00	0	0		\N	\N	\N
5038	a111	el	T	appointmentDate	Ημερομηνία Γ.Σ. εκλογής ορκωτών ελεγκτών	DATE	Επιλέξτε Ημερομηνία	\N				15.00	0	0	OK	\N	\N	\N
5039	a111	el	T	reportDate	Ημερομηνία έκδοσης έκθεσης ελέγχου	DATE	Επιλέξτε Ημερομηνία	\N				16.00	0	0	OK	\N	\N	\N
5021	a111	el	T	consecutiveYears	Συνεχόμενα έτη ίδιου εταίρου ανάθεσης	NUMBER		\N				18.00	0	0	OK	\N	\N	\N
5028	a111	en	T	consecutiveYears	Consecutive years of audit partner	NUMBER		\N				18.00	0	0		\N	\N	\N
5024	a111	el	T	hours	Ελεγκτικές ώρες ανάθεσης	SOLON API HOURS		Ελεγκτικές ώρες ανάθεσης =< 300				22.00	0	0	OK	\N	\N	\N
5026	a111	en	T	hours	Audit engagement hours	SOLON API HOURS		Audit engagement hours =< 300				22.00	0	0		\N	\N	\N
5049	a111	en	T	endDate	End of reporting period	DATE	Choose a Date	\N				7.00	0	0		\N	\N	\N
5045	a111	en	T	financialStatementsDate	Date of approval of financial statements	DATE	Choose a Date	\N				14.00	0	0		\N	\N	\N
5046	a111	en	T	appointmentDate	Date of selection of certified auditors from the Board of Directors	DATE	Choose a Date	\N				15.00	0	0		\N	\N	\N
5047	a111	en	T	reportDate	Date of auditor's report	DATE	Choose a Date	\N				16.00	0	0		\N	\N	\N
5067	RADIOBUTTONS	en	T		Governmental	TACTICAL_OTA	1				custom-help	1.00	0	0		\N	\N	1
5068	RADIOBUTTONS	el	T		ΕΓΛΣ	ECONOMIC_SITUATION					custom-help	2.00	0	0		\N	\N	1
5076	RADIOBUTTONS	en	T		Statutory	TACTICAL_OTA	0				custom-help	0.00	0	0		\N	\N	0
5104	RADIOBUTTONS	en	T		GREEK GENERAL CHART OF ACCOUNTS	ECONOMIC_SITUATION	 	 	 	 	custom-help	2.00	0	0	 	\N	\N	1
5118	RADIOBUTTONS	el	T		Τακτικό	TACTICAL_OTA	0				custom-help	0.00	0	0		\N	\N	0
5119	RADIOBUTTONS	el	T		ΟΤΑ	TACTICAL_OTA	1				custom-help	1.00	0	0		\N	\N	1
5237	add221overall	el	T	base	Βάση	TABLE FINAL		\N				1.10	0	0		\N	\N	\N
5253	a221	el	T	title	2.1.1 - Ουσιώδες Μέγεθος	TITLE		\N			custom-info	3.00	0	0	\N	\N	\N	\N
5227	add231	el	T	a8	ΑΚ	A8		Ακρίβεια				10.00	1	0		\N	\N	\N
5228	RADIOBUTTONS	el	T		Έσοδα	MATERIALITY_BASE					custom-help	1.00	0	0		\N	\N	1
5229	add231	el	T	a7	Π/Δ	A7		Πληρότητα / Διαχωρισμός				9.00	1	0		\N	\N	\N
5230	add231	el	T	a6	ΥΠ	A6		Ύπαρξη				8.00	1	0		\N	\N	\N
5233	add231	el	T	a2	Ποσό	NUMBER	\N	\N				2.00	1	0		\N	\N	\N
5234	RADIOBUTTONS	el	T		Περιουσιακά στοιχεία	MATERIALITY_BASE					custom-help	0.00	0	0		\N	\N	0
5235	RADIOBUTTONS	el	T		Έξοδα	MATERIALITY_BASE					custom-help	2.00	0	0		\N	\N	2
5250	add221overall	el	T	overAmount	Επιλογή Ποσού	TABLE FINAL		\N				1.70	0	0		\N	\N	\N
5236	add221overall	el	T	percentage	Ποσοστό	TABLE FINAL		\N				1.80	0	0		\N	\N	\N
5241	add231	el	T	a4	Ουσιώδης;	CHECKBOX	\N	\N				3.00	1	0		\N	\N	\N
5224	add221overall	el	T	minLimit	Κατώτερο Όριο	TABLE FINAL		\N				1.50	0	0		\N	\N	\N
5243	add231	el	T	a5	Σημαντική;	CHECKBOX	\N	\N				4.00	1	0		\N	\N	\N
5226	add221overall	el	T	maxLimit	Ανώτερο Όριο	TABLE FINAL		\N				1.60	0	0		\N	\N	\N
5245	add231	el	T	a13	Εκτίμηση;	CHECKBOX		\N				6.00	1	0		\N	\N	\N
5258	a221	el	T			MODAL add211overall		\N			\N	5.00	0	0	\N	\N	\N	\N
5251	add231	el	T	a9	ΑΠ	A9		Αποτίμηση				11.00	1	0		\N	\N	\N
5254	add231	el	T	a10	Δ/Δ	A10		Δικαιώματα / Δεσμεύσεις				12.00	1	0		\N	\N	\N
5255	add231	el	T	a11	Τ/Π	A11		Ταξινόμηση / Παρουσίαση				13.00	1	0		\N	\N	\N
5259	a231	el	T	a1	Ουσιώδες Μέγεθος Εκτέλεσης	NUMBER	\N	\N				1.00	1	0		\N	\N	\N
5260	add231	el	T	a1	Γραμμή οικονομικών καταστάσεων	NUMBER	\N	\N				1.00	1	0		\N	\N	\N
5262	a231	el	T			MODAL add231	\N	\N				2.00	0	0	Δεν προσθέτει νέα γραμμή	\N	\N	\N
5295	a221	el	T	taxOverAmount	Γενικό Επίπεδο Ουσιώδους Μεγέθους Φορολογικού Ελέγχου	NUMBER		\N			\N	6.10	0	0	\N	\N	\N	\N
5264	RADIOBUTTONS	el	T		Κέρδη προ φόρων	MATERIALITY_BASE					custom-help	3.00	0	0		\N	\N	3
5265	RADIOBUTTONS	el	T		Ίδια Κεφάλαια	MATERIALITY_BASE					custom-help	4.00	0	0		\N	\N	4
5296	a221	el	T	documentationBase	Τεκμηρίωση επιλογής βάσης και Γενικού Επιπέδου Ουσιώδους Μεγέθους	TEXT AREA		\N			\N	7.00	0	0	\N	\N	\N	\N
5282	add221performance	el	T	year	Έτος	TEXT AREA		\N				1.10	0	0	\N	\N	\N	\N
5277	add221performance	el	T	overAmount	Γενικό Επίπεδο Ουσιώδους Μεγέθους	NUMBER		\N				1.20	0	0	\N	\N	\N	\N
5274	add221performance	el	T	percentage	Ποσοστό	NUMBER		\N				1.30	0	0	\N	\N	\N	\N
5280	add221performance	el	T	perAmount	Ουσιώδες Μέγεθος Εκτέλεσης	NUMBER		\N				1.40	0	0	\N	\N	\N	\N
5279	add221performance	el	T	taxPerAmount	Ουσιώδες Μέγεθος Εκτέλεσης Φορολογικού Ελέγχου	NUMBER		\N				1.50	0	0	\N	\N	\N	\N
5287	a221	el	T			MODAL add211performance		\N			\N	9.00	0	0	\N	\N	\N	\N
5304	RADIOBUTTONS	el	T	0	Κατηγορία συναλλαγών	SPECIFIC_CATEGORY					custom-help	0.00	0	0		\N	\N	0
5305	RADIOBUTTONS	el	T	1	Υπόλοιπο λογαριασμού	SPECIFIC_CATEGORY					custom-help	1.00	0	0		\N	\N	1
5310	RADIOBUTTONS	el	T	2	Γνωστοποίηση	SPECIFIC_CATEGORY					custom-help	2.00	0	0		\N	\N	2
5409	RADIOBUTTONS	el	T		Η διοίκηση δίνει ιδιαίτερη προσοχή στο να επιλέγει τις μεθόδους, υποθέσεις και δεδομένα για τον υπολογισμό της λογιστικής εκτίμησης.	a253_a17						0.00	0	0		\N	\N	0
5410	RADIOBUTTONS	el	T		Αυτοί που είναι επιφορτισμένοι με τη διακυβέρνηση (ή και η διοίκηση αν δεν υφίσταται ανεξάρτητη λειτουργία) έχουν τις δεξιότητες ή γνώσεις να κατανοήσουν τα χαρακτηριστικά μια συγκεκριμένης μεθόδου ή στατιστικού μοντέλου που δημιουργεί λογιστικές εκτιμήσεις καθώς και του κινδύνους σχετικά με τις λογιστικές εκτιμήσεις.	a253_a15						0.00	0	0		\N	\N	0
5411	RADIOBUTTONS	el	T		Αυτοί που είναι επιφορτισμένοι με τη διακυβέρνηση έχουν τις δεξιότητες και γνώσεις να κατανοήσουν εάν η διοίκηση κατέγραψε τις λογιστικές εκτιμήσεις σύμφωνα με το εφαρμοστέο πλαίσιο χρηματοοικονομικής αναφοράς.	a253_a15						1.00	0	0		\N	\N	1
5412	RADIOBUTTONS	el	T		Αυτοί που είναι επιφορτισμένοι με τη διακυβέρνηση είναι ανεξάρτητοι από τη διοίκηση, διαθέτουν τις κατάλληλες πληροφορίες να εκτιμήσουν έγκαιρα πως η διοίκηση διενεργεί λογιστικές εκτιμήσεις καθώς και τη δικαιοδοσία να καλούν τη διοίκηση για περαιτέρω ερωτήσεις σχετικά με τον ακατάλληλο και ανεπαρκές υπολογισμό της λογιστικής εκτίμησης.	a253_a15						2.00	0	0		\N	\N	2
5413	RADIOBUTTONS	el	T		Αυτοί που είναι επιφορτισμένοι με τη διακυβέρνηση επισκοπούν τη διοίκηση κατά τη διαδικασία υπολογισμού της λογιστικής εκτίμησης, συμπεριλαμβανομένου και τη χρησιμοποίησης στατιστικών μοντέλων	a253_a15						3.00	0	0		\N	\N	3
5414	RADIOBUTTONS	el	T		Άλλο	a253_a15						4.00	0	0		\N	\N	4
5415	RADIOBUTTONS	el	T		Η διοίκηση κατανοεί ότι η φύση του υπολογισμού της λογιστικής εκτίμησης χρειάζεται εξειδικευμένη γνώση και δεξιότητες.	a253_a16						0.00	0	0		\N	\N	0
5416	RADIOBUTTONS	el	T		Η διοίκηση κατανοεί τη φύση και την πολυπλοκότητα του απαραίτητου μοντέλου για τον υπολογισμό της λογιστικής εκτίμησης σύμφωνα με το εφαρμοστέο πλαίσιο χρηματοοικονομικής αναφοράς.	a253_a16						1.00	0	0		\N	\N	1
5417	RADIOBUTTONS	el	T		Η διοίκηση κατανοεί εάν η φύση των συναλλαγών ή γεγονότων που απαιτούν τον υπολογισμό λογιστικής εκτίμησης είναι ασυνήθης ή σπάνια.	a253_a16						2.00	0	0		\N	\N	2
5418	RADIOBUTTONS	el	T		Άλλο	a253_a16						3.00	0	0		\N	\N	3
5419	RADIOBUTTONS	el	T		Η διοίκηση παρακολουθεί βασικά σημεία απόδοσης τα οποία μπορεί να δείχνουν απρόβλεπτα ή μη συνεπή αποτελέσματα όταν αυτά συγκρίνονται με ιστορικά ή προυπολογισμένα αποτελέσματα ή για άλλους γνωστούς λόγους. 	a253_a17						1.00	0	0		\N	\N	1
5420	RADIOBUTTONS	el	T		Η διοίκηση εντοπίζει χρηματοοικονομικά ή άλλα κίνητρα τα οποία δίνουν κίνητρο για μεροληψία.	a253_a17						2.00	0	0		\N	\N	2
5421	RADIOBUTTONS	el	T		Η διοίκηση παρακολουθεί την ανάγκη για αλλαγές στις μεθόδους, σημαντικές υποθέσεις ή στα δεδομένα που χρησιμοποιούνται για τον υπολογισμό της λογιστικής εκτίμησης.	a253_a17						3.00	0	0		\N	\N	3
5424	RADIOBUTTONS	el	T		Η διοίκηση έχει θεσπίσει τον κατάλληλο μηχανισμό παρακολούθησης και επισκόπησης των μοντέλων που χρησιμοποιούνται για τον υπολογισμό της λογιστικής εκτίμησης.	a253_a17						4.00	0	0		\N	\N	4
5425	RADIOBUTTONS	el	T		Η διοίκηση έχει εφαρμόσει μια διαδικασία που απαιτεί τεκμηρίωση / καταγραφή της λογικής των σημαντικών αποφάσεων κατά τον υπολογισμό της λογιστικής εκτίμησης.	a253_a17						5.00	0	0		\N	\N	5
5426	RADIOBUTTONS	el	T		Η διοίκηση έχει εφαρμόσει μια διαδικασία επιβεβαίωσης των μοντέλων σε συγκεκριμένες περιόδους.	a253_a17						6.00	0	0		\N	\N	6
5427	RADIOBUTTONS	el	T		Η διοίκηση έχει εφαρμόσει επαρκή διαχωρισμό καθηκόντων μεταξύ αυτών που είναι υπεύθυνοι για τις διαδικασίες εκτίμησης κινδύνων και αυτών που συμμετέχουν στον υπολογισμό της λογιστικής εκτίμησης.	a253_a17						7.00	0	0		\N	\N	7
5428	RADIOBUTTONS	el	T		Άλλο	a253_a17						8.00	0	0		\N	\N	8
5457	a231	el	T		Τελικός	FINAL	\N	\N				0.00	0	0		\N	\N	\N
5458	a231	el	T		Ενδιάμεσος	INTERMEDIATE	\N	\N				0.00	0	0		\N	\N	\N
5461	a231	el	T		Οι οικονομικές σας γραμμές έχουν αλλάξει. Επιλέξτε το κουμπί τις ανανέωσης.	REFRESH MESSAGE	\N	\N				0.00	0	0		\N	\N	\N
5462	a231	el	T		Ανανέωση	REFRESH BUTTON	\N	\N				0.00	0	0		\N	\N	\N
5467	a221	el	T	documentationPerformance	Τεκμηρίωση επιλογής Ουσιώδους Μεγέθους Εκτέλεσης	TEXT AREA		\N			custom-help	10.00	0	0	\N	Το ποσό ή ποσά που τίθενται από τον ελεγκτή σε μικρότερο επίπεδο από το ουσιώδες μέγεθος των οικονομικών καταστάσεων ως συνόλου για να μειωθεί σε ένα αποδεκτά χαμηλό επίπεδο η πιθανότητα το άθροισμα των μη διορθωμένων και μη εντοπισμένων σφαλμάτων να υπερβαίνει το ουσιώδες μέγεθος για τις οικονομικές καταστάσεις ως σύνολο. Όταν συντρέχει περίπτωση, το ουσιώδες μέγεθος εκτέλεσης αναφέρεται επίσης στο ποσό ή ποσά που τίθενται από τον ελεγκτή χαμηλότερα από το επίπεδο ή επίπεδα ουσιώδους μεγέθους για συγκεκριμένες κατηγορίες συναλλαγών, υπόλοιπα λογαριασμών ή γνωστοποιήσεις.	\N	\N
5479	RADIOBUTTONS	el	T		Μ.Α.μ.Α.Σ.	CONTROL_TYPE		Μη αυτοματοποιημένη με αυτοματοποιημένο συστατικό				2.00	0	0		\N	\N	2
5510	BUTTONS	el	T		Ναι	YES					custom-help	3.00	0	0			\N	\N
5502	RADIOBUTTONS	el	T		M.A.	CONTROL_TYPE		Μη αυτοματοποιημένη				0.00	0	0		\N	\N	0
5503	RADIOBUTTONS	el	T		Αυτ.	CONTROL_TYPE		Αυτοματοποιημένη				1.00	0	0		\N	\N	1
5511	BUTTONS	el	T		Όχι	NO					custom-help	4.00	0	0			\N	\N
5512	BUTTONS	en	T		Yes	YES					custom-help	4.00	0	0			\N	\N
5513	BUTTONS	en	T		No	NO					custom-help	4.00	0	0			\N	\N
5522	RADIOBUTTONS	el	T		Καθημερινή	FREQUENCY						0.00	0	0		\N	\N	0
5523	RADIOBUTTONS	el	T		Εβδομαδιαία	FREQUENCY						1.00	0	0		\N	\N	1
5524	RADIOBUTTONS	el	T		Μηνιαία	FREQUENCY						2.00	0	0		\N	\N	2
5525	RADIOBUTTONS	el	T		Τριμηνιαία	FREQUENCY						3.00	0	0		\N	\N	3
5526	RADIOBUTTONS	el	T		Ετήσια	FREQUENCY						4.00	0	0		\N	\N	4
5527	RADIOBUTTONS	el	T		Άλλη	FREQUENCY						5.00	0	0		\N	\N	5
5554	a221	en	T		The value is greater than the maximum	MAXVALUE		\N			\N	18.00	0	0	\N	\N	\N	\N
5555	a221	en	T		The value is lower than the minimum	MINVALUE		\N			\N	19.00	0	0	\N	\N	\N	\N
5572	RADIOBUTTONS	el	T		Χ	XMY		Χαμηλό IR				0.00	0	0		\N	\N	0
5574	RADIOBUTTONS	el	T		Μ	XMY		Μέτριο IR				1.00	0	0		\N	\N	1
5578	RADIOBUTTONS	el	T		Υ	XMY		Υψηλό IR				2.00	0	0		\N	\N	2
5821	RADIOBUTTONS	el	T		Τ. Γ.	CONSBODY		Τεχνικό Γραφείο				0.00	0	0		\N	\N	0
5826	RADIOBUTTONS	el	T		Φ. Ε.	CONSBODY		Φορολογική Επιτροπή				1.00	0	0		\N	\N	1
5827	RADIOBUTTONS	el	T		Άλλο	CONSBODY		Άλλο				2.00	0	0		\N	\N	2
5920	RADIOBUTTONS	el	T	IT	IT Audit	SPECIALTY						0.00	0	0		\N	\N	0
5929	RADIOBUTTONS	el	T	TAX	Φορολογικό	SPECIALTY						1.00	0	0		\N	\N	1
5930	RADIOBUTTONS	el	T	ACTUARY	Αναλογιστής	SPECIALTY						2.00	0	0		\N	\N	2
5931	RADIOBUTTONS	el	T	ESTIMATOR	Εκτιμητής	SPECIALTY						3.00	0	0		\N	\N	3
5933	RADIOBUTTONS	el	T	OTHER	Άλλο	SPECIALTY						4.00	0	0		\N	\N	4
6285	add231	el	T	actions	Ενέργειες			\N				7.00	0	0		\N	\N	\N
6289	add231	el	T	declarations	Ισχυρισμοί	CHECKBOX	\N	\N				5.00	1	0		\N	\N	\N
6315	add221overall	el	T	interimBaseAmount	Ποσό Βάσης	TABLE FINAL		\N				1.40	0	0		\N	\N	\N
6320	a221	en	T		Add	ADD BUTTON TITLE		\N			\N	0.00	0	0		\N	\N	\N
6324	a221	el	T		Προσθήκη	ADD BUTTON TITLE		\N			\N	0.00	0	0		\N	\N	\N
6587	a231	el	T	title	2.2.1 - Σημαντικοί Λογαριασμοί και Σχετικοί Ισχυρισμοί	TITLE	\N	\N			custom-info	4.00	1	0	\N	<b><font color="4C92ED">125.034</font></b> - Ο ελεγκτής πρέπει να εντοπίσει σημαντικούς λογαριασμούς και γνωστοποιήσεις και τους σχετικούς ισχυρισμούς τους. Σχετικοί ισχυρισμοί είναι αυτοί οι ισχυρισμοί οικονομικών καταστάσεων που έχουν εύλογη πιθανότητα να περιέχουν σφάλμα το οποίο θα είχε σαν αποτέλεσμα οι οικονομικές καταστάσεις να είναι ουσιωδώς εσφαλμένες. Οι ισχυρισμοί οικονομικών καταστάσεων καλύπτονται στο κεφάλαιο 10, ισχυρισμοί. <br><br> <b><font color="4C92ED">125.035</font></b> - Ο εντοπισμός σημαντικών λογαριασμών και γνωστοποιήσεων είναι ζήτημα κρίσεως που απαιτεί ποιοτική και ποσοτική κρίση. Οι παρακάτω παράγοντες κινδύνων που βοηθούν στη διαδικασία εντοπισμού μπορούν να βρεθούν στο AS 5: <ul> <li> Μέγεθος και σύνθεση του λογαριασμού, </li><li>Ευαισθησία σε (εγγενή κίνδυνο) ανακρίβεια λόγω σφαλμάτων ή απάτης </li><li>Όγκος δραστηριότητας, πολυπλοκότητα και ομοιογένεια των μεμονωμένων συναλλαγών που περιέχονται στον λογαριασμό και την γνωστοποίηση, </li><li>Φύση του λογαριασμού ή γνωστοποίησης, </li><li> Λογιστικές πολυπλοκότητες που συνδέονται με τον λογαριασμό ή την γνωστοποίηση</li><li> Έκθεση σε ζημιές στον λογαριασμό, </li><li>  Πιθανότητα σημαντικών ενδεχόμενων υποχρεώσεων που προκύπτουν απο δραστηριότητες που υπάρχουν μεσα στο λογαριασμό ή στη γνωστοποίηση, </li><li>Ύπαρξη συνδεδεμένων μέρων στο λογαριασμό, </li><li>Αλλαγές απο προηγούμενες περιόδους στον λογαριασμό ή στα χαρακτηριστικά της γνωστοποίησης</li>	\N	\N
6588	add231	el	T		Ποσό προηγούμενης χρήσης	NUMBER	\N	\N				2.10	1	0		\N	\N	\N
6632	RADIOBUTTONS	el	T		Δεν εντοπίστηκε παράγοντας απάτης	INQRESULT					custom-help	0.00	0	0		\N	\N	0
6637	RADIOBUTTONS	el	T		Εντοπίστηκε παράγοντας απάτης	INQRESULT					custom-help	1.00	0	0		\N	\N	1
6649	RADIOBUTTONS	el	T		Η ημερομηνία αναφοράς SOC τύπου 1 είναι επαρκής να υποστηρίξει την κατανόηση μας σχετικά με τις υπηρεσίες που παρέχονται από τον οργανισμό υπηρεσιών.	EVALUATION						0.00	0	0		\N	\N	0
6665	RADIOBUTTONS	el	T		Δεν υπάρχει διαφορά ή κενό ανάμεσα στην ημερομηνία που καλύπτεί μια αναφορά τύπου 1 ή μια περίοδο που καλύπτει μια αναφορά τύπου 2 με την ημερομηνία των οικονομικών καταστάσεων της ελεγχόμενης οντότητας.	ADDPROCEDURES						0.00	0	0		\N	\N	0
6666	RADIOBUTTONS	el	T		Λάβαμε ένα γράμμα γέφυρα (bridge letter) ή μια αναφορά από τον οργανισμό υπηρεσιών που καλύπτει τη διαφορά ή το κενό ανάμεσα στην ημερομηνία αναφοράς SOC τύπου 1 ή την περίοδο που καλύπτει η αναφορά SOC τύπου 2.	ADDPROCEDURES						1.00	0	0		\N	\N	1
6667	RADIOBUTTONS	el	T		Λάβαμε ανανεωμένη αναφορά SOC τύπου 1 ή αναφορά SOC τύπου 2 που καλύπτει τη ημερομηνία των οικονομικών καταστάσεων της οντότητας.	ADDPROCEDURES						2.00	0	0		\N	\N	2
6668	RADIOBUTTONS	el	T		Εκτελέσαμε άλλες εναλλακτικές διαδικασίες	ADDPROCEDURES						3.00	0	0		\N	\N	3
6669	RADIOBUTTONS	el	T		Η περίοδος που καλύπτει η αναφορά SOC τύπου 2 είναι επαρκής να υποστηρίξει την κατανόηση μας σχετικά με τις υπηρεσίες που παρέχονται από τον οργανισμό υπηρεσιών και την αξιολόγηση μας για την λειτουργική αποτελεσματικότητα των εσωτερικών δικλίδων του οργανισμού υπηρεσιών.	EVALUATION						1.00	0	0		\N	\N	1
6670	RADIOBUTTONS	el	T		Η ημερομηνία της αναφοράς SOC τύπου 1 ή η περίοδος που καλύπτει η αναφορά SOC τύπου 2 δεν είναι επαρκής για τον σκοπό μας και δεν παρέχει επαρκή τεκμηρίωση ώστε να υποστηρίξει την κατανόηση μας σχετικά με τις υπηρεσίες που παρέχονται από τον οργανισμό υπηρεσιών και την αξιολόγηση μας για την λειτουργική αποτελεσματικότητα των εσωτερικών δικλίδων του οργανισμού υπηρεσιών.	EVALUATION						2.00	0	0		\N	\N	2
\.


--
-- Data for Name: isologismosdictionary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.isologismosdictionary (id, line, type, nlslang, amount) FROM stdin;
2	Μηχανολογικός εξοπλισμός	elp	el	860767.8
5	Πάγια βιολογικά περιουσιακά στοιχεία	elp	el	1062480.9
7	Δαπάνες ανάπτυξης	elp	el	1414387.6
8	Υπεραξία	elp	el	20983.242
10	Λοιπά έξοδα εγκαταστάσεως	elp	el	40367200
12	Δάνεια και απαιτήσεις	elp	el	1365
13	Συμμετοχές σε θυγατρικές, συγγενείς και κοινοπραξίες	elp	el	9296399
17	Εμπορεύματα	elp	el	3745974
19	Προκαταβολές για αποθέματα	elp	el	360256
22	Δουλευμένα έσοδα περιόδου	elp	el	32770.65
23	Λοιπές απαιτήσεις	elp	el	4017240
26	Ταμειακά διαθέσιμα και ισοδύναμα	elp	el	204328.6
27	Κεφάλαιο	elp	el	1434795
3	Λοιπός Εξοπλισμός	elp	el	0
4	Επενδύσεις σε ακίνητα	elp	el	0
6	Λοιπά ενσώματα στοιχεία	elp	el	0
9	Λοιπά άυλα	elp	el	0
11	Προκαταβολές και μη κυκλοφορούντα στοιχεία υπό κατασκευή	elp	el	0
14	Λοιποί συμμετοχικοί τίτλοι	elp	el	0
15	Λοιπά	elp	el	0
16	Αναβαλλόμενοι φόροι (απαίτηση)	elp	el	0
18	Πρώτες ύλες και διάφορα υλικά	elp	el	0
20	Λοιπά αποθέματα	elp	el	0
21	Εμπορικές απαιτήσεις	elp	el	0
24	Λοιπά χρηματοοικονομικά στοιχεία	elp	el	0
25	Προπληρωμένα έξοδα	elp	el	0
28	Ίδιοι τίτλοι	elp	el	0
29	Υπέρ το άρτιο	elp	el	0
40	Δάνεια	elp	el	0
1	Ακίνητα	elp	el	74000
34	Αποθεματικά νόμων ή καταστατικού	elp	el	12943.52
38	Προβλέψεις για παροχές σε εργαζομένους	elp	el	900
41	Λοιπές μακροπρόθεσμες υποχρεώσεις	elp	el	4837738
43	Αναβαλλόμενοι φόροι (υποχρέωση)	elp	el	4180120
47	Φόρος εισοδήματος	elp	el	-586093
49	Οργανισμοί κοινωνικής ασφάλισης	elp	el	4531836
51	Έξοδα χρήσεως δουλευμένα	elp	el	59394.438
55	Λοιπά συνήθη έσοδα	elp	el	600.2295
59	Απομειώσεις περιουσιακών στοιχείων (καθαρό ποσό)	elp	el	141521.33
62	Έσοδα συμμετοχών και επενδύσεων	elp	el	1639483
67	Φόροι εισοδήματος	elp	el	274893.28
30	Καταθέσεις ιδιοκτητών	elp	el	0
31	Διαφορές αξίας ενσωμάτων παγίων	elp	el	0
32	Διαφορές αξίας διαθέσιμων για πώληση	elp	el	0
33	Διαφορές αξίας στοιχείων αντιστάθμισης ταμειακών ροών	elp	el	0
35	Αφορολόγητα αποθεματικά	elp	el	0
36	Αποτελέσματα εις νέο	elp	el	0
37	Συναλλαγματικές διαφορές	elp	el	0
39	Λοιπές προβλέψεις	elp	el	0
42	Κρατικές επιχορηγήσεις	elp	el	0
44	Τραπεζικά δάνεια	elp	el	0
45	Βραχυπρόθεσμο μέρος μακροπροθέσμων δανείων	elp	el	0
46	Εμπορικές υποχρεώσεις	elp	el	0
48	Λοιποί φόροι και τέλη	elp	el	0
50	Λοιπές υποχρεώσεις	elp	el	0
52	Έσοδα επόμενων χρήσεων	elp	el	0
53	Κύκλος εργασιών (καθαρός)	elp	el	0
54	Κόστος πωλήσεων	elp	el	0
56	Έξοδα διοίκησης	elp	el	0
57	Έξοδα διάθεσης	elp	el	0
58	Λοιπά έξοδα και ζημιές	elp	el	0
60	Κέρδη και ζημίες από διάθεση μη κυκλοφορούντων στοιχείων	elp	el	0
61	Κέρδη και ζημίες από επιμέτρηση στην εύλογη αξία	elp	el	0
63	Κέρδος από αγορά οντότητας ή τμήματος σε τιμή ευκαιρίας	elp	el	0
64	Λοιπά έσοδα και κέρδη	elp	el	0
65	Πιστωτικοί τόκοι και συναφή έσοδα	elp	el	0
66	Χρεωστικοί τόκοι και συναφή έξοδα	elp	el	0
68	Διαθέσιμα για πώληση	elp	el	0
\.


--
-- Data for Name: materialitybase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.materialitybase (id, baseid, add, subtract) FROM stdin;
1	1	1	\N
2	1	2	\N
3	1	3	\N
4	1	4	\N
5	1	5	\N
6	1	6	\N
7	1	7	\N
8	1	8	\N
9	1	9	\N
10	1	10	\N
11	1	11	\N
12	1	12	\N
13	1	13	\N
14	1	14	\N
15	1	15	\N
16	1	16	\N
17	1	17	\N
18	1	18	\N
19	1	19	\N
20	1	20	\N
21	1	21	\N
22	1	22	\N
23	1	23	\N
24	1	24	\N
25	1	25	\N
26	1	26	\N
27	2	27	\N
28	2	28	\N
29	2	29	\N
30	2	30	\N
31	2	31	\N
32	2	32	\N
33	2	33	\N
34	2	34	\N
35	2	35	\N
36	2	36	\N
37	2	38	\N
38	2	39	\N
39	3	53	\N
40	5	53	\N
41	3	55	\N
42	5	55	\N
43	4	56	\N
44	5	56	\N
45	4	\N	56
46	5	\N	57
47	4	58	\N
48	5	\N	58
49	4	59	\N
50	5	\N	59
51	3	62	\N
52	5	\N	62
53	3	64	\N
54	5	\N	64
55	3	65	\N
56	5	\N	65
57	4	66	\N
58	5	\N	66
59	4	67	\N
60	5	\N	67
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project (id, orderid, year, recorddate, assignmentcontrolhours, customername, status, ordertypedescription, ordertypecomments) FROM stdin;
135691	176554	2015	2015-11-11 12:28:20	0	SMART4ALL IKE	ΕΝΕΡΓΗ	ΥΠΟΧΡ ΕΛ ΟΙΚ ΚΑΤ (ΤΑΚ ΕΛ ΟΙΚ ΚΑΤ ΧΡΗΣΗΣ)	ΤΑΚΤΙΚΟΣ ΕΛΕΓΧΟΣ ΟΙΚΟΝΟΜΙΚΩΝ ΚΑΤΑΣΤΑΣΕΩΝ ΧΡΗΣΗΣ
151971	192204	2017	2018-06-29 12:05:01	0	ΑΓΡΟΤΙΚΟΣ ΣΥΝΕΤΑΙΡΙΣΜΟΣ ΞΑΝΘΗΣ Η ΕΝΩΣΗ	ΕΝΕΡΓΗ	ΥΠΟΧΡ ΕΛ ΟΙΚ ΚΑΤ (ΤΑΚ ΕΛ ΟΙΚ ΚΑΤ ΧΡΗΣΗΣ)	ΤΑΚΤΙΚΟΣ ΕΛΕΓΧΟΣ ΟΙΚΟΝΟΜΙΚΩΝ ΚΑΤΑΣΤΑΣΕΩΝ ΧΡΗΣΗΣ
149461	190233	2017	2018-02-07 12:01:26	0	ΠΙΤΤΑΣ ΑΛΕΞΑΝΔΡΟΣ ΜΕΛΙ ΑΤΤΙΚΗ ΑΕΒΕ	ΕΝΕΡΓΗ	ΥΠΟΧΡ ΕΛ ΟΙΚ ΚΑΤ (ΤΑΚ ΕΛ ΟΙΚ ΚΑΤ ΧΡΗΣΗΣ)	ΤΑΚΤΙΚΟΣ ΕΛΕΓΧΟΣ ΟΙΚΟΝΟΜΙΚΩΝ ΚΑΤΑΣΤΑΣΕΩΝ ΧΡΗΣΗΣ
150725	191102	2017	2018-03-29 14:05:50	0	ΧΑΡΤΟΠΟΙΙΑ ΦΘΙΩΤΙΔΟΣ ΑΕ	ΕΝΕΡΓΗ	ΥΠΟΧΡ ΕΛ ΟΙΚ ΚΑΤ (ΤΑΚ ΕΛ ΟΙΚ ΚΑΤ ΧΡΗΣΗΣ)	ΤΑΚΤΙΚΟΣ ΕΛΕΓΧΟΣ ΟΙΚΟΝΟΜΙΚΩΝ ΚΑΤΑΣΤΑΣΕΩΝ ΧΡΗΣΗΣ
149545	189913	2017	2018-01-22 11:22:43	0	ΧΡΥΣΑΦΙΔΗΣ Μ.Γ.ΑΕ	ΕΝΕΡΓΗ	ΥΠΟΧΡ ΕΛ ΟΙΚ ΚΑΤ (ΤΑΚ ΕΛ ΟΙΚ ΚΑΤ ΧΡΗΣΗΣ)	ΤΑΚΤΙΚΟΣ ΕΛΕΓΧΟΣ ΟΙΚΟΝΟΜΙΚΩΝ ΚΑΤΑΣΤΑΣΕΩΝ ΧΡΗΣΗΣ
150059	189838	2017	2018-01-18 12:41:17	0	ΠΕΖΑΚΙ Α.Ε.	ΕΝΕΡΓΗ	ΥΠΟΧΡ ΕΛ ΟΙΚ ΚΑΤ (ΤΑΚ ΕΛ ΟΙΚ ΚΑΤ ΧΡΗΣΗΣ)	ΤΑΚΤΙΚΟΣ ΕΛΕΓΧΟΣ ΟΙΚΟΝΟΜΙΚΩΝ ΚΑΤΑΣΤΑΣΕΩΝ ΧΡΗΣΗΣ
150058	189837	2017	2018-01-18 12:35:03	0	ΞΕΝΟΔ.& ΝΑΥΤ.ΕΠΙΧ.ΑΝΑΤΟΛΙΚΗΣ ΚΡΗΤΗΣ-ΞΝΕΑΚ	ΕΝΕΡΓΗ	ΥΠΟΧΡ ΕΛ ΟΙΚ ΚΑΤ (ΤΑΚ ΕΛ ΟΙΚ ΚΑΤ ΧΡΗΣΗΣ)	ΤΑΚΤΙΚΟΣ ΕΛΕΓΧΟΣ ΟΙΚΟΝΟΜΙΚΩΝ ΚΑΤΑΣΤΑΣΕΩΝ ΧΡΗΣΗΣ
149630	190084	2017	2018-01-30 13:32:22	0	ΜΑΤΑΛΩΝ Α.-ΤΖΑΦΟΥ Ε.ΑΕ	ΕΝΕΡΓΗ	ΥΠΟΧΡ ΕΛ ΟΙΚ ΚΑΤ (ΤΑΚ ΕΛ ΟΙΚ ΚΑΤ ΧΡΗΣΗΣ)	ΤΑΚΤΙΚΟΣ ΕΛΕΓΧΟΣ ΟΙΚΟΝΟΜΙΚΩΝ ΚΑΤΑΣΤΑΣΕΩΝ ΧΡΗΣΗΣ
150068	189847	2017	2018-01-18 13:20:20	0	ΣΗΤΕΙΑ ΤΟΥΡ/ΚΗ  ΚΑΙ  ΚΑΤΑΣ/ΚΗ Α.Ε.	ΕΝΕΡΓΗ	ΥΠΟΧΡ ΕΛ ΟΙΚ ΚΑΤ (ΤΑΚ ΕΛ ΟΙΚ ΚΑΤ ΧΡΗΣΗΣ)	ΤΑΚΤΙΚΟΣ ΕΛΕΓΧΟΣ ΟΙΚΟΝΟΜΙΚΩΝ ΚΑΤΑΣΤΑΣΕΩΝ ΧΡΗΣΗΣ
149539	189907	2017	2018-01-22 10:57:51	0	ΙΟΝΙΑΝ ΚΑΛΚ Α.Β.Ε.Ε.	ΕΝΕΡΓΗ	ΥΠΟΧΡ ΕΛ ΟΙΚ ΚΑΤ (ΤΑΚ ΕΛ ΟΙΚ ΚΑΤ ΧΡΗΣΗΣ)	ΤΑΚΤΙΚΟΣ ΕΛΕΓΧΟΣ ΟΙΚΟΝΟΜΙΚΩΝ ΚΑΤΑΣΤΑΣΕΩΝ ΧΡΗΣΗΣ
\.


--
-- Data for Name: projectuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projectuser (id, projectid, userid) FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role (id, role) FROM stdin;
4	EQCR
1	OWNER
5	PARTNER
2	MANAGER
3	MEMBER
6	ROLE_ADMIN
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, firstname, lastname, email, username, password, active) FROM stdin;
1	ΓΙΩΡΓΟΣ	ΛΙΟΛΙΟΣ	gliolios@solcrowe.gr	gliolios	$2a$10$Ud064C.wFLiiySEk5bCPdOquZsPhvr2Z94gGnTlB.HpvVORCKYS72	1
5	ΑΝΤΡΕΑΣ	ΠΑΤΣΙΜΑΣ	apatsimas@solcrowe.gr	apatsimas	$2a$10$FcYmSbmC4PdZALzYbvehu.tsptDVnAB2noJfFI3.6OLftpi9h9TXO	1
7	ΧΡΗΣΤΟΣ	ΜΑΡΚΑΤΣΕΛΗΣ	cmarkatselis@solcrowe.gr	cmarkatselis	$2a$10$d6WN1lACPDp2oNTQYHxOP.7QTBzN8PXqE/OjdrqFca//woZcH5QOa	1
10	chris	asas	c.markatselis@gmail.com	cmark	$2a$10$4jGCRR.r0DIOQBQAotSSkuOmiDyQOgJFoMJY1axVS2Tlp7RTOtBVi	0
11	Christos	Mark	cmarkatselis@solcrowe.gr	cMarkatselis	$2a$10$usXLZgpVNcVHx9z3SAuBQ.iNvPHyO/6DejnyEC6VrJ/zjhZmidZXO	1
12	God	God	god@gmail.com	god	$2a$10$xEWypk4fpjxVXxT8VFOX5eo2MiHxRbtVCUrAR2rOE5S3lwZRt/Bly	1
\.


--
-- Data for Name: userrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userrole (id, userid, roleid, projectid) FROM stdin;
1	1	1	135691
3	1	5	135691
4	1	1	151971
5	1	2	151971
6	1	5	151971
7	1	1	149461
8	1	2	149461
9	1	5	149461
10	1	1	150725
11	1	2	150725
12	1	5	150725
13	1	1	149545
14	1	2	149545
15	1	5	149545
16	1	1	150059
17	1	2	150059
18	1	5	150059
19	1	1	150058
20	1	2	150058
21	1	5	150058
22	1	1	149630
23	1	2	149630
24	1	5	149630
25	1	1	150068
26	1	2	150068
27	1	5	150068
28	1	1	149539
29	1	2	149539
30	1	5	149539
35	1	2	135691
38	5	3	135691
39	7	3	135691
40	7	3	149461
41	11	3	149461
42	7	3	149630
43	12	6	\N
\.


--
-- Name: a111_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.a111_id_seq', 2, true);


--
-- Name: a221_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.a221_id_seq', 3, true);


--
-- Name: a231_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.a231_id_seq', 16, true);


--
-- Name: add221overall_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.add221overall_id_seq', 5, true);


--
-- Name: add221performance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.add221performance_id_seq', 3, true);


--
-- Name: add231_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.add231_id_seq', 300, true);


--
-- Name: base_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.base_id_seq', 5, true);


--
-- Name: flowchart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flowchart_id_seq', 3, true);


--
-- Name: flowchartchild_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flowchartchild_id_seq', 8, true);


--
-- Name: flowchartparent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flowchartparent_id_seq', 1, true);


--
-- Name: formlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.formlist_id_seq', 1, false);


--
-- Name: formrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.formrole_id_seq', 46, true);


--
-- Name: forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.forms_id_seq', 6901, true);


--
-- Name: isologismosdictionary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.isologismosdictionary_id_seq', 1, false);


--
-- Name: materialitybase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.materialitybase_id_seq', 60, true);


--
-- Name: projectuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projectuser_id_seq', 1, false);


--
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_id_seq', 1, false);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 12, true);


--
-- Name: userrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.userrole_id_seq', 43, true);


--
-- Name: a111 a111_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.a111
    ADD CONSTRAINT a111_pk PRIMARY KEY (id);


--
-- Name: a111 a111_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.a111
    ADD CONSTRAINT a111_un UNIQUE (projectid);


--
-- Name: a221 a221_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.a221
    ADD CONSTRAINT a221_pk PRIMARY KEY (id);


--
-- Name: a221 a221_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.a221
    ADD CONSTRAINT a221_un UNIQUE (projectid);


--
-- Name: a231 a231_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.a231
    ADD CONSTRAINT a231_pk PRIMARY KEY (id);


--
-- Name: a231 a231_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.a231
    ADD CONSTRAINT a231_un UNIQUE (projectid);


--
-- Name: add221overall add221overall_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.add221overall
    ADD CONSTRAINT add221overall_pk PRIMARY KEY (id);


--
-- Name: add221performance add221performance_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.add221performance
    ADD CONSTRAINT add221performance_pk PRIMARY KEY (id);


--
-- Name: add231 add231_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.add231
    ADD CONSTRAINT add231_pk PRIMARY KEY (id);


--
-- Name: add231 add231_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.add231
    ADD CONSTRAINT add231_un UNIQUE (isologismosdictionaryid, a231id);


--
-- Name: base base_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.base
    ADD CONSTRAINT base_pk PRIMARY KEY (id);


--
-- Name: flowchart flowchart_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flowchart
    ADD CONSTRAINT flowchart_pk PRIMARY KEY (id);


--
-- Name: flowchartchild flowchartchild_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flowchartchild
    ADD CONSTRAINT flowchartchild_pk PRIMARY KEY (id);


--
-- Name: flowchartparent flowchartparent_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flowchartparent
    ADD CONSTRAINT flowchartparent_pk PRIMARY KEY (id);


--
-- Name: formlist formlist_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formlist
    ADD CONSTRAINT formlist_pk PRIMARY KEY (id);


--
-- Name: formlist formlist_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formlist
    ADD CONSTRAINT formlist_un UNIQUE (formname);


--
-- Name: formrole formrole_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formrole
    ADD CONSTRAINT formrole_pk PRIMARY KEY (id);


--
-- Name: formrole formrole_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formrole
    ADD CONSTRAINT formrole_un UNIQUE (formlistid, userroleid);


--
-- Name: isologismosdictionary isologismosdictionary_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.isologismosdictionary
    ADD CONSTRAINT isologismosdictionary_pk PRIMARY KEY (id);


--
-- Name: materialitybase materialitybase_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materialitybase
    ADD CONSTRAINT materialitybase_pk PRIMARY KEY (id);


--
-- Name: forms primary_196; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forms
    ADD CONSTRAINT primary_196 PRIMARY KEY (id);


--
-- Name: project project_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pk PRIMARY KEY (id);


--
-- Name: projectuser projectuser_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectuser
    ADD CONSTRAINT projectuser_pk PRIMARY KEY (id);


--
-- Name: role role_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pk PRIMARY KEY (id);


--
-- Name: user user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pk PRIMARY KEY (id);


--
-- Name: userrole userrole_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userrole
    ADD CONSTRAINT userrole_pk PRIMARY KEY (id);


--
-- Name: userrole userrole_un; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userrole
    ADD CONSTRAINT userrole_un UNIQUE (userid, projectid, roleid);


--
-- Name: a111 a111_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.a111
    ADD CONSTRAINT a111_fk FOREIGN KEY (projectid) REFERENCES public.project(id);


--
-- Name: a221 a221_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.a221
    ADD CONSTRAINT a221_fk FOREIGN KEY (projectid) REFERENCES public.project(id);


--
-- Name: a221 a221_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.a221
    ADD CONSTRAINT a221_fk1 FOREIGN KEY (baseid) REFERENCES public.base(id);


--
-- Name: a231 a231_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.a231
    ADD CONSTRAINT a231_fk FOREIGN KEY (projectid) REFERENCES public.project(id);


--
-- Name: add221overall add221overall_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.add221overall
    ADD CONSTRAINT add221overall_fk FOREIGN KEY (a221id) REFERENCES public.a221(id);


--
-- Name: add221overall add221overall_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.add221overall
    ADD CONSTRAINT add221overall_fk1 FOREIGN KEY (baseid) REFERENCES public.base(id);


--
-- Name: add221performance add221performance_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.add221performance
    ADD CONSTRAINT add221performance_fk FOREIGN KEY (a221id) REFERENCES public.a221(id);


--
-- Name: add231 add231_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.add231
    ADD CONSTRAINT add231_fk FOREIGN KEY (a231id) REFERENCES public.a231(id);


--
-- Name: add231 add231_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.add231
    ADD CONSTRAINT add231_fk1 FOREIGN KEY (isologismosdictionaryid) REFERENCES public.isologismosdictionary(id) ON DELETE CASCADE;


--
-- Name: flowchart flowchart_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flowchart
    ADD CONSTRAINT flowchart_fk FOREIGN KEY (flowchartparentid) REFERENCES public.flowchartparent(id);


--
-- Name: flowchartchild flowchartchild_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flowchartchild
    ADD CONSTRAINT flowchartchild_fk FOREIGN KEY (flowchartid) REFERENCES public.flowchart(id);


--
-- Name: formrole formrole_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formrole
    ADD CONSTRAINT formrole_fk FOREIGN KEY (formlistid) REFERENCES public.formlist(id);


--
-- Name: formrole formrole_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formrole
    ADD CONSTRAINT formrole_fk1 FOREIGN KEY (userroleid) REFERENCES public.userrole(id);


--
-- Name: materialitybase materialitybase_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materialitybase
    ADD CONSTRAINT materialitybase_fk1 FOREIGN KEY (add) REFERENCES public.isologismosdictionary(id);


--
-- Name: materialitybase materialitybase_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materialitybase
    ADD CONSTRAINT materialitybase_fk2 FOREIGN KEY (subtract) REFERENCES public.isologismosdictionary(id);


--
-- Name: materialitybase materialitybase_fk3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materialitybase
    ADD CONSTRAINT materialitybase_fk3 FOREIGN KEY (baseid) REFERENCES public.base(id);


--
-- Name: projectuser projectuser_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectuser
    ADD CONSTRAINT projectuser_fk FOREIGN KEY (projectid) REFERENCES public.project(id);


--
-- Name: projectuser projectuser_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectuser
    ADD CONSTRAINT projectuser_fk1 FOREIGN KEY (userid) REFERENCES public."user"(id);


--
-- Name: userrole userrole_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userrole
    ADD CONSTRAINT userrole_fk FOREIGN KEY (userid) REFERENCES public."user"(id);


--
-- Name: userrole userrole_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userrole
    ADD CONSTRAINT userrole_fk1 FOREIGN KEY (roleid) REFERENCES public.role(id);


--
-- Name: userrole userrole_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userrole
    ADD CONSTRAINT userrole_fk2 FOREIGN KEY (projectid) REFERENCES public.project(id);


--
-- PostgreSQL database dump complete
--

