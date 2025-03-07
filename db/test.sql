PGDMP     2    -                 |            strapi    12.0    15.4 �              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16384    strapi    DATABASE     q   CREATE DATABASE strapi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE strapi;
                strapi    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                strapi    false                       0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   strapi    false    6            M           1259    17176    NetLab    TABLE       CREATE TABLE public."NetLab" (
    id integer NOT NULL,
    available boolean,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public."NetLab";
       public         heap    strapi    false    6            L           1259    17174    NetLab_id_seq    SEQUENCE     �   CREATE SEQUENCE public."NetLab_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."NetLab_id_seq";
       public          strapi    false    6    333                       0    0    NetLab_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."NetLab_id_seq" OWNED BY public."NetLab".id;
          public          strapi    false    332            K           1259    17165    NetLap    TABLE       CREATE TABLE public."NetLap" (
    id integer NOT NULL,
    available boolean,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public."NetLap";
       public         heap    strapi    false    6            J           1259    17163    NetLap_id_seq    SEQUENCE     �   CREATE SEQUENCE public."NetLap_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."NetLap_id_seq";
       public          strapi    false    6    331                       0    0    NetLap_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."NetLap_id_seq" OWNED BY public."NetLap".id;
          public          strapi    false    330            �            1259    16540    adverse_events    TABLE     R  CREATE TABLE public.adverse_events (
    id integer NOT NULL,
    title_en character varying(255) NOT NULL,
    title_ar character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 "   DROP TABLE public.adverse_events;
       public         heap    strapi    false    6            �            1259    16538    adverse_events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.adverse_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.adverse_events_id_seq;
       public          strapi    false    6    237                       0    0    adverse_events_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.adverse_events_id_seq OWNED BY public.adverse_events.id;
          public          strapi    false    236            �            1259    16555    apheresis_kits    TABLE     @  CREATE TABLE public.apheresis_kits (
    id integer NOT NULL,
    title_en character varying(255),
    title_ar character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 "   DROP TABLE public.apheresis_kits;
       public         heap    strapi    false    6            �            1259    16553    apheresis_kits_id_seq    SEQUENCE     �   CREATE SEQUENCE public.apheresis_kits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.apheresis_kits_id_seq;
       public          strapi    false    6    239                        0    0    apheresis_kits_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.apheresis_kits_id_seq OWNED BY public.apheresis_kits.id;
          public          strapi    false    238            �            1259    16568    apheresis_machines    TABLE     M  CREATE TABLE public.apheresis_machines (
    id integer NOT NULL,
    title_en character varying(255) NOT NULL,
    title_ar character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 &   DROP TABLE public.apheresis_machines;
       public         heap    strapi    false    6            �            1259    16566    apheresis_machines_id_seq    SEQUENCE     �   CREATE SEQUENCE public.apheresis_machines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.apheresis_machines_id_seq;
       public          strapi    false    241    6            !           0    0    apheresis_machines_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.apheresis_machines_id_seq OWNED BY public.apheresis_machines.id;
          public          strapi    false    240            W           1259    17416    assigned_blood_components    TABLE     �  CREATE TABLE public.assigned_blood_components (
    id integer NOT NULL,
    blood_component integer,
    "Barcode" character varying(255),
    "VoulmeByDefault" double precision,
    "MinimumVolume" double precision,
    "MaximumVolume" double precision,
    "SepartedAfter" numeric(10,2),
    "SepartedBefore" numeric(10,2),
    "MinimumPhlebotomyTime" double precision,
    "MaximumPhlepotomytime" double precision,
    "Expiration" double precision,
    "SortKey" integer,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    bag_type integer
);
 -   DROP TABLE public.assigned_blood_components;
       public         heap    strapi2    false    6            Y           1259    17431 +   assigned_blood_components__blood_components    TABLE     �   CREATE TABLE public.assigned_blood_components__blood_components (
    id integer NOT NULL,
    assigned_blood_component_id integer,
    "blood-component_id" integer
);
 ?   DROP TABLE public.assigned_blood_components__blood_components;
       public         heap    strapi2    false    6            X           1259    17429 2   assigned_blood_components__blood_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.assigned_blood_components__blood_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.assigned_blood_components__blood_components_id_seq;
       public          strapi2    false    345    6            "           0    0 2   assigned_blood_components__blood_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.assigned_blood_components__blood_components_id_seq OWNED BY public.assigned_blood_components__blood_components.id;
          public          strapi2    false    344            V           1259    17414     assigned_blood_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.assigned_blood_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.assigned_blood_components_id_seq;
       public          strapi2    false    343    6            #           0    0     assigned_blood_components_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.assigned_blood_components_id_seq OWNED BY public.assigned_blood_components.id;
          public          strapi2    false    342            �            1259    16581 	   bag_types    TABLE     �  CREATE TABLE public.bag_types (
    id integer NOT NULL,
    title_en character varying(255) NOT NULL,
    title_ar character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    "Code" character varying(255),
    "Description" text,
    "Anticoagulant" integer,
    "BagWeight" double precision,
    "MaximumVolume" double precision,
    "MinimumVolume" double precision,
    "LowVolume" double precision,
    "Expiration" integer,
    "BloodSeparation" character varying(255),
    "Manufacturer" text,
    "SortKey" integer,
    "Active" boolean,
    "OriginalComponent" integer,
    "LowVoulmeComponent" integer,
    "c1VolumeByDefault" double precision,
    "c1MinimumVolume" double precision,
    "c1MaximumVolume" double precision,
    "c1Expiration" integer,
    "c1SortKey" integer,
    "LowVolumeComponent" integer
);
    DROP TABLE public.bag_types;
       public         heap    strapi    false    6            g           1259    17871     bag_types__low_volume_components    TABLE     �   CREATE TABLE public.bag_types__low_volume_components (
    id integer NOT NULL,
    bag_type_id integer,
    "blood-component_id" integer
);
 4   DROP TABLE public.bag_types__low_volume_components;
       public         heap    strapi2    false    6            f           1259    17869 '   bag_types__low_volume_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bag_types__low_volume_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.bag_types__low_volume_components_id_seq;
       public          strapi2    false    6    359            $           0    0 '   bag_types__low_volume_components_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.bag_types__low_volume_components_id_seq OWNED BY public.bag_types__low_volume_components.id;
          public          strapi2    false    358            e           1259    17863    bag_types__original_components    TABLE     �   CREATE TABLE public.bag_types__original_components (
    id integer NOT NULL,
    bag_type_id integer,
    "blood-component_id" integer
);
 2   DROP TABLE public.bag_types__original_components;
       public         heap    strapi2    false    6            d           1259    17861 %   bag_types__original_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bag_types__original_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.bag_types__original_components_id_seq;
       public          strapi2    false    6    357            %           0    0 %   bag_types__original_components_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.bag_types__original_components_id_seq OWNED BY public.bag_types__original_components.id;
          public          strapi2    false    356            _           1259    17459    bag_types_components    TABLE       CREATE TABLE public.bag_types_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    bag_type_id integer NOT NULL
);
 (   DROP TABLE public.bag_types_components;
       public         heap    strapi2    false    6            ^           1259    17457    bag_types_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bag_types_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.bag_types_components_id_seq;
       public          strapi2    false    6    351            &           0    0    bag_types_components_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.bag_types_components_id_seq OWNED BY public.bag_types_components.id;
          public          strapi2    false    350            �            1259    16579    bag_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bag_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.bag_types_id_seq;
       public          strapi    false    6    243            '           0    0    bag_types_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.bag_types_id_seq OWNED BY public.bag_types.id;
          public          strapi    false    242            �            1259    16594    band_component_cases    TABLE     X  CREATE TABLE public.band_component_cases (
    id integer NOT NULL,
    title_en character varying(255) NOT NULL,
    title_ar character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 (   DROP TABLE public.band_component_cases;
       public         heap    strapi    false    6            �            1259    16592    band_component_cases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.band_component_cases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.band_component_cases_id_seq;
       public          strapi    false    6    245            (           0    0    band_component_cases_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.band_component_cases_id_seq OWNED BY public.band_component_cases.id;
          public          strapi    false    244            �            1259    16609    blood_collection_events    TABLE     [  CREATE TABLE public.blood_collection_events (
    id integer NOT NULL,
    title_en character varying(255) NOT NULL,
    title_ar character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 +   DROP TABLE public.blood_collection_events;
       public         heap    strapi    false    6            �            1259    16607    blood_collection_events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blood_collection_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.blood_collection_events_id_seq;
       public          strapi    false    6    247            )           0    0    blood_collection_events_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.blood_collection_events_id_seq OWNED BY public.blood_collection_events.id;
          public          strapi    false    246            S           1259    17216    blood_component_groups    TABLE     {  CREATE TABLE public.blood_component_groups (
    id integer NOT NULL,
    "Code" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    "Description" text,
    "SortKey" integer
);
 *   DROP TABLE public.blood_component_groups;
       public         heap    strapi2    false    6            R           1259    17214    blood_component_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blood_component_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.blood_component_groups_id_seq;
       public          strapi2    false    6    339            *           0    0    blood_component_groups_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.blood_component_groups_id_seq OWNED BY public.blood_component_groups.id;
          public          strapi2    false    338            U           1259    17234    blood_components    TABLE     #  CREATE TABLE public.blood_components (
    id integer NOT NULL,
    "Code" character varying(255),
    "Description" text,
    "ShortName" character varying(255),
    "Barcode" character varying(255),
    "CodeToExport" character varying(255),
    "CodeToInvoice" character varying(255),
    "SortKey" integer,
    "Available" boolean,
    "Active" boolean,
    "LowVolume" boolean,
    "Washing" boolean,
    "Cryoprecipitate" boolean,
    filter boolean,
    "Aliquot" boolean,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    "Filter" boolean,
    assigned_blood_component integer,
    "ComponentPrice" numeric(10,2)
);
 $   DROP TABLE public.blood_components;
       public         heap    strapi2    false    6            [           1259    17441 (   blood_components__blood_component_groups    TABLE     �   CREATE TABLE public.blood_components__blood_component_groups (
    id integer NOT NULL,
    blood_component_id integer,
    "blood-component-group_id" integer
);
 <   DROP TABLE public.blood_components__blood_component_groups;
       public         heap    strapi2    false    6            Z           1259    17439 /   blood_components__blood_component_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blood_components__blood_component_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.blood_components__blood_component_groups_id_seq;
       public          strapi2    false    6    347            +           0    0 /   blood_components__blood_component_groups_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.blood_components__blood_component_groups_id_seq OWNED BY public.blood_components__blood_component_groups.id;
          public          strapi2    false    346            T           1259    17232    blood_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blood_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.blood_components_id_seq;
       public          strapi2    false    341    6            ,           0    0    blood_components_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.blood_components_id_seq OWNED BY public.blood_components.id;
          public          strapi2    false    340            �            1259    16624 	   campaigns    TABLE     �  CREATE TABLE public.campaigns (
    id integer NOT NULL,
    barcode_type character varying(255),
    is_active boolean,
    expected_donor_count integer NOT NULL,
    start_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.campaigns;
       public         heap    strapi    false    6            �            1259    16638    campaigns_components    TABLE       CREATE TABLE public.campaigns_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    campaign_id integer NOT NULL
);
 (   DROP TABLE public.campaigns_components;
       public         heap    strapi    false    6            �            1259    16636    campaigns_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.campaigns_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.campaigns_components_id_seq;
       public          strapi    false    251    6            -           0    0    campaigns_components_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.campaigns_components_id_seq OWNED BY public.campaigns_components.id;
          public          strapi    false    250            �            1259    16622    campaigns_id_seq    SEQUENCE     �   CREATE SEQUENCE public.campaigns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.campaigns_id_seq;
       public          strapi    false    249    6            .           0    0    campaigns_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.campaigns_id_seq OWNED BY public.campaigns.id;
          public          strapi    false    248            �            1259    16654    centers    TABLE     a  CREATE TABLE public.centers (
    id integer NOT NULL,
    title_en character varying(255) NOT NULL,
    title_ar character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    "NatLab" boolean
);
    DROP TABLE public.centers;
       public         heap    strapi    false    6            �            1259    16652    centers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.centers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.centers_id_seq;
       public          strapi    false    6    253            /           0    0    centers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.centers_id_seq OWNED BY public.centers.id;
          public          strapi    false    252            �            1259    16667    cities    TABLE     8  CREATE TABLE public.cities (
    id integer NOT NULL,
    title_en character varying(255),
    title_ar character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.cities;
       public         heap    strapi    false    6            �            1259    16665    cities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public          strapi    false    6    255            0           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
          public          strapi    false    254                       1259    16680    collection_sites    TABLE     T  CREATE TABLE public.collection_sites (
    id integer NOT NULL,
    title_en character varying(255) NOT NULL,
    title_ar character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 $   DROP TABLE public.collection_sites;
       public         heap    strapi    false    6                        1259    16678    collection_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.collection_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.collection_sites_id_seq;
       public          strapi    false    6    257            1           0    0    collection_sites_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.collection_sites_id_seq OWNED BY public.collection_sites.id;
          public          strapi    false    256            �            1259    16398 "   components_campaigns_campaign_data    TABLE     �   CREATE TABLE public.components_campaigns_campaign_data (
    id integer NOT NULL,
    vehicle integer,
    center integer,
    collection_site integer
);
 6   DROP TABLE public.components_campaigns_campaign_data;
       public         heap    strapi    false    6            �            1259    16406 -   components_campaigns_campaign_data__employees    TABLE     �   CREATE TABLE public.components_campaigns_campaign_data__employees (
    id integer NOT NULL,
    components_campaigns_campaign_datum_id integer,
    employee_id integer
);
 A   DROP TABLE public.components_campaigns_campaign_data__employees;
       public         heap    strapi    false    6            �            1259    16404 4   components_campaigns_campaign_data__employees_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_campaigns_campaign_data__employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.components_campaigns_campaign_data__employees_id_seq;
       public          strapi    false    6    207            2           0    0 4   components_campaigns_campaign_data__employees_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_campaigns_campaign_data__employees_id_seq OWNED BY public.components_campaigns_campaign_data__employees.id;
          public          strapi    false    206            �            1259    16396 )   components_campaigns_campaign_data_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_campaigns_campaign_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_campaigns_campaign_data_id_seq;
       public          strapi    false    205    6            3           0    0 )   components_campaigns_campaign_data_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_campaigns_campaign_data_id_seq OWNED BY public.components_campaigns_campaign_data.id;
          public          strapi    false    204            �            1259    16414    components_donation_age_rules    TABLE     �   CREATE TABLE public.components_donation_age_rules (
    id integer NOT NULL,
    minimum_allowed_age integer,
    maximum_allowed_age integer
);
 1   DROP TABLE public.components_donation_age_rules;
       public         heap    strapi    false    6            �            1259    16412 $   components_donation_age_rules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_donation_age_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.components_donation_age_rules_id_seq;
       public          strapi    false    6    209            4           0    0 $   components_donation_age_rules_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.components_donation_age_rules_id_seq OWNED BY public.components_donation_age_rules.id;
          public          strapi    false    208            �            1259    16422 (   components_donation_band_component_cases    TABLE     �   CREATE TABLE public.components_donation_band_component_cases (
    id integer NOT NULL,
    deferral_days integer,
    deferral_action character varying(255),
    band_component_case integer
);
 <   DROP TABLE public.components_donation_band_component_cases;
       public         heap    strapi    false    6            �            1259    16420 /   components_donation_band_component_cases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_donation_band_component_cases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.components_donation_band_component_cases_id_seq;
       public          strapi    false    6    211            5           0    0 /   components_donation_band_component_cases_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_donation_band_component_cases_id_seq OWNED BY public.components_donation_band_component_cases.id;
          public          strapi    false    210            �            1259    16430 *   components_donation_default_donation_types    TABLE     �   CREATE TABLE public.components_donation_default_donation_types (
    id integer NOT NULL,
    donation_type integer,
    sub_donation_type integer
);
 >   DROP TABLE public.components_donation_default_donation_types;
       public         heap    strapi    false    6            �            1259    16428 1   components_donation_default_donation_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_donation_default_donation_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.components_donation_default_donation_types_id_seq;
       public          strapi    false    213    6            6           0    0 1   components_donation_default_donation_types_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_donation_default_donation_types_id_seq OWNED BY public.components_donation_default_donation_types.id;
          public          strapi    false    212            �            1259    16438 '   components_donation_general_appearances    TABLE     �   CREATE TABLE public.components_donation_general_appearances (
    id integer NOT NULL,
    deferral_action character varying(255),
    deferral_days integer
);
 ;   DROP TABLE public.components_donation_general_appearances;
       public         heap    strapi    false    6            �            1259    16436 .   components_donation_general_appearances_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_donation_general_appearances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.components_donation_general_appearances_id_seq;
       public          strapi    false    215    6            7           0    0 .   components_donation_general_appearances_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_donation_general_appearances_id_seq OWNED BY public.components_donation_general_appearances.id;
          public          strapi    false    214            �            1259    16446 /   components_donation_medical_checkup_range_rules    TABLE       CREATE TABLE public.components_donation_medical_checkup_range_rules (
    id integer NOT NULL,
    minimum_normal_male numeric(10,2),
    maximum_normal_male numeric(10,2),
    minimum_normal_female numeric(10,2),
    maximum_normal_female numeric(10,2),
    below_minimum_deferral_action character varying(255),
    above_maximum_deferral_action character varying(255),
    below_minimum_deferral_days integer,
    above_maximum_deferral_days integer,
    default_value numeric(10,2),
    default_value_applied boolean
);
 C   DROP TABLE public.components_donation_medical_checkup_range_rules;
       public         heap    strapi    false    6            �            1259    16444 6   components_donation_medical_checkup_range_rules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_donation_medical_checkup_range_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.components_donation_medical_checkup_range_rules_id_seq;
       public          strapi    false    217    6            8           0    0 6   components_donation_medical_checkup_range_rules_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_donation_medical_checkup_range_rules_id_seq OWNED BY public.components_donation_medical_checkup_range_rules.id;
          public          strapi    false    216            �            1259    16457 +   components_donation_medical_checkup_reasons    TABLE     �   CREATE TABLE public.components_donation_medical_checkup_reasons (
    id integer NOT NULL,
    deferral_days integer,
    deferral_action character varying(255),
    adverse_event integer
);
 ?   DROP TABLE public.components_donation_medical_checkup_reasons;
       public         heap    strapi    false    6            �            1259    16455 2   components_donation_medical_checkup_reasons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_donation_medical_checkup_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.components_donation_medical_checkup_reasons_id_seq;
       public          strapi    false    219    6            9           0    0 2   components_donation_medical_checkup_reasons_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_donation_medical_checkup_reasons_id_seq OWNED BY public.components_donation_medical_checkup_reasons.id;
          public          strapi    false    218            �            1259    16467 #   components_donation_medical_remarks    TABLE     �   CREATE TABLE public.components_donation_medical_remarks (
    id integer NOT NULL,
    deferral_days integer,
    deferral_action character varying(255),
    medical_remark integer
);
 7   DROP TABLE public.components_donation_medical_remarks;
       public         heap    strapi    false    6            �            1259    16465 *   components_donation_medical_remarks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_donation_medical_remarks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.components_donation_medical_remarks_id_seq;
       public          strapi    false    6    221            :           0    0 *   components_donation_medical_remarks_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.components_donation_medical_remarks_id_seq OWNED BY public.components_donation_medical_remarks.id;
          public          strapi    false    220            �            1259    16475    components_donation_medications    TABLE     �   CREATE TABLE public.components_donation_medications (
    id integer NOT NULL,
    medication integer,
    preferred_bag_type integer
);
 3   DROP TABLE public.components_donation_medications;
       public         heap    strapi    false    6            �            1259    16473 &   components_donation_medications_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_donation_medications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_donation_medications_id_seq;
       public          strapi    false    223    6            ;           0    0 &   components_donation_medications_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_donation_medications_id_seq OWNED BY public.components_donation_medications.id;
          public          strapi    false    222            �            1259    16483 &   components_donation_phlebotomy_reasons    TABLE     �   CREATE TABLE public.components_donation_phlebotomy_reasons (
    id integer NOT NULL,
    deferral_action character varying(255),
    deferral_days integer,
    blood_collection_event integer
);
 :   DROP TABLE public.components_donation_phlebotomy_reasons;
       public         heap    strapi    false    6            �            1259    16481 -   components_donation_phlebotomy_reasons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_donation_phlebotomy_reasons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.components_donation_phlebotomy_reasons_id_seq;
       public          strapi    false    225    6            <           0    0 -   components_donation_phlebotomy_reasons_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.components_donation_phlebotomy_reasons_id_seq OWNED BY public.components_donation_phlebotomy_reasons.id;
          public          strapi    false    224            �            1259    16491 "   components_donation_pulse_statuses    TABLE     �   CREATE TABLE public.components_donation_pulse_statuses (
    id integer NOT NULL,
    deferral_action character varying(255),
    deferral_days integer
);
 6   DROP TABLE public.components_donation_pulse_statuses;
       public         heap    strapi    false    6            �            1259    16489 )   components_donation_pulse_statuses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_donation_pulse_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_donation_pulse_statuses_id_seq;
       public          strapi    false    6    227            =           0    0 )   components_donation_pulse_statuses_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_donation_pulse_statuses_id_seq OWNED BY public.components_donation_pulse_statuses.id;
          public          strapi    false    226            �            1259    16499    components_donation_visit_rules    TABLE       CREATE TABLE public.components_donation_visit_rules (
    id integer NOT NULL,
    days integer,
    donation_type integer,
    sub_donation_type integer,
    gender character varying(255),
    previous_donation_type integer,
    previous_sub_donation_type integer
);
 3   DROP TABLE public.components_donation_visit_rules;
       public         heap    strapi    false    6            �            1259    16497 &   components_donation_visit_rules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_donation_visit_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_donation_visit_rules_id_seq;
       public          strapi    false    229    6            >           0    0 &   components_donation_visit_rules_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_donation_visit_rules_id_seq OWNED BY public.components_donation_visit_rules.id;
          public          strapi    false    228            ]           1259    17450 %   components_proccessing_add_components    TABLE     �  CREATE TABLE public.components_proccessing_add_components (
    id integer NOT NULL,
    blood_component integer,
    "VolumeByDefault" double precision,
    "MinimumVolume" double precision,
    "MaximumVolume" double precision,
    "Expiration" numeric(10,2),
    "SortKey" integer,
    "SeparatedAfter" numeric(10,2),
    "SeparatedBefore" double precision,
    "MinimumPhlebotomyTime" numeric(10,2),
    "MaximumPhlebotomyTime" numeric(10,2),
    "Duration" numeric(10,2)
);
 9   DROP TABLE public.components_proccessing_add_components;
       public         heap    strapi2    false    6            \           1259    17448 ,   components_proccessing_add_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_proccessing_add_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.components_proccessing_add_components_id_seq;
       public          strapi2    false    6    349            ?           0    0 ,   components_proccessing_add_components_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.components_proccessing_add_components_id_seq OWNED BY public.components_proccessing_add_components.id;
          public          strapi2    false    348            i           1259    18120 '   components_proccessing_blood_components    TABLE     '  CREATE TABLE public.components_proccessing_blood_components (
    id integer NOT NULL,
    "Barcode" character varying(255),
    "Code" character varying(255),
    "ShortName" character varying(255),
    blood_component integer,
    "VolumeBydefault" numeric(10,2),
    "MinimumVolume" numeric(10,2),
    "MaximumVolume" numeric(10,2),
    "MinimumPhlebotomyTime" numeric(10,2),
    "MaximumPhebotomyTime" numeric(10,2),
    "Expiration" numeric(10,2),
    "SortKey" integer,
    "SeparatedAfter" numeric(10,2),
    "SeparatedBefore" numeric(10,2)
);
 ;   DROP TABLE public.components_proccessing_blood_components;
       public         heap    strapi2    false    6            w           1259    18327 9   components_proccessing_blood_components__blood_components    TABLE     �   CREATE TABLE public.components_proccessing_blood_components__blood_components (
    id integer NOT NULL,
    components_proccessing_blood_component_id integer,
    "blood-component_id" integer
);
 M   DROP TABLE public.components_proccessing_blood_components__blood_components;
       public         heap    strapi2    false    6            v           1259    18325 ?   components_proccessing_blood_components__blood_component_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_proccessing_blood_components__blood_component_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.components_proccessing_blood_components__blood_component_id_seq;
       public          strapi2    false    375    6            @           0    0 ?   components_proccessing_blood_components__blood_component_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_proccessing_blood_components__blood_component_id_seq OWNED BY public.components_proccessing_blood_components__blood_components.id;
          public          strapi2    false    374            h           1259    18118 .   components_proccessing_blood_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_proccessing_blood_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.components_proccessing_blood_components_id_seq;
       public          strapi2    false    6    361            A           0    0 .   components_proccessing_blood_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_proccessing_blood_components_id_seq OWNED BY public.components_proccessing_blood_components.id;
          public          strapi2    false    360            a           1259    17845 !   components_proccessing_components    TABLE     �  CREATE TABLE public.components_proccessing_components (
    id integer NOT NULL,
    blood_component integer,
    "volumeByDefault" numeric(10,2),
    "MinimumVolume" numeric(10,2),
    "MaximumVolume" numeric(10,2),
    "SeparatedAfter" numeric(10,2),
    "SeparatedBefore" numeric(10,2),
    "MinimumPhelbotomyTime" numeric(10,2),
    "MaximumPhlebotomyTime" numeric(10,2),
    "Expiartion" numeric(10,2),
    "sortKey" integer
);
 5   DROP TABLE public.components_proccessing_components;
       public         heap    strapi2    false    6            c           1259    17855 3   components_proccessing_components__blood_components    TABLE     �   CREATE TABLE public.components_proccessing_components__blood_components (
    id integer NOT NULL,
    components_proccessing_component_id integer,
    "blood-component_id" integer
);
 G   DROP TABLE public.components_proccessing_components__blood_components;
       public         heap    strapi2    false    6            b           1259    17853 :   components_proccessing_components__blood_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_proccessing_components__blood_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 Q   DROP SEQUENCE public.components_proccessing_components__blood_components_id_seq;
       public          strapi2    false    6    355            B           0    0 :   components_proccessing_components__blood_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_proccessing_components__blood_components_id_seq OWNED BY public.components_proccessing_components__blood_components.id;
          public          strapi2    false    354            `           1259    17843 (   components_proccessing_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_proccessing_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.components_proccessing_components_id_seq;
       public          strapi2    false    353    6            C           0    0 (   components_proccessing_components_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.components_proccessing_components_id_seq OWNED BY public.components_proccessing_components.id;
          public          strapi2    false    352            u           1259    18291 +   components_proccessing_m_s_blood_components    TABLE     �  CREATE TABLE public.components_proccessing_m_s_blood_components (
    id integer NOT NULL,
    blood_component integer,
    "VolumeBydefault" numeric(10,2),
    "MinimumVolume" numeric(10,2),
    "MaximumVolume" numeric(10,2),
    "MinimumPhlebotomyTime" numeric(10,2),
    "Expiration" numeric(10,2),
    "SeparatedAfter" numeric(10,2),
    "SeparatedBefore" numeric(10,2),
    "SortKey" integer
);
 ?   DROP TABLE public.components_proccessing_m_s_blood_components;
       public         heap    strapi2    false    6            t           1259    18289 2   components_proccessing_m_s_blood_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_proccessing_m_s_blood_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.components_proccessing_m_s_blood_components_id_seq;
       public          strapi2    false    6    373            D           0    0 2   components_proccessing_m_s_blood_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_proccessing_m_s_blood_components_id_seq OWNED BY public.components_proccessing_m_s_blood_components.id;
          public          strapi2    false    372            �            1259    16507 +   components_serology_counseling_sample_rules    TABLE     �   CREATE TABLE public.components_serology_counseling_sample_rules (
    id integer NOT NULL,
    r1 character varying(255),
    r2 character varying(255),
    donor character varying(255)
);
 ?   DROP TABLE public.components_serology_counseling_sample_rules;
       public         heap    strapi    false    6            �            1259    16505 2   components_serology_counseling_sample_rules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_serology_counseling_sample_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.components_serology_counseling_sample_rules_id_seq;
       public          strapi    false    6    231            E           0    0 2   components_serology_counseling_sample_rules_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_serology_counseling_sample_rules_id_seq OWNED BY public.components_serology_counseling_sample_rules.id;
          public          strapi    false    230            �            1259    16518    components_serology_nat_isbts    TABLE     �   CREATE TABLE public.components_serology_nat_isbts (
    id integer NOT NULL,
    final_virology character varying(255),
    final_nat character varying(255),
    final character varying(255)
);
 1   DROP TABLE public.components_serology_nat_isbts;
       public         heap    strapi    false    6            �            1259    16516 $   components_serology_nat_isbts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_serology_nat_isbts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.components_serology_nat_isbts_id_seq;
       public          strapi    false    233    6            F           0    0 $   components_serology_nat_isbts_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.components_serology_nat_isbts_id_seq OWNED BY public.components_serology_nat_isbts.id;
          public          strapi    false    232            Q           1259    17198    components_serology_tests    TABLE     �   CREATE TABLE public.components_serology_tests (
    id integer NOT NULL,
    test character varying(255),
    test2 character varying(255)
);
 -   DROP TABLE public.components_serology_tests;
       public         heap    strapi    false    6            P           1259    17196     components_serology_tests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_serology_tests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_serology_tests_id_seq;
       public          strapi    false    337    6            G           0    0     components_serology_tests_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_serology_tests_id_seq OWNED BY public.components_serology_tests.id;
          public          strapi    false    336            �            1259    16529 (   components_serology_virology_repetitions    TABLE     �   CREATE TABLE public.components_serology_virology_repetitions (
    id integer NOT NULL,
    r1 character varying(255),
    r2 character varying(255),
    final character varying(255)
);
 <   DROP TABLE public.components_serology_virology_repetitions;
       public         heap    strapi    false    6            �            1259    16527 /   components_serology_virology_repetitions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_serology_virology_repetitions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.components_serology_virology_repetitions_id_seq;
       public          strapi    false    6    235            H           0    0 /   components_serology_virology_repetitions_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_serology_virology_repetitions_id_seq OWNED BY public.components_serology_virology_repetitions.id;
          public          strapi    false    234            �            1259    16387 
   core_store    TABLE     �   CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
    DROP TABLE public.core_store;
       public         heap    strapi    false    6            �            1259    16385    core_store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_store_id_seq;
       public          strapi    false    6    203            I           0    0    core_store_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;
          public          strapi    false    202                       1259    16693    donation_types    TABLE     |  CREATE TABLE public.donation_types (
    id integer NOT NULL,
    title_en character varying(255) NOT NULL,
    title_ar character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 "   DROP TABLE public.donation_types;
       public         heap    strapi    false    6                       1259    16691    donation_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.donation_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.donation_types_id_seq;
       public          strapi    false    6    259            J           0    0    donation_types_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.donation_types_id_seq OWNED BY public.donation_types.id;
          public          strapi    false    258                       1259    16706    employee_positions    TABLE     D  CREATE TABLE public.employee_positions (
    id integer NOT NULL,
    title_en character varying(255),
    title_ar character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 &   DROP TABLE public.employee_positions;
       public         heap    strapi    false    6                       1259    16704    employee_positions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_positions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.employee_positions_id_seq;
       public          strapi    false    261    6            K           0    0    employee_positions_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.employee_positions_id_seq OWNED BY public.employee_positions.id;
          public          strapi    false    260                       1259    16719 	   employees    TABLE     u  CREATE TABLE public.employees (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    second_name character varying(255) NOT NULL,
    third_name character varying(255) NOT NULL,
    fourth_name character varying(255) NOT NULL,
    gender character varying(255) NOT NULL,
    email character varying(255),
    mobile_phone character varying(255),
    date_of_birth date,
    center integer,
    employee_position integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.employees;
       public         heap    strapi    false    6                       1259    16717    employees_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employees_id_seq;
       public          strapi    false    6    263            L           0    0    employees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;
          public          strapi    false    262            	           1259    16732    governorates    TABLE     >  CREATE TABLE public.governorates (
    id integer NOT NULL,
    title_en character varying(255),
    title_ar character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.governorates;
       public         heap    strapi    false    6                       1259    16730    governorates_id_seq    SEQUENCE     �   CREATE SEQUENCE public.governorates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.governorates_id_seq;
       public          strapi    false    265    6            M           0    0    governorates_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.governorates_id_seq OWNED BY public.governorates.id;
          public          strapi    false    264            y           1259    18339 	   hospitals    TABLE     G  CREATE TABLE public.hospitals (
    id integer NOT NULL,
    "HospitalName" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.hospitals;
       public         heap    strapi2    false    6            x           1259    18337    hospitals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hospitals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.hospitals_id_seq;
       public          strapi2    false    377    6            N           0    0    hospitals_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.hospitals_id_seq OWNED BY public.hospitals.id;
          public          strapi2    false    376            ;           1259    17052    i18n_locales    TABLE     6  CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.i18n_locales;
       public         heap    strapi    false    6            :           1259    17050    i18n_locales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.i18n_locales_id_seq;
       public          strapi    false    6    315            O           0    0    i18n_locales_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;
          public          strapi    false    314            {           1259    18358    inspection_visual_techniques    TABLE     [  CREATE TABLE public.inspection_visual_techniques (
    id integer NOT NULL,
    "techniqueName" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 0   DROP TABLE public.inspection_visual_techniques;
       public         heap    strapi2    false    6            z           1259    18356 #   inspection_visual_techniques_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inspection_visual_techniques_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.inspection_visual_techniques_id_seq;
       public          strapi2    false    379    6            P           0    0 #   inspection_visual_techniques_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.inspection_visual_techniques_id_seq OWNED BY public.inspection_visual_techniques.id;
          public          strapi2    false    378            }           1259    18370    main_stores    TABLE     J  CREATE TABLE public.main_stores (
    id integer NOT NULL,
    "MainStoreName" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.main_stores;
       public         heap    strapi2    false    6            �           1259    18392    main_stores__sub_stores    TABLE     �   CREATE TABLE public.main_stores__sub_stores (
    id integer NOT NULL,
    main_store_id integer,
    "sub-store_id" integer
);
 +   DROP TABLE public.main_stores__sub_stores;
       public         heap    strapi2    false    6            �           1259    18390    main_stores__sub_stores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_stores__sub_stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.main_stores__sub_stores_id_seq;
       public          strapi2    false    6    385            Q           0    0    main_stores__sub_stores_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.main_stores__sub_stores_id_seq OWNED BY public.main_stores__sub_stores.id;
          public          strapi2    false    384            |           1259    18368    main_stores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.main_stores_id_seq;
       public          strapi2    false    381    6            R           0    0    main_stores_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.main_stores_id_seq OWNED BY public.main_stores.id;
          public          strapi2    false    380                       1259    16745    medical_checkups    TABLE     �   CREATE TABLE public.medical_checkups (
    id integer NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 $   DROP TABLE public.medical_checkups;
       public         heap    strapi    false    6                       1259    16755    medical_checkups_components    TABLE       CREATE TABLE public.medical_checkups_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    medical_checkup_id integer NOT NULL
);
 /   DROP TABLE public.medical_checkups_components;
       public         heap    strapi    false    6                       1259    16753 "   medical_checkups_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medical_checkups_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.medical_checkups_components_id_seq;
       public          strapi    false    6    269            S           0    0 "   medical_checkups_components_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.medical_checkups_components_id_seq OWNED BY public.medical_checkups_components.id;
          public          strapi    false    268            
           1259    16743    medical_checkups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medical_checkups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.medical_checkups_id_seq;
       public          strapi    false    267    6            T           0    0    medical_checkups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.medical_checkups_id_seq OWNED BY public.medical_checkups.id;
          public          strapi    false    266                       1259    16771    medical_remarks    TABLE     S  CREATE TABLE public.medical_remarks (
    id integer NOT NULL,
    title_en character varying(255) NOT NULL,
    title_ar character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 #   DROP TABLE public.medical_remarks;
       public         heap    strapi    false    6                       1259    16769    medical_remarks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medical_remarks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.medical_remarks_id_seq;
       public          strapi    false    6    271            U           0    0    medical_remarks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.medical_remarks_id_seq OWNED BY public.medical_remarks.id;
          public          strapi    false    270                       1259    16786    medications    TABLE     O  CREATE TABLE public.medications (
    id integer NOT NULL,
    title_en character varying(255) NOT NULL,
    title_ar character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.medications;
       public         heap    strapi    false    6                       1259    16784    medications_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.medications_id_seq;
       public          strapi    false    6    273            V           0    0    medications_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.medications_id_seq OWNED BY public.medications.id;
          public          strapi    false    272            I           1259    17154    nat-lab    TABLE     L  CREATE TABLE public."nat-lab" (
    id integer NOT NULL,
    "Available" boolean,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    available boolean
);
    DROP TABLE public."nat-lab";
       public         heap    strapi    false    6            H           1259    17152    nat-lab_id_seq    SEQUENCE     �   CREATE SEQUENCE public."nat-lab_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."nat-lab_id_seq";
       public          strapi    false    6    329            W           0    0    nat-lab_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."nat-lab_id_seq" OWNED BY public."nat-lab".id;
          public          strapi    false    328            G           1259    17142    nat_labs    TABLE     4  CREATE TABLE public.nat_labs (
    id integer NOT NULL,
    "Available" boolean,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.nat_labs;
       public         heap    strapi    false    6            F           1259    17140    nat_labs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nat_labs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.nat_labs_id_seq;
       public          strapi    false    6    327            X           0    0    nat_labs_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.nat_labs_id_seq OWNED BY public.nat_labs.id;
          public          strapi    false    326                       1259    16801    nationalities    TABLE     ?  CREATE TABLE public.nationalities (
    id integer NOT NULL,
    title_en character varying(255),
    title_ar character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.nationalities;
       public         heap    strapi    false    6                       1259    16799    nationalities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nationalities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.nationalities_id_seq;
       public          strapi    false    6    275            Y           0    0    nationalities_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.nationalities_id_seq OWNED BY public.nationalities.id;
          public          strapi    false    274                       1259    16814    notes_types    TABLE     =  CREATE TABLE public.notes_types (
    id integer NOT NULL,
    title_en character varying(255),
    title_ar character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.notes_types;
       public         heap    strapi    false    6                       1259    16812    notes_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notes_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.notes_types_id_seq;
       public          strapi    false    277    6            Z           0    0    notes_types_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.notes_types_id_seq OWNED BY public.notes_types.id;
          public          strapi    false    276                       1259    16827    occupations    TABLE     =  CREATE TABLE public.occupations (
    id integer NOT NULL,
    title_en character varying(255),
    title_ar character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.occupations;
       public         heap    strapi    false    6                       1259    16825    occupations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.occupations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.occupations_id_seq;
       public          strapi    false    279    6            [           0    0    occupations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.occupations_id_seq OWNED BY public.occupations.id;
          public          strapi    false    278            m           1259    18157    patient_types    TABLE     N  CREATE TABLE public.patient_types (
    id integer NOT NULL,
    "PatientTypeName" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.patient_types;
       public         heap    strapi2    false    6            l           1259    18155    patient_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.patient_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.patient_types_id_seq;
       public          strapi2    false    365    6            \           0    0    patient_types_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.patient_types_id_seq OWNED BY public.patient_types.id;
          public          strapi2    false    364                       1259    16850    phlebotomies    TABLE     >  CREATE TABLE public.phlebotomies (
    id integer NOT NULL,
    normal_volume_min numeric(10,2),
    normal_volume_max numeric(10,2),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.phlebotomies;
       public         heap    strapi    false    6                       1259    16860    phlebotomies_components    TABLE       CREATE TABLE public.phlebotomies_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    phlebotomy_id integer NOT NULL
);
 +   DROP TABLE public.phlebotomies_components;
       public         heap    strapi    false    6                       1259    16858    phlebotomies_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.phlebotomies_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.phlebotomies_components_id_seq;
       public          strapi    false    285    6            ]           0    0    phlebotomies_components_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.phlebotomies_components_id_seq OWNED BY public.phlebotomies_components.id;
          public          strapi    false    284                       1259    16848    phlebotomies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.phlebotomies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.phlebotomies_id_seq;
       public          strapi    false    283    6            ^           0    0    phlebotomies_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.phlebotomies_id_seq OWNED BY public.phlebotomies.id;
          public          strapi    false    282                       1259    16840    phlebotomists    TABLE       CREATE TABLE public.phlebotomists (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.phlebotomists;
       public         heap    strapi    false    6                       1259    16838    phlebotomists_id_seq    SEQUENCE     �   CREATE SEQUENCE public.phlebotomists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.phlebotomists_id_seq;
       public          strapi    false    281    6            _           0    0    phlebotomists_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.phlebotomists_id_seq OWNED BY public.phlebotomists.id;
          public          strapi    false    280            o           1259    18179 
   physicians    TABLE     I  CREATE TABLE public.physicians (
    id integer NOT NULL,
    "PhysicianName" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.physicians;
       public         heap    strapi2    false    6            n           1259    18177    physicians_id_seq    SEQUENCE     �   CREATE SEQUENCE public.physicians_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.physicians_id_seq;
       public          strapi2    false    367    6            `           0    0    physicians_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.physicians_id_seq OWNED BY public.physicians.id;
          public          strapi2    false    366            s           1259    18234 
   priorities    TABLE     D  CREATE TABLE public.priorities (
    id integer NOT NULL,
    "Priority" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.priorities;
       public         heap    strapi2    false    6            r           1259    18232    priorities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.priorities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.priorities_id_seq;
       public          strapi2    false    371    6            a           0    0    priorities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.priorities_id_seq OWNED BY public.priorities.id;
          public          strapi2    false    370            O           1259    17187    processings    TABLE     f  CREATE TABLE public.processings (
    id integer NOT NULL,
    test1 character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    tesd33333 character varying(255)
);
    DROP TABLE public.processings;
       public         heap    strapi    false    6            N           1259    17185    processings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.processings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.processings_id_seq;
       public          strapi    false    335    6            b           0    0    processings_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.processings_id_seq OWNED BY public.processings.id;
          public          strapi    false    334                       1259    16876    reason_of_donations    TABLE     E  CREATE TABLE public.reason_of_donations (
    id integer NOT NULL,
    title_en character varying(255),
    title_ar character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 '   DROP TABLE public.reason_of_donations;
       public         heap    strapi    false    6                       1259    16874    reason_of_donations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reason_of_donations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.reason_of_donations_id_seq;
       public          strapi    false    6    287            c           0    0    reason_of_donations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.reason_of_donations_id_seq OWNED BY public.reason_of_donations.id;
          public          strapi    false    286            !           1259    16889    registration_s    TABLE     �   CREATE TABLE public.registration_s (
    id integer NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 "   DROP TABLE public.registration_s;
       public         heap    strapi    false    6            #           1259    16899    registration_s_components    TABLE       CREATE TABLE public.registration_s_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    registration__id integer NOT NULL
);
 -   DROP TABLE public.registration_s_components;
       public         heap    strapi    false    6            "           1259    16897     registration_s_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_s_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.registration_s_components_id_seq;
       public          strapi    false    6    291            d           0    0     registration_s_components_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.registration_s_components_id_seq OWNED BY public.registration_s_components.id;
          public          strapi    false    290                        1259    16887    registration_s_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.registration_s_id_seq;
       public          strapi    false    289    6            e           0    0    registration_s_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.registration_s_id_seq OWNED BY public.registration_s.id;
          public          strapi    false    288            k           1259    18136    request_types    TABLE     N  CREATE TABLE public.request_types (
    id integer NOT NULL,
    "requestTypeName" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.request_types;
       public         heap    strapi2    false    6            j           1259    18134    request_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.request_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.request_types_id_seq;
       public          strapi2    false    6    363            f           0    0    request_types_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.request_types_id_seq OWNED BY public.request_types.id;
          public          strapi2    false    362            %           1259    16915    samples    TABLE     m  CREATE TABLE public.samples (
    id integer NOT NULL,
    sample_1 boolean NOT NULL,
    sample_2 boolean NOT NULL,
    sample_3 boolean NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    test character varying(255)
);
    DROP TABLE public.samples;
       public         heap    strapi    false    6            $           1259    16913    samples_id_seq    SEQUENCE     �   CREATE SEQUENCE public.samples_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.samples_id_seq;
       public          strapi    false    293    6            g           0    0    samples_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.samples_id_seq OWNED BY public.samples.id;
          public          strapi    false    292            '           1259    16925    social_statuses    TABLE     A  CREATE TABLE public.social_statuses (
    id integer NOT NULL,
    title_en character varying(255),
    title_ar character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 #   DROP TABLE public.social_statuses;
       public         heap    strapi    false    6            &           1259    16923    social_statuses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.social_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.social_statuses_id_seq;
       public          strapi    false    6    295            h           0    0    social_statuses_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.social_statuses_id_seq OWNED BY public.social_statuses.id;
          public          strapi    false    294            7           1259    17031    strapi_administrator    TABLE     �  CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);
 (   DROP TABLE public.strapi_administrator;
       public         heap    strapi    false    6            6           1259    17029    strapi_administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.strapi_administrator_id_seq;
       public          strapi    false    311    6            i           0    0    strapi_administrator_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;
          public          strapi    false    310            3           1259    17001    strapi_permission    TABLE     W  CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.strapi_permission;
       public         heap    strapi    false    6            2           1259    16999    strapi_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_permission_id_seq;
       public          strapi    false    307    6            j           0    0    strapi_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;
          public          strapi    false    306            5           1259    17014    strapi_role    TABLE     ?  CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.strapi_role;
       public         heap    strapi    false    6            4           1259    17012    strapi_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.strapi_role_id_seq;
       public          strapi    false    6    309            k           0    0    strapi_role_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;
          public          strapi    false    308            9           1259    17044    strapi_users_roles    TABLE     n   CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);
 &   DROP TABLE public.strapi_users_roles;
       public         heap    strapi    false    6            8           1259    17042    strapi_users_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.strapi_users_roles_id_seq;
       public          strapi    false    313    6            l           0    0    strapi_users_roles_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;
          public          strapi    false    312            1           1259    16990    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    strapi    false    6            0           1259    16988    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          strapi    false    305    6            m           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          strapi    false    304            )           1259    16938    sub_donation_types    TABLE     �  CREATE TABLE public.sub_donation_types (
    id integer NOT NULL,
    title_en character varying(255) NOT NULL,
    title_ar character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    is_center_only boolean,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 &   DROP TABLE public.sub_donation_types;
       public         heap    strapi    false    6            (           1259    16936    sub_donation_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sub_donation_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.sub_donation_types_id_seq;
       public          strapi    false    297    6            n           0    0    sub_donation_types_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.sub_donation_types_id_seq OWNED BY public.sub_donation_types.id;
          public          strapi    false    296                       1259    18381 
   sub_stores    TABLE     H  CREATE TABLE public.sub_stores (
    id integer NOT NULL,
    "SubStoreName" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.sub_stores;
       public         heap    strapi2    false    6            ~           1259    18379    sub_stores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sub_stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sub_stores_id_seq;
       public          strapi2    false    6    383            o           0    0    sub_stores_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sub_stores_id_seq OWNED BY public.sub_stores.id;
          public          strapi2    false    382            q           1259    18190    transfusions    TABLE     M  CREATE TABLE public.transfusions (
    id integer NOT NULL,
    "TransfusionName" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.transfusions;
       public         heap    strapi2    false    6            p           1259    18188    transfusions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transfusions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.transfusions_id_seq;
       public          strapi2    false    369    6            p           0    0    transfusions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.transfusions_id_seq OWNED BY public.transfusions.id;
          public          strapi2    false    368            =           1259    17067    upload_file    TABLE     �  CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.upload_file;
       public         heap    strapi    false    6            <           1259    17065    upload_file_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.upload_file_id_seq;
       public          strapi    false    317    6            q           0    0    upload_file_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;
          public          strapi    false    316            ?           1259    17080    upload_file_morph    TABLE     �   CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);
 %   DROP TABLE public.upload_file_morph;
       public         heap    strapi    false    6            >           1259    17078    upload_file_morph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.upload_file_morph_id_seq;
       public          strapi    false    6    319            r           0    0    upload_file_morph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;
          public          strapi    false    318            A           1259    17091    users-permissions_permission    TABLE     Y  CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);
 2   DROP TABLE public."users-permissions_permission";
       public         heap    strapi    false    6            @           1259    17089 #   users-permissions_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."users-permissions_permission_id_seq";
       public          strapi    false    6    321            s           0    0 #   users-permissions_permission_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;
          public          strapi    false    320            C           1259    17102    users-permissions_role    TABLE     �   CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);
 ,   DROP TABLE public."users-permissions_role";
       public         heap    strapi    false    6            B           1259    17100    users-permissions_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_role_id_seq";
       public          strapi    false    323    6            t           0    0    users-permissions_role_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;
          public          strapi    false    322            E           1259    17115    users-permissions_user    TABLE     �  CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    first_name character varying(255) NOT NULL,
    second_name character varying(255) NOT NULL,
    third_name character varying(255) NOT NULL,
    fourth_name character varying(255) NOT NULL,
    civil_id character varying(255),
    mobile_phone character varying(255),
    date_of_birth date,
    gender character varying(255),
    center integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 ,   DROP TABLE public."users-permissions_user";
       public         heap    strapi    false    6            D           1259    17113    users-permissions_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_user_id_seq";
       public          strapi    false    325    6            u           0    0    users-permissions_user_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;
          public          strapi    false    324            +           1259    16951    vehicles    TABLE     `  CREATE TABLE public.vehicles (
    id integer NOT NULL,
    title_en character varying(255) NOT NULL,
    title_ar character varying(255) NOT NULL,
    center integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.vehicles;
       public         heap    strapi    false    6            *           1259    16949    vehicles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vehicles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vehicles_id_seq;
       public          strapi    false    299    6            v           0    0    vehicles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vehicles_id_seq OWNED BY public.vehicles.id;
          public          strapi    false    298            -           1259    16964 
   virologies    TABLE     5  CREATE TABLE public.virologies (
    id integer NOT NULL,
    isbt_standard boolean NOT NULL,
    counseling_sample boolean,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.virologies;
       public         heap    strapi    false    6            /           1259    16974    virologies_components    TABLE     	  CREATE TABLE public.virologies_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    virology_id integer NOT NULL
);
 )   DROP TABLE public.virologies_components;
       public         heap    strapi    false    6            .           1259    16972    virologies_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.virologies_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.virologies_components_id_seq;
       public          strapi    false    6    303            w           0    0    virologies_components_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.virologies_components_id_seq OWNED BY public.virologies_components.id;
          public          strapi    false    302            ,           1259    16962    virologies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.virologies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.virologies_id_seq;
       public          strapi    false    301    6            x           0    0    virologies_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.virologies_id_seq OWNED BY public.virologies.id;
          public          strapi    false    300            �           2604    17179 	   NetLab id    DEFAULT     j   ALTER TABLE ONLY public."NetLab" ALTER COLUMN id SET DEFAULT nextval('public."NetLab_id_seq"'::regclass);
 :   ALTER TABLE public."NetLab" ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    333    332    333            �           2604    17168 	   NetLap id    DEFAULT     j   ALTER TABLE ONLY public."NetLap" ALTER COLUMN id SET DEFAULT nextval('public."NetLap_id_seq"'::regclass);
 :   ALTER TABLE public."NetLap" ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    330    331    331            O           2604    16543    adverse_events id    DEFAULT     v   ALTER TABLE ONLY public.adverse_events ALTER COLUMN id SET DEFAULT nextval('public.adverse_events_id_seq'::regclass);
 @   ALTER TABLE public.adverse_events ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    236    237    237            R           2604    16558    apheresis_kits id    DEFAULT     v   ALTER TABLE ONLY public.apheresis_kits ALTER COLUMN id SET DEFAULT nextval('public.apheresis_kits_id_seq'::regclass);
 @   ALTER TABLE public.apheresis_kits ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    239    238    239            U           2604    16571    apheresis_machines id    DEFAULT     ~   ALTER TABLE ONLY public.apheresis_machines ALTER COLUMN id SET DEFAULT nextval('public.apheresis_machines_id_seq'::regclass);
 D   ALTER TABLE public.apheresis_machines ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    240    241    241            �           2604    17419    assigned_blood_components id    DEFAULT     �   ALTER TABLE ONLY public.assigned_blood_components ALTER COLUMN id SET DEFAULT nextval('public.assigned_blood_components_id_seq'::regclass);
 K   ALTER TABLE public.assigned_blood_components ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    343    342    343            �           2604    17434 .   assigned_blood_components__blood_components id    DEFAULT     �   ALTER TABLE ONLY public.assigned_blood_components__blood_components ALTER COLUMN id SET DEFAULT nextval('public.assigned_blood_components__blood_components_id_seq'::regclass);
 ]   ALTER TABLE public.assigned_blood_components__blood_components ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    344    345    345            X           2604    16584    bag_types id    DEFAULT     l   ALTER TABLE ONLY public.bag_types ALTER COLUMN id SET DEFAULT nextval('public.bag_types_id_seq'::regclass);
 ;   ALTER TABLE public.bag_types ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    243    242    243            �           2604    17874 #   bag_types__low_volume_components id    DEFAULT     �   ALTER TABLE ONLY public.bag_types__low_volume_components ALTER COLUMN id SET DEFAULT nextval('public.bag_types__low_volume_components_id_seq'::regclass);
 R   ALTER TABLE public.bag_types__low_volume_components ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    358    359    359            �           2604    17866 !   bag_types__original_components id    DEFAULT     �   ALTER TABLE ONLY public.bag_types__original_components ALTER COLUMN id SET DEFAULT nextval('public.bag_types__original_components_id_seq'::regclass);
 P   ALTER TABLE public.bag_types__original_components ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    357    356    357            �           2604    17462    bag_types_components id    DEFAULT     �   ALTER TABLE ONLY public.bag_types_components ALTER COLUMN id SET DEFAULT nextval('public.bag_types_components_id_seq'::regclass);
 F   ALTER TABLE public.bag_types_components ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    350    351    351            [           2604    16597    band_component_cases id    DEFAULT     �   ALTER TABLE ONLY public.band_component_cases ALTER COLUMN id SET DEFAULT nextval('public.band_component_cases_id_seq'::regclass);
 F   ALTER TABLE public.band_component_cases ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    244    245    245            ^           2604    16612    blood_collection_events id    DEFAULT     �   ALTER TABLE ONLY public.blood_collection_events ALTER COLUMN id SET DEFAULT nextval('public.blood_collection_events_id_seq'::regclass);
 I   ALTER TABLE public.blood_collection_events ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    247    246    247            �           2604    17219    blood_component_groups id    DEFAULT     �   ALTER TABLE ONLY public.blood_component_groups ALTER COLUMN id SET DEFAULT nextval('public.blood_component_groups_id_seq'::regclass);
 H   ALTER TABLE public.blood_component_groups ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    338    339    339            �           2604    17237    blood_components id    DEFAULT     z   ALTER TABLE ONLY public.blood_components ALTER COLUMN id SET DEFAULT nextval('public.blood_components_id_seq'::regclass);
 B   ALTER TABLE public.blood_components ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    341    340    341            �           2604    17444 +   blood_components__blood_component_groups id    DEFAULT     �   ALTER TABLE ONLY public.blood_components__blood_component_groups ALTER COLUMN id SET DEFAULT nextval('public.blood_components__blood_component_groups_id_seq'::regclass);
 Z   ALTER TABLE public.blood_components__blood_component_groups ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    346    347    347            a           2604    16627    campaigns id    DEFAULT     l   ALTER TABLE ONLY public.campaigns ALTER COLUMN id SET DEFAULT nextval('public.campaigns_id_seq'::regclass);
 ;   ALTER TABLE public.campaigns ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    249    248    249            d           2604    16641    campaigns_components id    DEFAULT     �   ALTER TABLE ONLY public.campaigns_components ALTER COLUMN id SET DEFAULT nextval('public.campaigns_components_id_seq'::regclass);
 F   ALTER TABLE public.campaigns_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    251    250    251            e           2604    16657 
   centers id    DEFAULT     h   ALTER TABLE ONLY public.centers ALTER COLUMN id SET DEFAULT nextval('public.centers_id_seq'::regclass);
 9   ALTER TABLE public.centers ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    252    253    253            h           2604    16670 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    254    255    255            k           2604    16683    collection_sites id    DEFAULT     z   ALTER TABLE ONLY public.collection_sites ALTER COLUMN id SET DEFAULT nextval('public.collection_sites_id_seq'::regclass);
 B   ALTER TABLE public.collection_sites ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    257    256    257            ?           2604    16401 %   components_campaigns_campaign_data id    DEFAULT     �   ALTER TABLE ONLY public.components_campaigns_campaign_data ALTER COLUMN id SET DEFAULT nextval('public.components_campaigns_campaign_data_id_seq'::regclass);
 T   ALTER TABLE public.components_campaigns_campaign_data ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    205    204    205            @           2604    16409 0   components_campaigns_campaign_data__employees id    DEFAULT     �   ALTER TABLE ONLY public.components_campaigns_campaign_data__employees ALTER COLUMN id SET DEFAULT nextval('public.components_campaigns_campaign_data__employees_id_seq'::regclass);
 _   ALTER TABLE public.components_campaigns_campaign_data__employees ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    207    206    207            A           2604    16417     components_donation_age_rules id    DEFAULT     �   ALTER TABLE ONLY public.components_donation_age_rules ALTER COLUMN id SET DEFAULT nextval('public.components_donation_age_rules_id_seq'::regclass);
 O   ALTER TABLE public.components_donation_age_rules ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    209    208    209            B           2604    16425 +   components_donation_band_component_cases id    DEFAULT     �   ALTER TABLE ONLY public.components_donation_band_component_cases ALTER COLUMN id SET DEFAULT nextval('public.components_donation_band_component_cases_id_seq'::regclass);
 Z   ALTER TABLE public.components_donation_band_component_cases ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    210    211    211            C           2604    16433 -   components_donation_default_donation_types id    DEFAULT     �   ALTER TABLE ONLY public.components_donation_default_donation_types ALTER COLUMN id SET DEFAULT nextval('public.components_donation_default_donation_types_id_seq'::regclass);
 \   ALTER TABLE public.components_donation_default_donation_types ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    213    212    213            D           2604    16441 *   components_donation_general_appearances id    DEFAULT     �   ALTER TABLE ONLY public.components_donation_general_appearances ALTER COLUMN id SET DEFAULT nextval('public.components_donation_general_appearances_id_seq'::regclass);
 Y   ALTER TABLE public.components_donation_general_appearances ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    215    214    215            E           2604    16449 2   components_donation_medical_checkup_range_rules id    DEFAULT     �   ALTER TABLE ONLY public.components_donation_medical_checkup_range_rules ALTER COLUMN id SET DEFAULT nextval('public.components_donation_medical_checkup_range_rules_id_seq'::regclass);
 a   ALTER TABLE public.components_donation_medical_checkup_range_rules ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    217    216    217            F           2604    16460 .   components_donation_medical_checkup_reasons id    DEFAULT     �   ALTER TABLE ONLY public.components_donation_medical_checkup_reasons ALTER COLUMN id SET DEFAULT nextval('public.components_donation_medical_checkup_reasons_id_seq'::regclass);
 ]   ALTER TABLE public.components_donation_medical_checkup_reasons ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    218    219    219            G           2604    16470 &   components_donation_medical_remarks id    DEFAULT     �   ALTER TABLE ONLY public.components_donation_medical_remarks ALTER COLUMN id SET DEFAULT nextval('public.components_donation_medical_remarks_id_seq'::regclass);
 U   ALTER TABLE public.components_donation_medical_remarks ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    221    220    221            H           2604    16478 "   components_donation_medications id    DEFAULT     �   ALTER TABLE ONLY public.components_donation_medications ALTER COLUMN id SET DEFAULT nextval('public.components_donation_medications_id_seq'::regclass);
 Q   ALTER TABLE public.components_donation_medications ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    222    223    223            I           2604    16486 )   components_donation_phlebotomy_reasons id    DEFAULT     �   ALTER TABLE ONLY public.components_donation_phlebotomy_reasons ALTER COLUMN id SET DEFAULT nextval('public.components_donation_phlebotomy_reasons_id_seq'::regclass);
 X   ALTER TABLE public.components_donation_phlebotomy_reasons ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    225    224    225            J           2604    16494 %   components_donation_pulse_statuses id    DEFAULT     �   ALTER TABLE ONLY public.components_donation_pulse_statuses ALTER COLUMN id SET DEFAULT nextval('public.components_donation_pulse_statuses_id_seq'::regclass);
 T   ALTER TABLE public.components_donation_pulse_statuses ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    227    226    227            K           2604    16502 "   components_donation_visit_rules id    DEFAULT     �   ALTER TABLE ONLY public.components_donation_visit_rules ALTER COLUMN id SET DEFAULT nextval('public.components_donation_visit_rules_id_seq'::regclass);
 Q   ALTER TABLE public.components_donation_visit_rules ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    229    228    229            �           2604    17453 (   components_proccessing_add_components id    DEFAULT     �   ALTER TABLE ONLY public.components_proccessing_add_components ALTER COLUMN id SET DEFAULT nextval('public.components_proccessing_add_components_id_seq'::regclass);
 W   ALTER TABLE public.components_proccessing_add_components ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    348    349    349            �           2604    18123 *   components_proccessing_blood_components id    DEFAULT     �   ALTER TABLE ONLY public.components_proccessing_blood_components ALTER COLUMN id SET DEFAULT nextval('public.components_proccessing_blood_components_id_seq'::regclass);
 Y   ALTER TABLE public.components_proccessing_blood_components ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    360    361    361            �           2604    18330 <   components_proccessing_blood_components__blood_components id    DEFAULT     �   ALTER TABLE ONLY public.components_proccessing_blood_components__blood_components ALTER COLUMN id SET DEFAULT nextval('public.components_proccessing_blood_components__blood_component_id_seq'::regclass);
 k   ALTER TABLE public.components_proccessing_blood_components__blood_components ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    375    374    375            �           2604    17848 $   components_proccessing_components id    DEFAULT     �   ALTER TABLE ONLY public.components_proccessing_components ALTER COLUMN id SET DEFAULT nextval('public.components_proccessing_components_id_seq'::regclass);
 S   ALTER TABLE public.components_proccessing_components ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    353    352    353            �           2604    17858 6   components_proccessing_components__blood_components id    DEFAULT     �   ALTER TABLE ONLY public.components_proccessing_components__blood_components ALTER COLUMN id SET DEFAULT nextval('public.components_proccessing_components__blood_components_id_seq'::regclass);
 e   ALTER TABLE public.components_proccessing_components__blood_components ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    355    354    355            �           2604    18294 .   components_proccessing_m_s_blood_components id    DEFAULT     �   ALTER TABLE ONLY public.components_proccessing_m_s_blood_components ALTER COLUMN id SET DEFAULT nextval('public.components_proccessing_m_s_blood_components_id_seq'::regclass);
 ]   ALTER TABLE public.components_proccessing_m_s_blood_components ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    373    372    373            L           2604    16510 .   components_serology_counseling_sample_rules id    DEFAULT     �   ALTER TABLE ONLY public.components_serology_counseling_sample_rules ALTER COLUMN id SET DEFAULT nextval('public.components_serology_counseling_sample_rules_id_seq'::regclass);
 ]   ALTER TABLE public.components_serology_counseling_sample_rules ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    230    231    231            M           2604    16521     components_serology_nat_isbts id    DEFAULT     �   ALTER TABLE ONLY public.components_serology_nat_isbts ALTER COLUMN id SET DEFAULT nextval('public.components_serology_nat_isbts_id_seq'::regclass);
 O   ALTER TABLE public.components_serology_nat_isbts ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    233    232    233            �           2604    17201    components_serology_tests id    DEFAULT     �   ALTER TABLE ONLY public.components_serology_tests ALTER COLUMN id SET DEFAULT nextval('public.components_serology_tests_id_seq'::regclass);
 K   ALTER TABLE public.components_serology_tests ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    337    336    337            N           2604    16532 +   components_serology_virology_repetitions id    DEFAULT     �   ALTER TABLE ONLY public.components_serology_virology_repetitions ALTER COLUMN id SET DEFAULT nextval('public.components_serology_virology_repetitions_id_seq'::regclass);
 Z   ALTER TABLE public.components_serology_virology_repetitions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    234    235    235            >           2604    16390    core_store id    DEFAULT     n   ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);
 <   ALTER TABLE public.core_store ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    202    203    203            n           2604    16696    donation_types id    DEFAULT     v   ALTER TABLE ONLY public.donation_types ALTER COLUMN id SET DEFAULT nextval('public.donation_types_id_seq'::regclass);
 @   ALTER TABLE public.donation_types ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    259    258    259            q           2604    16709    employee_positions id    DEFAULT     ~   ALTER TABLE ONLY public.employee_positions ALTER COLUMN id SET DEFAULT nextval('public.employee_positions_id_seq'::regclass);
 D   ALTER TABLE public.employee_positions ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    260    261    261            t           2604    16722    employees id    DEFAULT     l   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    263    262    263            w           2604    16735    governorates id    DEFAULT     r   ALTER TABLE ONLY public.governorates ALTER COLUMN id SET DEFAULT nextval('public.governorates_id_seq'::regclass);
 >   ALTER TABLE public.governorates ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    265    264    265            �           2604    18342    hospitals id    DEFAULT     l   ALTER TABLE ONLY public.hospitals ALTER COLUMN id SET DEFAULT nextval('public.hospitals_id_seq'::regclass);
 ;   ALTER TABLE public.hospitals ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    376    377    377            �           2604    17055    i18n_locales id    DEFAULT     r   ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);
 >   ALTER TABLE public.i18n_locales ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    314    315    315            �           2604    18361    inspection_visual_techniques id    DEFAULT     �   ALTER TABLE ONLY public.inspection_visual_techniques ALTER COLUMN id SET DEFAULT nextval('public.inspection_visual_techniques_id_seq'::regclass);
 N   ALTER TABLE public.inspection_visual_techniques ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    378    379    379            �           2604    18373    main_stores id    DEFAULT     p   ALTER TABLE ONLY public.main_stores ALTER COLUMN id SET DEFAULT nextval('public.main_stores_id_seq'::regclass);
 =   ALTER TABLE public.main_stores ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    380    381    381            �           2604    18395    main_stores__sub_stores id    DEFAULT     �   ALTER TABLE ONLY public.main_stores__sub_stores ALTER COLUMN id SET DEFAULT nextval('public.main_stores__sub_stores_id_seq'::regclass);
 I   ALTER TABLE public.main_stores__sub_stores ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    385    384    385            z           2604    16748    medical_checkups id    DEFAULT     z   ALTER TABLE ONLY public.medical_checkups ALTER COLUMN id SET DEFAULT nextval('public.medical_checkups_id_seq'::regclass);
 B   ALTER TABLE public.medical_checkups ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    267    266    267            }           2604    16758    medical_checkups_components id    DEFAULT     �   ALTER TABLE ONLY public.medical_checkups_components ALTER COLUMN id SET DEFAULT nextval('public.medical_checkups_components_id_seq'::regclass);
 M   ALTER TABLE public.medical_checkups_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    268    269    269            ~           2604    16774    medical_remarks id    DEFAULT     x   ALTER TABLE ONLY public.medical_remarks ALTER COLUMN id SET DEFAULT nextval('public.medical_remarks_id_seq'::regclass);
 A   ALTER TABLE public.medical_remarks ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    270    271    271            �           2604    16789    medications id    DEFAULT     p   ALTER TABLE ONLY public.medications ALTER COLUMN id SET DEFAULT nextval('public.medications_id_seq'::regclass);
 =   ALTER TABLE public.medications ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    272    273    273            �           2604    17157 
   nat-lab id    DEFAULT     l   ALTER TABLE ONLY public."nat-lab" ALTER COLUMN id SET DEFAULT nextval('public."nat-lab_id_seq"'::regclass);
 ;   ALTER TABLE public."nat-lab" ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    328    329    329            �           2604    17145    nat_labs id    DEFAULT     j   ALTER TABLE ONLY public.nat_labs ALTER COLUMN id SET DEFAULT nextval('public.nat_labs_id_seq'::regclass);
 :   ALTER TABLE public.nat_labs ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    326    327    327            �           2604    16804    nationalities id    DEFAULT     t   ALTER TABLE ONLY public.nationalities ALTER COLUMN id SET DEFAULT nextval('public.nationalities_id_seq'::regclass);
 ?   ALTER TABLE public.nationalities ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    275    274    275            �           2604    16817    notes_types id    DEFAULT     p   ALTER TABLE ONLY public.notes_types ALTER COLUMN id SET DEFAULT nextval('public.notes_types_id_seq'::regclass);
 =   ALTER TABLE public.notes_types ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    277    276    277            �           2604    16830    occupations id    DEFAULT     p   ALTER TABLE ONLY public.occupations ALTER COLUMN id SET DEFAULT nextval('public.occupations_id_seq'::regclass);
 =   ALTER TABLE public.occupations ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    279    278    279            �           2604    18160    patient_types id    DEFAULT     t   ALTER TABLE ONLY public.patient_types ALTER COLUMN id SET DEFAULT nextval('public.patient_types_id_seq'::regclass);
 ?   ALTER TABLE public.patient_types ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    365    364    365            �           2604    16853    phlebotomies id    DEFAULT     r   ALTER TABLE ONLY public.phlebotomies ALTER COLUMN id SET DEFAULT nextval('public.phlebotomies_id_seq'::regclass);
 >   ALTER TABLE public.phlebotomies ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    282    283    283            �           2604    16863    phlebotomies_components id    DEFAULT     �   ALTER TABLE ONLY public.phlebotomies_components ALTER COLUMN id SET DEFAULT nextval('public.phlebotomies_components_id_seq'::regclass);
 I   ALTER TABLE public.phlebotomies_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    285    284    285            �           2604    16843    phlebotomists id    DEFAULT     t   ALTER TABLE ONLY public.phlebotomists ALTER COLUMN id SET DEFAULT nextval('public.phlebotomists_id_seq'::regclass);
 ?   ALTER TABLE public.phlebotomists ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    281    280    281            �           2604    18182    physicians id    DEFAULT     n   ALTER TABLE ONLY public.physicians ALTER COLUMN id SET DEFAULT nextval('public.physicians_id_seq'::regclass);
 <   ALTER TABLE public.physicians ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    366    367    367            �           2604    18237    priorities id    DEFAULT     n   ALTER TABLE ONLY public.priorities ALTER COLUMN id SET DEFAULT nextval('public.priorities_id_seq'::regclass);
 <   ALTER TABLE public.priorities ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    370    371    371            �           2604    17190    processings id    DEFAULT     p   ALTER TABLE ONLY public.processings ALTER COLUMN id SET DEFAULT nextval('public.processings_id_seq'::regclass);
 =   ALTER TABLE public.processings ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    334    335    335            �           2604    16879    reason_of_donations id    DEFAULT     �   ALTER TABLE ONLY public.reason_of_donations ALTER COLUMN id SET DEFAULT nextval('public.reason_of_donations_id_seq'::regclass);
 E   ALTER TABLE public.reason_of_donations ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    286    287    287            �           2604    16892    registration_s id    DEFAULT     v   ALTER TABLE ONLY public.registration_s ALTER COLUMN id SET DEFAULT nextval('public.registration_s_id_seq'::regclass);
 @   ALTER TABLE public.registration_s ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    289    288    289            �           2604    16902    registration_s_components id    DEFAULT     �   ALTER TABLE ONLY public.registration_s_components ALTER COLUMN id SET DEFAULT nextval('public.registration_s_components_id_seq'::regclass);
 K   ALTER TABLE public.registration_s_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    290    291    291            �           2604    18139    request_types id    DEFAULT     t   ALTER TABLE ONLY public.request_types ALTER COLUMN id SET DEFAULT nextval('public.request_types_id_seq'::regclass);
 ?   ALTER TABLE public.request_types ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    362    363    363            �           2604    16918 
   samples id    DEFAULT     h   ALTER TABLE ONLY public.samples ALTER COLUMN id SET DEFAULT nextval('public.samples_id_seq'::regclass);
 9   ALTER TABLE public.samples ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    293    292    293            �           2604    16928    social_statuses id    DEFAULT     x   ALTER TABLE ONLY public.social_statuses ALTER COLUMN id SET DEFAULT nextval('public.social_statuses_id_seq'::regclass);
 A   ALTER TABLE public.social_statuses ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    295    294    295            �           2604    17034    strapi_administrator id    DEFAULT     �   ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);
 F   ALTER TABLE public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    310    311    311            �           2604    17004    strapi_permission id    DEFAULT     |   ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);
 C   ALTER TABLE public.strapi_permission ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    307    306    307            �           2604    17017    strapi_role id    DEFAULT     p   ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);
 =   ALTER TABLE public.strapi_role ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    309    308    309            �           2604    17047    strapi_users_roles id    DEFAULT     ~   ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);
 D   ALTER TABLE public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    312    313    313            �           2604    16993    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    304    305    305            �           2604    16941    sub_donation_types id    DEFAULT     ~   ALTER TABLE ONLY public.sub_donation_types ALTER COLUMN id SET DEFAULT nextval('public.sub_donation_types_id_seq'::regclass);
 D   ALTER TABLE public.sub_donation_types ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    297    296    297            �           2604    18384    sub_stores id    DEFAULT     n   ALTER TABLE ONLY public.sub_stores ALTER COLUMN id SET DEFAULT nextval('public.sub_stores_id_seq'::regclass);
 <   ALTER TABLE public.sub_stores ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    383    382    383            �           2604    18193    transfusions id    DEFAULT     r   ALTER TABLE ONLY public.transfusions ALTER COLUMN id SET DEFAULT nextval('public.transfusions_id_seq'::regclass);
 >   ALTER TABLE public.transfusions ALTER COLUMN id DROP DEFAULT;
       public          strapi2    false    368    369    369            �           2604    17070    upload_file id    DEFAULT     p   ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);
 =   ALTER TABLE public.upload_file ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    316    317    317            �           2604    17083    upload_file_morph id    DEFAULT     |   ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);
 C   ALTER TABLE public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    319    318    319            �           2604    17094    users-permissions_permission id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);
 P   ALTER TABLE public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    320    321    321            �           2604    17105    users-permissions_role id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    323    322    323            �           2604    17118    users-permissions_user id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    324    325    325            �           2604    16954    vehicles id    DEFAULT     j   ALTER TABLE ONLY public.vehicles ALTER COLUMN id SET DEFAULT nextval('public.vehicles_id_seq'::regclass);
 :   ALTER TABLE public.vehicles ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    298    299    299            �           2604    16967    virologies id    DEFAULT     n   ALTER TABLE ONLY public.virologies ALTER COLUMN id SET DEFAULT nextval('public.virologies_id_seq'::regclass);
 <   ALTER TABLE public.virologies ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    300    301    301            �           2604    16977    virologies_components id    DEFAULT     �   ALTER TABLE ONLY public.virologies_components ALTER COLUMN id SET DEFAULT nextval('public.virologies_components_id_seq'::regclass);
 G   ALTER TABLE public.virologies_components ALTER COLUMN id DROP DEFAULT;
       public          strapi    false    303    302    303            �          0    17176    NetLab 
   TABLE DATA           a   COPY public."NetLab" (id, available, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    333   .�      �          0    17165    NetLap 
   TABLE DATA           a   COPY public."NetLap" (id, available, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    331   K�      �          0    16540    adverse_events 
   TABLE DATA           p   COPY public.adverse_events (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    237   h�      �          0    16555    apheresis_kits 
   TABLE DATA           p   COPY public.apheresis_kits (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    239   ^�      �          0    16568    apheresis_machines 
   TABLE DATA           t   COPY public.apheresis_machines (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    241   {�      �          0    17416    assigned_blood_components 
   TABLE DATA           >  COPY public.assigned_blood_components (id, blood_component, "Barcode", "VoulmeByDefault", "MinimumVolume", "MaximumVolume", "SepartedAfter", "SepartedBefore", "MinimumPhlebotomyTime", "MaximumPhlepotomytime", "Expiration", "SortKey", published_at, created_by, updated_by, created_at, updated_at, bag_type) FROM stdin;
    public          strapi2    false    343   ��      �          0    17431 +   assigned_blood_components__blood_components 
   TABLE DATA           |   COPY public.assigned_blood_components__blood_components (id, assigned_blood_component_id, "blood-component_id") FROM stdin;
    public          strapi2    false    345   ��      �          0    16581 	   bag_types 
   TABLE DATA           �  COPY public.bag_types (id, title_en, title_ar, created_by, updated_by, created_at, updated_at, "Code", "Description", "Anticoagulant", "BagWeight", "MaximumVolume", "MinimumVolume", "LowVolume", "Expiration", "BloodSeparation", "Manufacturer", "SortKey", "Active", "OriginalComponent", "LowVoulmeComponent", "c1VolumeByDefault", "c1MinimumVolume", "c1MaximumVolume", "c1Expiration", "c1SortKey", "LowVolumeComponent") FROM stdin;
    public          strapi    false    243   ܎      �          0    17871     bag_types__low_volume_components 
   TABLE DATA           a   COPY public.bag_types__low_volume_components (id, bag_type_id, "blood-component_id") FROM stdin;
    public          strapi2    false    359   g�      �          0    17863    bag_types__original_components 
   TABLE DATA           _   COPY public.bag_types__original_components (id, bag_type_id, "blood-component_id") FROM stdin;
    public          strapi2    false    357   ��      �          0    17459    bag_types_components 
   TABLE DATA           m   COPY public.bag_types_components (id, field, "order", component_type, component_id, bag_type_id) FROM stdin;
    public          strapi2    false    351   ��      �          0    16594    band_component_cases 
   TABLE DATA           v   COPY public.band_component_cases (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    245   &�      �          0    16609    blood_collection_events 
   TABLE DATA           y   COPY public.blood_collection_events (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    247   C�      �          0    17216    blood_component_groups 
   TABLE DATA           �   COPY public.blood_component_groups (id, "Code", published_at, created_by, updated_by, created_at, updated_at, "Description", "SortKey") FROM stdin;
    public          strapi2    false    339   ��      �          0    17234    blood_components 
   TABLE DATA           R  COPY public.blood_components (id, "Code", "Description", "ShortName", "Barcode", "CodeToExport", "CodeToInvoice", "SortKey", "Available", "Active", "LowVolume", "Washing", "Cryoprecipitate", filter, "Aliquot", published_at, created_by, updated_by, created_at, updated_at, "Filter", assigned_blood_component, "ComponentPrice") FROM stdin;
    public          strapi2    false    341   2�      �          0    17441 (   blood_components__blood_component_groups 
   TABLE DATA           v   COPY public.blood_components__blood_component_groups (id, blood_component_id, "blood-component-group_id") FROM stdin;
    public          strapi2    false    347   ��      �          0    16624 	   campaigns 
   TABLE DATA           �   COPY public.campaigns (id, barcode_type, is_active, expected_donor_count, start_date, end_date, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    249   ��      �          0    16638    campaigns_components 
   TABLE DATA           m   COPY public.campaigns_components (id, field, "order", component_type, component_id, campaign_id) FROM stdin;
    public          strapi    false    251   V�      �          0    16654    centers 
   TABLE DATA           s   COPY public.centers (id, title_en, title_ar, created_by, updated_by, created_at, updated_at, "NatLab") FROM stdin;
    public          strapi    false    253   ��      �          0    16667    cities 
   TABLE DATA           h   COPY public.cities (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    255   &�      �          0    16680    collection_sites 
   TABLE DATA           r   COPY public.collection_sites (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    257   ��      a          0    16398 "   components_campaigns_campaign_data 
   TABLE DATA           b   COPY public.components_campaigns_campaign_data (id, vehicle, center, collection_site) FROM stdin;
    public          strapi    false    205   �      c          0    16406 -   components_campaigns_campaign_data__employees 
   TABLE DATA           �   COPY public.components_campaigns_campaign_data__employees (id, components_campaigns_campaign_datum_id, employee_id) FROM stdin;
    public          strapi    false    207   8�      e          0    16414    components_donation_age_rules 
   TABLE DATA           e   COPY public.components_donation_age_rules (id, minimum_allowed_age, maximum_allowed_age) FROM stdin;
    public          strapi    false    209   m�      g          0    16422 (   components_donation_band_component_cases 
   TABLE DATA           {   COPY public.components_donation_band_component_cases (id, deferral_days, deferral_action, band_component_case) FROM stdin;
    public          strapi    false    211   ��      i          0    16430 *   components_donation_default_donation_types 
   TABLE DATA           j   COPY public.components_donation_default_donation_types (id, donation_type, sub_donation_type) FROM stdin;
    public          strapi    false    213   ��      k          0    16438 '   components_donation_general_appearances 
   TABLE DATA           e   COPY public.components_donation_general_appearances (id, deferral_action, deferral_days) FROM stdin;
    public          strapi    false    215   Κ      m          0    16446 /   components_donation_medical_checkup_range_rules 
   TABLE DATA           C  COPY public.components_donation_medical_checkup_range_rules (id, minimum_normal_male, maximum_normal_male, minimum_normal_female, maximum_normal_female, below_minimum_deferral_action, above_maximum_deferral_action, below_minimum_deferral_days, above_maximum_deferral_days, default_value, default_value_applied) FROM stdin;
    public          strapi    false    217   ��      o          0    16457 +   components_donation_medical_checkup_reasons 
   TABLE DATA           x   COPY public.components_donation_medical_checkup_reasons (id, deferral_days, deferral_action, adverse_event) FROM stdin;
    public          strapi    false    219   ��      q          0    16467 #   components_donation_medical_remarks 
   TABLE DATA           q   COPY public.components_donation_medical_remarks (id, deferral_days, deferral_action, medical_remark) FROM stdin;
    public          strapi    false    221   ̛      s          0    16475    components_donation_medications 
   TABLE DATA           ]   COPY public.components_donation_medications (id, medication, preferred_bag_type) FROM stdin;
    public          strapi    false    223   �      u          0    16483 &   components_donation_phlebotomy_reasons 
   TABLE DATA           |   COPY public.components_donation_phlebotomy_reasons (id, deferral_action, deferral_days, blood_collection_event) FROM stdin;
    public          strapi    false    225   �      w          0    16491 "   components_donation_pulse_statuses 
   TABLE DATA           `   COPY public.components_donation_pulse_statuses (id, deferral_action, deferral_days) FROM stdin;
    public          strapi    false    227   J�      y          0    16499    components_donation_visit_rules 
   TABLE DATA           �   COPY public.components_donation_visit_rules (id, days, donation_type, sub_donation_type, gender, previous_donation_type, previous_sub_donation_type) FROM stdin;
    public          strapi    false    229   g�      �          0    17450 %   components_proccessing_add_components 
   TABLE DATA             COPY public.components_proccessing_add_components (id, blood_component, "VolumeByDefault", "MinimumVolume", "MaximumVolume", "Expiration", "SortKey", "SeparatedAfter", "SeparatedBefore", "MinimumPhlebotomyTime", "MaximumPhlebotomyTime", "Duration") FROM stdin;
    public          strapi2    false    349   Ŝ      �          0    18120 '   components_proccessing_blood_components 
   TABLE DATA             COPY public.components_proccessing_blood_components (id, "Barcode", "Code", "ShortName", blood_component, "VolumeBydefault", "MinimumVolume", "MaximumVolume", "MinimumPhlebotomyTime", "MaximumPhebotomyTime", "Expiration", "SortKey", "SeparatedAfter", "SeparatedBefore") FROM stdin;
    public          strapi2    false    361   �                0    18327 9   components_proccessing_blood_components__blood_components 
   TABLE DATA           �   COPY public.components_proccessing_blood_components__blood_components (id, components_proccessing_blood_component_id, "blood-component_id") FROM stdin;
    public          strapi2    false    375   ��      �          0    17845 !   components_proccessing_components 
   TABLE DATA           �   COPY public.components_proccessing_components (id, blood_component, "volumeByDefault", "MinimumVolume", "MaximumVolume", "SeparatedAfter", "SeparatedBefore", "MinimumPhelbotomyTime", "MaximumPhlebotomyTime", "Expiartion", "sortKey") FROM stdin;
    public          strapi2    false    353   ��      �          0    17855 3   components_proccessing_components__blood_components 
   TABLE DATA           �   COPY public.components_proccessing_components__blood_components (id, components_proccessing_component_id, "blood-component_id") FROM stdin;
    public          strapi2    false    355   ��      	          0    18291 +   components_proccessing_m_s_blood_components 
   TABLE DATA           �   COPY public.components_proccessing_m_s_blood_components (id, blood_component, "VolumeBydefault", "MinimumVolume", "MaximumVolume", "MinimumPhlebotomyTime", "Expiration", "SeparatedAfter", "SeparatedBefore", "SortKey") FROM stdin;
    public          strapi2    false    373   !�      {          0    16507 +   components_serology_counseling_sample_rules 
   TABLE DATA           X   COPY public.components_serology_counseling_sample_rules (id, r1, r2, donor) FROM stdin;
    public          strapi    false    231   U�      }          0    16518    components_serology_nat_isbts 
   TABLE DATA           ]   COPY public.components_serology_nat_isbts (id, final_virology, final_nat, final) FROM stdin;
    public          strapi    false    233   r�      �          0    17198    components_serology_tests 
   TABLE DATA           D   COPY public.components_serology_tests (id, test, test2) FROM stdin;
    public          strapi    false    337   ��                0    16529 (   components_serology_virology_repetitions 
   TABLE DATA           U   COPY public.components_serology_virology_repetitions (id, r1, r2, final) FROM stdin;
    public          strapi    false    235   Ȟ      _          0    16387 
   core_store 
   TABLE DATA           L   COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
    public          strapi    false    203   �      �          0    16693    donation_types 
   TABLE DATA           v   COPY public.donation_types (id, title_en, title_ar, code, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    259   �      �          0    16706    employee_positions 
   TABLE DATA           t   COPY public.employee_positions (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    261   !�      �          0    16719 	   employees 
   TABLE DATA           �   COPY public.employees (id, first_name, second_name, third_name, fourth_name, gender, email, mobile_phone, date_of_birth, center, employee_position, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    263   ��      �          0    16732    governorates 
   TABLE DATA           n   COPY public.governorates (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    265   ��                0    18339 	   hospitals 
   TABLE DATA           u   COPY public.hospitals (id, "HospitalName", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi2    false    377   /�      �          0    17052    i18n_locales 
   TABLE DATA           f   COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    315   ~�                0    18358    inspection_visual_techniques 
   TABLE DATA           �   COPY public.inspection_visual_techniques (id, "techniqueName", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi2    false    379   ��                0    18370    main_stores 
   TABLE DATA           x   COPY public.main_stores (id, "MainStoreName", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi2    false    381   (�                0    18392    main_stores__sub_stores 
   TABLE DATA           T   COPY public.main_stores__sub_stores (id, main_store_id, "sub-store_id") FROM stdin;
    public          strapi2    false    385   ��      �          0    16745    medical_checkups 
   TABLE DATA           ^   COPY public.medical_checkups (id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    267   ��      �          0    16755    medical_checkups_components 
   TABLE DATA           {   COPY public.medical_checkups_components (id, field, "order", component_type, component_id, medical_checkup_id) FROM stdin;
    public          strapi    false    269   �      �          0    16771    medical_remarks 
   TABLE DATA           q   COPY public.medical_remarks (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    271    �      �          0    16786    medications 
   TABLE DATA           m   COPY public.medications (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    273   w�      �          0    17154    nat-lab 
   TABLE DATA           }   COPY public."nat-lab" (id, "Available", published_at, created_by, updated_by, created_at, updated_at, available) FROM stdin;
    public          strapi    false    329   �      �          0    17142    nat_labs 
   TABLE DATA           q   COPY public.nat_labs (id, "Available", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    327   -�      �          0    16801    nationalities 
   TABLE DATA           o   COPY public.nationalities (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    275   J�      �          0    16814    notes_types 
   TABLE DATA           m   COPY public.notes_types (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    277   ��      �          0    16827    occupations 
   TABLE DATA           m   COPY public.occupations (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    279   ��                0    18157    patient_types 
   TABLE DATA           |   COPY public.patient_types (id, "PatientTypeName", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi2    false    365   ;�      �          0    16850    phlebotomies 
   TABLE DATA           �   COPY public.phlebotomies (id, normal_volume_min, normal_volume_max, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    283   ��      �          0    16860    phlebotomies_components 
   TABLE DATA           r   COPY public.phlebotomies_components (id, field, "order", component_type, component_id, phlebotomy_id) FROM stdin;
    public          strapi    false    285   ��      �          0    16840    phlebotomists 
   TABLE DATA           a   COPY public.phlebotomists (id, name, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    281   U�                0    18179 
   physicians 
   TABLE DATA           w   COPY public.physicians (id, "PhysicianName", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi2    false    367   ��                0    18234 
   priorities 
   TABLE DATA           r   COPY public.priorities (id, "Priority", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi2    false    371   H�      �          0    17187    processings 
   TABLE DATA           y   COPY public.processings (id, test1, published_at, created_by, updated_by, created_at, updated_at, tesd33333) FROM stdin;
    public          strapi    false    335   ��      �          0    16876    reason_of_donations 
   TABLE DATA           u   COPY public.reason_of_donations (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    287   ��      �          0    16889    registration_s 
   TABLE DATA           \   COPY public.registration_s (id, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    289   <�      �          0    16899    registration_s_components 
   TABLE DATA           w   COPY public.registration_s_components (id, field, "order", component_type, component_id, registration__id) FROM stdin;
    public          strapi    false    291   ��      �          0    18136    request_types 
   TABLE DATA           |   COPY public.request_types (id, "requestTypeName", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi2    false    363   -�      �          0    16915    samples 
   TABLE DATA           y   COPY public.samples (id, sample_1, sample_2, sample_3, created_by, updated_by, created_at, updated_at, test) FROM stdin;
    public          strapi    false    293   ��      �          0    16925    social_statuses 
   TABLE DATA           q   COPY public.social_statuses (id, title_en, title_ar, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    295   ��      �          0    17031    strapi_administrator 
   TABLE DATA           �   COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
    public          strapi    false    311   �      �          0    17001    strapi_permission 
   TABLE DATA           v   COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
    public          strapi    false    307   R�      �          0    17014    strapi_role 
   TABLE DATA           Z   COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
    public          strapi    false    309   �      �          0    17044    strapi_users_roles 
   TABLE DATA           B   COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
    public          strapi    false    313   �      �          0    16990    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          strapi    false    305   �      �          0    16938    sub_donation_types 
   TABLE DATA           �   COPY public.sub_donation_types (id, title_en, title_ar, code, is_center_only, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    297   �                0    18381 
   sub_stores 
   TABLE DATA           v   COPY public.sub_stores (id, "SubStoreName", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi2    false    383   �                0    18190    transfusions 
   TABLE DATA           {   COPY public.transfusions (id, "TransfusionName", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi2    false    369   @      �          0    17067    upload_file 
   TABLE DATA           �   COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    317   �      �          0    17080    upload_file_morph 
   TABLE DATA           i   COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
    public          strapi    false    319   �      �          0    17091    users-permissions_permission 
   TABLE DATA           �   COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
    public          strapi    false    321         �          0    17102    users-permissions_role 
   TABLE DATA           g   COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
    public          strapi    false    323   �      �          0    17115    users-permissions_user 
   TABLE DATA           9  COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, first_name, second_name, third_name, fourth_name, civil_id, mobile_phone, date_of_birth, gender, center, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    325   �      �          0    16951    vehicles 
   TABLE DATA           r   COPY public.vehicles (id, title_en, title_ar, center, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    299   �      �          0    16964 
   virologies 
   TABLE DATA           z   COPY public.virologies (id, isbt_standard, counseling_sample, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          strapi    false    301   �      �          0    16974    virologies_components 
   TABLE DATA           n   COPY public.virologies_components (id, field, "order", component_type, component_id, virology_id) FROM stdin;
    public          strapi    false    303   4      y           0    0    NetLab_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."NetLab_id_seq"', 1, false);
          public          strapi    false    332            z           0    0    NetLap_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."NetLap_id_seq"', 1, false);
          public          strapi    false    330            {           0    0    adverse_events_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.adverse_events_id_seq', 4, true);
          public          strapi    false    236            |           0    0    apheresis_kits_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.apheresis_kits_id_seq', 1, false);
          public          strapi    false    238            }           0    0    apheresis_machines_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.apheresis_machines_id_seq', 1, false);
          public          strapi    false    240            ~           0    0 2   assigned_blood_components__blood_components_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.assigned_blood_components__blood_components_id_seq', 2, true);
          public          strapi2    false    344                       0    0     assigned_blood_components_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.assigned_blood_components_id_seq', 1, true);
          public          strapi2    false    342            �           0    0 '   bag_types__low_volume_components_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.bag_types__low_volume_components_id_seq', 1, true);
          public          strapi2    false    358            �           0    0 %   bag_types__original_components_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.bag_types__original_components_id_seq', 1, true);
          public          strapi2    false    356            �           0    0    bag_types_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.bag_types_components_id_seq', 18, true);
          public          strapi2    false    350            �           0    0    bag_types_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.bag_types_id_seq', 9, true);
          public          strapi    false    242            �           0    0    band_component_cases_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.band_component_cases_id_seq', 1, true);
          public          strapi    false    244            �           0    0    blood_collection_events_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.blood_collection_events_id_seq', 1, true);
          public          strapi    false    246            �           0    0    blood_component_groups_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.blood_component_groups_id_seq', 20, true);
          public          strapi2    false    338            �           0    0 /   blood_components__blood_component_groups_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.blood_components__blood_component_groups_id_seq', 12, true);
          public          strapi2    false    346            �           0    0    blood_components_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.blood_components_id_seq', 24, true);
          public          strapi2    false    340            �           0    0    campaigns_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.campaigns_components_id_seq', 1, true);
          public          strapi    false    250            �           0    0    campaigns_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.campaigns_id_seq', 1, true);
          public          strapi    false    248            �           0    0    centers_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.centers_id_seq', 2, true);
          public          strapi    false    252            �           0    0    cities_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cities_id_seq', 2, true);
          public          strapi    false    254            �           0    0    collection_sites_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.collection_sites_id_seq', 1, true);
          public          strapi    false    256            �           0    0 4   components_campaigns_campaign_data__employees_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.components_campaigns_campaign_data__employees_id_seq', 5, true);
          public          strapi    false    206            �           0    0 )   components_campaigns_campaign_data_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.components_campaigns_campaign_data_id_seq', 1, true);
          public          strapi    false    204            �           0    0 $   components_donation_age_rules_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.components_donation_age_rules_id_seq', 2, true);
          public          strapi    false    208            �           0    0 /   components_donation_band_component_cases_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.components_donation_band_component_cases_id_seq', 1, false);
          public          strapi    false    210            �           0    0 1   components_donation_default_donation_types_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.components_donation_default_donation_types_id_seq', 1, false);
          public          strapi    false    212            �           0    0 .   components_donation_general_appearances_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.components_donation_general_appearances_id_seq', 1, true);
          public          strapi    false    214            �           0    0 6   components_donation_medical_checkup_range_rules_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.components_donation_medical_checkup_range_rules_id_seq', 7, true);
          public          strapi    false    216            �           0    0 2   components_donation_medical_checkup_reasons_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.components_donation_medical_checkup_reasons_id_seq', 4, true);
          public          strapi    false    218            �           0    0 *   components_donation_medical_remarks_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_donation_medical_remarks_id_seq', 1, false);
          public          strapi    false    220            �           0    0 &   components_donation_medications_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_donation_medications_id_seq', 2, true);
          public          strapi    false    222            �           0    0 -   components_donation_phlebotomy_reasons_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.components_donation_phlebotomy_reasons_id_seq', 3, true);
          public          strapi    false    224            �           0    0 )   components_donation_pulse_statuses_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.components_donation_pulse_statuses_id_seq', 1, false);
          public          strapi    false    226            �           0    0 &   components_donation_visit_rules_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_donation_visit_rules_id_seq', 8, true);
          public          strapi    false    228            �           0    0 ,   components_proccessing_add_components_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.components_proccessing_add_components_id_seq', 2, true);
          public          strapi2    false    348            �           0    0 ?   components_proccessing_blood_components__blood_component_id_seq    SEQUENCE SET     m   SELECT pg_catalog.setval('public.components_proccessing_blood_components__blood_component_id_seq', 1, true);
          public          strapi2    false    374            �           0    0 .   components_proccessing_blood_components_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.components_proccessing_blood_components_id_seq', 11, true);
          public          strapi2    false    360            �           0    0 :   components_proccessing_components__blood_components_id_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public.components_proccessing_components__blood_components_id_seq', 4, true);
          public          strapi2    false    354            �           0    0 (   components_proccessing_components_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.components_proccessing_components_id_seq', 4, true);
          public          strapi2    false    352            �           0    0 2   components_proccessing_m_s_blood_components_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.components_proccessing_m_s_blood_components_id_seq', 1, true);
          public          strapi2    false    372            �           0    0 2   components_serology_counseling_sample_rules_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.components_serology_counseling_sample_rules_id_seq', 1, false);
          public          strapi    false    230            �           0    0 $   components_serology_nat_isbts_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.components_serology_nat_isbts_id_seq', 2, true);
          public          strapi    false    232            �           0    0     components_serology_tests_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_serology_tests_id_seq', 1, false);
          public          strapi    false    336            �           0    0 /   components_serology_virology_repetitions_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.components_serology_virology_repetitions_id_seq', 3, true);
          public          strapi    false    234            �           0    0    core_store_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.core_store_id_seq', 161, true);
          public          strapi    false    202            �           0    0    donation_types_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.donation_types_id_seq', 9, true);
          public          strapi    false    258            �           0    0    employee_positions_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.employee_positions_id_seq', 5, true);
          public          strapi    false    260            �           0    0    employees_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.employees_id_seq', 5, true);
          public          strapi    false    262            �           0    0    governorates_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.governorates_id_seq', 2, true);
          public          strapi    false    264            �           0    0    hospitals_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.hospitals_id_seq', 1, true);
          public          strapi2    false    376            �           0    0    i18n_locales_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);
          public          strapi    false    314            �           0    0 #   inspection_visual_techniques_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.inspection_visual_techniques_id_seq', 1, true);
          public          strapi2    false    378            �           0    0    main_stores__sub_stores_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.main_stores__sub_stores_id_seq', 3, true);
          public          strapi2    false    384            �           0    0    main_stores_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.main_stores_id_seq', 2, true);
          public          strapi2    false    380            �           0    0 "   medical_checkups_components_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.medical_checkups_components_id_seq', 14, true);
          public          strapi    false    268            �           0    0    medical_checkups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.medical_checkups_id_seq', 1, true);
          public          strapi    false    266            �           0    0    medical_remarks_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.medical_remarks_id_seq', 2, true);
          public          strapi    false    270            �           0    0    medications_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.medications_id_seq', 3, true);
          public          strapi    false    272            �           0    0    nat-lab_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."nat-lab_id_seq"', 1, false);
          public          strapi    false    328            �           0    0    nat_labs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.nat_labs_id_seq', 1, false);
          public          strapi    false    326            �           0    0    nationalities_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.nationalities_id_seq', 1, true);
          public          strapi    false    274            �           0    0    notes_types_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.notes_types_id_seq', 1, false);
          public          strapi    false    276            �           0    0    occupations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.occupations_id_seq', 2, true);
          public          strapi    false    278            �           0    0    patient_types_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.patient_types_id_seq', 1, true);
          public          strapi2    false    364            �           0    0    phlebotomies_components_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.phlebotomies_components_id_seq', 3, true);
          public          strapi    false    284            �           0    0    phlebotomies_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.phlebotomies_id_seq', 1, true);
          public          strapi    false    282            �           0    0    phlebotomists_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.phlebotomists_id_seq', 2, true);
          public          strapi    false    280            �           0    0    physicians_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.physicians_id_seq', 3, true);
          public          strapi2    false    366            �           0    0    priorities_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.priorities_id_seq', 3, true);
          public          strapi2    false    370            �           0    0    processings_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.processings_id_seq', 1, false);
          public          strapi    false    334            �           0    0    reason_of_donations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.reason_of_donations_id_seq', 1, true);
          public          strapi    false    286            �           0    0     registration_s_components_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.registration_s_components_id_seq', 10, true);
          public          strapi    false    290            �           0    0    registration_s_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.registration_s_id_seq', 1, true);
          public          strapi    false    288            �           0    0    request_types_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.request_types_id_seq', 1, true);
          public          strapi2    false    362            �           0    0    samples_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.samples_id_seq', 1, false);
          public          strapi    false    292            �           0    0    social_statuses_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.social_statuses_id_seq', 2, true);
          public          strapi    false    294            �           0    0    strapi_administrator_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 4, true);
          public          strapi    false    310            �           0    0    strapi_permission_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_permission_id_seq', 4985, true);
          public          strapi    false    306            �           0    0    strapi_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);
          public          strapi    false    308            �           0    0    strapi_users_roles_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 4, true);
          public          strapi    false    312            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          strapi    false    304            �           0    0    sub_donation_types_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.sub_donation_types_id_seq', 4, true);
          public          strapi    false    296            �           0    0    sub_stores_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sub_stores_id_seq', 3, true);
          public          strapi2    false    382            �           0    0    transfusions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.transfusions_id_seq', 3, true);
          public          strapi2    false    368            �           0    0    upload_file_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.upload_file_id_seq', 1, false);
          public          strapi    false    316            �           0    0    upload_file_morph_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, false);
          public          strapi    false    318            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 686, true);
          public          strapi    false    320            �           0    0    users-permissions_role_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);
          public          strapi    false    322            �           0    0    users-permissions_user_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 5, true);
          public          strapi    false    324            �           0    0    vehicles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vehicles_id_seq', 1, true);
          public          strapi    false    298            �           0    0    virologies_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.virologies_components_id_seq', 5, true);
          public          strapi    false    302            �           0    0    virologies_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.virologies_id_seq', 1, true);
          public          strapi    false    300            �           2606    17183    NetLab NetLab_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."NetLab"
    ADD CONSTRAINT "NetLab_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."NetLab" DROP CONSTRAINT "NetLab_pkey";
       public            strapi    false    333            �           2606    17172    NetLap NetLap_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."NetLap"
    ADD CONSTRAINT "NetLap_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."NetLap" DROP CONSTRAINT "NetLap_pkey";
       public            strapi    false    331            %           2606    16550 "   adverse_events adverse_events_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.adverse_events
    ADD CONSTRAINT adverse_events_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.adverse_events DROP CONSTRAINT adverse_events_pkey;
       public            strapi    false    237            '           2606    16552 -   adverse_events adverse_events_title_en_unique 
   CONSTRAINT     l   ALTER TABLE ONLY public.adverse_events
    ADD CONSTRAINT adverse_events_title_en_unique UNIQUE (title_en);
 W   ALTER TABLE ONLY public.adverse_events DROP CONSTRAINT adverse_events_title_en_unique;
       public            strapi    false    237            )           2606    16565 "   apheresis_kits apheresis_kits_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.apheresis_kits
    ADD CONSTRAINT apheresis_kits_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.apheresis_kits DROP CONSTRAINT apheresis_kits_pkey;
       public            strapi    false    239            +           2606    16578 *   apheresis_machines apheresis_machines_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.apheresis_machines
    ADD CONSTRAINT apheresis_machines_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.apheresis_machines DROP CONSTRAINT apheresis_machines_pkey;
       public            strapi    false    241            �           2606    17436 \   assigned_blood_components__blood_components assigned_blood_components__blood_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.assigned_blood_components__blood_components
    ADD CONSTRAINT assigned_blood_components__blood_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.assigned_blood_components__blood_components DROP CONSTRAINT assigned_blood_components__blood_components_pkey;
       public            strapi2    false    345            �           2606    17423 8   assigned_blood_components assigned_blood_components_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.assigned_blood_components
    ADD CONSTRAINT assigned_blood_components_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.assigned_blood_components DROP CONSTRAINT assigned_blood_components_pkey;
       public            strapi2    false    343            �           2606    17876 F   bag_types__low_volume_components bag_types__low_volume_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.bag_types__low_volume_components
    ADD CONSTRAINT bag_types__low_volume_components_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.bag_types__low_volume_components DROP CONSTRAINT bag_types__low_volume_components_pkey;
       public            strapi2    false    359            �           2606    17868 B   bag_types__original_components bag_types__original_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.bag_types__original_components
    ADD CONSTRAINT bag_types__original_components_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.bag_types__original_components DROP CONSTRAINT bag_types__original_components_pkey;
       public            strapi2    false    357            �           2606    17467 .   bag_types_components bag_types_components_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.bag_types_components
    ADD CONSTRAINT bag_types_components_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.bag_types_components DROP CONSTRAINT bag_types_components_pkey;
       public            strapi2    false    351            -           2606    16591    bag_types bag_types_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.bag_types
    ADD CONSTRAINT bag_types_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.bag_types DROP CONSTRAINT bag_types_pkey;
       public            strapi    false    243            /           2606    16604 .   band_component_cases band_component_cases_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.band_component_cases
    ADD CONSTRAINT band_component_cases_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.band_component_cases DROP CONSTRAINT band_component_cases_pkey;
       public            strapi    false    245            1           2606    16606 9   band_component_cases band_component_cases_title_en_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public.band_component_cases
    ADD CONSTRAINT band_component_cases_title_en_unique UNIQUE (title_en);
 c   ALTER TABLE ONLY public.band_component_cases DROP CONSTRAINT band_component_cases_title_en_unique;
       public            strapi    false    245            3           2606    16619 4   blood_collection_events blood_collection_events_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.blood_collection_events
    ADD CONSTRAINT blood_collection_events_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.blood_collection_events DROP CONSTRAINT blood_collection_events_pkey;
       public            strapi    false    247            5           2606    16621 ?   blood_collection_events blood_collection_events_title_en_unique 
   CONSTRAINT     ~   ALTER TABLE ONLY public.blood_collection_events
    ADD CONSTRAINT blood_collection_events_title_en_unique UNIQUE (title_en);
 i   ALTER TABLE ONLY public.blood_collection_events DROP CONSTRAINT blood_collection_events_title_en_unique;
       public            strapi    false    247            �           2606    17426 <   blood_component_groups blood_component_groups_SortKey_unique 
   CONSTRAINT     ~   ALTER TABLE ONLY public.blood_component_groups
    ADD CONSTRAINT "blood_component_groups_SortKey_unique" UNIQUE ("SortKey");
 h   ALTER TABLE ONLY public.blood_component_groups DROP CONSTRAINT "blood_component_groups_SortKey_unique";
       public            strapi2    false    339            �           2606    17223 2   blood_component_groups blood_component_groups_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.blood_component_groups
    ADD CONSTRAINT blood_component_groups_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.blood_component_groups DROP CONSTRAINT blood_component_groups_pkey;
       public            strapi2    false    339            �           2606    17446 V   blood_components__blood_component_groups blood_components__blood_component_groups_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.blood_components__blood_component_groups
    ADD CONSTRAINT blood_components__blood_component_groups_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.blood_components__blood_component_groups DROP CONSTRAINT blood_components__blood_component_groups_pkey;
       public            strapi2    false    347            �           2606    17244 &   blood_components blood_components_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.blood_components
    ADD CONSTRAINT blood_components_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.blood_components DROP CONSTRAINT blood_components_pkey;
       public            strapi2    false    341            =           2606    16646 .   campaigns_components campaigns_components_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.campaigns_components
    ADD CONSTRAINT campaigns_components_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.campaigns_components DROP CONSTRAINT campaigns_components_pkey;
       public            strapi    false    251            7           2606    16635 #   campaigns campaigns_end_date_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.campaigns
    ADD CONSTRAINT campaigns_end_date_unique UNIQUE (end_date);
 M   ALTER TABLE ONLY public.campaigns DROP CONSTRAINT campaigns_end_date_unique;
       public            strapi    false    249            9           2606    16631    campaigns campaigns_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.campaigns
    ADD CONSTRAINT campaigns_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.campaigns DROP CONSTRAINT campaigns_pkey;
       public            strapi    false    249            ;           2606    16633 %   campaigns campaigns_start_date_unique 
   CONSTRAINT     f   ALTER TABLE ONLY public.campaigns
    ADD CONSTRAINT campaigns_start_date_unique UNIQUE (start_date);
 O   ALTER TABLE ONLY public.campaigns DROP CONSTRAINT campaigns_start_date_unique;
       public            strapi    false    249            ?           2606    16664    centers centers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.centers
    ADD CONSTRAINT centers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.centers DROP CONSTRAINT centers_pkey;
       public            strapi    false    253            A           2606    16677    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            strapi    false    255            C           2606    16690 &   collection_sites collection_sites_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.collection_sites
    ADD CONSTRAINT collection_sites_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.collection_sites DROP CONSTRAINT collection_sites_pkey;
       public            strapi    false    257                       2606    16411 `   components_campaigns_campaign_data__employees components_campaigns_campaign_data__employees_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_campaigns_campaign_data__employees
    ADD CONSTRAINT components_campaigns_campaign_data__employees_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_campaigns_campaign_data__employees DROP CONSTRAINT components_campaigns_campaign_data__employees_pkey;
       public            strapi    false    207                       2606    16403 J   components_campaigns_campaign_data components_campaigns_campaign_data_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_campaigns_campaign_data
    ADD CONSTRAINT components_campaigns_campaign_data_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_campaigns_campaign_data DROP CONSTRAINT components_campaigns_campaign_data_pkey;
       public            strapi    false    205                       2606    16419 @   components_donation_age_rules components_donation_age_rules_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.components_donation_age_rules
    ADD CONSTRAINT components_donation_age_rules_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.components_donation_age_rules DROP CONSTRAINT components_donation_age_rules_pkey;
       public            strapi    false    209            	           2606    16427 V   components_donation_band_component_cases components_donation_band_component_cases_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_donation_band_component_cases
    ADD CONSTRAINT components_donation_band_component_cases_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_donation_band_component_cases DROP CONSTRAINT components_donation_band_component_cases_pkey;
       public            strapi    false    211                       2606    16435 Z   components_donation_default_donation_types components_donation_default_donation_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_donation_default_donation_types
    ADD CONSTRAINT components_donation_default_donation_types_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_donation_default_donation_types DROP CONSTRAINT components_donation_default_donation_types_pkey;
       public            strapi    false    213                       2606    16443 T   components_donation_general_appearances components_donation_general_appearances_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_donation_general_appearances
    ADD CONSTRAINT components_donation_general_appearances_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.components_donation_general_appearances DROP CONSTRAINT components_donation_general_appearances_pkey;
       public            strapi    false    215                       2606    16454 d   components_donation_medical_checkup_range_rules components_donation_medical_checkup_range_rules_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_donation_medical_checkup_range_rules
    ADD CONSTRAINT components_donation_medical_checkup_range_rules_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_donation_medical_checkup_range_rules DROP CONSTRAINT components_donation_medical_checkup_range_rules_pkey;
       public            strapi    false    217                       2606    16464 k   components_donation_medical_checkup_reasons components_donation_medical_checkup_reasons_adverse_event_uniqu 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_donation_medical_checkup_reasons
    ADD CONSTRAINT components_donation_medical_checkup_reasons_adverse_event_uniqu UNIQUE (adverse_event);
 �   ALTER TABLE ONLY public.components_donation_medical_checkup_reasons DROP CONSTRAINT components_donation_medical_checkup_reasons_adverse_event_uniqu;
       public            strapi    false    219                       2606    16462 \   components_donation_medical_checkup_reasons components_donation_medical_checkup_reasons_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_donation_medical_checkup_reasons
    ADD CONSTRAINT components_donation_medical_checkup_reasons_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_donation_medical_checkup_reasons DROP CONSTRAINT components_donation_medical_checkup_reasons_pkey;
       public            strapi    false    219                       2606    16472 L   components_donation_medical_remarks components_donation_medical_remarks_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_donation_medical_remarks
    ADD CONSTRAINT components_donation_medical_remarks_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.components_donation_medical_remarks DROP CONSTRAINT components_donation_medical_remarks_pkey;
       public            strapi    false    221                       2606    16480 D   components_donation_medications components_donation_medications_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_donation_medications
    ADD CONSTRAINT components_donation_medications_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_donation_medications DROP CONSTRAINT components_donation_medications_pkey;
       public            strapi    false    223                       2606    16488 R   components_donation_phlebotomy_reasons components_donation_phlebotomy_reasons_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_donation_phlebotomy_reasons
    ADD CONSTRAINT components_donation_phlebotomy_reasons_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.components_donation_phlebotomy_reasons DROP CONSTRAINT components_donation_phlebotomy_reasons_pkey;
       public            strapi    false    225                       2606    16496 J   components_donation_pulse_statuses components_donation_pulse_statuses_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_donation_pulse_statuses
    ADD CONSTRAINT components_donation_pulse_statuses_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_donation_pulse_statuses DROP CONSTRAINT components_donation_pulse_statuses_pkey;
       public            strapi    false    227                       2606    16504 D   components_donation_visit_rules components_donation_visit_rules_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_donation_visit_rules
    ADD CONSTRAINT components_donation_visit_rules_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_donation_visit_rules DROP CONSTRAINT components_donation_visit_rules_pkey;
       public            strapi    false    229            �           2606    17455 P   components_proccessing_add_components components_proccessing_add_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_proccessing_add_components
    ADD CONSTRAINT components_proccessing_add_components_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.components_proccessing_add_components DROP CONSTRAINT components_proccessing_add_components_pkey;
       public            strapi2    false    349            �           2606    18332 x   components_proccessing_blood_components__blood_components components_proccessing_blood_components__blood_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_proccessing_blood_components__blood_components
    ADD CONSTRAINT components_proccessing_blood_components__blood_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_proccessing_blood_components__blood_components DROP CONSTRAINT components_proccessing_blood_components__blood_components_pkey;
       public            strapi2    false    375            �           2606    18128 T   components_proccessing_blood_components components_proccessing_blood_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_proccessing_blood_components
    ADD CONSTRAINT components_proccessing_blood_components_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.components_proccessing_blood_components DROP CONSTRAINT components_proccessing_blood_components_pkey;
       public            strapi2    false    361            �           2606    17860 l   components_proccessing_components__blood_components components_proccessing_components__blood_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_proccessing_components__blood_components
    ADD CONSTRAINT components_proccessing_components__blood_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_proccessing_components__blood_components DROP CONSTRAINT components_proccessing_components__blood_components_pkey;
       public            strapi2    false    355            �           2606    17850 H   components_proccessing_components components_proccessing_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_proccessing_components
    ADD CONSTRAINT components_proccessing_components_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.components_proccessing_components DROP CONSTRAINT components_proccessing_components_pkey;
       public            strapi2    false    353            �           2606    18296 \   components_proccessing_m_s_blood_components components_proccessing_m_s_blood_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_proccessing_m_s_blood_components
    ADD CONSTRAINT components_proccessing_m_s_blood_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_proccessing_m_s_blood_components DROP CONSTRAINT components_proccessing_m_s_blood_components_pkey;
       public            strapi2    false    373                       2606    16515 \   components_serology_counseling_sample_rules components_serology_counseling_sample_rules_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_serology_counseling_sample_rules
    ADD CONSTRAINT components_serology_counseling_sample_rules_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_serology_counseling_sample_rules DROP CONSTRAINT components_serology_counseling_sample_rules_pkey;
       public            strapi    false    231            !           2606    16526 @   components_serology_nat_isbts components_serology_nat_isbts_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.components_serology_nat_isbts
    ADD CONSTRAINT components_serology_nat_isbts_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.components_serology_nat_isbts DROP CONSTRAINT components_serology_nat_isbts_pkey;
       public            strapi    false    233            �           2606    17206 8   components_serology_tests components_serology_tests_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_serology_tests
    ADD CONSTRAINT components_serology_tests_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_serology_tests DROP CONSTRAINT components_serology_tests_pkey;
       public            strapi    false    337            #           2606    16537 V   components_serology_virology_repetitions components_serology_virology_repetitions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_serology_virology_repetitions
    ADD CONSTRAINT components_serology_virology_repetitions_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_serology_virology_repetitions DROP CONSTRAINT components_serology_virology_repetitions_pkey;
       public            strapi    false    235                       2606    16395    core_store core_store_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_store DROP CONSTRAINT core_store_pkey;
       public            strapi    false    203            E           2606    16703 "   donation_types donation_types_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.donation_types
    ADD CONSTRAINT donation_types_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.donation_types DROP CONSTRAINT donation_types_pkey;
       public            strapi    false    259            G           2606    16716 *   employee_positions employee_positions_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.employee_positions
    ADD CONSTRAINT employee_positions_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.employee_positions DROP CONSTRAINT employee_positions_pkey;
       public            strapi    false    261            I           2606    16729    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            strapi    false    263            K           2606    16742    governorates governorates_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.governorates
    ADD CONSTRAINT governorates_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.governorates DROP CONSTRAINT governorates_pkey;
       public            strapi    false    265            �           2606    18346    hospitals hospitals_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.hospitals
    ADD CONSTRAINT hospitals_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.hospitals DROP CONSTRAINT hospitals_pkey;
       public            strapi2    false    377            �           2606    17064 %   i18n_locales i18n_locales_code_unique 
   CONSTRAINT     `   ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);
 O   ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_code_unique;
       public            strapi    false    315            �           2606    17062    i18n_locales i18n_locales_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_pkey;
       public            strapi    false    315            �           2606    18365 >   inspection_visual_techniques inspection_visual_techniques_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.inspection_visual_techniques
    ADD CONSTRAINT inspection_visual_techniques_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.inspection_visual_techniques DROP CONSTRAINT inspection_visual_techniques_pkey;
       public            strapi2    false    379            �           2606    18397 4   main_stores__sub_stores main_stores__sub_stores_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.main_stores__sub_stores
    ADD CONSTRAINT main_stores__sub_stores_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.main_stores__sub_stores DROP CONSTRAINT main_stores__sub_stores_pkey;
       public            strapi2    false    385            �           2606    18377    main_stores main_stores_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.main_stores
    ADD CONSTRAINT main_stores_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.main_stores DROP CONSTRAINT main_stores_pkey;
       public            strapi2    false    381            O           2606    16763 <   medical_checkups_components medical_checkups_components_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.medical_checkups_components
    ADD CONSTRAINT medical_checkups_components_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.medical_checkups_components DROP CONSTRAINT medical_checkups_components_pkey;
       public            strapi    false    269            M           2606    16752 &   medical_checkups medical_checkups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.medical_checkups
    ADD CONSTRAINT medical_checkups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.medical_checkups DROP CONSTRAINT medical_checkups_pkey;
       public            strapi    false    267            Q           2606    16781 $   medical_remarks medical_remarks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.medical_remarks
    ADD CONSTRAINT medical_remarks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.medical_remarks DROP CONSTRAINT medical_remarks_pkey;
       public            strapi    false    271            S           2606    16783 /   medical_remarks medical_remarks_title_en_unique 
   CONSTRAINT     n   ALTER TABLE ONLY public.medical_remarks
    ADD CONSTRAINT medical_remarks_title_en_unique UNIQUE (title_en);
 Y   ALTER TABLE ONLY public.medical_remarks DROP CONSTRAINT medical_remarks_title_en_unique;
       public            strapi    false    271            U           2606    16796    medications medications_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.medications
    ADD CONSTRAINT medications_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.medications DROP CONSTRAINT medications_pkey;
       public            strapi    false    273            W           2606    16798 '   medications medications_title_en_unique 
   CONSTRAINT     f   ALTER TABLE ONLY public.medications
    ADD CONSTRAINT medications_title_en_unique UNIQUE (title_en);
 Q   ALTER TABLE ONLY public.medications DROP CONSTRAINT medications_title_en_unique;
       public            strapi    false    273            �           2606    17161    nat-lab nat-lab_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."nat-lab"
    ADD CONSTRAINT "nat-lab_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."nat-lab" DROP CONSTRAINT "nat-lab_pkey";
       public            strapi    false    329            �           2606    17149    nat_labs nat_labs_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.nat_labs
    ADD CONSTRAINT nat_labs_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.nat_labs DROP CONSTRAINT nat_labs_pkey;
       public            strapi    false    327            Y           2606    16811     nationalities nationalities_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.nationalities
    ADD CONSTRAINT nationalities_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.nationalities DROP CONSTRAINT nationalities_pkey;
       public            strapi    false    275            [           2606    16824    notes_types notes_types_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.notes_types
    ADD CONSTRAINT notes_types_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.notes_types DROP CONSTRAINT notes_types_pkey;
       public            strapi    false    277            ]           2606    16837    occupations occupations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.occupations
    ADD CONSTRAINT occupations_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.occupations DROP CONSTRAINT occupations_pkey;
       public            strapi    false    279            �           2606    18167     patient_types patient_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.patient_types
    ADD CONSTRAINT patient_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.patient_types DROP CONSTRAINT patient_types_pkey;
       public            strapi2    false    365            c           2606    16868 4   phlebotomies_components phlebotomies_components_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.phlebotomies_components
    ADD CONSTRAINT phlebotomies_components_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.phlebotomies_components DROP CONSTRAINT phlebotomies_components_pkey;
       public            strapi    false    285            a           2606    16857    phlebotomies phlebotomies_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.phlebotomies
    ADD CONSTRAINT phlebotomies_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.phlebotomies DROP CONSTRAINT phlebotomies_pkey;
       public            strapi    false    283            _           2606    16847     phlebotomists phlebotomists_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.phlebotomists
    ADD CONSTRAINT phlebotomists_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.phlebotomists DROP CONSTRAINT phlebotomists_pkey;
       public            strapi    false    281            �           2606    18186    physicians physicians_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.physicians
    ADD CONSTRAINT physicians_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.physicians DROP CONSTRAINT physicians_pkey;
       public            strapi2    false    367            �           2606    18244    priorities priorities_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.priorities
    ADD CONSTRAINT priorities_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.priorities DROP CONSTRAINT priorities_pkey;
       public            strapi2    false    371            �           2606    17194    processings processings_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.processings
    ADD CONSTRAINT processings_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.processings DROP CONSTRAINT processings_pkey;
       public            strapi    false    335            e           2606    16886 ,   reason_of_donations reason_of_donations_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.reason_of_donations
    ADD CONSTRAINT reason_of_donations_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.reason_of_donations DROP CONSTRAINT reason_of_donations_pkey;
       public            strapi    false    287            i           2606    16907 8   registration_s_components registration_s_components_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.registration_s_components
    ADD CONSTRAINT registration_s_components_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.registration_s_components DROP CONSTRAINT registration_s_components_pkey;
       public            strapi    false    291            g           2606    16896 "   registration_s registration_s_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.registration_s
    ADD CONSTRAINT registration_s_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.registration_s DROP CONSTRAINT registration_s_pkey;
       public            strapi    false    289            �           2606    18146     request_types request_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.request_types
    ADD CONSTRAINT request_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.request_types DROP CONSTRAINT request_types_pkey;
       public            strapi2    false    363            k           2606    16922    samples samples_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.samples
    ADD CONSTRAINT samples_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.samples DROP CONSTRAINT samples_pkey;
       public            strapi    false    293            m           2606    16935 $   social_statuses social_statuses_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.social_statuses
    ADD CONSTRAINT social_statuses_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.social_statuses DROP CONSTRAINT social_statuses_pkey;
       public            strapi    false    295            �           2606    17041 6   strapi_administrator strapi_administrator_email_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);
 `   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_email_unique;
       public            strapi    false    311            �           2606    17039 .   strapi_administrator strapi_administrator_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_pkey;
       public            strapi    false    311            y           2606    17011 (   strapi_permission strapi_permission_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_permission DROP CONSTRAINT strapi_permission_pkey;
       public            strapi    false    307            {           2606    17028 #   strapi_role strapi_role_code_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_code_unique;
       public            strapi    false    309            }           2606    17026 #   strapi_role strapi_role_name_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_name_unique;
       public            strapi    false    309                       2606    17024    strapi_role strapi_role_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_pkey;
       public            strapi    false    309            �           2606    17049 *   strapi_users_roles strapi_users_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.strapi_users_roles DROP CONSTRAINT strapi_users_roles_pkey;
       public            strapi    false    313            w           2606    16998 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            strapi    false    305            o           2606    16948 *   sub_donation_types sub_donation_types_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.sub_donation_types
    ADD CONSTRAINT sub_donation_types_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.sub_donation_types DROP CONSTRAINT sub_donation_types_pkey;
       public            strapi    false    297            �           2606    18388    sub_stores sub_stores_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sub_stores
    ADD CONSTRAINT sub_stores_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sub_stores DROP CONSTRAINT sub_stores_pkey;
       public            strapi2    false    383            �           2606    18200    transfusions transfusions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.transfusions
    ADD CONSTRAINT transfusions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.transfusions DROP CONSTRAINT transfusions_pkey;
       public            strapi2    false    369            �           2606    17088 (   upload_file_morph upload_file_morph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.upload_file_morph DROP CONSTRAINT upload_file_morph_pkey;
       public            strapi    false    319            �           2606    17077    upload_file upload_file_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.upload_file DROP CONSTRAINT upload_file_pkey;
       public            strapi    false    317            �           2606    17099 >   users-permissions_permission users-permissions_permission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."users-permissions_permission" DROP CONSTRAINT "users-permissions_permission_pkey";
       public            strapi    false    321            �           2606    17110 2   users-permissions_role users-permissions_role_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_pkey";
       public            strapi    false    323            �           2606    17112 9   users-permissions_role users-permissions_role_type_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);
 g   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_type_unique";
       public            strapi    false    323            �           2606    17129 =   users-permissions_user users-permissions_user_civil_id_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_civil_id_unique" UNIQUE (civil_id);
 k   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_civil_id_unique";
       public            strapi    false    325            �           2606    17131 A   users-permissions_user users-permissions_user_mobile_phone_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_mobile_phone_unique" UNIQUE (mobile_phone);
 o   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_mobile_phone_unique";
       public            strapi    false    325            �           2606    17125 2   users-permissions_user users-permissions_user_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_pkey";
       public            strapi    false    325            �           2606    17127 =   users-permissions_user users-permissions_user_username_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);
 k   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_username_unique";
       public            strapi    false    325            q           2606    16961    vehicles vehicles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT vehicles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.vehicles DROP CONSTRAINT vehicles_pkey;
       public            strapi    false    299            u           2606    16982 0   virologies_components virologies_components_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.virologies_components
    ADD CONSTRAINT virologies_components_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.virologies_components DROP CONSTRAINT virologies_components_pkey;
       public            strapi    false    303            s           2606    16971    virologies virologies_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.virologies
    ADD CONSTRAINT virologies_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.virologies DROP CONSTRAINT virologies_pkey;
       public            strapi    false    301            �           2606    17468 #   bag_types_components bag_type_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.bag_types_components
    ADD CONSTRAINT bag_type_id_fk FOREIGN KEY (bag_type_id) REFERENCES public.bag_types(id) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.bag_types_components DROP CONSTRAINT bag_type_id_fk;
       public          strapi2    false    243    351    3629            �           2606    16647 #   campaigns_components campaign_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.campaigns_components
    ADD CONSTRAINT campaign_id_fk FOREIGN KEY (campaign_id) REFERENCES public.campaigns(id) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.campaigns_components DROP CONSTRAINT campaign_id_fk;
       public          strapi    false    249    3641    251            �           2606    16764 1   medical_checkups_components medical_checkup_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.medical_checkups_components
    ADD CONSTRAINT medical_checkup_id_fk FOREIGN KEY (medical_checkup_id) REFERENCES public.medical_checkups(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.medical_checkups_components DROP CONSTRAINT medical_checkup_id_fk;
       public          strapi    false    3661    267    269            �           2606    16869 (   phlebotomies_components phlebotomy_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.phlebotomies_components
    ADD CONSTRAINT phlebotomy_id_fk FOREIGN KEY (phlebotomy_id) REFERENCES public.phlebotomies(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.phlebotomies_components DROP CONSTRAINT phlebotomy_id_fk;
       public          strapi    false    283    285    3681            �           2606    16908 -   registration_s_components registration__id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_s_components
    ADD CONSTRAINT registration__id_fk FOREIGN KEY (registration__id) REFERENCES public.registration_s(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.registration_s_components DROP CONSTRAINT registration__id_fk;
       public          strapi    false    289    291    3687            �           2606    16983 $   virologies_components virology_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.virologies_components
    ADD CONSTRAINT virology_id_fk FOREIGN KEY (virology_id) REFERENCES public.virologies(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.virologies_components DROP CONSTRAINT virology_id_fk;
       public          strapi    false    303    3699    301            �      x������ � �      �      x������ � �      �   �   x�u��j�@�ϛ��{1�_�涄����YB_�%J���h��U�'�y�NH=l�a�`��Q�tuYy��x�h/��ڌ��1�����y��;)�!F�+?s5@�n�KW�G���Z�/��3P�����/\.q�թ�yTأL�B#��Bu���_��7>��--��9pv@;.Gz�%��R6��Gc�+��l�MX-�4W���EL`
eS5�=q@�~�C�$��I�8      �      x������ � �      �      x������ � �      �      x������ � �      �      x�3�4�4�2�&\1z\\\ 7      �   {  x����J�0ƯӧȽ�MN�4�����cD��ԊB]A��ވNa⿡"�o���'c:'D�pzr����M��p/�hE�f=�4�	;i�z��[�b��5�w�ɍcS��F�]�[7r���D�Ґa�2�"��
c��9�<5 F�H	�KM�1���3�W�8XF��7I��%��f0���p��/���i�!@J����ϗ�F���vk�6:��U�ٮW���V�>E�{/���cR�7w�-���R��I�+n���@P.L�L��b�9�j�:J��.�D@����
�_�*�~��~����Jo͓}@��&X���fx�k�Y��O"����/x��	�aw�ò GY�c������A�x�      �      x�3�4�4����� 	`      �      x�3�4�4����� 	`      �   i   x�34�t���Oq��-��K�+�4�L������S��3���@����&��\������oh�i�ehD�LA�M�����ߘ|��8-��ȷ��?F��� ���$      �      x������ � �      �   Q   x�3�LϬJt-K�+ἱ����n,��rc�ͮ�n��4B##c]S]CK#c+K+=Cm�R� )�=... �C�      �   ~  x�u��N�0���S�7����g����� �1q���ǖQ.�Ϝ�z�ŵ����/��.�^�+͑8j�؇��;�G�3e����Ҷ]�����,�
l��W�nO�dR��/�ӬΩk�k?m�t}?�N��΁��]�M֊�ݳ����Y�z~���A��~ФY�-� LFh>BgI�K�-�,�-^�����c{�I�S�0���o{}���Mx	 ��m�|��-����s�*΂ʛǩk��:�b	$ڻX�Π��',�'2!�V��k��yn�͕�g$X1싇!�U������xoX�i�W�S7U��2��i	a��/HP$�����W���F����o³D��w����#��Orj��8� A�w%���{ɐ      �   `  x���oo�F�_/��/[U,�����0FDr"\�V��z������jŇ���!R��ǃ<���+2^ΗŚ,��:/���>[N�C޽���|���;|m���!�@��H�H%O��V�_#_!����SnR�(���N�`���&<i`���3(�0_y2)�iE5R�����1m+bU��1C*,��ƘU*]��A�9d����eN��@ju�ZĕX2���Tr���e
�2��ԇ"(TZS%�Ю��d�_���r�g���5:a�i*#��?[�@r������I��m�����ᣙ�5�Ud�%���'��L����n�J��l�߲�����ם���A�_�7/��i����A�]�*�����6a6���v���M�YM2_GNV�4�5��[��rθr���I	,E#rK�q�*tP��f'��f.z�F����~����G��3��buqֺ-T�6TԚ�jRaК�~
��eL]�^w��U���m��Ɯ��|m=�*E!��!*P2�D��}�
��F�7��l>�Gq��vcHN��SL���`�s�E?fђ�����0Z�N3����"�L��a��`L�U&��ȼZ��#�4pV��b��/��7y}k툋�Jʩ�qS���K[3Q���4�R5�IV�%Y�o���d��]��zm����^�:���:e"��I\�M ;�m�iMs(�a(�&B��$ï���ɞ��������w}�a�R�/B���|��l�5G��V��<����^ػ�q0�����J���{��C��� �����)�J�73���(D��L�^p������Q_�鶟�m�}|M�>٧$�s[�3��u
� �{��Ê:!#�!����̖v���S`���S��gΣ��qL;�?:��M�ҝX��R�]<dj)Z>���'��r����+>�u����M �Cʤ�7�AR���U�>�@t�UF<��x�2-+��^*������Z�CQ8?�&�h��|�PmD�$!OB�$@ƾ�)������]��R�K�}���O.ԣl{��j�9��:�eQ�8s���Ԉ��#�p<6�푿�?_�1q�p}_X�].����
T�C
7c�h'~�:���&      �   D   x����0��f�*�|�K����6fR*V��q��i+��b�6K��������}���.jD�I?Jj~      �   P   x�3�tw�srqu�,�440�4202�50�54S04�2 !m��	��!"�0�24�26�3�0�F3&eal������ ��      �   1   x�3�LN�-H�LϋOI,I�4�L��-��K�+)��I!X0E�\1z\\\ ���      �      x�3�KL.N-J��xc����ov��xc9�!���)�X[陚[h@�Lt����̭L�L�AR%\F�a�y��@#ov�l��q��8�CC�qff��A�,����qqq �-'      �   q   x�3��MLL�伱�f���;o,���f�!���)�Y ��������������1P�ː�=�*l܍57�nl�َ�0S+cK=K3,��[�虘�M����� *,      �   _   x�3�I�(�,R.,M,J��z�����o�) ���n���(������u�u�M�L��M���M�ХL�,�,�́R\1z\\\ �"0      a      x�3�4A�=... ��      c   %   x�3�4�4�2�F\�@҄�H�r�Ic�=... KR(      e      x�3�4��43�2��1z\\\ !D�      g      x������ � �      i      x������ � �      k      x�3�q��r��4����� ,��      m   �   x���1�0Eg8��M�͘�c�(�����6���.�/x��0R ���ј�9/�uZ�����	���Fcz�V�!�GYO?�#}[p 6%�ѯ�Gr%��X-/!H��?��d�7؃�c���"~ �MS�      o   2   x�3���p�u�s��4�2F0�2	����9Ers��qqq n�\      q      x������ � �      s      x�3��".CNC���� '�s      u   )   x�3�q��r��46�4�2�� .cT9�H� &T
�      w      x������ � �      y   N   x�eʹ�0�x��	L�� �d��[�^��(-��5��9B�h��`S�{>��A�O�A9��d�3      �      x������ � �      �   �   x�u��� E�����&���_���$�#��{��3V�@t��B��C�\b�1��Ĥ\�Au�s?+=�qQg`����f���٥������wLn�S�Y9pX��~XM&-�c�����wH���Y�CUG�iC=D���V            x�3�4�4�������  �      �   ?   x�3���46�30�44B�FH$T�Y���Y)v���p�u#���5I�!W� g�      �      x�3�4�4�2�4�4�2�4�1z\\\ "��      	   $   x�3�44�44�30�42�*n�$����� �*f      {      x������ � �      }   )   x�3�����s��2����suw����b���� ��       �      x������ � �            x�3�A.#N� ����� 5�,      _      x��}�۶��o�)���?�,k�_q�={ǞI�:�35�8u*�Ţ$H�1E*$����T�k�׻O� �o4(P"d���$#	�Fht7���t�h�NQL�,Xe�d��<J��q����$]��%ţ�i�U����?I�M�(M>�K��ya.cʚ�(�U�d��_�w?�*�&o$��$M��a͓A�f�)�'Y�"�����~Z~�	�"Z���+�m�9��aQd�x]�B���Tƥw�����%z}�G*\�%tq�"�N�$Z�1z%�r��`- �׭ ��E��i�.o�#���U���@��*��hz6+P��5������iV��J�QR�9�yww�(����~���0z!1U�Z�Ѥ��իp�AY�h�u�|��Zb7
� ���DɴdCxMh7����׻��k+J&Z��*�5z���}\J3	��jʾ|�x�pV�%���8��`�U��Gɯ��W���q��Y�qy2�md��u��)#g�D�Q���1�f۫b`F��V^��3���%�K& �E�u�cD;��E���&�#��*�6��&�õ�s�S�a�iR2�p&�L�q&��"YՀT�' U!A��z\��T0i���0����!�:ʲ�Ax���d32�F�o��}���@N4��,���z\~#K�����WgW���]^\�?�p���cG��������9J0� ���;sRM�9�5Q�ҟ+���^�o�Z�E4�mqVw���gdBʙ���"O��kxő1?'��Lp/B��|�>�P��Xʷ���?��6%ohq�W�1N�)�a�?��&����'"w1��~f���;��A
Q4(�04Z���U��r2崤/���<!F	�c�!�e��Xj��I��u���!^	�(�n�l�4`���K���u������T��/7a6m</�(�����F���+���Y��0a��"�p�����Od����m�ъq;6BS��ip��Oc��>����r�L}����r�?�l�{l�?{i3��a��S�[�����B�FJ��T��	������
)��Y�to5�9qU�t3���1�.�q'Y�˿��uLaEq��p�H�[��H�F���M����%�b6���|Y�xd�41mO�����Z;�j��}�{S��X3L斺�����=���'x��c�
���d'?Z|b�ް]c�:!�0�L�l��8o]��������Z1����ܪN��Z�A��W	t�n�`�:�$�r��Z�m�����̢�%��Uc[��OL_ȩM���$̀���jݡ"�h��㒍 5��}��Ӻ=
r��z��xx
� #�7.w�A��2��4Fa"o��Z�u:6�UP��ies-h<O�jO�{�ҳ,�d�|Q4��r�������\��(�>���$��T�C|�
wY�T�| ��P�"v]����u��f�S���]^M�����b���o��W���'Q,���+a�����\�sc���,+v����o�@�Q>X��E������o{E����� ��{��Ok����`����ƫ��R�	�.�!���:r-|:x���;�ށ�O�\M�����
����v �S7?�j�Q�`.gP]�������V�bu� �v��hw�
���E%(�Qт��=/��#�*��a�+:3Ӥ�9s��!a�}����m�mhT��	1�N���#}�|d��3�@�he9�0X�yT����*B,ȀԀ/h�ޥh�>��m��D�l�.eL�J��y��0������eIJ�1��fq+8��Z�#K��������2d��s4��1�g%�6�<`z��Q�B��f�)1��4���KV��a�7����@��r��s�Z_V}��}����OÏuax��{�AU�4̠�U^p���P�e�h�¿w�ꐘ^V>�@���Y�N����H��{R'��@��,�q�J�F=�m��ȖS6Zu}X����NGY�@G�q�#ӎ��Y�ph�F�/¦!��=W�%�`��e���W�S�i�LU��Z��CX���9{�9a�>ƽ1Q^�/𲴂CKT.o�P/e�G�:0��� 2޲�UV�A:�
C�'�Ϝ�B<WA�P�8��5����8���NoZ$s<OX�_Kd�
1�(r��ȁ���:��ugE�!�h�}*��T�a��������,]�r=� ���L�	Eݙ$;v��$���Ϭ���-y�5�-�s�t^�@_���@�Ifw��U��z��:l��*�B1==�+�� �B��Z6V�
ݿ�_�S5 �7����)?qd����[^y-�q.�?Hf}��Q��	�H`�`&!�no���
��W�C�sTx���W�����fQ�g@�%Ga6Yȿ�0E��B�{����S�b�^4�(�ԯo�%�ȩ��7��c]�$B��S�LlQ�fL���8���v�W)��J.I?�qO83#(J�H	v�V!��p�i\ڗ���My���N�>��w؂���\�P�����L�m��.�UH���E�V`>?�C��\��^r����T$��}��PL��� �)Q.n?VT����g��R5\�،�0FlsDe����s-N�4P�AqZ�W�F�$ͦ
0�m
� ��!�o�d,&��36rb�|�K�.���~BZ+Gw���R�Hz;��Q�W�i` ���uX^�v������t^�&��O\����5�����
���l���� `M�4OgE7ذHorg"8N+�78-�/n��*fK�µu
/�&k)��^˚v�kK�����3Vj��ꦎ�7_���l�d2�Ŗ!� MFt��v��~�K�Q���� �J� �qT 6���JbhDI�$�'Q�֐�<_��)QHD���Wr�"�6V3K��FI�nd��*W��Fg��;���n�D.n��In�4�$�CC��F�l$��(y|&��f!�T��Qմߣ�\?�I�NV�/�Z^�i8����1Q�d糌��څ�W�c%�Gt��WIu���)*U5ٌ=��婫�^���:Iİ|VO3}�<b�#}�;3�mv�������}-��m��j���e8�$�-/�A��݅T�u���x���]W��:���Xr��YA����Q���[A�4���J�+�2���j�B��7��ɰ}��ܶ��S�Zv�5 ����f��8Kn;���D�r�{m�Ǫ��$�
h���5��^n�*}z���@ 6.@�\Y��1 c�P�g��`F'w�?+�ɏ{x��H�=��o�]��\�!��\� �j%��x%���f��)�M��;��n~/�75xI>hh )�c2����AP{�y9GO�ܺD��(&Y����"En�ڵ �3���}�\�x�{U�PyC/��1��Q6�t�i\���gr�O}^^�J8i]ꧭx����?]\]]���wo~����t��5����O��i 4�Rv�&	Ҏ6*�͚��0i���a���(��=����°�
 � �W�-+�>2���8���G�;��Ah�?����3-|��8Y���g��ЦE.�&�(�c���]��)�-��4㸝<Q�C�[8t(��(%cÖ���8عH,��8�nEښ�Z�P(&j;(d"������m�.𴅀ik�i��(�a�-9da`�GEq�(����>�ig&��L�=}��QeSn���⃘����0�t�Z���:�h,m��Z���y�>_�dٳ���_��,���_,w�m��^��z~����5���������x���NZ�j�1ş��F���ࢃ�+ٴ�%�LV�jJB�Nge��t�@����3G:��1:���u���zJm���5�^ͫ�A��NZ+>�hi�nt+Iq��*^�2��(ˋ���Y�^��<zh��;[�hmEIEB"qi�R�!'!��q�%j�q���5]�b*v�g�ks�AB����{�J^5��S�x[�ܐ�2/�Q��1~+
����B/�'v7bh���t���/���
zgz�"�t���Q�^�ލ�*Qdf	���>�Uл�[`�G"v�H�T��TU�    ��|��g� j�J|�Q�Ѩ<�J� �� 0���4��n��{�G'�F�z Dڻ�\z�S]kM��%��6E��i2j">iГU��Х�D(o���9yh�Ĺ�V>L&�,�ل������o��������oH��l$B �,�@H��RL�PU=rÕ,T
�T���,pv�P��n�!��$���K�<;5�er"?�����έܹ��t+w�䈼n�d8j�Ʈ8����WWY:�����1�\\��x�Y��x�D�oY����d�*$�r��Rx筃xqum�����K/�������9,-}7�Ĵ�֌5�8Ƽ�/���̚�N*���A�w�V_��y( ڦ�l��F���tmh -,��Ԑ��h։�w�j8^���ZN҄�ԳKOf��W�Κp��֍���dm]��l�&��(�ʸ�l̯	a�+@{��1P�sb�hǼu 0��x�{���
$\�4�N�b{���_�(˛D��*Gy'Q�E���s������ի4^��醿V 1_H ����'4~�Mg�>�"���dN,�!�2��J;�3�Y�b�w�T��SMEK��W��З��V�x�Ø�<B2�L*��8��1z�1�U���S{��2��#����/X�y~C��N��O�� 0C�u��H�'Y�o���l��Ki���F�/D�2L�/H����t��U|�+�F)���4Q�D��>�I�I�`��w-�]��w�Ó�M{�",zX���4/?d�ΰ��@v��X͖���׿����&�_��5�u�&���_ѻ!����F4	�L\�f)yP�$� 92{E�+GHm�ŊQ�������ջ޿��?Ir�� ߯��������"L��C�[��r�#P���%�X�	 O����sv6)�0�4�+{^�V�x8�D�Y�2�p�ȘStը���h��a��!<Y�F��p/Ȭ�s����f��TfGPX�қ_�/�'I�zz�^�S�okt����9�;g�n��'/wj�^��aJ�"�BJʟ��(�� ʞ���_���&)��5����Ʋ��]F������Py��v�^b]d�"i��2�ː���OV	��Y���+�{��Oە
�V���VM���|�] �e$9�Ҵ
� \\X)���(�G��p�?/\y��MT} �"TTM��!(�j�Vi92�"�J�.+�J�hPu⇪G�fQ�a?�>hc����������Ks�����=c��列ܛ<g2���Mj�Se��SJ[�je[��O��LO*�1�O1���t/��d����Q��>ĉ�jt����?��Ϭ�:`�,��
M�5�(����Ħ���]�?]�>Y�V�D�:��o�ͫ4%[w�>�s�V��|�xR�+�
!�)��Uq�T=�3�������!QW_���=�5�f����Tֺ�(������t��$%g��P�;����s<v�����;��s(�^�-���n��5��
�w�B���i������^�<�!�,/=߀�U0��=k��"�W���!� +̫���6bIDg/>��Q��A^���:�^��=����K��Ƶ;�{M*y�xR,�K���S���)���Q��݅T��%D(+���f�N/��p��Iy�/f�p��m�I#��
��j��wss�lC���ǐ���q��݉T�C�g�^��](�=�ā�Ȋ�$ḝVSv��24��I��A��(��*���&�u_��v��8�s����y�S�ۅ�w���(�A��}��c}�R�0䷹FH�����ӵ�̪�?ZNk��a����E-LVh��[2�-lԗLP��n�����1Q_1$�Һ��idT��Q�/ �P&]Bb�ȍ�X�4�""����bL�}>�D:X�y�����^��Y�C8��>�Uw����S�DNʽ�]��ͳ��"a�G�M���V ��h����4� �挢(�7��w�����2����O�+���bz��%F��(+��d�R$y�����uL���l f�ayY���b �I,t��ʿ�-���v�*��TA&�5%�� �*���� [x޴�=���F��M�uW��h�8�>}a}iq�G�(L����a$�E���=$��ۋ�KFK���0l��������lM����0[���{�E;�#�Z���t
�M@d�{����u�ƺ9Y{X �Z�v��A�Z3F���o�We�-���N,D��Y�le�A�E�"�lU���c�($iu23(�W`|
�XM0�T`�7h"T�')��`X�R!x?�ˠ�B�I�Nr��r<�1��c��x�aw��A�tP!}���ŋ�\��A^�P�`^�H��iZ���R�`H�BZ�az���ܔ���Q*��vS����_D���kQ��"��;1C�Ί���b/��w!X\��i��*�����9�����SH�����y�tae�Z`�Q�^.���Wm��f���t�#�-��
��(\���n��3��e=�^�b�S���4ל�q���5�9���0Sվ�S%}	��'�M���jCf�U�13��A3Ua�\W��@��&��S] ������=��g��_l�-��nY.w�WR��Qn��!���7~t]�;?���rw�yCM��ƨ�A(��&v۹B�G�����e�G7(N3s���?;�R}y��@&C'hh�Y�xGW�R���M��ʍ<E��xƖ�#)2�G���C�Rܭ�=�+�y�� �gi��gU��M*S���o����\�/�_̲{�q8T������W�W0�Fm�5��n���&�;Kb2o�Gɍ�>�D�S�������xϘ+W�2�nM�Ad����I`����:1r�bD��=�S����S���:d,y<t0h_��gī��=Zr|�{�
:`�a���B��$�GgIM�p���D��B���^�E��C]��-,\��y-�F���Sq*�%Ii��ˬRg�"-��/���O�z����L�Ȳ!���i�矤�J�m��p-`W�5��$y�+�v�a�Uݓ�v7����]!�yT�����W_�ەv��.%�}4َ$%�ɉՈ��4�v��W*��Q_���&S��u�����, Rr+�޺��7m���3� X)��v` ���J"���"��v`Ȃ��瘩��9�)^jnyV@��w=�0�=J����]w�e[�ż��,���?׋j'���ٙ���ٙ�ۙ�l��N!��
Y�R�w�^��f��b��`�*�1"�}����l��y�5]��SY��,�.59�B�H]m�s4�P���r6��a����/nΘ~�m�Z�pm0�T��'#����u�?�s���c�_���P�b9����=��"��v4[q��Y��x ��Z���;Z;̜�}i�ٷ�q�IGV� /�2���� A������GҊE`ԔD\��\l���1��Ãr���Ei�w�0fA*���.���<��H<E�[�`�̪��{��W[����I����7[��S�νֹ�:��}qG�^{�	(C9���_l�-�^�m�f{XqѦS 0�@d���mtr�h�ɵ{nM�6�т��ʢ4#)���GI��I�.$��0�#�4�4��j�[$�y'�TH���H�op�l�i�="��O���g��={j������%�d�ˋrZnO�JSt�E��gPv7'�v*o:�e ?N`�'��h�l��Z�ك�j4��)L�z�~'�wZq�u+c�i ^V�ц�T�u�KP*�����W}���\��U2�\*��p���'زK���z�L�uj�Y��vi��Mm	��a��]=�e���yS��5^�T�K�԰䀧@���R��j  :�
]�5}i��-UsyVހ�����|R]$-�XW��<��p��44~�<���b�F��(ݹ��������Z�
��0�'C����@�C�3hY�'���K�2����[�|#ߜ}�pq��������5��Y�:"~�#�4����,eO�u��h�&)�Ik0��� ��#��T    �A+�诓��5�o�:J�Εy����&c(al��s��A�j�A�#����M��N>�a��y5TJ���(��1N�kG#�[�ʼ�k�t���y�Γft���y���Έ:f#*��^b,6w��$W1��2[᩼��4e�����㗨*߶��
�~��/v���(�d��ܺ_������~H�-%/�}�����_rЇ��=�v��$uT<d`5� �de���a��q����H��&�SWq��e9�隔o{�^��;{��;{pW{���"o�"��hH�Z�W�:��ɭ}��}}`���$p����MԢ6�n��T��1��'}�������H��xl!���T}����Th'�:�ɰN��,�ZH����(�y�|�|����+t�g�<����'�Q����,�59�,��|XW�����8T���p&'0|*\������w�;�;L�l+���xyW�C��-��ܫF?���eH��:�ξW!�\�֚p��9C۩�I��A?Ј[�M�l��cT� ��!�yzg�ր��W}{n]��k��z��A@?iZ���k�Gl�확�\��Ҫt�Ր(��uk��X���$���?D���0Nɫ:�q�Ы�K�L���Qu�%'��D�M�qR�N�}�GWɤ����D�>*6�5�&wZ�y��/F�GKfR���2X]����k���+`[n�Q�fX��2�CPހd��E �8i
�^�ա� ]([���
m��Ln�E�ۤ��܄1��A��Kv�^h�F]:��W��E|����t�,�!�}��q��c�@0�y��ـm��O6W�C�N�u2��q���� ��n�f�op���p:ĂpJ����(�!f�:6�}�Й�%'�ц��
���߄����.D�D�b��{Y��@�م��5�/�����$��l2a��O��ˡ,���Z�98Ϳ�߽b��e-+���j�p^����:��G	���-U�����%yU�����b���b/�Ux][eh���`�.E�2�nԦ�h
_'�de~(�ț�0��`�r�7��M!үh���.>㈷?�6��Qa���R��/�&���a�n�}d7_��ߕ�aS@N���F�v2����9U& �J>UV��[IR��Xpx���n�N2GY>X�l�9a����;k��z�X��-3~>���:w�+R�������Dg�t
��/J�D�H蝶����l�m��Q;��	�j�Z���縝�4�&�U���v�s�d�Ҹ�%x� &��VQ�w�Z���)���4	z�C5*H^B�v'V}�� �j����l!�B��#���S�˝���*��H�!�qxg�Uʔ MbP��U!��4Л���v�g9�"��K���^���FOZH����L�C���=M�J�'�5��E�a23Ђ}� �(j.d�Y
�k'�mװ>Ap>:ai�17,2��%-�szɑ;z��u�����J��Jȏ�4[qS�Z=��D�	��mu��#ְ�&���K`��ګ�"���L�u�CTCm��N��q�{��j�*���\a�?zUϳ(�K`��� �Z��+��~D/aw!5픾=*!w�C99������y9�ȝ|��?�sދ����bv�.�y~���%+��aȝ|�KV�:��M�L(/jlǭ"�EM/t O�0�q�y��g�M���~C�����ë�[��1�n��t�>�xM�<�G���Wf(C�wa2_c]Zh0�bY�F��	e!ꈫ�)@��LW��r��%-c�00Kr��Ծ:>l`\c3&�~ְ[�@f$�5,ǌ�t�О�	�E�q(��(���F��jł:귲�e%$�ŮuWTR�(���;A�H!u�4�y_����&ސI�t욲��t����tJ� e�ZTڞ����*E�m���Q(�{�\�9����rTZ��U�|O����.�U�X�$�WʐU��H.[��ck,�.��̤��a(ْMI��QH�Π���~$u����[�-��ʫ D���4�u�w��"P��PGRw���}sG[D�}�W񵖏]U�D|u���~�U4�ܝh�D��Z��f݉�ȏn�i����/�t��cwLh{����B=�jó��YA=�#̮S+��b/	8�Nv�"���^�R/����-��:+vn���dԑ�;	�h�A�.V�Et	�Nil�q�m��"M��}/�{Ik�6����{� ��(��S�+ ^��Z.d�Qb��~�J|�Q;1m�B}�yo�y���,�Im����������a5����!V3� Z�U�kze ���Ť^�P"M���9��F`���A³�.� �n�d����Q>�]s�Pa�7AcK�������eQ�ľ1Y�1TN�Ѵ{r�2y��X`�#>d<�R�N^�ޞTo�;\����ޏTC�^����^>.���r${�q�ӑ�cZ}5���\㹚r�${�������ѳ�]���U�':�������0g;����� ����Bg���s랧�::� 8�����['���T��Q��Z5�`���K���Ț�`"d����K��Ya5O�Q����1$EiA�0����V��pP��Az
�z�^G�`��b&��d���>�ݮ�B�E3WP��(3/�:�\��� ����9��)��|����Q<���]��w(����2��F"_���7:�l��J!y!�+O�|���(Y��(ME������Y:"벅A�8��0y�%��u��l|L�9>ͺ��N7�Y�r�9��Ƕ������{� ���!fXH�MR��!���QԘEC`h^�OQV�-&'\u)d�D�"_�@k��x��� U¹�/�J���=�s7}��[���)��a;Þ��\�s+Do��*�5o���
�W�i����i��� x�d�`���u�TZ���Ƞ�4�g���=��#��0�˾�m��8I@r-qk�0�2if_L���?<�u��������jP��
q@e�܎l�̣��6�2I�7�D2��rTitmY��9 ��(��#��]r|i�#��ɤ����@�üh݊�a1���Z��Y�fQq;d,�Z��Ve�^Z�˟K��'�yd/)��Ua�Q�1�."�����X��tE<Hw�s�D׀f����B=���r�
(b�ZOz�N���q��G��
j|?��#3 ��^�|�"t#�9��f�9Y�ɗ���/���b����=�Q��e9�������aϻOu |n>C�c{�%�P;@,a�I�m
"V�`D���z�1�������\F�qr(�_�:�y���^K�*���"�k�K·�����9t]"|�9t�c�r3�Y��@���8c?����x=zVR�뇸�\���� '���_�'��#F~�c�O$�;�����~Y�Oے.�4jβ#�/�;��C��T�;a��S�4�Q(eө�3�6�Z\9��]R�",��:�g�-�)���W�B�� h��M����32Pnp�Iӗ��iy朂S�A,��h��C�i@L.�-��&ڠE4�A��-:�v@4�}� ��yT���F9dW���r׬����-\�B�[��=�bn8gN�L�Y��pӒ����1	�U�{����������Է�8��F޲�	�P����Ae0�{P��&{�m�|�Aw�:3�8'� ��[�a^j�`nucHo6G^�׵�$F�Ң��v�nʋ*��<��ࣛ�Z�c6mG���v0P���h�eL�u��=�s�2��&�נX9W <��(-4&���3����޻!�Ԋ�TU����)�:��\��ԭp6�D���Z�*,�4ۄ�at׉0�u2�r���w=��:{x����	 �_X�~Q�`�|�Ѷ������4�!��*C�(]��'��<�,X)h�Q'n��C��1R{EYP!�[L�U��¸��g5�^��\LN�f�Oͬ��ns~�����:f�a�΁��R��Ѷ�94�^������w8G�Q����v�W� ���i(���,�Y��$+Q��y   R!�$�֚pK�M*%p2��x�?z��a%�V2���� ���2�:^u
�F5SȈ����}t�h1I�I�b, y�\��WnJ�� �b쫑�.�:=]pRu⇪�}{
n��/�ż��Ȱg'}�hї0�B/k��2��X��ɣI��*�2 Y{�eO�T��Ez�3	�9���?e`%s1�I�&9��*��@�XI+��<�������[�����kQ�'��j�J�ZH�����0���Ad'?ڮ��p�!� _5����C3Cw/���𧾏�5'��@������ [��:��_�M�K������g�.�ן.��Dp��������3ҥ۾�VE���n�R)�*X�y�6�����{��u��7��{�� f��f�岆�����bwHwjƝ���vJ�� ��qw@�5�$j���y��H-%���)gCXK���]�Oݖo�1�/�t\�k�{8�6vV�Ʋ����.�]r/�vC�<PI�I����x��>���/c��}��N�e�R���U�
�;����fC�o��饭Ơ��4��zlJ6w�=�@��T&�V��Y��Teq@�u���������1���]�Ϳ�6��ʛh�,�wwN5?�@�|Q4�0#�iJ�{{bl�?���[��ZF�LQ�a3r�V_g��m����7g�-��$`No�9͈�R������˾\��o��)�G#k67r���!�;�4 H.@Ż��!����>>7\��Fw5�u�݃�"�F�ׂ�ڞ��L�P|�%@!���Y%tc1&ݶ���`�:ʧ�����)�&�/���8ib��"Ѝeϥ�C�Χ5��Y�{o*���]U�E����aL���	x�l�kSeT�EJ�P�ݔ�A�;��lw������"\�������WgW���]^\�?�p��LgH w��Zmm˵0���底��q��p땡-n@!��Tf����Di�a%��zҒ*1=V����fG�&H�����ػW6���͊�����=�I9�|\��ڐ%>FyR����V�@6��Â�0!(
j,��~L��9��A��b�'"�#��A��t+�[*Aæ�^��;�l~�)ilOC�3
�m��h�(<@+�L�q:Vޠ��LX�x�͔7G��_ ��h�"��:��΍��m�	%�+�mo���4�_=�JJ��vX�8L�"�9��9j��v�K��	{���Q���pV����� �>Uu��}�x�e��W_����~��d�K      �   �   x�u��J�0���ӧ�,��i�ޅ6蠮��wފ
���&���d(s(����m<��$w?|99tӴff��܋@/���Iy*&\L�,N�KA��B�g���
JQ��-�m��[ܝ����.�ʒ�Lq`��Y��7�2Wff��o��;�q���w��a\L�a�'��PO;SYS�Wx��}�����*�ge�X.CS~�����s�[ڲ{�OܻM�G��o|��m�ޯ��K���c��߰(�� y��:      �   �   x�mϽ
�0�����b�g�f��n���juW)�� �T�g�����������P.��\�Z���v��L�������X�Q��>c�)��jm|"�h���xv{�bZf��&��24	��|V����qLJ����^�00�����lnŋ[�-�qn��F�k�y�%��ovt�%�L(�m�IY�1%�<��e3      �   �   x���=�0�9���㾒`�uѺ�v	(ԡ
n�{�t�)�˛�������r�Ur�σ�.k���r"K�ґߑF��
��G\[�q�1FQ�|nY6�kN��[�I]s
���&y�3mRǡĨ�id���ޏ����5�E�^�3��ɻ�g���"�Z���Z�k�vG      �   o   x�3�tN�,�缱�f��& �~c��vNC 4202�50�54S04�20�22�323�60�.en��2�t�I� �wc���7�o��X4�����zƖXMJ��L����� �2_         ?   x�3��0�4202�50�52Q04�2��26�370�60�4��&m�g`n�ƪ��(����� J
N      �   ?   x�3�t�K��,�P�H���L���!##c]c]CS#+c+c=c#Cm<R\1z\\\ )�Q         K   x�3�IM���,,M�K�M5�4202�50�5�P04�24�26ѳ45�60�4��&m�ga`
�ƪ��(����� $�         ]   x�u�+�0us
<�L���ށ`��/I�P��}���$I���m!�)ub������b�L��9;~��/��o<5,R�q7u � n��$            x�3�4�4�2�F\ƜF��\1z\\\ !��      �   ;   x�3�4B##c]c]C3C+S3+Sc=sSsm)S+CC+SK=#S�W� |�      �   �   x���Mn� ���0U�v�.���lTp��>C���Ov�}bx �ߔ�5�_�w�rR�w��wj��h�J/����"��U�,'I`��d�Y�E`���֟�k !�BP�:��@�B�!l6�
en �B �X�-�1���f^Z�8Jw@ә��g�ފ�Ɣ��� >����R���-����ם�|�Y>.����fvR�U�ܶ~V���j|}t]w��=N      �   g   x�3�t	�s⼱����n6q������������������������v	3��g���H0��7��fm��u��i�fz�&X�I���̋���� �F(H      �   �   x�m�A
�@��ur��C����]At����H�x�)�e��8��!˟|���^@G]uҏ�l N'$�&_���RhY�fCTN1�����s�F}W��j�=�fG$E�v��Н����m�h��?N�X��i�g���/�B?      �      x������ � �      �      x������ � �      �   G   x�3�9�5���$3?��f덭76���4B##c]c]C3C3+s+SS=SCm�RF�@)�=... �j      �      x������ � �      �   m   x�3�t�O.�/⼱�f�U7;nl�4B##c]c]C3C3++S=cCmRf@).#N׼�̼��"Λ�7�o��Xc36�,��L�L-,����4�����  �*�         L   x�3�H,�L�+	�,H�K�M�4202�50�5�P0��25�25�31�60�4BY=cKS�4V��F@)�=... N��      �   A   x�3��!C 4202�50"CS+#+S=#c#m����������������	P�+F��� �k�      �   ]   x����
� ��>L��N ^�HJ�ۧ���?|VE�O`��O����7eUB��9|��/փ)��<��� �h��e�*�c~�ʘ�����PG      �   M   x�3��+-*N5�A##c]c]C3CS+#+K=CCCmR@).#N?�F؍04׳�0�jX�dD� ���         �   x�u�1�0��99E�����I�z �
!�&nO[�@����t{=��2?��%<H� �B�=��k䠔S�rk)���TA�wZB$���̤��L��p����Fb+��R�[�V~�2nʙ��o�=�         {   x�m���0kq
��	�%M���� F�l�e}��i9��u�nw-�,1k��M��z)Z�`�6p�t=������)H��QS�x���%��������X���m �0= 0R;      �      x������ � �      �   <   x�3�J-��3���4B##c]c]C3C3+K+SK=C3m�R��@)�=... Lu�      �   8   x�3�4B##c]c]C3C+c+c=csCmt)+S#=3S�W� z�      �   �   x����
!�k}��{�@��\�ն�o"
���眏3�M1C�7�#Cc���t�Jo�RK쩖����]�ϚĚسT:�K�-��?�'ۘ�$��R#E�3��u�&94�gi���а����FÑ�OvhX4�ᆆC�㜿 b��      �   N   x�e�)�0 @ݼ�$�����`�9����r%u��ٰ�[�����Q��K��g�"#s���6Ӥ���,�H�� �A�      �      x������ � �      �   U   x�3���K�I���4B##c]c]C3C3+C+Cc=C#cm�R .#N�Ģ��������YZb5(el`2&F��� z�      �   5  x�U��r�0���9�Cb���EE�Qig�$$,�Rħ�c�n�9�Ν{>xyI�o�6T?O�H�;.h!�r`��vR���V[�mv>�`�%e3=
�1�̮9;���Tab���E	v`D�DJ9b�K��LH� �ؽ�5��.��]`�dvyr�wM�6���e�|ţy�J�D#7�\&��y+�&�og�:E��@~���P���sM�C!�'����jO�A$)ֱF��19��FI�����ʕ����Y�J8�m�����f:1�|��X鱮:����*&��r0�ӏ㺆Q�t6��`�l˲~PԄ�      �      x��]m��Hr�<�+&��-�7!�o�g;���z#v����BAKt71�ЁԳ��.�
��H�fg˱��DE��/O>����1;?����a�N��z��sRX�o�,/���H�S�!>�t��������gV}���=�I�/�{�����S^�)~M����}���?8\��Vv�r�O����<خ寃�meS������!q�E�sR�V��cb�O���-���x��am[���W4�n����x�/�e�K�u9�����n�a5yQ�*�ɚ<�	7�8=o������~��_����Ⱥ:��O�>��_?}�oI�+�cu������8��`'?��Nv������oG�ܜ���-Ow��/�ΐ�����8��ǌ_�~wJ���_��%=<�_���Hvi�O��?���Y��s��ʟ�/��gg1�8���l���|,�`䵟�j4�/��>9���?xk�y��n�x�G��~}��dW����g�S�{9��:�t��Ws��^N�'ǫ�섖�;˩��;m#��=��j1�����Ƙ��d��5#��^�e��������Ň�XZ�I��~�c�[�z~m^���{���*L����ղ�%9�ͥ���)ޝ΅XQ��yY��[^VOu���MU�u.�?��w�,DEq����S|�T=zOx�~=%�����%��)}�5U�S�U�(g-��$�=���['�rjUB/z���o�-�ꦐ/`����+��c�>/�ow���[��<v[�^��jl^�>"k}�q�������8��K9���<�f�r��/��_��
Vb�܀�g���f�)
�Vy��O��z���%)�2-Y��މջ����9���>��c[���WM�Z�(\#w<?fi�r�1�.)K��X͡f<����z<�i����%�&{yl5��)ޭ+_ ���k?x!�ϊ�֗�n�,� s��dl�ŧ3�z�g�����c�yv$�87�8���0+�?��W�:��m�%/鎉���\&?H����vU���cx����~$&�s�{(�;��C��ې�^��ꘗ)�${Wp��}�ρ��+)�2�3�Q'����`p�i���[R�Js(����{��1�\���LV�[��t��1b��ig�۝�b�i'O�6�i����z!E��喂*f��X��iy��'����:�4�&dp���w�u��d
%��
=([�k\|���K.V1h�̭�v7äj�� M��Ӹ{Iv��G����zg����*�-�įq�e��͹�]�p{��O��=�,����Č�(X�xWۧ���#�5��u=�{���s�^?i�o����-[�J�}�c���InuP�2x�f�{��Nt�up��ZO��=�{�4�g�%y͟��1=@��o��l�wQ���V��9�o=��wU��M;�v5��)��I3�����)pe̼�}1�>p��l�U�S5�ʶ���Y�l+���v����h�����༷����}�����goޡ�����헰.���N��k��L��>�N����<8��;ד����k����7���ɯ[���m3��_��'Z��c���9����WoRU���)�-7l�Źr��n���<��[�Zթ���e��(�o��me%�_|h��vq�����<�Y�Ҍ7�
���W����Q%ݴ��n����xL�">��=t����ƣpQcB;��3�?}p��5�s��o����ڳ�DI	�^B��f�!$����A0�����_"xhN�Y�;�b�H�N(�P��\��l����:�C.h��;.<	��)s�-Z�Vn��wUp�Ђ+���+\	���d%�B��R|�Q��A:d��`�I��7�[""������>��!f2�)�势ɜ]��)G��A�H��߼�bV��k�g���+;8߶�:�Ú��ϨbT5���F�8���֛^���ږ�z�������/�k�o���Bq1��Jfv'k��aL�)��jF�{���t�bf�ʩ�(fpd��SW�tn�$���X�+���01lշ�Zx� �J&c�`L���Ib����0����[$WF6
���l���1�j�K����j���ߢ����w�O �"HN�O��@�U�����Q-���svm�-m��T��2P�J������B��
�<�$ A��p��-՜�VX��ˣ�_�Į̅�'����b�R��!��sw��`pt��?�O=� ֲ��t���ruL�״,��J��+MA��!���G~��(�J�+�{%T�k�\^���ʍb���O.�k�����n�/�*�(0j�r�芐I��K�˙��"`��Xp(��r�M9�]�E��3�?:�D@բ�촚�A|���:��9�ߘ]�C�|_�袦V%ȧ$��?�l�j�\w* �[v�zWF$5��r+��6?dײv�j�*�d�ʣ�4*���;ڵ@�v-�p�g�V1�H�T���v����A"��h�}x��z�s�/�Bc�q��WF|h��
�e)�M��0���"(CC�(��>�Ey��w�L؝����KZ4gO��8�\N���>�ُL�p�Z���g=��y�Ϋ���O�ǔ��KE.
�f߶N�o��[r���6&��g�%�2����n���E���1W�(�q���Kdr;�lR�}�P�먾�j�_=��l_O�9�V����v�E�q���A�]��T�����nP!�Aq��	Rۇˋ��HôI��%�E�BJ��+P�z1�������h� xX���K�n��9��/ !U�.ā0j��$���<vQ�p�Z��s��U�Xfn@V���c�>���ʿ#b痌f[Ɨ��1[��~�./���,�1��)N۽�3��r\���B\K�~C��]]o|?���w�F#�����+<����z�E���=yF{7B1�Dگ���q]�*�nA�2h��2�=�ܢifSy3[@I���|{��,1�%��z�l&��er���m�G��G4��w�r6l�I {�b%Q	�	P>���D<�0�քb���5^
�Q	~��b��u�kX�Vq���0h�_�!~1�/�����C�b�_�!~1�/���
Bs�{D�Gy�@�VB�v�������G���	��� p>���h����p�qi�Ƨ��m/��4�2��G(*a���5N�u�9��B"��9%:L�$�k� X� �D�� ��9-OE�5'SC��l���8*��l�t%T���)�߮�`��|G����4��6������PE�e��o�h��c�ѡ+��H�7�H0%�������^�	S���ֶTe����p��q�����JO�����̳FY"�~��**�x>�żX*T\I�t��"���w�>�9%$���i��iBX%xg�$ҙ
qY��h�ȑ���\��b�p����|�d:yr+�Xʪ%���&P@g?�.�-�VY��M	�5ٙC����4�M3=^�@C�^\�7�I�$M��/!0h�_

4�Z@=��{�Г4)�Ԁ�KQ�|B�h]oq�$W�juS$)kP�u���|�I���NZ�>�`�P��h���C��P?��J̾?
T���NgĿ.T��H�A�`s��"E��Ӧ~��&�������*�IrS9�=*;�z�_od����	z �!��Wz8�亪| Zƀ&��~�
��e����gY�%�W-\N\��(��^I3|�~?���J���Y�}LN_�䰭_ۻ䖥�#���:M������F��z��-���{_~�U��4��Vݭ���,*�E���F@=j��묏Ō�Aפ'ĵۮ���X�&N���&1�*��*���ujLc�IA��]TU��v0g�(�1Ħ�IΑ;嚁^��]�0�'�X/�H��#r�h�@��K���:�G'`8�0(�]Y���|�!w��(3jD�V�b$��d��8l�d%�d�T�s�|T��ɛD���M��I�7i�&Mޤ�&o��M��I�7i�&Mޤ>o���&bTt�T=��i��Ú{3^�E��E�,O2�_��o/̴|<UR小�y�ݘ    h:&�TLT��M.��T�ɫZ�4l�?$�l�Ί&vڿ*���C�d��y+@.ʋr��Ⴍ���ӕ�_���J��cS�� A��#ye�*v���Ť��>�:"���AA9;�9G޿ޜ�,��z�7L��ύ�C�ψ���Bb�`�{�s�\�ܓ|��H�}0y��rQ0��~�f�%G.	�b��wh(�O���
�Q0@B0��_�
����Y�ѣ樠�Fm��Q��)~���c��/�2��P>�+�w�u��c9-��u�Z 5�M7	��������rɔ���l������Y��(�`�,�m�#�>79Q3=��5޽����]Y��F�%��W3Qw�=M��D�M��D�M�]u7Qwu7Qwu7QwJԽJ��|Q�UG1�K��Gw�6Ρ��&�;(�����CL�?mzi]��5��o[y|�X
�z
Ȩ'���%?7�ѻdj٨Lp0�)���``��
r��I�6��c0<óL�9�sR~�ta��t��^\]��vc�G��X.*�3�Tx� ��6vC�w%�ɳ��of�������B�ݛ��-P���ro�zY��,g&#�����@z�r��㲸u��pz�M��Nl�pA��g�#��ʜ{��cz�3�>��5���P�jm�c�d�
��
S�^tg<Y��|�n�	Qk�;d�>�ǁNI�b��Ŧ�gZ�8�"*ǿ�dh�JG��9գӖ1ݿ�Ͽ��ῡ)�#��$�A-檊#pG(my��Q�b����՗���X������Je�c�V�>�����5.*oXc���	��O؍��)�o����48�-2��`v7�[�3H����T�z�74f�����W��@æs�x�K���%��{ )ĜZ{��%S��~��@f�V��[>��W��72�#Ҽ7�ȿ��ʝ�*ùLm$��6��F�1�q��ɵ4]*8~����΄�g�S*��,�}���9�"�*�����F���H���#W+��oC�Ht�i��ߙ{��N��գXN�.=?r�<\�
��Ai�*Q�X~��D0�E�4{��q���Z�Z��7���2�aH��
L+`;�/=j9���2�$�����Yج��\.�zߘa�<�h�*ƴ��#G��S�Cad�zc|3��W�#1��E�j��9����@2/�B-J�v1s|�Ӿ�ڳ�� rv��"���c'T�Z�46���e���]_�k��I���c'��[��ޯ.I��������&���p���l:��L���G��ˋH*�79�t
���0����UZ8h=�B�(`�� �[�-^�чT}	� �J	��t�2p@��$D�E���{>���+�����b�v���S@Pu�8�Y
�ϕ�!,Rm�T��\%��#���,-p�c6Ձ2�����nOk9�S��8U�D*��3��H����Y�(�d ��F2��P�ԗӍ^�f���6N�5�*k��D4��]�c7P�&�� qc�]�њ*k�� �iᅎ�=t,�t�%�s���#��]*g޷ţ�j<Z��9�{BC��CC�F8����;q=0 nF	Y=�(�6\�m�����W8�*��@���5䍲�� �f�o��������b���I�1�B�ͧ�׹[D<�lW�\�3�'���x�G�`ܭ
c�o���*d>�(��:��;Z`�'��T���Ӿ�_2ZG���l�7��;���̞%��Q{�@����ITY�P	�	T<tn�,:�hs?s�f���ʛ�c֘�Օ�P�+5T�P��p~�4�/��v��&���_���	�h�RfoV�t}Q�?2�|�Y2[F�dȀ�]��f�t�B�4�L�
����"T�?Z~(�%+;�5d�K����K$ه�8��Ú彫5��m ��a��/|i��0%�N�i\�`��9���Q9�K��	�2?�W��J�a�/��_�J5s�ۖhɀ( ��!��86Ue�a�!�WY?<#�����)���33�5�d��&é���G܎鴠>�}K�0����#Ӎ�� ^�D��pt��O�W��tn�|&�M	+�=M	+S�ʔ�2%�L	+�=L	+S�ʔ�2%�L	+S�j��d�V`[�h���xCA10��'C���ʋ�n�86�I��Q "4!>$fZ��-R�5@^�F��,�g���`HEfR� XJڰ�l+t���b=_������V�ݹ�.���t*�q��qQ�qQ�qQ�qQ�qQ�qQ-����5}2*R�;��k^�\2����c�t+���JB�e��ŀ���E%v��
�QSNP���/���/���/���/���/���/�����#�E��C�-��1rI��Ir:f1� �@�����g� 1�^��d䛚p��_���'"��h����6�"I�
��Z�),_�����w�!lC����3vt>�o��5���3vy�yF�������;<W�<�6CѸ-Q�a^��C-�u��8_}4�L�R\q)��>�����eJ��p��HV�r�Y5��H��6�Lf�N��$�)oZ�:���r�~t�f9�JTV���(TU(���5b�w_Y�[v���v"�.�/Lb-�r��%�ī^�[���~i%��MYn�ӗ$9l�]�������G�Ƨ�\���~А:�z1�-���{_~�Umnw�O��ֿ�4��A)h�l3���PY_YS��yeYGj1 �l47�=��%*�A%�gK���/�u�ۮa���;��9ƶVj|_G�m� ?X��r��AU�����^�i�n����X�.���_gb�\��0;���ޒHo��(�W�|�&�P*�J�s����$�K_U!���WVDSk���br{�Q O���	)5>w�\F����?�Gy����M�4*�-*"꼌2�{���y,��q+/rz��H� +xL�v Q���p�(�&r+�:)
��
��;{{���f�z���K��ʚ��M����x#t�
o�饫��vzQ�5�f��G��kL-R�,<��5��1�\�
_���t	�1�
��U�[�����:��m�l�ހ�Q�/肮S6["����Fm�0)q]8�&���\�ᴭv2Et̶��ϕ�Ӌ�-w[��F7���ⓨӋ�����!Z�Y{w�j}��	"�)���S�p+�π]������M�>���t����`��j�������e#��������cm�p)뗠>#�yj�V�9ke9����95��k�Q�:\�J�7�7s�Ԓκ>3��S�4sA3ְn/s�=)���	���7Y�n��^���.a���l5��Q�`�c�(S�Ş"�uGnW^'�[�`FI7�Q��Ҳ"�p�LP0]*�x�R�Z|���lZњ6�'f��o��T{�X�yQ���`��!�{4�^+^�����4�k@������3�ˁ�8Qs�n\v[}�'w�H±�k�$��5�Q��i���	�Oe�6����9(g���U-W�u��u��v5�A�9�� u�/WB[QPST�����p��̜�>���Ǘ�2e*���������L���:����Y�kDćA|��gPa�5g��C���� ����e>��A��[i�Q3��,o�	g.�Щv�����Scc([y��NP͉^���ژ��D�̻�w�5�S�@TH���âe3�@�aaJş�_1��,���j�(U(���RB6�'�� ���a�F��0Xk�`m�������0Xk�`m���<լx�L��+<��(`ߞ�>����HP��bSׅK����y@���<Zs4��Q�5,k\��=C6���Uf0h|y-,@������)}f���-M��� �aۃD�h�d�>Zg����}��A��'G(k�ޫ����+7��x��ຖ�ny�Mk�vԠ6*b�\��
K�dϤ,���E�oc|���� ��v���������P�O��}Jnd���P�&_|��P�fj,�Z�%S��*�G�w3�z]c�"i C  �]~��0��;�98qzQ�R*A�UO0'��RN�_6*�)����\�j�u<0�ph@*�z���گ�צ�~^U�r�O����<؞�޴6�n�F�&*n����Z$g�F�q�9��x~���;Z���T6���Wl���CZ�-]���F��Kͫ��c���:��Nz.��ԗ�����'��gpD����J�P�E�,Z~e�>�]����\�=6#D9��qz��Ps8�+qQ��
E~��s�g����ߨl-x�rڨ��{MF�UO�H�v�ÓIibD�h^���̪�c��%�`������y��*���΃�ZA��m
�CՁ�l�;�����r�BT*�j� A֞���_��?��!��-�w��
WN�����PU�k���r$ɫ��Py.�x���9<rш�0tiƢ/�z�!��ֽ�->2��M�+A1A�[0j�d|�8e`�{�,��8����]GA�� XI�|��͉����$6(��Y�l-�Gkp�Gkp�G������������G�3��ٚ����;�Dn���o�Ǐ�E��      �   �   x�}��n� �gx��+[��!O�5�.1����%A��������c��P���� 8'\|�O��������0�� �.��$j�)g������h�e�z����C�"������Cmj�Y�յm)߳�	l�Bf����U�Sd�x����EaJR�0nI�Hq(��_)lS��j�*�?`�{%�~��z�7�_�<�R�߂}�      �      x�3�4�4�2�B.NN#�=... !��      �      x������ � �      �   �   x�u��
�0��oO��(����ICI�K��#�K/b����e{�6�P�;}���w��*�˪ڀ�����`z�r8���C�Cc*2�d�uD��6A�R6;�e]H�WͶ}5���z�V9釹藻��_K3J�$�m�&�;�U�j��m���ߠ��zA3G,���s�8	�� ���i�b�?�9�s�_Α�?D�ݮ|(         v   x�u�1�0k��#�����o�RE�F���SPS�Ό�y͟��J C{��`o*mbr�'s�0���-�yHZ'#� �oh�	n7��ld��|���P��CŇ��I���b�_��:�         �   x�m�;�0���>Ez���������&H����D�<p���9��q����s��rl�$#eȉ��T�����\}�R�l	9�3��C�(��T�����m�~x\�o-��f�u����9R�;��bv.d�� ��@/      �      x������ � �      �      x������ � �      �      x��]�r�:�}v�K�,����|�~Qd��j��Hv�d�~�!$��N�Nrt��`adWU����i��8�v��xz[/�2�~�����e���m��WUޥ�i=��Ƿ�q�v��e�?N��ú;�p�����ҝ��������h�]?�.���v�>o��q:�돷����p������ﺮò����s\o�Y���>�<�!��a�����k?^�w�2t�A��\^F��ȼ���ǰ븾}v��x�3�7��P�x��.ۋ�*�\~Ga�>��ϭ#�\�6�b�ENjn�{���>_f��ty��z}���r�[��I��}{�n���Wg�^�`��X>���=o�y���Ke����fl>��E�g��ݩ;Z뼎kS�a������D^ pa
�WX�ڸ ����x]�.f�vͤ��. o���0��F�n��恑5	N�V�NY!�3��n̚�n��n����-�~�\W2��O�|x��ϳ��}�q���u�ar�Y�S~|�2O��Y�&ԹѬ��8͗a}�.8!_��|��,�@�ޝ�_�w+z~ƞ����v�ؙT�-��kXN�m�V0�����2��=MA���|(ù�u�{SQ���.�d����c辺q�����6�0����c���u.�:�%+M����ʹ;�$�Se�}��<L�e!�a�d릣�D^yKV�:,�dd��}�-4��.�b�I$�Δ�L��0C�V������:�:�,�Ǔ�r�e��ժ�ɵ4Y���`6���x:N�&�yH.������Z��3��#��b�O���1�� m��B�#7�9n�+Y��@L7�#/�SX\��T����h0'@�%Ϊ��� 7��J��唹��2L��.3c�7�������S�r���՝����5�׵���vxv` hy��:hVI��~���o���c�C������,WU���$���ģ��H�cm�'��$x^Z�48�?���u��j�j#��#��2����÷��mDJ�H��k�/��]����ݒ�)� ���93Z;*dt9��<,AԖ�F��}&�� �>3Ύ���� �g�xZ���+�$قIY`�U�O�MQ�B�?��<^�	-�ͦ0
ѷ7-Z0`"��|!]� �?�����!m��K�4=�$M��r qc�d�Dp,9��_�bd� %ؗЃ"S�lʜ�P�'�R~
V�nC�3ݑg�.�s��B����y�9>�G� �#��ȵ,���$|B��������Jq	�l�=S�¶OTeWw�i4(�1�X������(Ҍ:K��68�~�㳍
~�CYJIȓ�
��d�I��0�:I�`��Z�Mey�EY�����2�2���Dfp1�kg�.X+�O�n���I������]�$�/���N�[�(�Z-.�$A4�&8�o5V��m��m�@e�W�u-�c:P�[�0���S�D��:�5|���_Ox����8���,26"�~r�ȭ�]�����@p��.�d/��i,�T�"���io'��'�br}-�0�Wɘ= 6F����3^en��'{�*�כ���t'����"�e|�^|'k
�'���cw�
�Z��)JiU-#42�R�?_ߧq��֔���e��� �/4�"�\���l�c��eyXX%����`]�$�24�}�
ד׃*#��������<�ŭ�nZH���.JO���[�6��Qe�pܣ�h�ϥ�1�T���}�2��P�AO��)���R��,5�ӵس�h;L��5�s�g�1A}N��;�(..�+%�I$��(�Q�?Y�x���e���< ]���zhP@4�i(��Y)ks��6��ޱJ
R�YMi;w�A�����+����Ta �9SY���q> e"�#K�90\��4�H����H
 �Gp��m�,c�2��8M�u�9~�i�HK�Rj��RX�g��M�����9v��_q1���I���^JeLFR�r��cW��R? �_.����l� ]���C"xM�R�ٚ�d���\a�G��'�sY�a˴�|}�O��;���"�g�m����?pV�$�zr�T�DƬ�8X�����1?�Z3�ƄdhF�W� ��FuK�`I#eIpDhX���E��"�5X�x��r@%�(0����(/S/�Sٲ����5#Zk�)�`B���*���X��`�^R%��k�<5\e6i��+�T��e��h��uQ$f"�P%�g9��hP�P��I����'�'X�M��������ۤ����m���]Y�#A�4
o�嫊���~f�y�m�ؠ���ǉYkY��7Hl
$�@:�����И��i{j�\0t5���X@���ú�\��n���P�ѠeD͊I��;p5J�Ӿ��(sm�^h�]RG�N�����Mό���Z��HQ����_T���rxWż��(A!�w'�X+�%�.~P.!�Q1�q��2{[	��p�3��b��Ls0����M�!E��a�8j��VW�+T%^����٩���p�>}!���C�r@ a�U��P1�I}��P���(/'��X��}��E�	�r���Y��伽y����	n�-�i��9��}�%�]R��c��{"��mdpI��B$(uҞ7�[mߛ,jbJ�t
���!7D�rdr�x�%Q1'l�K���pQ���)х�E���)6Ǜn6т�+Vg�1BhB uO�E�U�������� �{S�3�z3d_�+�D�R��"qfMƛ.����{H�ь�����;D�����"I���Bu����!��Z�|�_��L�d����B�>b�}h?�l4���WY��:����6���6�����\��j~��W�uQE�8��;�Â�y��a�݇^Q���<���Ԇ�.�M��x�9�K+g-�AI�J�Ir���F�ޑ /�3�Cp���@s�߿��8_�ݺ�=/W|��Wb�v]G��=���n�	&?+7���"ŵ螽��Cr�撳v�M�}����2=+d���
��Ϲߢ��(����e}Dթ�`�yɊ؎t��
9�8���m9D=]>d!S��<B3�J}܌��f��u��:���8nΛ`�tƍ��v�z���Q�{V��ڈ��9��j�����c}�<!b	˸���w` J���	�B L:L�o�$zV'��I���ZH��2B:O�
��%Z�^74J�L7�X'H^E#�fف5I�ds��]��B�b�,	]7M�]���رS�������l��">�m�h���J����!�
^�(M�����=$�>ޠ!N}��"�?h�H�#��Ky�/��PD�8�%)EX��Rb����O$���{���0/����p֓� ft����+¼�l#���2|������M��S�8b��g�E�FE����h+l�i�q `{�P�	#8Z��hF	,�=�a�1M#ǒ��TM�;y�
A���!B̝"�:O��Ų|�٨�&F2���i�N�P�OC�y����	B	6w8r�(@-��n����vcѨ��	��W�;w��j�Ӽ�����:�
��H�K.�	�㦿��6^2O��8���rn��g�ڟ#Y:���"Ju��'����-�Ti*�-b�Ij }1z�@'-�rt���E�'��HQ"T��Q�].��"k�5*�U�����c��8�|(�Y�����m#*����]з\�������i�\��t��	f�z�or֒z���q-tj����Y�5;���������A�&t�.R�M�&��
(�M�����$y'>�-�e˳��sVoL�Qz/���� k=#_"�<DN�b�JQǽ~�	��$.��(�$Tn�<�2�Ԟ�'Ɇ��I�߄�����vX�,<3��	m��#���
�~�ǎ:h�'���#�yeM1xu)���7�F�
���d�����~�4EJv�?��yp��D=}�ha���3x���%��m8x)������B��e�_5I]^~ p7�E4e��%!�O���\��C5&��}�H�~�	�o�P����?6lX׀�4%3F n  �!'{�[ْk*�`5< ���rΥ1*�|��z:�m(��m'��_���|{֢͖JFR�+%ON��S��?W3j�ۍ����bG'�Q.쵲;\t�Z�3S�q�̀�j��V��Ox�	grV��)�O;�_`UHL"�P�5���A=U
0|'���YhQ7 ��Fc���PE�?!T;��ҷ�'3�`���S����q�_�A�Z����g䅠�¼�L*����7~��3i�4v�����"�E�[K�Y��D:a�.@��o#�0�5m���5%:U�b�|�d�}`����"tN�r��JKI9{R�
�} �Tm�N��:Yp�� )y�$�|{���^�׿~������I      �   W   x�3�(M��L�tIMK,�)Q(��IUH�,K�S(�W(�K,-�H�+�LN,IMQ(-N-��,�h��".CNGd%8�f�Դ=... ag3O      �   �  x�m�[s�0ǟ��o;�9�@�I[�v�_����NP��/���/ȶ3�B�I�9�����D�?��U>./u�{a4I�B%䁪��mT*q�i�k�!9oֽ'ۄ����Z����W�'�A��;�m����体�����K��A�� J&]�A��,iWZ����@��B���ǧ�M���KH-�E�>w|�6�TD:��|ɷP����*<>��ӷ*�e_�KIl�.u�V��p(G&�Q�L������MlU��H@4A�8�i�]�s=�RA��X@o����,����S���B�Q1�a3̤#F�1��Z�[75K�w��?�l��L*X��>7�51<B}���ح'�}:��JGR>7Ga��j3z�u)�wiMT��"��( =P��x����f>���eE�>c�����ǽ�P��N&Q����89Q+�V�@^����G;\^�~���[�n�V��ڍ�Xȅ8��"8M���t~�u�!����|u�Cs��{H�9�08�C�?|��v�8)�=Hq1��Lؒ��-�Et3	�^�9d��fetX��9��VG�-��,�,s��:I)y�j9���<�����c���XR�N� #}�S/��f����*.o�?��-��D�o�8�Q�`F�n
�Ȋ!�      �   E   x�3�tN,2伱�f׍�76�l�������u�u�M�L�L��L��K��b���� z��      �   <   x�3�L�,�4B##c]C]#K+c+C=Sscmt)S+C3=SC�W� �^      �   ]   x�3�,�,���O��/J-H-�,���+�4�L��-��K�+)�/N����Ԑ��)Fěb4ń3/�$>�8���0i�����-B(����� <�V�     