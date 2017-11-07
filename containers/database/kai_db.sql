CREATE DATABASE kai_db;
\connect kai_db

-- Make 'geography' type available
CREATE EXTENSION Postgis;

-- object: public.dealer_ids | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.dealer_ids CASCADE;
CREATE SEQUENCE public.dealer_ids
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.dealer_ids OWNER TO postgres;
-- ddl-end --

-- object: public.dealers | type: TABLE --
-- DROP TABLE IF EXISTS public.dealers;
CREATE TABLE public.dealers(
	id smallint NOT NULL DEFAULT nextval('public.dealer_ids'::regclass),
	name varchar(32) NOT NULL,
	CONSTRAINT dealers_pk PRIMARY KEY (id)

)
TABLESPACE pg_default;
-- ddl-end --
ALTER TABLE public.dealers OWNER TO postgres;
-- ddl-end --

-- object: public.outlet_ids | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.outlet_ids CASCADE;
CREATE SEQUENCE public.outlet_ids
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.outlet_ids OWNER TO postgres;
-- ddl-end --

-- object: public.outlets | type: TABLE --
-- DROP TABLE IF EXISTS public.outlets;
CREATE TABLE public.outlets(
	id integer NOT NULL DEFAULT nextval('public.outlet_ids'::regclass),
	dealer smallint NOT NULL,
	name varchar(32),
	location geography,
	address text,
	phone varchar(20),
	email varchar(254),
	currency char(3) NOT NULL,
	timezone varchar(32) NOT NULL,
	CONSTRAINT outlets_pk PRIMARY KEY (id)

)
TABLESPACE pg_default;
-- ddl-end --
ALTER TABLE public.outlets OWNER TO postgres;
-- ddl-end --

-- object: public.food_cat_ids | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.food_cat_ids CASCADE;
CREATE SEQUENCE public.food_cat_ids
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.food_cat_ids OWNER TO postgres;
-- ddl-end --

-- object: public.food_categories | type: TABLE --
-- DROP TABLE IF EXISTS public.food_categories;
CREATE TABLE public.food_categories(
	id smallint NOT NULL DEFAULT nextval('public.food_cat_ids'::regclass),
	name varchar(32),
	CONSTRAINT food_categories_pk PRIMARY KEY (id),
	CONSTRAINT unique_food_cat UNIQUE (name)

)
TABLESPACE pg_default;
-- ddl-end --
ALTER TABLE public.food_categories OWNER TO postgres;
-- ddl-end --

-- object: public.deal_ids | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.deal_ids CASCADE;
CREATE SEQUENCE public.deal_ids
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.deal_ids OWNER TO postgres;
-- ddl-end --

-- object: public.deals | type: TABLE --
-- DROP TABLE IF EXISTS public.deals;
CREATE TABLE public.deals(
	id integer NOT NULL DEFAULT nextval('public.deal_ids'::regclass),
	name varchar(32) NOT NULL,
	description text,
	price decimal NOT NULL,
	food_category smallint,
	upload_path varchar(255),
	begins date NOT NULL,
	ends date NOT NULL,
	mon boolean NOT NULL DEFAULT TRUE,
	tue boolean NOT NULL DEFAULT TRUE,
	wed boolean NOT NULL DEFAULT TRUE,
	thu boolean NOT NULL DEFAULT TRUE,
	fri boolean NOT NULL DEFAULT TRUE,
	sat boolean NOT NULL DEFAULT TRUE,
	sun boolean NOT NULL DEFAULT TRUE,
	CONSTRAINT deal_pk PRIMARY KEY (id)

)
TABLESPACE pg_default;
-- ddl-end --
ALTER TABLE public.deals OWNER TO postgres;
-- ddl-end --

-- object: food_categories_fk | type: CONSTRAINT --
-- ALTER TABLE public.deals DROP CONSTRAINT IF EXISTS food_categories_fk CASCADE;
ALTER TABLE public.deals ADD CONSTRAINT food_categories_fk FOREIGN KEY (food_category)
REFERENCES public.food_categories (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.dealer_deals | type: TABLE --
-- DROP TABLE IF EXISTS public.dealer_deals;
CREATE TABLE public.dealer_deals(
	dealer smallint NOT NULL,
	deal integer NOT NULL,
	CONSTRAINT dealer_deals_pk PRIMARY KEY (dealer,deal)
	USING INDEX TABLESPACE pg_default

)
TABLESPACE pg_default;
-- ddl-end --
ALTER TABLE public.dealer_deals OWNER TO postgres;
-- ddl-end --

-- object: public.outlet_deals | type: TABLE --
-- DROP TABLE IF EXISTS public.outlet_deals;
CREATE TABLE public.outlet_deals(
	outlet integer NOT NULL,
	deal integer NOT NULL,
	CONSTRAINT outlet_deals_pk PRIMARY KEY (outlet,deal)
	USING INDEX TABLESPACE pg_default

)
TABLESPACE pg_default;
-- ddl-end --
ALTER TABLE public.outlet_deals OWNER TO postgres;
-- ddl-end --

-- object: dealers_fk | type: CONSTRAINT --
-- ALTER TABLE public.dealer_deals DROP CONSTRAINT IF EXISTS dealers_fk CASCADE;
ALTER TABLE public.dealer_deals ADD CONSTRAINT dealers_fk FOREIGN KEY (dealer)
REFERENCES public.dealers (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: deals_fk | type: CONSTRAINT --
-- ALTER TABLE public.dealer_deals DROP CONSTRAINT IF EXISTS deals_fk CASCADE;
ALTER TABLE public.dealer_deals ADD CONSTRAINT deals_fk FOREIGN KEY (deal)
REFERENCES public.deals (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: dealer_deals_uq | type: CONSTRAINT --
-- ALTER TABLE public.dealer_deals DROP CONSTRAINT IF EXISTS dealer_deals_uq CASCADE;
ALTER TABLE public.dealer_deals ADD CONSTRAINT dealer_deals_uq UNIQUE (deal);
-- ddl-end --

-- object: outlets_fk | type: CONSTRAINT --
-- ALTER TABLE public.outlet_deals DROP CONSTRAINT IF EXISTS outlets_fk CASCADE;
ALTER TABLE public.outlet_deals ADD CONSTRAINT outlets_fk FOREIGN KEY (outlet)
REFERENCES public.outlets (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: deals_fk | type: CONSTRAINT --
-- ALTER TABLE public.outlet_deals DROP CONSTRAINT IF EXISTS deals_fk CASCADE;
ALTER TABLE public.outlet_deals ADD CONSTRAINT deals_fk FOREIGN KEY (deal)
REFERENCES public.deals (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: outlet_deals_uq | type: CONSTRAINT --
-- ALTER TABLE public.outlet_deals DROP CONSTRAINT IF EXISTS outlet_deals_uq CASCADE;
ALTER TABLE public.outlet_deals ADD CONSTRAINT outlet_deals_uq UNIQUE (deal);
-- ddl-end --

-- object: dealers_fk | type: CONSTRAINT --
-- ALTER TABLE public.outlets DROP CONSTRAINT IF EXISTS dealers_fk CASCADE;
ALTER TABLE public.outlets ADD CONSTRAINT dealers_fk FOREIGN KEY (dealer)
REFERENCES public.dealers (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: public.opening_hour_ids | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.opening_hour_ids CASCADE;
CREATE SEQUENCE public.opening_hour_ids
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.opening_hour_ids OWNER TO postgres;
-- ddl-end --

-- object: public.opening_hours | type: TABLE --
-- DROP TABLE IF EXISTS public.opening_hours;
CREATE TABLE public.opening_hours(
	id integer NOT NULL DEFAULT nextval('public.opening_hour_ids'::regclass),
	outlet integer NOT NULL,
	weekday smallint NOT NULL,
	opens time NOT NULL,
	closes time NOT NULL,
	valid_from date,
	valid_through date,
	CONSTRAINT opening_hours_pk PRIMARY KEY (id)

)
TABLESPACE pg_default;
-- ddl-end --
ALTER TABLE public.opening_hours OWNER TO postgres;
-- ddl-end --

-- object: public.login_ids | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.login_ids CASCADE;
CREATE SEQUENCE public.login_ids
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.login_ids OWNER TO postgres;
-- ddl-end --

-- object: public.logins | type: TABLE --
-- DROP TABLE IF EXISTS public.logins CASCADE;
CREATE TABLE public.logins(
	id smallint NOT NULL DEFAULT nextval('public.login_ids'::regclass),
	email varchar(254) NOT NULL,
	credential varchar(128) NOT NULL,
	dealer smallint,
	CONSTRAINT unique_emails UNIQUE (email),
	CONSTRAINT login_pk PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.logins OWNER TO postgres;
-- ddl-end --

-- object: outlets_fk | type: CONSTRAINT --
-- ALTER TABLE public.opening_hours DROP CONSTRAINT IF EXISTS outlets_fk CASCADE;
ALTER TABLE public.opening_hours ADD CONSTRAINT outlets_fk FOREIGN KEY (outlet)
REFERENCES public.outlets (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: dealers_fk | type: CONSTRAINT --
-- ALTER TABLE public.logins DROP CONSTRAINT IF EXISTS dealers_fk CASCADE;
ALTER TABLE public.logins ADD CONSTRAINT dealers_fk FOREIGN KEY (dealer)
REFERENCES public.dealers (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: logins_uq | type: CONSTRAINT --
-- ALTER TABLE public.logins DROP CONSTRAINT IF EXISTS logins_uq CASCADE;
ALTER TABLE public.logins ADD CONSTRAINT logins_uq UNIQUE (dealer);
-- ddl-end --

--
-- Populate tables with test data
--

INSERT INTO public.logins(email, credential) VALUES ('tropical.tux@gmail.com', 'foobar');

