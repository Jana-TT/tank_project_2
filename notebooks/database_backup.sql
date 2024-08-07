PGDMP     2                     |            postgres     15.1 (Ubuntu 15.1-1.pgdg20.04+1)    15.7 (Debian 15.7-1.pgdg120+1) �              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    5    postgres    DATABASE     p   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';
    DROP DATABASE postgres;
                postgres    false            #           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4130            $           0    0    DATABASE postgres    ACL     2   GRANT ALL ON DATABASE postgres TO dashboard_user;
                   postgres    false    4130            %           0    0    postgres    DATABASE PROPERTIES     �   ALTER DATABASE postgres SET "app.settings.jwt_secret" TO 'CmTSTrXF9uTp8q7nU1OLuogNQabxN5uUJnHzSpUZhSIAqBx+ZpLrSD6+/HItbMOo6iiGyQ49K7z2mxQDe6NL/A==';
ALTER DATABASE postgres SET "app.settings.jwt_exp" TO '3600';
                     postgres    false                        2615    16488    auth    SCHEMA        CREATE SCHEMA auth;
    DROP SCHEMA auth;
                supabase_admin    false            &           0    0    SCHEMA auth    ACL        GRANT USAGE ON SCHEMA auth TO anon;
GRANT USAGE ON SCHEMA auth TO authenticated;
GRANT USAGE ON SCHEMA auth TO service_role;
GRANT ALL ON SCHEMA auth TO supabase_auth_admin;
GRANT ALL ON SCHEMA auth TO dashboard_user;
GRANT ALL ON SCHEMA auth TO postgres;
                   supabase_admin    false    16                        2615    16387 
   extensions    SCHEMA        CREATE SCHEMA extensions;
    DROP SCHEMA extensions;
                postgres    false            '           0    0    SCHEMA extensions    ACL     �   GRANT USAGE ON SCHEMA extensions TO anon;
GRANT USAGE ON SCHEMA extensions TO authenticated;
GRANT USAGE ON SCHEMA extensions TO service_role;
GRANT ALL ON SCHEMA extensions TO dashboard_user;
                   postgres    false    14                        2615    29011    fdm_dba    SCHEMA        CREATE SCHEMA fdm_dba;
    DROP SCHEMA fdm_dba;
                postgres    false                        2615    16618    graphql    SCHEMA        CREATE SCHEMA graphql;
    DROP SCHEMA graphql;
                supabase_admin    false                        2615    16607    graphql_public    SCHEMA        CREATE SCHEMA graphql_public;
    DROP SCHEMA graphql_public;
                supabase_admin    false                        2615    29012    mrte_dba    SCHEMA        CREATE SCHEMA mrte_dba;
    DROP SCHEMA mrte_dba;
                postgres    false                        2615    16385 	   pgbouncer    SCHEMA        CREATE SCHEMA pgbouncer;
    DROP SCHEMA pgbouncer;
             	   pgbouncer    false                        2615    16645    pgsodium    SCHEMA        CREATE SCHEMA pgsodium;
    DROP SCHEMA pgsodium;
                supabase_admin    false                        3079    16646    pgsodium 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS pgsodium WITH SCHEMA pgsodium;
    DROP EXTENSION pgsodium;
                   false    17            (           0    0    EXTENSION pgsodium    COMMENT     \   COMMENT ON EXTENSION pgsodium IS 'Pgsodium is a modern cryptography library for Postgres.';
                        false    5            )           0    0    SCHEMA public    ACL     �   GRANT USAGE ON SCHEMA public TO postgres;
GRANT USAGE ON SCHEMA public TO anon;
GRANT USAGE ON SCHEMA public TO authenticated;
GRANT USAGE ON SCHEMA public TO service_role;
                   pg_database_owner    false    12                        2615    16599    realtime    SCHEMA        CREATE SCHEMA realtime;
    DROP SCHEMA realtime;
                supabase_admin    false            *           0    0    SCHEMA realtime    ACL     �   GRANT USAGE ON SCHEMA realtime TO postgres;
GRANT USAGE ON SCHEMA realtime TO anon;
GRANT USAGE ON SCHEMA realtime TO authenticated;
GRANT USAGE ON SCHEMA realtime TO service_role;
GRANT ALL ON SCHEMA realtime TO supabase_realtime_admin;
                   supabase_admin    false    13                        2615    29013    sdm_dba    SCHEMA        CREATE SCHEMA sdm_dba;
    DROP SCHEMA sdm_dba;
                postgres    false                        2615    16536    storage    SCHEMA        CREATE SCHEMA storage;
    DROP SCHEMA storage;
                supabase_admin    false            +           0    0    SCHEMA storage    ACL       GRANT ALL ON SCHEMA storage TO postgres;
GRANT USAGE ON SCHEMA storage TO anon;
GRANT USAGE ON SCHEMA storage TO authenticated;
GRANT USAGE ON SCHEMA storage TO service_role;
GRANT ALL ON SCHEMA storage TO supabase_storage_admin;
GRANT ALL ON SCHEMA storage TO dashboard_user;
                   supabase_admin    false    15                        2615    29014    tank    SCHEMA        CREATE SCHEMA tank;
    DROP SCHEMA tank;
                postgres    false                        2615    16949    vault    SCHEMA        CREATE SCHEMA vault;
    DROP SCHEMA vault;
                supabase_admin    false                        3079    16982 
   pg_graphql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS pg_graphql WITH SCHEMA graphql;
    DROP EXTENSION pg_graphql;
                   false    21            ,           0    0    EXTENSION pg_graphql    COMMENT     B   COMMENT ON EXTENSION pg_graphql IS 'pg_graphql: GraphQL support';
                        false    7                        3079    16388    pg_stat_statements 	   EXTENSION     J   CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA extensions;
 #   DROP EXTENSION pg_stat_statements;
                   false    14            -           0    0    EXTENSION pg_stat_statements    COMMENT     u   COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';
                        false    4                        3079    16434    pgcrypto 	   EXTENSION     @   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA extensions;
    DROP EXTENSION pgcrypto;
                   false    14            .           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    3                        3079    16471    pgjwt 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS pgjwt WITH SCHEMA extensions;
    DROP EXTENSION pgjwt;
                   false    14    3            /           0    0    EXTENSION pgjwt    COMMENT     C   COMMENT ON EXTENSION pgjwt IS 'JSON Web Token API for Postgresql';
                        false    2                        3079    16950    supabase_vault 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS supabase_vault WITH SCHEMA vault;
    DROP EXTENSION supabase_vault;
                   false    5    19            0           0    0    EXTENSION supabase_vault    COMMENT     C   COMMENT ON EXTENSION supabase_vault IS 'Supabase Vault Extension';
                        false    6            �           1247    28440 	   aal_level    TYPE     K   CREATE TYPE auth.aal_level AS ENUM (
    'aal1',
    'aal2',
    'aal3'
);
    DROP TYPE auth.aal_level;
       auth          supabase_auth_admin    false    16            �           1247    28581    code_challenge_method    TYPE     L   CREATE TYPE auth.code_challenge_method AS ENUM (
    's256',
    'plain'
);
 &   DROP TYPE auth.code_challenge_method;
       auth          supabase_auth_admin    false    16            �           1247    28434    factor_status    TYPE     M   CREATE TYPE auth.factor_status AS ENUM (
    'unverified',
    'verified'
);
    DROP TYPE auth.factor_status;
       auth          supabase_auth_admin    false    16            �           1247    28428    factor_type    TYPE     E   CREATE TYPE auth.factor_type AS ENUM (
    'totp',
    'webauthn'
);
    DROP TYPE auth.factor_type;
       auth          supabase_auth_admin    false    16            �           1247    29147    one_time_token_type    TYPE     �   CREATE TYPE auth.one_time_token_type AS ENUM (
    'confirmation_token',
    'reauthentication_token',
    'recovery_token',
    'email_change_token_new',
    'email_change_token_current',
    'phone_change_token'
);
 $   DROP TYPE auth.one_time_token_type;
       auth          supabase_auth_admin    false    16                       1247    28756    action    TYPE     o   CREATE TYPE realtime.action AS ENUM (
    'INSERT',
    'UPDATE',
    'DELETE',
    'TRUNCATE',
    'ERROR'
);
    DROP TYPE realtime.action;
       realtime          supabase_admin    false    13                       1247    28716    equality_op    TYPE     v   CREATE TYPE realtime.equality_op AS ENUM (
    'eq',
    'neq',
    'lt',
    'lte',
    'gt',
    'gte',
    'in'
);
     DROP TYPE realtime.equality_op;
       realtime          supabase_admin    false    13                       1247    28731    user_defined_filter    TYPE     j   CREATE TYPE realtime.user_defined_filter AS (
	column_name text,
	op realtime.equality_op,
	value text
);
 (   DROP TYPE realtime.user_defined_filter;
       realtime          supabase_admin    false    13    1285                       1247    28798 
   wal_column    TYPE     �   CREATE TYPE realtime.wal_column AS (
	name text,
	type_name text,
	type_oid oid,
	value jsonb,
	is_pkey boolean,
	is_selectable boolean
);
    DROP TYPE realtime.wal_column;
       realtime          supabase_admin    false    13                       1247    28769    wal_rls    TYPE     s   CREATE TYPE realtime.wal_rls AS (
	wal jsonb,
	is_rls_enabled boolean,
	subscription_ids uuid[],
	errors text[]
);
    DROP TYPE realtime.wal_rls;
       realtime          supabase_admin    false    13            h           1255    16534    email()    FUNCTION       CREATE FUNCTION auth.email() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.email', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'email')
  )::text
$$;
    DROP FUNCTION auth.email();
       auth          supabase_auth_admin    false    16            1           0    0    FUNCTION email()    COMMENT     X   COMMENT ON FUNCTION auth.email() IS 'Deprecated. Use auth.jwt() -> ''email'' instead.';
          auth          supabase_auth_admin    false    360            2           0    0    FUNCTION email()    ACL     6   GRANT ALL ON FUNCTION auth.email() TO dashboard_user;
          auth          supabase_auth_admin    false    360                        1255    28410    jwt()    FUNCTION     �   CREATE FUNCTION auth.jwt() RETURNS jsonb
    LANGUAGE sql STABLE
    AS $$
  select 
    coalesce(
        nullif(current_setting('request.jwt.claim', true), ''),
        nullif(current_setting('request.jwt.claims', true), '')
    )::jsonb
$$;
    DROP FUNCTION auth.jwt();
       auth          supabase_auth_admin    false    16            3           0    0    FUNCTION jwt()    ACL     b   GRANT ALL ON FUNCTION auth.jwt() TO postgres;
GRANT ALL ON FUNCTION auth.jwt() TO dashboard_user;
          auth          supabase_auth_admin    false    512            g           1255    16533    role()    FUNCTION        CREATE FUNCTION auth.role() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.role', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'role')
  )::text
$$;
    DROP FUNCTION auth.role();
       auth          supabase_auth_admin    false    16            4           0    0    FUNCTION role()    COMMENT     V   COMMENT ON FUNCTION auth.role() IS 'Deprecated. Use auth.jwt() -> ''role'' instead.';
          auth          supabase_auth_admin    false    359            5           0    0    FUNCTION role()    ACL     5   GRANT ALL ON FUNCTION auth.role() TO dashboard_user;
          auth          supabase_auth_admin    false    359            f           1255    16532    uid()    FUNCTION     �   CREATE FUNCTION auth.uid() RETURNS uuid
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.sub', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'sub')
  )::uuid
$$;
    DROP FUNCTION auth.uid();
       auth          supabase_auth_admin    false    16            6           0    0    FUNCTION uid()    COMMENT     T   COMMENT ON FUNCTION auth.uid() IS 'Deprecated. Use auth.jwt() -> ''sub'' instead.';
          auth          supabase_auth_admin    false    358            7           0    0    FUNCTION uid()    ACL     4   GRANT ALL ON FUNCTION auth.uid() TO dashboard_user;
          auth          supabase_auth_admin    false    358            8           0    0 D   FUNCTION algorithm_sign(signables text, secret text, algorithm text)    ACL     Y  REVOKE ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) TO dashboard_user;
       
   extensions          postgres    false    354            9           0    0    FUNCTION armor(bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.armor(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO dashboard_user;
       
   extensions          postgres    false    348            :           0    0 %   FUNCTION armor(bytea, text[], text[])    ACL     �   REVOKE ALL ON FUNCTION extensions.armor(bytea, text[], text[]) FROM postgres;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO dashboard_user;
       
   extensions          postgres    false    349            ;           0    0    FUNCTION crypt(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.crypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO dashboard_user;
       
   extensions          postgres    false    320            <           0    0    FUNCTION dearmor(text)    ACL     �   REVOKE ALL ON FUNCTION extensions.dearmor(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO dashboard_user;
       
   extensions          postgres    false    350            =           0    0 $   FUNCTION decrypt(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions          postgres    false    324            >           0    0 .   FUNCTION decrypt_iv(bytea, bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;
       
   extensions          postgres    false    326            ?           0    0    FUNCTION digest(bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.digest(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO dashboard_user;
       
   extensions          postgres    false    317            @           0    0    FUNCTION digest(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.digest(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO dashboard_user;
       
   extensions          postgres    false    316            A           0    0 $   FUNCTION encrypt(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions          postgres    false    323            B           0    0 .   FUNCTION encrypt_iv(bytea, bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;
       
   extensions          postgres    false    325            C           0    0 "   FUNCTION gen_random_bytes(integer)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_random_bytes(integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO dashboard_user;
       
   extensions          postgres    false    327            D           0    0    FUNCTION gen_random_uuid()    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_random_uuid() FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO dashboard_user;
       
   extensions          postgres    false    328            E           0    0    FUNCTION gen_salt(text)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_salt(text) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO dashboard_user;
       
   extensions          postgres    false    321            F           0    0     FUNCTION gen_salt(text, integer)    ACL     �   REVOKE ALL ON FUNCTION extensions.gen_salt(text, integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO dashboard_user;
       
   extensions          postgres    false    322            i           1255    16591    grant_pg_cron_access()    FUNCTION     �  CREATE FUNCTION extensions.grant_pg_cron_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_cron'
  )
  THEN
    grant usage on schema cron to postgres with grant option;

    alter default privileges in schema cron grant all on tables to postgres with grant option;
    alter default privileges in schema cron grant all on functions to postgres with grant option;
    alter default privileges in schema cron grant all on sequences to postgres with grant option;

    alter default privileges for user supabase_admin in schema cron grant all
        on sequences to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on tables to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on functions to postgres with grant option;

    grant all privileges on all tables in schema cron to postgres with grant option;
    revoke all on table cron.job from postgres;
    grant select on table cron.job to postgres with grant option;
  END IF;
END;
$$;
 1   DROP FUNCTION extensions.grant_pg_cron_access();
    
   extensions          postgres    false    14            G           0    0    FUNCTION grant_pg_cron_access()    COMMENT     U   COMMENT ON FUNCTION extensions.grant_pg_cron_access() IS 'Grants access to pg_cron';
       
   extensions          postgres    false    361            H           0    0    FUNCTION grant_pg_cron_access()    ACL     �   REVOKE ALL ON FUNCTION extensions.grant_pg_cron_access() FROM postgres;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO dashboard_user;
       
   extensions          postgres    false    361            m           1255    16612    grant_pg_graphql_access()    FUNCTION     i	  CREATE FUNCTION extensions.grant_pg_graphql_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
DECLARE
    func_is_graphql_resolve bool;
BEGIN
    func_is_graphql_resolve = (
        SELECT n.proname = 'resolve'
        FROM pg_event_trigger_ddl_commands() AS ev
        LEFT JOIN pg_catalog.pg_proc AS n
        ON ev.objid = n.oid
    );

    IF func_is_graphql_resolve
    THEN
        -- Update public wrapper to pass all arguments through to the pg_graphql resolve func
        DROP FUNCTION IF EXISTS graphql_public.graphql;
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language sql
        as $$
            select graphql.resolve(
                query := query,
                variables := coalesce(variables, '{}'),
                "operationName" := "operationName",
                extensions := extensions
            );
        $$;

        -- This hook executes when `graphql.resolve` is created. That is not necessarily the last
        -- function in the extension so we need to grant permissions on existing entities AND
        -- update default permissions to any others that are created after `graphql.resolve`
        grant usage on schema graphql to postgres, anon, authenticated, service_role;
        grant select on all tables in schema graphql to postgres, anon, authenticated, service_role;
        grant execute on all functions in schema graphql to postgres, anon, authenticated, service_role;
        grant all on all sequences in schema graphql to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on tables to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on functions to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on sequences to postgres, anon, authenticated, service_role;

        -- Allow postgres role to allow granting usage on graphql and graphql_public schemas to custom roles
        grant usage on schema graphql_public to postgres with grant option;
        grant usage on schema graphql to postgres with grant option;
    END IF;

END;
$_$;
 4   DROP FUNCTION extensions.grant_pg_graphql_access();
    
   extensions          supabase_admin    false    14            I           0    0 "   FUNCTION grant_pg_graphql_access()    COMMENT     [   COMMENT ON FUNCTION extensions.grant_pg_graphql_access() IS 'Grants access to pg_graphql';
       
   extensions          supabase_admin    false    365            J           0    0 "   FUNCTION grant_pg_graphql_access()    ACL     Z   GRANT ALL ON FUNCTION extensions.grant_pg_graphql_access() TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    365            j           1255    16593    grant_pg_net_access()    FUNCTION     �  CREATE FUNCTION extensions.grant_pg_net_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_net'
  )
  THEN
    IF NOT EXISTS (
      SELECT 1
      FROM pg_roles
      WHERE rolname = 'supabase_functions_admin'
    )
    THEN
      CREATE USER supabase_functions_admin NOINHERIT CREATEROLE LOGIN NOREPLICATION;
    END IF;

    GRANT USAGE ON SCHEMA net TO supabase_functions_admin, postgres, anon, authenticated, service_role;

    ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;
    ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;

    ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;
    ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;

    REVOKE ALL ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;
    REVOKE ALL ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;

    GRANT EXECUTE ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
    GRANT EXECUTE ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
  END IF;
END;
$$;
 0   DROP FUNCTION extensions.grant_pg_net_access();
    
   extensions          postgres    false    14            K           0    0    FUNCTION grant_pg_net_access()    COMMENT     S   COMMENT ON FUNCTION extensions.grant_pg_net_access() IS 'Grants access to pg_net';
       
   extensions          postgres    false    362            L           0    0    FUNCTION grant_pg_net_access()    ACL     �   REVOKE ALL ON FUNCTION extensions.grant_pg_net_access() FROM postgres;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO dashboard_user;
       
   extensions          postgres    false    362            M           0    0 !   FUNCTION hmac(bytea, bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.hmac(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO dashboard_user;
       
   extensions          postgres    false    319            N           0    0    FUNCTION hmac(text, text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.hmac(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO dashboard_user;
       
   extensions          postgres    false    318            O           0    0 U  FUNCTION pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision)    ACL     �  REVOKE ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) TO dashboard_user;
       
   extensions          postgres    false    315            P           0    0 ^   FUNCTION pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone)    ACL     �  REVOKE ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO dashboard_user;
       
   extensions          postgres    false    314            Q           0    0 G   FUNCTION pg_stat_statements_reset(userid oid, dbid oid, queryid bigint)    ACL     b  REVOKE ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) FROM postgres;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) TO dashboard_user;
       
   extensions          postgres    false    313            R           0    0 >   FUNCTION pgp_armor_headers(text, OUT key text, OUT value text)    ACL     G  REVOKE ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO dashboard_user;
       
   extensions          postgres    false    351            S           0    0    FUNCTION pgp_key_id(bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_key_id(bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO dashboard_user;
       
   extensions          postgres    false    347            T           0    0 &   FUNCTION pgp_pub_decrypt(bytea, bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO dashboard_user;
       
   extensions          postgres    false    341            U           0    0 ,   FUNCTION pgp_pub_decrypt(bytea, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions          postgres    false    343            V           0    0 2   FUNCTION pgp_pub_decrypt(bytea, bytea, text, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO dashboard_user;
       
   extensions          postgres    false    345            W           0    0 ,   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO dashboard_user;
       
   extensions          postgres    false    342            X           0    0 2   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO dashboard_user;
       
   extensions          postgres    false    344            Y           0    0 8   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text, text)    ACL     5  REVOKE ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO dashboard_user;
       
   extensions          postgres    false    346            Z           0    0 %   FUNCTION pgp_pub_encrypt(text, bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO dashboard_user;
       
   extensions          postgres    false    337            [           0    0 +   FUNCTION pgp_pub_encrypt(text, bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO dashboard_user;
       
   extensions          postgres    false    339            \           0    0 ,   FUNCTION pgp_pub_encrypt_bytea(bytea, bytea)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO dashboard_user;
       
   extensions          postgres    false    338            ]           0    0 2   FUNCTION pgp_pub_encrypt_bytea(bytea, bytea, text)    ACL     #  REVOKE ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO dashboard_user;
       
   extensions          postgres    false    340            ^           0    0 %   FUNCTION pgp_sym_decrypt(bytea, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO dashboard_user;
       
   extensions          postgres    false    333            _           0    0 +   FUNCTION pgp_sym_decrypt(bytea, text, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO dashboard_user;
       
   extensions          postgres    false    335            `           0    0 +   FUNCTION pgp_sym_decrypt_bytea(bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO dashboard_user;
       
   extensions          postgres    false    334            a           0    0 1   FUNCTION pgp_sym_decrypt_bytea(bytea, text, text)    ACL        REVOKE ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO dashboard_user;
       
   extensions          postgres    false    336            b           0    0 $   FUNCTION pgp_sym_encrypt(text, text)    ACL     �   REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO dashboard_user;
       
   extensions          postgres    false    329            c           0    0 *   FUNCTION pgp_sym_encrypt(text, text, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO dashboard_user;
       
   extensions          postgres    false    331            d           0    0 +   FUNCTION pgp_sym_encrypt_bytea(bytea, text)    ACL       REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO dashboard_user;
       
   extensions          postgres    false    330            e           0    0 1   FUNCTION pgp_sym_encrypt_bytea(bytea, text, text)    ACL        REVOKE ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) FROM postgres;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO dashboard_user;
       
   extensions          postgres    false    332            k           1255    16603    pgrst_ddl_watch()    FUNCTION     >  CREATE FUNCTION extensions.pgrst_ddl_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  cmd record;
BEGIN
  FOR cmd IN SELECT * FROM pg_event_trigger_ddl_commands()
  LOOP
    IF cmd.command_tag IN (
      'CREATE SCHEMA', 'ALTER SCHEMA'
    , 'CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO', 'ALTER TABLE'
    , 'CREATE FOREIGN TABLE', 'ALTER FOREIGN TABLE'
    , 'CREATE VIEW', 'ALTER VIEW'
    , 'CREATE MATERIALIZED VIEW', 'ALTER MATERIALIZED VIEW'
    , 'CREATE FUNCTION', 'ALTER FUNCTION'
    , 'CREATE TRIGGER'
    , 'CREATE TYPE', 'ALTER TYPE'
    , 'CREATE RULE'
    , 'COMMENT'
    )
    -- don't notify in case of CREATE TEMP table or other objects created on pg_temp
    AND cmd.schema_name is distinct from 'pg_temp'
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;
 ,   DROP FUNCTION extensions.pgrst_ddl_watch();
    
   extensions          supabase_admin    false    14            f           0    0    FUNCTION pgrst_ddl_watch()    ACL     R   GRANT ALL ON FUNCTION extensions.pgrst_ddl_watch() TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    363            l           1255    16604    pgrst_drop_watch()    FUNCTION       CREATE FUNCTION extensions.pgrst_drop_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  obj record;
BEGIN
  FOR obj IN SELECT * FROM pg_event_trigger_dropped_objects()
  LOOP
    IF obj.object_type IN (
      'schema'
    , 'table'
    , 'foreign table'
    , 'view'
    , 'materialized view'
    , 'function'
    , 'trigger'
    , 'type'
    , 'rule'
    )
    AND obj.is_temporary IS false -- no pg_temp objects
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;
 -   DROP FUNCTION extensions.pgrst_drop_watch();
    
   extensions          supabase_admin    false    14            g           0    0    FUNCTION pgrst_drop_watch()    ACL     S   GRANT ALL ON FUNCTION extensions.pgrst_drop_watch() TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    364            n           1255    16614    set_graphql_placeholder()    FUNCTION     r  CREATE FUNCTION extensions.set_graphql_placeholder() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
    DECLARE
    graphql_is_dropped bool;
    BEGIN
    graphql_is_dropped = (
        SELECT ev.schema_name = 'graphql_public'
        FROM pg_event_trigger_dropped_objects() AS ev
        WHERE ev.schema_name = 'graphql_public'
    );

    IF graphql_is_dropped
    THEN
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language plpgsql
        as $$
            DECLARE
                server_version float;
            BEGIN
                server_version = (SELECT (SPLIT_PART((select version()), ' ', 2))::float);

                IF server_version >= 14 THEN
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql extension is not enabled.'
                            )
                        )
                    );
                ELSE
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql is only available on projects running Postgres 14 onwards.'
                            )
                        )
                    );
                END IF;
            END;
        $$;
    END IF;

    END;
$_$;
 4   DROP FUNCTION extensions.set_graphql_placeholder();
    
   extensions          supabase_admin    false    14            h           0    0 "   FUNCTION set_graphql_placeholder()    COMMENT     |   COMMENT ON FUNCTION extensions.set_graphql_placeholder() IS 'Reintroduces placeholder function for graphql_public.graphql';
       
   extensions          supabase_admin    false    366            i           0    0 "   FUNCTION set_graphql_placeholder()    ACL     Z   GRANT ALL ON FUNCTION extensions.set_graphql_placeholder() TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    366            j           0    0 8   FUNCTION sign(payload json, secret text, algorithm text)    ACL     5  REVOKE ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) TO dashboard_user;
       
   extensions          postgres    false    355            k           0    0 "   FUNCTION try_cast_double(inp text)    ACL     �   REVOKE ALL ON FUNCTION extensions.try_cast_double(inp text) FROM postgres;
GRANT ALL ON FUNCTION extensions.try_cast_double(inp text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.try_cast_double(inp text) TO dashboard_user;
       
   extensions          postgres    false    357            l           0    0    FUNCTION url_decode(data text)    ACL     �   REVOKE ALL ON FUNCTION extensions.url_decode(data text) FROM postgres;
GRANT ALL ON FUNCTION extensions.url_decode(data text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.url_decode(data text) TO dashboard_user;
       
   extensions          postgres    false    353            m           0    0    FUNCTION url_encode(data bytea)    ACL     �   REVOKE ALL ON FUNCTION extensions.url_encode(data bytea) FROM postgres;
GRANT ALL ON FUNCTION extensions.url_encode(data bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.url_encode(data bytea) TO dashboard_user;
       
   extensions          postgres    false    352            n           0    0 8   FUNCTION verify(token text, secret text, algorithm text)    ACL     5  REVOKE ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) FROM postgres;
GRANT ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) TO dashboard_user;
       
   extensions          postgres    false    356            o           0    0 )   FUNCTION comment_directive(comment_ text)    ACL     5  GRANT ALL ON FUNCTION graphql.comment_directive(comment_ text) TO postgres;
GRANT ALL ON FUNCTION graphql.comment_directive(comment_ text) TO anon;
GRANT ALL ON FUNCTION graphql.comment_directive(comment_ text) TO authenticated;
GRANT ALL ON FUNCTION graphql.comment_directive(comment_ text) TO service_role;
          graphql          supabase_admin    false    508            p           0    0     FUNCTION exception(message text)    ACL       GRANT ALL ON FUNCTION graphql.exception(message text) TO postgres;
GRANT ALL ON FUNCTION graphql.exception(message text) TO anon;
GRANT ALL ON FUNCTION graphql.exception(message text) TO authenticated;
GRANT ALL ON FUNCTION graphql.exception(message text) TO service_role;
          graphql          supabase_admin    false    509            q           0    0    FUNCTION get_schema_version()    ACL       GRANT ALL ON FUNCTION graphql.get_schema_version() TO postgres;
GRANT ALL ON FUNCTION graphql.get_schema_version() TO anon;
GRANT ALL ON FUNCTION graphql.get_schema_version() TO authenticated;
GRANT ALL ON FUNCTION graphql.get_schema_version() TO service_role;
          graphql          supabase_admin    false    511            r           0    0 #   FUNCTION increment_schema_version()    ACL       GRANT ALL ON FUNCTION graphql.increment_schema_version() TO postgres;
GRANT ALL ON FUNCTION graphql.increment_schema_version() TO anon;
GRANT ALL ON FUNCTION graphql.increment_schema_version() TO authenticated;
GRANT ALL ON FUNCTION graphql.increment_schema_version() TO service_role;
          graphql          supabase_admin    false    510            s           0    0 U   FUNCTION graphql("operationName" text, query text, variables jsonb, extensions jsonb)    ACL       GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO postgres;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO anon;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO authenticated;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO service_role;
          graphql_public          supabase_admin    false    507            t           0    0    FUNCTION lo_export(oid, text)    ACL     �   REVOKE ALL ON FUNCTION pg_catalog.lo_export(oid, text) FROM postgres;
GRANT ALL ON FUNCTION pg_catalog.lo_export(oid, text) TO supabase_admin;
       
   pg_catalog          supabase_admin    false    299            u           0    0    FUNCTION lo_import(text)    ACL     �   REVOKE ALL ON FUNCTION pg_catalog.lo_import(text) FROM postgres;
GRANT ALL ON FUNCTION pg_catalog.lo_import(text) TO supabase_admin;
       
   pg_catalog          supabase_admin    false    298            v           0    0    FUNCTION lo_import(text, oid)    ACL     �   REVOKE ALL ON FUNCTION pg_catalog.lo_import(text, oid) FROM postgres;
GRANT ALL ON FUNCTION pg_catalog.lo_import(text, oid) TO supabase_admin;
       
   pg_catalog          supabase_admin    false    300            8           1255    16386    get_auth(text)    FUNCTION     J  CREATE FUNCTION pgbouncer.get_auth(p_usename text) RETURNS TABLE(username text, password text)
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
    RAISE WARNING 'PgBouncer auth request: %', p_usename;

    RETURN QUERY
    SELECT usename::TEXT, passwd::TEXT FROM pg_catalog.pg_shadow
    WHERE usename = p_usename;
END;
$$;
 2   DROP FUNCTION pgbouncer.get_auth(p_usename text);
    	   pgbouncer          postgres    false    11            w           0    0 !   FUNCTION get_auth(p_usename text)    ACL     �   REVOKE ALL ON FUNCTION pgbouncer.get_auth(p_usename text) FROM PUBLIC;
GRANT ALL ON FUNCTION pgbouncer.get_auth(p_usename text) TO pgbouncer;
       	   pgbouncer          postgres    false    312            x           0    0 ]   FUNCTION crypto_aead_det_decrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea)    ACL     �   GRANT ALL ON FUNCTION pgsodium.crypto_aead_det_decrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea) TO service_role;
          pgsodium          pgsodium_keymaker    false    469            y           0    0 ]   FUNCTION crypto_aead_det_encrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea)    ACL     �   GRANT ALL ON FUNCTION pgsodium.crypto_aead_det_encrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea) TO service_role;
          pgsodium          pgsodium_keymaker    false    468            z           0    0 !   FUNCTION crypto_aead_det_keygen()    ACL     I   GRANT ALL ON FUNCTION pgsodium.crypto_aead_det_keygen() TO service_role;
          pgsodium          supabase_admin    false    451                       1255    28791    apply_rls(jsonb, integer)    FUNCTION     f(  CREATE FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer DEFAULT (1024 * 1024)) RETURNS SETOF realtime.wal_rls
    LANGUAGE plpgsql
    AS $$
declare
-- Regclass of the table e.g. public.notes
entity_ regclass = (quote_ident(wal ->> 'schema') || '.' || quote_ident(wal ->> 'table'))::regclass;

-- I, U, D, T: insert, update ...
action realtime.action = (
    case wal ->> 'action'
        when 'I' then 'INSERT'
        when 'U' then 'UPDATE'
        when 'D' then 'DELETE'
        else 'ERROR'
    end
);

-- Is row level security enabled for the table
is_rls_enabled bool = relrowsecurity from pg_class where oid = entity_;

subscriptions realtime.subscription[] = array_agg(subs)
    from
        realtime.subscription subs
    where
        subs.entity = entity_;

-- Subscription vars
roles regrole[] = array_agg(distinct us.claims_role::text)
    from
        unnest(subscriptions) us;

working_role regrole;
claimed_role regrole;
claims jsonb;

subscription_id uuid;
subscription_has_access bool;
visible_to_subscription_ids uuid[] = '{}';

-- structured info for wal's columns
columns realtime.wal_column[];
-- previous identity values for update/delete
old_columns realtime.wal_column[];

error_record_exceeds_max_size boolean = octet_length(wal::text) > max_record_bytes;

-- Primary jsonb output for record
output jsonb;

begin
perform set_config('role', null, true);

columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'columns') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

old_columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'identity') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

for working_role in select * from unnest(roles) loop

    -- Update `is_selectable` for columns and old_columns
    columns =
        array_agg(
            (
                c.name,
                c.type_name,
                c.type_oid,
                c.value,
                c.is_pkey,
                pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
            )::realtime.wal_column
        )
        from
            unnest(columns) c;

    old_columns =
            array_agg(
                (
                    c.name,
                    c.type_name,
                    c.type_oid,
                    c.value,
                    c.is_pkey,
                    pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
                )::realtime.wal_column
            )
            from
                unnest(old_columns) c;

    if action <> 'DELETE' and count(1) = 0 from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            -- subscriptions is already filtered by entity
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 400: Bad Request, no primary key']
        )::realtime.wal_rls;

    -- The claims role does not have SELECT permission to the primary key of entity
    elsif action <> 'DELETE' and sum(c.is_selectable::int) <> count(1) from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 401: Unauthorized']
        )::realtime.wal_rls;

    else
        output = jsonb_build_object(
            'schema', wal ->> 'schema',
            'table', wal ->> 'table',
            'type', action,
            'commit_timestamp', to_char(
                ((wal ->> 'timestamp')::timestamptz at time zone 'utc'),
                'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"'
            ),
            'columns', (
                select
                    jsonb_agg(
                        jsonb_build_object(
                            'name', pa.attname,
                            'type', pt.typname
                        )
                        order by pa.attnum asc
                    )
                from
                    pg_attribute pa
                    join pg_type pt
                        on pa.atttypid = pt.oid
                where
                    attrelid = entity_
                    and attnum > 0
                    and pg_catalog.has_column_privilege(working_role, entity_, pa.attname, 'SELECT')
            )
        )
        -- Add "record" key for insert and update
        || case
            when action in ('INSERT', 'UPDATE') then
                jsonb_build_object(
                    'record',
                    (
                        select
                            jsonb_object_agg(
                                -- if unchanged toast, get column name and value from old record
                                coalesce((c).name, (oc).name),
                                case
                                    when (c).name is null then (oc).value
                                    else (c).value
                                end
                            )
                        from
                            unnest(columns) c
                            full outer join unnest(old_columns) oc
                                on (c).name = (oc).name
                        where
                            coalesce((c).is_selectable, (oc).is_selectable)
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                    )
                )
            else '{}'::jsonb
        end
        -- Add "old_record" key for update and delete
        || case
            when action = 'UPDATE' then
                jsonb_build_object(
                        'old_record',
                        (
                            select jsonb_object_agg((c).name, (c).value)
                            from unnest(old_columns) c
                            where
                                (c).is_selectable
                                and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                        )
                    )
            when action = 'DELETE' then
                jsonb_build_object(
                    'old_record',
                    (
                        select jsonb_object_agg((c).name, (c).value)
                        from unnest(old_columns) c
                        where
                            (c).is_selectable
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                            and ( not is_rls_enabled or (c).is_pkey ) -- if RLS enabled, we can't secure deletes so filter to pkey
                    )
                )
            else '{}'::jsonb
        end;

        -- Create the prepared statement
        if is_rls_enabled and action <> 'DELETE' then
            if (select 1 from pg_prepared_statements where name = 'walrus_rls_stmt' limit 1) > 0 then
                deallocate walrus_rls_stmt;
            end if;
            execute realtime.build_prepared_statement_sql('walrus_rls_stmt', entity_, columns);
        end if;

        visible_to_subscription_ids = '{}';

        for subscription_id, claims in (
                select
                    subs.subscription_id,
                    subs.claims
                from
                    unnest(subscriptions) subs
                where
                    subs.entity = entity_
                    and subs.claims_role = working_role
                    and (
                        realtime.is_visible_through_filters(columns, subs.filters)
                        or action = 'DELETE'
                    )
        ) loop

            if not is_rls_enabled or action = 'DELETE' then
                visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
            else
                -- Check if RLS allows the role to see the record
                perform
                    -- Trim leading and trailing quotes from working_role because set_config
                    -- doesn't recognize the role as valid if they are included
                    set_config('role', trim(both '"' from working_role::text), true),
                    set_config('request.jwt.claims', claims::text, true);

                execute 'execute walrus_rls_stmt' into subscription_has_access;

                if subscription_has_access then
                    visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
                end if;
            end if;
        end loop;

        perform set_config('role', null, true);

        return next (
            output,
            is_rls_enabled,
            visible_to_subscription_ids,
            case
                when error_record_exceeds_max_size then array['Error 413: Payload Too Large']
                else '{}'
            end
        )::realtime.wal_rls;

    end if;
end loop;

perform set_config('role', null, true);
end;
$$;
 G   DROP FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer);
       realtime          supabase_admin    false    13    1297            {           0    0 7   FUNCTION apply_rls(wal jsonb, max_record_bytes integer)    ACL     <  GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO service_role;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO supabase_realtime_admin;
          realtime          supabase_admin    false    527                       1255    28803 C   build_prepared_statement_sql(text, regclass, realtime.wal_column[])    FUNCTION     �  CREATE FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) RETURNS text
    LANGUAGE sql
    AS $$
      /*
      Builds a sql string that, if executed, creates a prepared statement to
      tests retrive a row from *entity* by its primary key columns.
      Example
          select realtime.build_prepared_statement_sql('public.notes', '{"id"}'::text[], '{"bigint"}'::text[])
      */
          select
      'prepare ' || prepared_statement_name || ' as
          select
              exists(
                  select
                      1
                  from
                      ' || entity || '
                  where
                      ' || string_agg(quote_ident(pkc.name) || '=' || quote_nullable(pkc.value #>> '{}') , ' and ') || '
              )'
          from
              unnest(columns) pkc
          where
              pkc.is_pkey
          group by
              entity
      $$;
 �   DROP FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]);
       realtime          supabase_admin    false    13    1300            |           0    0 s   FUNCTION build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[])    ACL     �  GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO postgres;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO anon;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO service_role;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO supabase_realtime_admin;
          realtime          supabase_admin    false    529                       1255    28753    cast(text, regtype)    FUNCTION       CREATE FUNCTION realtime."cast"(val text, type_ regtype) RETURNS jsonb
    LANGUAGE plpgsql IMMUTABLE
    AS $$
    declare
      res jsonb;
    begin
      execute format('select to_jsonb(%L::'|| type_::text || ')', val)  into res;
      return res;
    end
    $$;
 8   DROP FUNCTION realtime."cast"(val text, type_ regtype);
       realtime          supabase_admin    false    13            }           0    0 (   FUNCTION "cast"(val text, type_ regtype)    ACL     �  GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO postgres;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO dashboard_user;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO anon;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO authenticated;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO service_role;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO supabase_realtime_admin;
          realtime          supabase_admin    false    525                       1255    28748 <   check_equality_op(realtime.equality_op, regtype, text, text)    FUNCTION     U  CREATE FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) RETURNS boolean
    LANGUAGE plpgsql IMMUTABLE
    AS $$
      /*
      Casts *val_1* and *val_2* as type *type_* and check the *op* condition for truthiness
      */
      declare
          op_symbol text = (
              case
                  when op = 'eq' then '='
                  when op = 'neq' then '!='
                  when op = 'lt' then '<'
                  when op = 'lte' then '<='
                  when op = 'gt' then '>'
                  when op = 'gte' then '>='
                  when op = 'in' then '= any'
                  else 'UNKNOWN OP'
              end
          );
          res boolean;
      begin
          execute format(
              'select %L::'|| type_::text || ' ' || op_symbol
              || ' ( %L::'
              || (
                  case
                      when op = 'in' then type_::text || '[]'
                      else type_::text end
              )
              || ')', val_1, val_2) into res;
          return res;
      end;
      $$;
 j   DROP FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text);
       realtime          supabase_admin    false    1285    13            ~           0    0 Z   FUNCTION check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text)    ACL       GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO postgres;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO anon;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO authenticated;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO service_role;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO supabase_realtime_admin;
          realtime          supabase_admin    false    524                       1255    28799 Q   is_visible_through_filters(realtime.wal_column[], realtime.user_defined_filter[])    FUNCTION     �  CREATE FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$
    /*
    Should the record be visible (true) or filtered out (false) after *filters* are applied
    */
        select
            -- Default to allowed when no filters present
            $2 is null -- no filters. this should not happen because subscriptions has a default
            or array_length($2, 1) is null -- array length of an empty array is null
            or bool_and(
                coalesce(
                    realtime.check_equality_op(
                        op:=f.op,
                        type_:=coalesce(
                            col.type_oid::regtype, -- null when wal2json version <= 2.4
                            col.type_name::regtype
                        ),
                        -- cast jsonb to text
                        val_1:=col.value #>> '{}',
                        val_2:=f.value
                    ),
                    false -- if null, filter does not match
                )
            )
        from
            unnest(filters) f
            join unnest(columns) col
                on f.column_name = col.name;
    $_$;
 z   DROP FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]);
       realtime          supabase_admin    false    1288    13    1300                       0    0 j   FUNCTION is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[])    ACL     n  GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO postgres;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO anon;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO service_role;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO supabase_realtime_admin;
          realtime          supabase_admin    false    528                       1255    28810 *   list_changes(name, name, integer, integer)    FUNCTION     �  CREATE FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) RETURNS SETOF realtime.wal_rls
    LANGUAGE sql
    SET log_min_messages TO 'fatal'
    AS $$
      with pub as (
        select
          concat_ws(
            ',',
            case when bool_or(pubinsert) then 'insert' else null end,
            case when bool_or(pubupdate) then 'update' else null end,
            case when bool_or(pubdelete) then 'delete' else null end
          ) as w2j_actions,
          coalesce(
            string_agg(
              realtime.quote_wal2json(format('%I.%I', schemaname, tablename)::regclass),
              ','
            ) filter (where ppt.tablename is not null and ppt.tablename not like '% %'),
            ''
          ) w2j_add_tables
        from
          pg_publication pp
          left join pg_publication_tables ppt
            on pp.pubname = ppt.pubname
        where
          pp.pubname = publication
        group by
          pp.pubname
        limit 1
      ),
      w2j as (
        select
          x.*, pub.w2j_add_tables
        from
          pub,
          pg_logical_slot_get_changes(
            slot_name, null, max_changes,
            'include-pk', 'true',
            'include-transaction', 'false',
            'include-timestamp', 'true',
            'include-type-oids', 'true',
            'format-version', '2',
            'actions', pub.w2j_actions,
            'add-tables', pub.w2j_add_tables
          ) x
      )
      select
        xyz.wal,
        xyz.is_rls_enabled,
        xyz.subscription_ids,
        xyz.errors
      from
        w2j,
        realtime.apply_rls(
          wal := w2j.data::jsonb,
          max_record_bytes := max_record_bytes
        ) xyz(wal, is_rls_enabled, subscription_ids, errors)
      where
        w2j.w2j_add_tables <> ''
        and xyz.subscription_ids[1] is not null
    $$;
 v   DROP FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer);
       realtime          supabase_admin    false    1297    13            �           0    0 f   FUNCTION list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer)    ACL     V  GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO service_role;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO supabase_realtime_admin;
          realtime          supabase_admin    false    530                       1255    28747    quote_wal2json(regclass)    FUNCTION     �  CREATE FUNCTION realtime.quote_wal2json(entity regclass) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $$
      select
        (
          select string_agg('' || ch,'')
          from unnest(string_to_array(nsp.nspname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
        )
        || '.'
        || (
          select string_agg('' || ch,'')
          from unnest(string_to_array(pc.relname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
          )
      from
        pg_class pc
        join pg_namespace nsp
          on pc.relnamespace = nsp.oid
      where
        pc.oid = entity
    $$;
 8   DROP FUNCTION realtime.quote_wal2json(entity regclass);
       realtime          supabase_admin    false    13            �           0    0 (   FUNCTION quote_wal2json(entity regclass)    ACL     �  GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO postgres;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO anon;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO authenticated;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO service_role;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO supabase_realtime_admin;
          realtime          supabase_admin    false    523            
           1255    28745    subscription_check_filters()    FUNCTION     <
  CREATE FUNCTION realtime.subscription_check_filters() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    /*
    Validates that the user defined filters for a subscription:
    - refer to valid columns that the claimed role may access
    - values are coercable to the correct column type
    */
    declare
        col_names text[] = coalesce(
                array_agg(c.column_name order by c.ordinal_position),
                '{}'::text[]
            )
            from
                information_schema.columns c
            where
                format('%I.%I', c.table_schema, c.table_name)::regclass = new.entity
                and pg_catalog.has_column_privilege(
                    (new.claims ->> 'role'),
                    format('%I.%I', c.table_schema, c.table_name)::regclass,
                    c.column_name,
                    'SELECT'
                );
        filter realtime.user_defined_filter;
        col_type regtype;

        in_val jsonb;
    begin
        for filter in select * from unnest(new.filters) loop
            -- Filtered column is valid
            if not filter.column_name = any(col_names) then
                raise exception 'invalid column for filter %', filter.column_name;
            end if;

            -- Type is sanitized and safe for string interpolation
            col_type = (
                select atttypid::regtype
                from pg_catalog.pg_attribute
                where attrelid = new.entity
                      and attname = filter.column_name
            );
            if col_type is null then
                raise exception 'failed to lookup type for column %', filter.column_name;
            end if;

            -- Set maximum number of entries for in filter
            if filter.op = 'in'::realtime.equality_op then
                in_val = realtime.cast(filter.value, (col_type::text || '[]')::regtype);
                if coalesce(jsonb_array_length(in_val), 0) > 100 then
                    raise exception 'too many values for `in` filter. Maximum 100';
                end if;
            else
                -- raises an exception if value is not coercable to type
                perform realtime.cast(filter.value, col_type);
            end if;

        end loop;

        -- Apply consistent order to filters so the unique constraint on
        -- (subscription_id, entity, filters) can't be tricked by a different filter order
        new.filters = coalesce(
            array_agg(f order by f.column_name, f.op, f.value),
            '{}'
        ) from unnest(new.filters) f;

        return new;
    end;
    $$;
 5   DROP FUNCTION realtime.subscription_check_filters();
       realtime          supabase_admin    false    13            �           0    0 %   FUNCTION subscription_check_filters()    ACL     �  GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO postgres;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO dashboard_user;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO anon;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO authenticated;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO service_role;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO supabase_realtime_admin;
          realtime          supabase_admin    false    522                       1255    28780    to_regrole(text)    FUNCTION     �   CREATE FUNCTION realtime.to_regrole(role_name text) RETURNS regrole
    LANGUAGE sql IMMUTABLE
    AS $$ select role_name::regrole $$;
 3   DROP FUNCTION realtime.to_regrole(role_name text);
       realtime          supabase_admin    false    13            �           0    0 #   FUNCTION to_regrole(role_name text)    ACL     �  GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO postgres;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO anon;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO authenticated;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO service_role;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO supabase_realtime_admin;
          realtime          supabase_admin    false    526                       1255    29332    topic()    FUNCTION     �   CREATE FUNCTION realtime.topic() RETURNS text
    LANGUAGE sql STABLE
    AS $$
select nullif(current_setting('realtime.topic', true), '')::text;
$$;
     DROP FUNCTION realtime.topic();
       realtime          supabase_realtime_admin    false    13            �           0    0    FUNCTION topic()    ACL     n   GRANT ALL ON FUNCTION realtime.topic() TO postgres;
GRANT ALL ON FUNCTION realtime.topic() TO dashboard_user;
          realtime          supabase_realtime_admin    false    531                       1255    28650 *   can_insert_object(text, text, uuid, jsonb)    FUNCTION     �  CREATE FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO "storage"."objects" ("bucket_id", "name", "owner", "metadata") VALUES (bucketid, name, owner, metadata);
  -- hack to rollback the successful insert
  RAISE sqlstate 'PT200' using
  message = 'ROLLBACK',
  detail = 'rollback successful insert';
END
$$;
 _   DROP FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb);
       storage          supabase_storage_admin    false    15                       1255    28624    extension(text)    FUNCTION     Z  CREATE FUNCTION storage.extension(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
_filename text;
BEGIN
	select string_to_array(name, '/') into _parts;
	select _parts[array_length(_parts,1)] into _filename;
	-- @todo return the last part instead of 2
	return reverse(split_part(reverse(_filename), '.', 1));
END
$$;
 ,   DROP FUNCTION storage.extension(name text);
       storage          supabase_storage_admin    false    15                       1255    28623    filename(text)    FUNCTION     �   CREATE FUNCTION storage.filename(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[array_length(_parts,1)];
END
$$;
 +   DROP FUNCTION storage.filename(name text);
       storage          supabase_storage_admin    false    15                       1255    28622    foldername(text)    FUNCTION     �   CREATE FUNCTION storage.foldername(name text) RETURNS text[]
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[1:array_length(_parts,1)-1];
END
$$;
 -   DROP FUNCTION storage.foldername(name text);
       storage          supabase_storage_admin    false    15                       1255    28636    get_size_by_bucket()    FUNCTION        CREATE FUNCTION storage.get_size_by_bucket() RETURNS TABLE(size bigint, bucket_id text)
    LANGUAGE plpgsql
    AS $$
BEGIN
    return query
        select sum((metadata->>'size')::int) as size, obj.bucket_id
        from "storage".objects as obj
        group by obj.bucket_id;
END
$$;
 ,   DROP FUNCTION storage.get_size_by_bucket();
       storage          supabase_storage_admin    false    15            	           1255    28689 L   list_multipart_uploads_with_delimiter(text, text, text, integer, text, text)    FUNCTION     9  CREATE FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, next_key_token text DEFAULT ''::text, next_upload_token text DEFAULT ''::text) RETURNS TABLE(key text, id text, created_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(key COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                        substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1)))
                    ELSE
                        key
                END AS key, id, created_at
            FROM
                storage.s3_multipart_uploads
            WHERE
                bucket_id = $5 AND
                key ILIKE $1 || ''%'' AND
                CASE
                    WHEN $4 != '''' AND $6 = '''' THEN
                        CASE
                            WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                                substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                key COLLATE "C" > $4
                            END
                    ELSE
                        true
                END AND
                CASE
                    WHEN $6 != '''' THEN
                        id COLLATE "C" > $6
                    ELSE
                        true
                    END
            ORDER BY
                key COLLATE "C" ASC, created_at ASC) as e order by key COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_key_token, bucket_id, next_upload_token;
END;
$_$;
 �   DROP FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, next_key_token text, next_upload_token text);
       storage          supabase_storage_admin    false    15                       1255    28652 B   list_objects_with_delimiter(text, text, text, integer, text, text)    FUNCTION     �  CREATE FUNCTION storage.list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, start_after text DEFAULT ''::text, next_token text DEFAULT ''::text) RETURNS TABLE(name text, id uuid, metadata jsonb, updated_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(name COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(name from length($1) + 1)) > 0 THEN
                        substring(name from 1 for length($1) + position($2 IN substring(name from length($1) + 1)))
                    ELSE
                        name
                END AS name, id, metadata, updated_at
            FROM
                storage.objects
            WHERE
                bucket_id = $5 AND
                name ILIKE $1 || ''%'' AND
                CASE
                    WHEN $6 != '''' THEN
                    name COLLATE "C" > $6
                ELSE true END
                AND CASE
                    WHEN $4 != '''' THEN
                        CASE
                            WHEN position($2 IN substring(name from length($1) + 1)) > 0 THEN
                                substring(name from 1 for length($1) + position($2 IN substring(name from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                name COLLATE "C" > $4
                            END
                    ELSE
                        true
                END
            ORDER BY
                name COLLATE "C" ASC) as e order by name COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_token, bucket_id, start_after;
END;
$_$;
 �   DROP FUNCTION storage.list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, start_after text, next_token text);
       storage          supabase_storage_admin    false    15                       1255    29674    operation()    FUNCTION     �   CREATE FUNCTION storage.operation() RETURNS text
    LANGUAGE plpgsql STABLE
    AS $$
BEGIN
    RETURN current_setting('storage.operation', true);
END;
$$;
 #   DROP FUNCTION storage.operation();
       storage          supabase_storage_admin    false    15                       1255    28639 ?   search(text, text, integer, integer, integer, text, text, text)    FUNCTION       CREATE FUNCTION storage.search(prefix text, bucketname text, limits integer DEFAULT 100, levels integer DEFAULT 1, offsets integer DEFAULT 0, search text DEFAULT ''::text, sortcolumn text DEFAULT 'name'::text, sortorder text DEFAULT 'asc'::text) RETURNS TABLE(name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $_$
declare
  v_order_by text;
  v_sort_order text;
begin
  case
    when sortcolumn = 'name' then
      v_order_by = 'name';
    when sortcolumn = 'updated_at' then
      v_order_by = 'updated_at';
    when sortcolumn = 'created_at' then
      v_order_by = 'created_at';
    when sortcolumn = 'last_accessed_at' then
      v_order_by = 'last_accessed_at';
    else
      v_order_by = 'name';
  end case;

  case
    when sortorder = 'asc' then
      v_sort_order = 'asc';
    when sortorder = 'desc' then
      v_sort_order = 'desc';
    else
      v_sort_order = 'asc';
  end case;

  v_order_by = v_order_by || ' ' || v_sort_order;

  return query execute
    'with folders as (
       select path_tokens[$1] as folder
       from storage.objects
         where objects.name ilike $2 || $3 || ''%''
           and bucket_id = $4
           and array_length(objects.path_tokens, 1) <> $1
       group by folder
       order by folder ' || v_sort_order || '
     )
     (select folder as "name",
            null as id,
            null as updated_at,
            null as created_at,
            null as last_accessed_at,
            null as metadata from folders)
     union all
     (select path_tokens[$1] as "name",
            id,
            updated_at,
            created_at,
            last_accessed_at,
            metadata
     from storage.objects
     where objects.name ilike $2 || $3 || ''%''
       and bucket_id = $4
       and array_length(objects.path_tokens, 1) = $1
     order by ' || v_order_by || ')
     limit $5
     offset $6' using levels, prefix, search, bucketname, limits, offsets;
end;
$_$;
 �   DROP FUNCTION storage.search(prefix text, bucketname text, limits integer, levels integer, offsets integer, search text, sortcolumn text, sortorder text);
       storage          supabase_storage_admin    false    15                       1255    28640    update_updated_at_column()    FUNCTION     �   CREATE FUNCTION storage.update_updated_at_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW; 
END;
$$;
 2   DROP FUNCTION storage.update_updated_at_column();
       storage          supabase_storage_admin    false    15            �           1255    16974    secrets_encrypt_secret_secret()    FUNCTION     (  CREATE FUNCTION vault.secrets_encrypt_secret_secret() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
		BEGIN
		        new.secret = CASE WHEN new.secret IS NULL THEN NULL ELSE
			CASE WHEN new.key_id IS NULL THEN NULL ELSE pg_catalog.encode(
			  pgsodium.crypto_aead_det_encrypt(
				pg_catalog.convert_to(new.secret, 'utf8'),
				pg_catalog.convert_to((new.id::text || new.description::text || new.created_at::text || new.updated_at::text)::text, 'utf8'),
				new.key_id::uuid,
				new.nonce
			  ),
				'base64') END END;
		RETURN new;
		END;
		$$;
 5   DROP FUNCTION vault.secrets_encrypt_secret_secret();
       vault          supabase_admin    false    19            �            1259    16519    audit_log_entries    TABLE     �   CREATE TABLE auth.audit_log_entries (
    instance_id uuid,
    id uuid NOT NULL,
    payload json,
    created_at timestamp with time zone,
    ip_address character varying(64) DEFAULT ''::character varying NOT NULL
);
 #   DROP TABLE auth.audit_log_entries;
       auth         heap    supabase_auth_admin    false    16            �           0    0    TABLE audit_log_entries    COMMENT     R   COMMENT ON TABLE auth.audit_log_entries IS 'Auth: Audit trail for user actions.';
          auth          supabase_auth_admin    false    244            �           0    0    TABLE audit_log_entries    ACL     �   GRANT ALL ON TABLE auth.audit_log_entries TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.audit_log_entries TO postgres;
GRANT SELECT ON TABLE auth.audit_log_entries TO postgres WITH GRANT OPTION;
          auth          supabase_auth_admin    false    244                       1259    28585 
   flow_state    TABLE     �  CREATE TABLE auth.flow_state (
    id uuid NOT NULL,
    user_id uuid,
    auth_code text NOT NULL,
    code_challenge_method auth.code_challenge_method NOT NULL,
    code_challenge text NOT NULL,
    provider_type text NOT NULL,
    provider_access_token text,
    provider_refresh_token text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    authentication_method text NOT NULL,
    auth_code_issued_at timestamp with time zone
);
    DROP TABLE auth.flow_state;
       auth         heap    supabase_auth_admin    false    16    1270            �           0    0    TABLE flow_state    COMMENT     G   COMMENT ON TABLE auth.flow_state IS 'stores metadata for pkce logins';
          auth          supabase_auth_admin    false    274            �           0    0    TABLE flow_state    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.flow_state TO postgres;
GRANT SELECT ON TABLE auth.flow_state TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.flow_state TO dashboard_user;
          auth          supabase_auth_admin    false    274            	           1259    28382 
   identities    TABLE     �  CREATE TABLE auth.identities (
    provider_id text NOT NULL,
    user_id uuid NOT NULL,
    identity_data jsonb NOT NULL,
    provider text NOT NULL,
    last_sign_in_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    email text GENERATED ALWAYS AS (lower((identity_data ->> 'email'::text))) STORED,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);
    DROP TABLE auth.identities;
       auth         heap    supabase_auth_admin    false    16            �           0    0    TABLE identities    COMMENT     U   COMMENT ON TABLE auth.identities IS 'Auth: Stores identities associated to a user.';
          auth          supabase_auth_admin    false    265            �           0    0    COLUMN identities.email    COMMENT     �   COMMENT ON COLUMN auth.identities.email IS 'Auth: Email is a generated column that references the optional email property in the identity_data';
          auth          supabase_auth_admin    false    265            �           0    0    TABLE identities    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.identities TO postgres;
GRANT SELECT ON TABLE auth.identities TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.identities TO dashboard_user;
          auth          supabase_auth_admin    false    265            �            1259    16512 	   instances    TABLE     �   CREATE TABLE auth.instances (
    id uuid NOT NULL,
    uuid uuid,
    raw_base_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE auth.instances;
       auth         heap    supabase_auth_admin    false    16            �           0    0    TABLE instances    COMMENT     Q   COMMENT ON TABLE auth.instances IS 'Auth: Manages users across multiple sites.';
          auth          supabase_auth_admin    false    243            �           0    0    TABLE instances    ACL     �   GRANT ALL ON TABLE auth.instances TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.instances TO postgres;
GRANT SELECT ON TABLE auth.instances TO postgres WITH GRANT OPTION;
          auth          supabase_auth_admin    false    243                       1259    28472    mfa_amr_claims    TABLE     �   CREATE TABLE auth.mfa_amr_claims (
    session_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    authentication_method text NOT NULL,
    id uuid NOT NULL
);
     DROP TABLE auth.mfa_amr_claims;
       auth         heap    supabase_auth_admin    false    16            �           0    0    TABLE mfa_amr_claims    COMMENT     ~   COMMENT ON TABLE auth.mfa_amr_claims IS 'auth: stores authenticator method reference claims for multi factor authentication';
          auth          supabase_auth_admin    false    269            �           0    0    TABLE mfa_amr_claims    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_amr_claims TO postgres;
GRANT SELECT ON TABLE auth.mfa_amr_claims TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.mfa_amr_claims TO dashboard_user;
          auth          supabase_auth_admin    false    269                       1259    28460    mfa_challenges    TABLE     �   CREATE TABLE auth.mfa_challenges (
    id uuid NOT NULL,
    factor_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    verified_at timestamp with time zone,
    ip_address inet NOT NULL
);
     DROP TABLE auth.mfa_challenges;
       auth         heap    supabase_auth_admin    false    16            �           0    0    TABLE mfa_challenges    COMMENT     _   COMMENT ON TABLE auth.mfa_challenges IS 'auth: stores metadata about challenge requests made';
          auth          supabase_auth_admin    false    268            �           0    0    TABLE mfa_challenges    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_challenges TO postgres;
GRANT SELECT ON TABLE auth.mfa_challenges TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.mfa_challenges TO dashboard_user;
          auth          supabase_auth_admin    false    268                       1259    28447    mfa_factors    TABLE     3  CREATE TABLE auth.mfa_factors (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    friendly_name text,
    factor_type auth.factor_type NOT NULL,
    status auth.factor_status NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    secret text
);
    DROP TABLE auth.mfa_factors;
       auth         heap    supabase_auth_admin    false    16    1241    1234            �           0    0    TABLE mfa_factors    COMMENT     L   COMMENT ON TABLE auth.mfa_factors IS 'auth: stores metadata about factors';
          auth          supabase_auth_admin    false    267            �           0    0    TABLE mfa_factors    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_factors TO postgres;
GRANT SELECT ON TABLE auth.mfa_factors TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.mfa_factors TO dashboard_user;
          auth          supabase_auth_admin    false    267            &           1259    29159    one_time_tokens    TABLE     �  CREATE TABLE auth.one_time_tokens (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    token_type auth.one_time_token_type NOT NULL,
    token_hash text NOT NULL,
    relates_to text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT one_time_tokens_token_hash_check CHECK ((char_length(token_hash) > 0))
);
 !   DROP TABLE auth.one_time_tokens;
       auth         heap    supabase_auth_admin    false    16    1201            �           0    0    TABLE one_time_tokens    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.one_time_tokens TO postgres;
GRANT SELECT ON TABLE auth.one_time_tokens TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.one_time_tokens TO dashboard_user;
          auth          supabase_auth_admin    false    294            �            1259    16501    refresh_tokens    TABLE     8  CREATE TABLE auth.refresh_tokens (
    instance_id uuid,
    id bigint NOT NULL,
    token character varying(255),
    user_id character varying(255),
    revoked boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    parent character varying(255),
    session_id uuid
);
     DROP TABLE auth.refresh_tokens;
       auth         heap    supabase_auth_admin    false    16            �           0    0    TABLE refresh_tokens    COMMENT     n   COMMENT ON TABLE auth.refresh_tokens IS 'Auth: Store of tokens used to refresh JWT tokens once they expire.';
          auth          supabase_auth_admin    false    242            �           0    0    TABLE refresh_tokens    ACL     �   GRANT ALL ON TABLE auth.refresh_tokens TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.refresh_tokens TO postgres;
GRANT SELECT ON TABLE auth.refresh_tokens TO postgres WITH GRANT OPTION;
          auth          supabase_auth_admin    false    242            �            1259    16500    refresh_tokens_id_seq    SEQUENCE     |   CREATE SEQUENCE auth.refresh_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE auth.refresh_tokens_id_seq;
       auth          supabase_auth_admin    false    16    242            �           0    0    refresh_tokens_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE auth.refresh_tokens_id_seq OWNED BY auth.refresh_tokens.id;
          auth          supabase_auth_admin    false    241            �           0    0    SEQUENCE refresh_tokens_id_seq    ACL     �   GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO dashboard_user;
GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO postgres;
          auth          supabase_auth_admin    false    241                       1259    28514    saml_providers    TABLE     H  CREATE TABLE auth.saml_providers (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    entity_id text NOT NULL,
    metadata_xml text NOT NULL,
    metadata_url text,
    attribute_mapping jsonb,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name_id_format text,
    CONSTRAINT "entity_id not empty" CHECK ((char_length(entity_id) > 0)),
    CONSTRAINT "metadata_url not empty" CHECK (((metadata_url = NULL::text) OR (char_length(metadata_url) > 0))),
    CONSTRAINT "metadata_xml not empty" CHECK ((char_length(metadata_xml) > 0))
);
     DROP TABLE auth.saml_providers;
       auth         heap    supabase_auth_admin    false    16            �           0    0    TABLE saml_providers    COMMENT     ]   COMMENT ON TABLE auth.saml_providers IS 'Auth: Manages SAML Identity Provider connections.';
          auth          supabase_auth_admin    false    272            �           0    0    TABLE saml_providers    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_providers TO postgres;
GRANT SELECT ON TABLE auth.saml_providers TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.saml_providers TO dashboard_user;
          auth          supabase_auth_admin    false    272                       1259    28532    saml_relay_states    TABLE     `  CREATE TABLE auth.saml_relay_states (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    request_id text NOT NULL,
    for_email text,
    redirect_to text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    flow_state_id uuid,
    CONSTRAINT "request_id not empty" CHECK ((char_length(request_id) > 0))
);
 #   DROP TABLE auth.saml_relay_states;
       auth         heap    supabase_auth_admin    false    16            �           0    0    TABLE saml_relay_states    COMMENT     �   COMMENT ON TABLE auth.saml_relay_states IS 'Auth: Contains SAML Relay State information for each Service Provider initiated login.';
          auth          supabase_auth_admin    false    273            �           0    0    TABLE saml_relay_states    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_relay_states TO postgres;
GRANT SELECT ON TABLE auth.saml_relay_states TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.saml_relay_states TO dashboard_user;
          auth          supabase_auth_admin    false    273            �            1259    16527    schema_migrations    TABLE     U   CREATE TABLE auth.schema_migrations (
    version character varying(255) NOT NULL
);
 #   DROP TABLE auth.schema_migrations;
       auth         heap    supabase_auth_admin    false    16            �           0    0    TABLE schema_migrations    COMMENT     X   COMMENT ON TABLE auth.schema_migrations IS 'Auth: Manages updates to the auth system.';
          auth          supabase_auth_admin    false    245            �           0    0    TABLE schema_migrations    ACL     �   GRANT ALL ON TABLE auth.schema_migrations TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.schema_migrations TO postgres;
GRANT SELECT ON TABLE auth.schema_migrations TO postgres WITH GRANT OPTION;
          auth          supabase_auth_admin    false    245            
           1259    28412    sessions    TABLE     T  CREATE TABLE auth.sessions (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    factor_id uuid,
    aal auth.aal_level,
    not_after timestamp with time zone,
    refreshed_at timestamp without time zone,
    user_agent text,
    ip inet,
    tag text
);
    DROP TABLE auth.sessions;
       auth         heap    supabase_auth_admin    false    1246    16            �           0    0    TABLE sessions    COMMENT     U   COMMENT ON TABLE auth.sessions IS 'Auth: Stores session data associated to a user.';
          auth          supabase_auth_admin    false    266            �           0    0    COLUMN sessions.not_after    COMMENT     �   COMMENT ON COLUMN auth.sessions.not_after IS 'Auth: Not after is a nullable column that contains a timestamp after which the session should be regarded as expired.';
          auth          supabase_auth_admin    false    266            �           0    0    TABLE sessions    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sessions TO postgres;
GRANT SELECT ON TABLE auth.sessions TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.sessions TO dashboard_user;
          auth          supabase_auth_admin    false    266                       1259    28499    sso_domains    TABLE       CREATE TABLE auth.sso_domains (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    domain text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "domain not empty" CHECK ((char_length(domain) > 0))
);
    DROP TABLE auth.sso_domains;
       auth         heap    supabase_auth_admin    false    16            �           0    0    TABLE sso_domains    COMMENT     t   COMMENT ON TABLE auth.sso_domains IS 'Auth: Manages SSO email address domain mapping to an SSO Identity Provider.';
          auth          supabase_auth_admin    false    271            �           0    0    TABLE sso_domains    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_domains TO postgres;
GRANT SELECT ON TABLE auth.sso_domains TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.sso_domains TO dashboard_user;
          auth          supabase_auth_admin    false    271                       1259    28490    sso_providers    TABLE       CREATE TABLE auth.sso_providers (
    id uuid NOT NULL,
    resource_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "resource_id not empty" CHECK (((resource_id = NULL::text) OR (char_length(resource_id) > 0)))
);
    DROP TABLE auth.sso_providers;
       auth         heap    supabase_auth_admin    false    16            �           0    0    TABLE sso_providers    COMMENT     x   COMMENT ON TABLE auth.sso_providers IS 'Auth: Manages SSO identity provider information; see saml_providers for SAML.';
          auth          supabase_auth_admin    false    270            �           0    0     COLUMN sso_providers.resource_id    COMMENT     �   COMMENT ON COLUMN auth.sso_providers.resource_id IS 'Auth: Uniquely identifies a SSO provider according to a user-chosen resource ID (case insensitive), useful in infrastructure as code.';
          auth          supabase_auth_admin    false    270            �           0    0    TABLE sso_providers    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_providers TO postgres;
GRANT SELECT ON TABLE auth.sso_providers TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.sso_providers TO dashboard_user;
          auth          supabase_auth_admin    false    270            �            1259    16489    users    TABLE     4  CREATE TABLE auth.users (
    instance_id uuid,
    id uuid NOT NULL,
    aud character varying(255),
    role character varying(255),
    email character varying(255),
    encrypted_password character varying(255),
    email_confirmed_at timestamp with time zone,
    invited_at timestamp with time zone,
    confirmation_token character varying(255),
    confirmation_sent_at timestamp with time zone,
    recovery_token character varying(255),
    recovery_sent_at timestamp with time zone,
    email_change_token_new character varying(255),
    email_change character varying(255),
    email_change_sent_at timestamp with time zone,
    last_sign_in_at timestamp with time zone,
    raw_app_meta_data jsonb,
    raw_user_meta_data jsonb,
    is_super_admin boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    phone text DEFAULT NULL::character varying,
    phone_confirmed_at timestamp with time zone,
    phone_change text DEFAULT ''::character varying,
    phone_change_token character varying(255) DEFAULT ''::character varying,
    phone_change_sent_at timestamp with time zone,
    confirmed_at timestamp with time zone GENERATED ALWAYS AS (LEAST(email_confirmed_at, phone_confirmed_at)) STORED,
    email_change_token_current character varying(255) DEFAULT ''::character varying,
    email_change_confirm_status smallint DEFAULT 0,
    banned_until timestamp with time zone,
    reauthentication_token character varying(255) DEFAULT ''::character varying,
    reauthentication_sent_at timestamp with time zone,
    is_sso_user boolean DEFAULT false NOT NULL,
    deleted_at timestamp with time zone,
    is_anonymous boolean DEFAULT false NOT NULL,
    CONSTRAINT users_email_change_confirm_status_check CHECK (((email_change_confirm_status >= 0) AND (email_change_confirm_status <= 2)))
);
    DROP TABLE auth.users;
       auth         heap    supabase_auth_admin    false    16            �           0    0    TABLE users    COMMENT     W   COMMENT ON TABLE auth.users IS 'Auth: Stores user login data within a secure schema.';
          auth          supabase_auth_admin    false    240            �           0    0    COLUMN users.is_sso_user    COMMENT     �   COMMENT ON COLUMN auth.users.is_sso_user IS 'Auth: Set this column to true when the account comes from SSO. These accounts can have duplicate emails.';
          auth          supabase_auth_admin    false    240            �           0    0    TABLE users    ACL     �   GRANT ALL ON TABLE auth.users TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.users TO postgres;
GRANT SELECT ON TABLE auth.users TO postgres WITH GRANT OPTION;
          auth          supabase_auth_admin    false    240            �           0    0    TABLE pg_stat_statements    ACL     �   REVOKE ALL ON TABLE extensions.pg_stat_statements FROM postgres;
GRANT ALL ON TABLE extensions.pg_stat_statements TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE extensions.pg_stat_statements TO dashboard_user;
       
   extensions          postgres    false    239            �           0    0    TABLE pg_stat_statements_info    ACL     �   REVOKE ALL ON TABLE extensions.pg_stat_statements_info FROM postgres;
GRANT ALL ON TABLE extensions.pg_stat_statements_info TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE extensions.pg_stat_statements_info TO dashboard_user;
       
   extensions          postgres    false    238                       1259    29015    fdm_division    TABLE     {   CREATE TABLE fdm_dba.fdm_division (
    division_id smallint NOT NULL,
    division_name character varying(64) NOT NULL
);
 !   DROP TABLE fdm_dba.fdm_division;
       fdm_dba         heap    postgres    false    24            �           0    0    SEQUENCE seq_schema_version    ACL     �   GRANT ALL ON SEQUENCE graphql.seq_schema_version TO postgres;
GRANT ALL ON SEQUENCE graphql.seq_schema_version TO anon;
GRANT ALL ON SEQUENCE graphql.seq_schema_version TO authenticated;
GRANT ALL ON SEQUENCE graphql.seq_schema_version TO service_role;
          graphql          supabase_admin    false    264                       1259    29018    mrte_completion    TABLE     #  CREATE TABLE mrte_dba.mrte_completion (
    completion_id bigint NOT NULL,
    completion_name character varying(64) NOT NULL,
    first_production_ts timestamp without time zone NOT NULL,
    division_id smallint NOT NULL,
    primo_prprty integer NOT NULL,
    fac_primo_prprty integer
);
 %   DROP TABLE mrte_dba.mrte_completion;
       mrte_dba         heap    postgres    false    25                       1259    29021    mrte_facility    TABLE     �   CREATE TABLE mrte_dba.mrte_facility (
    facility_id bigint NOT NULL,
    facility_name character varying(64) NOT NULL,
    first_production_ts timestamp without time zone NOT NULL,
    division_id smallint,
    primo_prprty integer NOT NULL
);
 #   DROP TABLE mrte_dba.mrte_facility;
       mrte_dba         heap    postgres    false    25            )           1259    29612    routes    TABLE     �   CREATE TABLE mrte_dba.routes (
    route_id uuid DEFAULT gen_random_uuid() NOT NULL,
    route_name character varying(255),
    foreman_name character varying(255),
    division_id integer
);
    DROP TABLE mrte_dba.routes;
       mrte_dba         heap    postgres    false    25            �           0    0    TABLE decrypted_key    ACL     A   GRANT ALL ON TABLE pgsodium.decrypted_key TO pgsodium_keyholder;
          pgsodium          supabase_admin    false    261            �           0    0    TABLE masking_rule    ACL     @   GRANT ALL ON TABLE pgsodium.masking_rule TO pgsodium_keyholder;
          pgsodium          supabase_admin    false    259            �           0    0    TABLE mask_columns    ACL     @   GRANT ALL ON TABLE pgsodium.mask_columns TO pgsodium_keyholder;
          pgsodium          supabase_admin    false    260                       1259    29024    client    TABLE     �   CREATE TABLE public.client (
    id integer NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    dob date
);
    DROP TABLE public.client;
       public         heap    postgres    false            �           0    0    TABLE client    ACL     �   GRANT ALL ON TABLE public.client TO anon;
GRANT ALL ON TABLE public.client TO authenticated;
GRANT ALL ON TABLE public.client TO service_role;
          public          postgres    false    286                       1259    29027    item    TABLE     x   CREATE TABLE public.item (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    price numeric(10,2)
);
    DROP TABLE public.item;
       public         heap    postgres    false            �           0    0 
   TABLE item    ACL     �   GRANT ALL ON TABLE public.item TO anon;
GRANT ALL ON TABLE public.item TO authenticated;
GRANT ALL ON TABLE public.item TO service_role;
          public          postgres    false    287                        1259    29030    item_in_list    TABLE     �   CREATE TABLE public.item_in_list (
    item_id integer NOT NULL,
    list_id integer NOT NULL,
    quantity integer NOT NULL
);
     DROP TABLE public.item_in_list;
       public         heap    postgres    false            �           0    0    TABLE item_in_list    ACL     �   GRANT ALL ON TABLE public.item_in_list TO anon;
GRANT ALL ON TABLE public.item_in_list TO authenticated;
GRANT ALL ON TABLE public.item_in_list TO service_role;
          public          postgres    false    288            !           1259    29033    list    TABLE     �   CREATE TABLE public.list (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    creator_id integer NOT NULL
);
    DROP TABLE public.list;
       public         heap    postgres    false            �           0    0 
   TABLE list    ACL     �   GRANT ALL ON TABLE public.list TO anon;
GRANT ALL ON TABLE public.list TO authenticated;
GRANT ALL ON TABLE public.list TO service_role;
          public          postgres    false    289            "           1259    29036    schema_migrations    TABLE     W   CREATE TABLE public.schema_migrations (
    version character varying(128) NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    postgres    false            �           0    0    TABLE schema_migrations    ACL     �   GRANT ALL ON TABLE public.schema_migrations TO anon;
GRANT ALL ON TABLE public.schema_migrations TO authenticated;
GRANT ALL ON TABLE public.schema_migrations TO service_role;
          public          postgres    false    290            (           1259    29323    messages    TABLE     �   CREATE TABLE realtime.messages (
    id bigint NOT NULL,
    topic text NOT NULL,
    extension text NOT NULL,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
    DROP TABLE realtime.messages;
       realtime         heap    supabase_realtime_admin    false    13            �           0    0    TABLE messages    ACL     8  GRANT ALL ON TABLE realtime.messages TO postgres;
GRANT ALL ON TABLE realtime.messages TO dashboard_user;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO anon;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO authenticated;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO service_role;
          realtime          supabase_realtime_admin    false    296            '           1259    29322    messages_id_seq    SEQUENCE     z   CREATE SEQUENCE realtime.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE realtime.messages_id_seq;
       realtime          supabase_realtime_admin    false    296    13            �           0    0    messages_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE realtime.messages_id_seq OWNED BY realtime.messages.id;
          realtime          supabase_realtime_admin    false    295            �           0    0    SEQUENCE messages_id_seq    ACL     =  GRANT ALL ON SEQUENCE realtime.messages_id_seq TO postgres;
GRANT ALL ON SEQUENCE realtime.messages_id_seq TO dashboard_user;
GRANT USAGE ON SEQUENCE realtime.messages_id_seq TO anon;
GRANT USAGE ON SEQUENCE realtime.messages_id_seq TO authenticated;
GRANT USAGE ON SEQUENCE realtime.messages_id_seq TO service_role;
          realtime          supabase_realtime_admin    false    295                       1259    28710    schema_migrations    TABLE     y   CREATE TABLE realtime.schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp(0) without time zone
);
 '   DROP TABLE realtime.schema_migrations;
       realtime         heap    supabase_admin    false    13            �           0    0    TABLE schema_migrations    ACL     �  GRANT ALL ON TABLE realtime.schema_migrations TO postgres;
GRANT ALL ON TABLE realtime.schema_migrations TO dashboard_user;
GRANT SELECT ON TABLE realtime.schema_migrations TO anon;
GRANT SELECT ON TABLE realtime.schema_migrations TO authenticated;
GRANT SELECT ON TABLE realtime.schema_migrations TO service_role;
GRANT ALL ON TABLE realtime.schema_migrations TO supabase_realtime_admin;
          realtime          supabase_admin    false    277                       1259    28733    subscription    TABLE     �  CREATE TABLE realtime.subscription (
    id bigint NOT NULL,
    subscription_id uuid NOT NULL,
    entity regclass NOT NULL,
    filters realtime.user_defined_filter[] DEFAULT '{}'::realtime.user_defined_filter[] NOT NULL,
    claims jsonb NOT NULL,
    claims_role regrole GENERATED ALWAYS AS (realtime.to_regrole((claims ->> 'role'::text))) STORED NOT NULL,
    created_at timestamp without time zone DEFAULT timezone('utc'::text, now()) NOT NULL
);
 "   DROP TABLE realtime.subscription;
       realtime         heap    supabase_admin    false    1288    526    13    1288            �           0    0    TABLE subscription    ACL     g  GRANT ALL ON TABLE realtime.subscription TO postgres;
GRANT ALL ON TABLE realtime.subscription TO dashboard_user;
GRANT SELECT ON TABLE realtime.subscription TO anon;
GRANT SELECT ON TABLE realtime.subscription TO authenticated;
GRANT SELECT ON TABLE realtime.subscription TO service_role;
GRANT ALL ON TABLE realtime.subscription TO supabase_realtime_admin;
          realtime          supabase_admin    false    280                       1259    28732    subscription_id_seq    SEQUENCE     �   ALTER TABLE realtime.subscription ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME realtime.subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            realtime          supabase_admin    false    13    280            �           0    0    SEQUENCE subscription_id_seq    ACL     �  GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO postgres;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO dashboard_user;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO anon;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO authenticated;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO service_role;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO supabase_realtime_admin;
          realtime          supabase_admin    false    279            #           1259    29039    data_catalog    TABLE     2  CREATE TABLE sdm_dba.data_catalog (
    key_metric uuid DEFAULT gen_random_uuid() NOT NULL,
    source_key character varying(64) NOT NULL,
    source_id character varying(64) NOT NULL,
    metric_nice_name character varying(64) NOT NULL,
    uom character varying(16),
    division_id smallint NOT NULL
);
 !   DROP TABLE sdm_dba.data_catalog;
       sdm_dba         heap    postgres    false    26            �           0    0    COLUMN data_catalog.source_key    COMMENT     A   COMMENT ON COLUMN sdm_dba.data_catalog.source_key IS 'scada_id';
          sdm_dba          postgres    false    291            �           0    0    COLUMN data_catalog.source_id    COMMENT     @   COMMENT ON COLUMN sdm_dba.data_catalog.source_id IS 'primo_id';
          sdm_dba          postgres    false    291            �           0    0 $   COLUMN data_catalog.metric_nice_name    COMMENT     \   COMMENT ON COLUMN sdm_dba.data_catalog.metric_nice_name IS 'ex: OilMeterVolume-AccumToday';
          sdm_dba          postgres    false    291            $           1259    29043    timeseries_data    TABLE     �   CREATE TABLE sdm_dba.timeseries_data (
    key_metric uuid NOT NULL,
    ts timestamp without time zone NOT NULL,
    value double precision NOT NULL
);
 $   DROP TABLE sdm_dba.timeseries_data;
       sdm_dba         heap    postgres    false    26            �            1259    16540    buckets    TABLE     k  CREATE TABLE storage.buckets (
    id text NOT NULL,
    name text NOT NULL,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    public boolean DEFAULT false,
    avif_autodetection boolean DEFAULT false,
    file_size_limit bigint,
    allowed_mime_types text[],
    owner_id text
);
    DROP TABLE storage.buckets;
       storage         heap    supabase_storage_admin    false    15            �           0    0    COLUMN buckets.owner    COMMENT     X   COMMENT ON COLUMN storage.buckets.owner IS 'Field is deprecated, use owner_id instead';
          storage          supabase_storage_admin    false    246            �           0    0    TABLE buckets    ACL     �   GRANT ALL ON TABLE storage.buckets TO anon;
GRANT ALL ON TABLE storage.buckets TO authenticated;
GRANT ALL ON TABLE storage.buckets TO service_role;
GRANT ALL ON TABLE storage.buckets TO postgres;
          storage          supabase_storage_admin    false    246            �            1259    16582 
   migrations    TABLE     �   CREATE TABLE storage.migrations (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    hash character varying(40) NOT NULL,
    executed_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE storage.migrations;
       storage         heap    supabase_storage_admin    false    15            �           0    0    TABLE migrations    ACL     �   GRANT ALL ON TABLE storage.migrations TO anon;
GRANT ALL ON TABLE storage.migrations TO authenticated;
GRANT ALL ON TABLE storage.migrations TO service_role;
GRANT ALL ON TABLE storage.migrations TO postgres;
          storage          supabase_storage_admin    false    248            �            1259    16555    objects    TABLE     �  CREATE TABLE storage.objects (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    bucket_id text,
    name text,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    last_accessed_at timestamp with time zone DEFAULT now(),
    metadata jsonb,
    path_tokens text[] GENERATED ALWAYS AS (string_to_array(name, '/'::text)) STORED,
    version text,
    owner_id text
);
    DROP TABLE storage.objects;
       storage         heap    supabase_storage_admin    false    15            �           0    0    COLUMN objects.owner    COMMENT     X   COMMENT ON COLUMN storage.objects.owner IS 'Field is deprecated, use owner_id instead';
          storage          supabase_storage_admin    false    247            �           0    0    TABLE objects    ACL     �   GRANT ALL ON TABLE storage.objects TO anon;
GRANT ALL ON TABLE storage.objects TO authenticated;
GRANT ALL ON TABLE storage.objects TO service_role;
GRANT ALL ON TABLE storage.objects TO postgres;
          storage          supabase_storage_admin    false    247                       1259    28654    s3_multipart_uploads    TABLE     Q  CREATE TABLE storage.s3_multipart_uploads (
    id text NOT NULL,
    in_progress_size bigint DEFAULT 0 NOT NULL,
    upload_signature text NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    version text NOT NULL,
    owner_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);
 )   DROP TABLE storage.s3_multipart_uploads;
       storage         heap    supabase_storage_admin    false    15            �           0    0    TABLE s3_multipart_uploads    ACL     �   GRANT ALL ON TABLE storage.s3_multipart_uploads TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO anon;
          storage          supabase_storage_admin    false    275                       1259    28668    s3_multipart_uploads_parts    TABLE     �  CREATE TABLE storage.s3_multipart_uploads_parts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    upload_id text NOT NULL,
    size bigint DEFAULT 0 NOT NULL,
    part_number integer NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    etag text NOT NULL,
    owner_id text,
    version text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);
 /   DROP TABLE storage.s3_multipart_uploads_parts;
       storage         heap    supabase_storage_admin    false    15            �           0    0     TABLE s3_multipart_uploads_parts    ACL     �   GRANT ALL ON TABLE storage.s3_multipart_uploads_parts TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO anon;
          storage          supabase_storage_admin    false    276            %           1259    29046    tank_metadata    TABLE       CREATE TABLE tank.tank_metadata (
    scadaid character varying(64) NOT NULL,
    create_ts timestamp without time zone DEFAULT now() NOT NULL,
    update_ts timestamp without time zone DEFAULT now() NOT NULL,
    tanksize double precision,
    division_id smallint
);
    DROP TABLE tank.tank_metadata;
       tank         heap    postgres    false    27                       1259    16970    decrypted_secrets    VIEW     �  CREATE VIEW vault.decrypted_secrets AS
 SELECT secrets.id,
    secrets.name,
    secrets.description,
    secrets.secret,
        CASE
            WHEN (secrets.secret IS NULL) THEN NULL::text
            ELSE
            CASE
                WHEN (secrets.key_id IS NULL) THEN NULL::text
                ELSE convert_from(pgsodium.crypto_aead_det_decrypt(decode(secrets.secret, 'base64'::text), convert_to(((((secrets.id)::text || secrets.description) || (secrets.created_at)::text) || (secrets.updated_at)::text), 'utf8'::name), secrets.key_id, secrets.nonce), 'utf8'::name)
            END
        END AS decrypted_secret,
    secrets.key_id,
    secrets.nonce,
    secrets.created_at,
    secrets.updated_at
   FROM vault.secrets;
 #   DROP VIEW vault.decrypted_secrets;
       vault          supabase_admin    false    6    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    5    17    17    5    17    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    17    19    6    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    5    17    17    5    17    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    17    19    6    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    5    17    17    5    17    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    17    19    6    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    5    17    17    5    17    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    17    19    6    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    5    17    17    5    17    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    17    19    6    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    5    17    17    5    17    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    17    19    5    17    6    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    5    17    17    5    17    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    17    19    6    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    5    17    17    5    17    5    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    5    17    5    17    5    17    17    5    17    17    5    17    5    17    19    19            l           2604    16504    refresh_tokens id    DEFAULT     r   ALTER TABLE ONLY auth.refresh_tokens ALTER COLUMN id SET DEFAULT nextval('auth.refresh_tokens_id_seq'::regclass);
 >   ALTER TABLE auth.refresh_tokens ALTER COLUMN id DROP DEFAULT;
       auth          supabase_auth_admin    false    242    241    242            �           2604    29326    messages id    DEFAULT     n   ALTER TABLE ONLY realtime.messages ALTER COLUMN id SET DEFAULT nextval('realtime.messages_id_seq'::regclass);
 <   ALTER TABLE realtime.messages ALTER COLUMN id DROP DEFAULT;
       realtime          supabase_realtime_admin    false    295    296    296            �          0    16519    audit_log_entries 
   TABLE DATA           [   COPY auth.audit_log_entries (instance_id, id, payload, created_at, ip_address) FROM stdin;
    auth          supabase_auth_admin    false    244   Ca                0    28585 
   flow_state 
   TABLE DATA           �   COPY auth.flow_state (id, user_id, auth_code, code_challenge_method, code_challenge, provider_type, provider_access_token, provider_refresh_token, created_at, updated_at, authentication_method, auth_code_issued_at) FROM stdin;
    auth          supabase_auth_admin    false    274   `a      �          0    28382 
   identities 
   TABLE DATA           ~   COPY auth.identities (provider_id, user_id, identity_data, provider, last_sign_in_at, created_at, updated_at, id) FROM stdin;
    auth          supabase_auth_admin    false    265   }a      �          0    16512 	   instances 
   TABLE DATA           T   COPY auth.instances (id, uuid, raw_base_config, created_at, updated_at) FROM stdin;
    auth          supabase_auth_admin    false    243   �a                0    28472    mfa_amr_claims 
   TABLE DATA           e   COPY auth.mfa_amr_claims (session_id, created_at, updated_at, authentication_method, id) FROM stdin;
    auth          supabase_auth_admin    false    269   �a                0    28460    mfa_challenges 
   TABLE DATA           Z   COPY auth.mfa_challenges (id, factor_id, created_at, verified_at, ip_address) FROM stdin;
    auth          supabase_auth_admin    false    268   �a                0    28447    mfa_factors 
   TABLE DATA           t   COPY auth.mfa_factors (id, user_id, friendly_name, factor_type, status, created_at, updated_at, secret) FROM stdin;
    auth          supabase_auth_admin    false    267   �a                0    29159    one_time_tokens 
   TABLE DATA           p   COPY auth.one_time_tokens (id, user_id, token_type, token_hash, relates_to, created_at, updated_at) FROM stdin;
    auth          supabase_auth_admin    false    294   b      �          0    16501    refresh_tokens 
   TABLE DATA           |   COPY auth.refresh_tokens (instance_id, id, token, user_id, revoked, created_at, updated_at, parent, session_id) FROM stdin;
    auth          supabase_auth_admin    false    242   +b                0    28514    saml_providers 
   TABLE DATA           �   COPY auth.saml_providers (id, sso_provider_id, entity_id, metadata_xml, metadata_url, attribute_mapping, created_at, updated_at, name_id_format) FROM stdin;
    auth          supabase_auth_admin    false    272   Hb                0    28532    saml_relay_states 
   TABLE DATA           �   COPY auth.saml_relay_states (id, sso_provider_id, request_id, for_email, redirect_to, created_at, updated_at, flow_state_id) FROM stdin;
    auth          supabase_auth_admin    false    273   eb      �          0    16527    schema_migrations 
   TABLE DATA           2   COPY auth.schema_migrations (version) FROM stdin;
    auth          supabase_auth_admin    false    245   �b                 0    28412    sessions 
   TABLE DATA           �   COPY auth.sessions (id, user_id, created_at, updated_at, factor_id, aal, not_after, refreshed_at, user_agent, ip, tag) FROM stdin;
    auth          supabase_auth_admin    false    266   �c                0    28499    sso_domains 
   TABLE DATA           X   COPY auth.sso_domains (id, sso_provider_id, domain, created_at, updated_at) FROM stdin;
    auth          supabase_auth_admin    false    271   �c                0    28490    sso_providers 
   TABLE DATA           N   COPY auth.sso_providers (id, resource_id, created_at, updated_at) FROM stdin;
    auth          supabase_auth_admin    false    270   d      �          0    16489    users 
   TABLE DATA           O  COPY auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) FROM stdin;
    auth          supabase_auth_admin    false    240   $d                0    29015    fdm_division 
   TABLE DATA           C   COPY fdm_dba.fdm_division (division_id, division_name) FROM stdin;
    fdm_dba          postgres    false    283   Ad                0    29018    mrte_completion 
   TABLE DATA           �   COPY mrte_dba.mrte_completion (completion_id, completion_name, first_production_ts, division_id, primo_prprty, fac_primo_prprty) FROM stdin;
    mrte_dba          postgres    false    284   �d                0    29021    mrte_facility 
   TABLE DATA           u   COPY mrte_dba.mrte_facility (facility_id, facility_name, first_production_ts, division_id, primo_prprty) FROM stdin;
    mrte_dba          postgres    false    285   f                0    29612    routes 
   TABLE DATA           S   COPY mrte_dba.routes (route_id, route_name, foreman_name, division_id) FROM stdin;
    mrte_dba          postgres    false    297   �f      `          0    16790    key 
   TABLE DATA           �   COPY pgsodium.key (id, status, created, expires, key_type, key_id, key_context, name, associated_data, raw_key, raw_key_nonce, parent_key, comment, user_data) FROM stdin;
    pgsodium          supabase_admin    false    256   �g                0    29024    client 
   TABLE DATA           @   COPY public.client (id, first_name, last_name, dob) FROM stdin;
    public          postgres    false    286   �g                0    29027    item 
   TABLE DATA           /   COPY public.item (id, name, price) FROM stdin;
    public          postgres    false    287   )h                0    29030    item_in_list 
   TABLE DATA           B   COPY public.item_in_list (item_id, list_id, quantity) FROM stdin;
    public          postgres    false    288   �h                0    29033    list 
   TABLE DATA           4   COPY public.list (id, name, creator_id) FROM stdin;
    public          postgres    false    289   i                0    29036    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          postgres    false    290   �i                0    29323    messages 
   TABLE DATA           S   COPY realtime.messages (id, topic, extension, inserted_at, updated_at) FROM stdin;
    realtime          supabase_realtime_admin    false    296   �i                0    28710    schema_migrations 
   TABLE DATA           C   COPY realtime.schema_migrations (version, inserted_at) FROM stdin;
    realtime          supabase_admin    false    277   �i                0    28733    subscription 
   TABLE DATA           b   COPY realtime.subscription (id, subscription_id, entity, filters, claims, created_at) FROM stdin;
    realtime          supabase_admin    false    280   @k                0    29039    data_catalog 
   TABLE DATA           n   COPY sdm_dba.data_catalog (key_metric, source_key, source_id, metric_nice_name, uom, division_id) FROM stdin;
    sdm_dba          postgres    false    291   ]k                0    29043    timeseries_data 
   TABLE DATA           A   COPY sdm_dba.timeseries_data (key_metric, ts, value) FROM stdin;
    sdm_dba          postgres    false    292   #t      �          0    16540    buckets 
   TABLE DATA           �   COPY storage.buckets (id, name, owner, created_at, updated_at, public, avif_autodetection, file_size_limit, allowed_mime_types, owner_id) FROM stdin;
    storage          supabase_storage_admin    false    246   #%      �          0    16582 
   migrations 
   TABLE DATA           B   COPY storage.migrations (id, name, hash, executed_at) FROM stdin;
    storage          supabase_storage_admin    false    248   @%      �          0    16555    objects 
   TABLE DATA           �   COPY storage.objects (id, bucket_id, name, owner, created_at, updated_at, last_accessed_at, metadata, version, owner_id) FROM stdin;
    storage          supabase_storage_admin    false    247   �)      	          0    28654    s3_multipart_uploads 
   TABLE DATA           �   COPY storage.s3_multipart_uploads (id, in_progress_size, upload_signature, bucket_id, key, version, owner_id, created_at) FROM stdin;
    storage          supabase_storage_admin    false    275   *      
          0    28668    s3_multipart_uploads_parts 
   TABLE DATA           �   COPY storage.s3_multipart_uploads_parts (id, upload_id, size, part_number, bucket_id, key, etag, owner_id, version, created_at) FROM stdin;
    storage          supabase_storage_admin    false    276   )*                0    29046    tank_metadata 
   TABLE DATA           [   COPY tank.tank_metadata (scadaid, create_ts, update_ts, tanksize, division_id) FROM stdin;
    tank          postgres    false    293   F*      b          0    16951    secrets 
   TABLE DATA           f   COPY vault.secrets (id, name, description, secret, key_id, nonce, created_at, updated_at) FROM stdin;
    vault          supabase_admin    false    262   �+      �           0    0    refresh_tokens_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('auth.refresh_tokens_id_seq', 1, false);
          auth          supabase_auth_admin    false    241            �           0    0    key_key_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('pgsodium.key_key_id_seq', 1, false);
          pgsodium          supabase_admin    false    255            �           0    0    messages_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('realtime.messages_id_seq', 1, false);
          realtime          supabase_realtime_admin    false    295            �           0    0    subscription_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('realtime.subscription_id_seq', 1, false);
          realtime          supabase_admin    false    279            �           2606    28485    mfa_amr_claims amr_id_pk 
   CONSTRAINT     T   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT amr_id_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT amr_id_pk;
       auth            supabase_auth_admin    false    269            �           2606    16525 (   audit_log_entries audit_log_entries_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY auth.audit_log_entries
    ADD CONSTRAINT audit_log_entries_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY auth.audit_log_entries DROP CONSTRAINT audit_log_entries_pkey;
       auth            supabase_auth_admin    false    244            �           2606    28591    flow_state flow_state_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY auth.flow_state
    ADD CONSTRAINT flow_state_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY auth.flow_state DROP CONSTRAINT flow_state_pkey;
       auth            supabase_auth_admin    false    274            �           2606    28609    identities identities_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_pkey;
       auth            supabase_auth_admin    false    265            �           2606    28619 1   identities identities_provider_id_provider_unique 
   CONSTRAINT     {   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_provider_id_provider_unique UNIQUE (provider_id, provider);
 Y   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_provider_id_provider_unique;
       auth            supabase_auth_admin    false    265    265            �           2606    16518    instances instances_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY auth.instances
    ADD CONSTRAINT instances_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY auth.instances DROP CONSTRAINT instances_pkey;
       auth            supabase_auth_admin    false    243            �           2606    28478 C   mfa_amr_claims mfa_amr_claims_session_id_authentication_method_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey UNIQUE (session_id, authentication_method);
 k   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey;
       auth            supabase_auth_admin    false    269    269            �           2606    28466 "   mfa_challenges mfa_challenges_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.mfa_challenges DROP CONSTRAINT mfa_challenges_pkey;
       auth            supabase_auth_admin    false    268            �           2606    28453    mfa_factors mfa_factors_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_pkey;
       auth            supabase_auth_admin    false    267            '           2606    29168 $   one_time_tokens one_time_tokens_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY auth.one_time_tokens DROP CONSTRAINT one_time_tokens_pkey;
       auth            supabase_auth_admin    false    294            �           2606    16508 "   refresh_tokens refresh_tokens_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_pkey;
       auth            supabase_auth_admin    false    242            �           2606    28395 *   refresh_tokens refresh_tokens_token_unique 
   CONSTRAINT     d   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_token_unique UNIQUE (token);
 R   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_token_unique;
       auth            supabase_auth_admin    false    242            �           2606    28525 +   saml_providers saml_providers_entity_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_entity_id_key UNIQUE (entity_id);
 S   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_entity_id_key;
       auth            supabase_auth_admin    false    272            �           2606    28523 "   saml_providers saml_providers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_pkey;
       auth            supabase_auth_admin    false    272            �           2606    28539 (   saml_relay_states saml_relay_states_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_pkey;
       auth            supabase_auth_admin    false    273            �           2606    16531 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 P   ALTER TABLE ONLY auth.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       auth            supabase_auth_admin    false    245            �           2606    28416    sessions sessions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY auth.sessions DROP CONSTRAINT sessions_pkey;
       auth            supabase_auth_admin    false    266            �           2606    28506    sso_domains sso_domains_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY auth.sso_domains DROP CONSTRAINT sso_domains_pkey;
       auth            supabase_auth_admin    false    271            �           2606    28497     sso_providers sso_providers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY auth.sso_providers
    ADD CONSTRAINT sso_providers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY auth.sso_providers DROP CONSTRAINT sso_providers_pkey;
       auth            supabase_auth_admin    false    270            �           2606    28579    users users_phone_key 
   CONSTRAINT     O   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);
 =   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_phone_key;
       auth            supabase_auth_admin    false    240            �           2606    16495    users users_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_pkey;
       auth            supabase_auth_admin    false    240                       2606    29052    fdm_division fdm_division_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY fdm_dba.fdm_division
    ADD CONSTRAINT fdm_division_pkey PRIMARY KEY (division_id);
 I   ALTER TABLE ONLY fdm_dba.fdm_division DROP CONSTRAINT fdm_division_pkey;
       fdm_dba            postgres    false    283                       2606    29054 $   mrte_completion mrte_completion_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY mrte_dba.mrte_completion
    ADD CONSTRAINT mrte_completion_pkey PRIMARY KEY (completion_id);
 P   ALTER TABLE ONLY mrte_dba.mrte_completion DROP CONSTRAINT mrte_completion_pkey;
       mrte_dba            postgres    false    284                       2606    29056 0   mrte_completion mrte_completion_primo_prprty_key 
   CONSTRAINT     u   ALTER TABLE ONLY mrte_dba.mrte_completion
    ADD CONSTRAINT mrte_completion_primo_prprty_key UNIQUE (primo_prprty);
 \   ALTER TABLE ONLY mrte_dba.mrte_completion DROP CONSTRAINT mrte_completion_primo_prprty_key;
       mrte_dba            postgres    false    284                       2606    29058     mrte_facility mrte_facility_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY mrte_dba.mrte_facility
    ADD CONSTRAINT mrte_facility_pkey PRIMARY KEY (facility_id);
 L   ALTER TABLE ONLY mrte_dba.mrte_facility DROP CONSTRAINT mrte_facility_pkey;
       mrte_dba            postgres    false    285                       2606    29060 ,   mrte_facility mrte_facility_primo_prprty_key 
   CONSTRAINT     q   ALTER TABLE ONLY mrte_dba.mrte_facility
    ADD CONSTRAINT mrte_facility_primo_prprty_key UNIQUE (primo_prprty);
 X   ALTER TABLE ONLY mrte_dba.mrte_facility DROP CONSTRAINT mrte_facility_primo_prprty_key;
       mrte_dba            postgres    false    285            /           2606    29619    routes routes_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY mrte_dba.routes
    ADD CONSTRAINT routes_pkey PRIMARY KEY (route_id);
 >   ALTER TABLE ONLY mrte_dba.routes DROP CONSTRAINT routes_pkey;
       mrte_dba            postgres    false    297                       2606    29062    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    286                       2606    29064    item_in_list item_in_list_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.item_in_list
    ADD CONSTRAINT item_in_list_pkey PRIMARY KEY (item_id, list_id);
 H   ALTER TABLE ONLY public.item_in_list DROP CONSTRAINT item_in_list_pkey;
       public            postgres    false    288    288                       2606    29066    item item_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.item DROP CONSTRAINT item_pkey;
       public            postgres    false    287                       2606    29068    list list_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.list
    ADD CONSTRAINT list_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.list DROP CONSTRAINT list_pkey;
       public            postgres    false    289                       2606    29070 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            postgres    false    290            ,           2606    29330    messages messages_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY realtime.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY realtime.messages DROP CONSTRAINT messages_pkey;
       realtime            supabase_realtime_admin    false    296                       2606    28741    subscription pk_subscription 
   CONSTRAINT     \   ALTER TABLE ONLY realtime.subscription
    ADD CONSTRAINT pk_subscription PRIMARY KEY (id);
 H   ALTER TABLE ONLY realtime.subscription DROP CONSTRAINT pk_subscription;
       realtime            supabase_admin    false    280                       2606    28714 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY realtime.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 T   ALTER TABLE ONLY realtime.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       realtime            supabase_admin    false    277                       2606    29072    data_catalog constraint_name 
   CONSTRAINT     o   ALTER TABLE ONLY sdm_dba.data_catalog
    ADD CONSTRAINT constraint_name UNIQUE (source_id, metric_nice_name);
 G   ALTER TABLE ONLY sdm_dba.data_catalog DROP CONSTRAINT constraint_name;
       sdm_dba            postgres    false    291    291            !           2606    29074    data_catalog data_catalog_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY sdm_dba.data_catalog
    ADD CONSTRAINT data_catalog_pkey PRIMARY KEY (key_metric);
 I   ALTER TABLE ONLY sdm_dba.data_catalog DROP CONSTRAINT data_catalog_pkey;
       sdm_dba            postgres    false    291            #           2606    29076 $   timeseries_data timeseries_data_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY sdm_dba.timeseries_data
    ADD CONSTRAINT timeseries_data_pkey PRIMARY KEY (key_metric, ts);
 O   ALTER TABLE ONLY sdm_dba.timeseries_data DROP CONSTRAINT timeseries_data_pkey;
       sdm_dba            postgres    false    292    292            �           2606    16548    buckets buckets_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY storage.buckets
    ADD CONSTRAINT buckets_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY storage.buckets DROP CONSTRAINT buckets_pkey;
       storage            supabase_storage_admin    false    246            �           2606    16589    migrations migrations_name_key 
   CONSTRAINT     Z   ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_name_key UNIQUE (name);
 I   ALTER TABLE ONLY storage.migrations DROP CONSTRAINT migrations_name_key;
       storage            supabase_storage_admin    false    248            �           2606    16587    migrations migrations_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY storage.migrations DROP CONSTRAINT migrations_pkey;
       storage            supabase_storage_admin    false    248            �           2606    16565    objects objects_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT objects_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY storage.objects DROP CONSTRAINT objects_pkey;
       storage            supabase_storage_admin    false    247                       2606    28677 :   s3_multipart_uploads_parts s3_multipart_uploads_parts_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_pkey PRIMARY KEY (id);
 e   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_pkey;
       storage            supabase_storage_admin    false    276                       2606    28662 .   s3_multipart_uploads s3_multipart_uploads_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY storage.s3_multipart_uploads DROP CONSTRAINT s3_multipart_uploads_pkey;
       storage            supabase_storage_admin    false    275            %           2606    29078     tank_metadata tank_metadata_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY tank.tank_metadata
    ADD CONSTRAINT tank_metadata_pkey PRIMARY KEY (scadaid);
 H   ALTER TABLE ONLY tank.tank_metadata DROP CONSTRAINT tank_metadata_pkey;
       tank            postgres    false    293            �           1259    16526    audit_logs_instance_id_idx    INDEX     ]   CREATE INDEX audit_logs_instance_id_idx ON auth.audit_log_entries USING btree (instance_id);
 ,   DROP INDEX auth.audit_logs_instance_id_idx;
       auth            supabase_auth_admin    false    244            �           1259    28405    confirmation_token_idx    INDEX     �   CREATE UNIQUE INDEX confirmation_token_idx ON auth.users USING btree (confirmation_token) WHERE ((confirmation_token)::text !~ '^[0-9 ]*$'::text);
 (   DROP INDEX auth.confirmation_token_idx;
       auth            supabase_auth_admin    false    240    240            �           1259    28407    email_change_token_current_idx    INDEX     �   CREATE UNIQUE INDEX email_change_token_current_idx ON auth.users USING btree (email_change_token_current) WHERE ((email_change_token_current)::text !~ '^[0-9 ]*$'::text);
 0   DROP INDEX auth.email_change_token_current_idx;
       auth            supabase_auth_admin    false    240    240            �           1259    28408    email_change_token_new_idx    INDEX     �   CREATE UNIQUE INDEX email_change_token_new_idx ON auth.users USING btree (email_change_token_new) WHERE ((email_change_token_new)::text !~ '^[0-9 ]*$'::text);
 ,   DROP INDEX auth.email_change_token_new_idx;
       auth            supabase_auth_admin    false    240    240            �           1259    28487    factor_id_created_at_idx    INDEX     ]   CREATE INDEX factor_id_created_at_idx ON auth.mfa_factors USING btree (user_id, created_at);
 *   DROP INDEX auth.factor_id_created_at_idx;
       auth            supabase_auth_admin    false    267    267            �           1259    28595    flow_state_created_at_idx    INDEX     Y   CREATE INDEX flow_state_created_at_idx ON auth.flow_state USING btree (created_at DESC);
 +   DROP INDEX auth.flow_state_created_at_idx;
       auth            supabase_auth_admin    false    274            �           1259    28575    identities_email_idx    INDEX     [   CREATE INDEX identities_email_idx ON auth.identities USING btree (email text_pattern_ops);
 &   DROP INDEX auth.identities_email_idx;
       auth            supabase_auth_admin    false    265            �           0    0    INDEX identities_email_idx    COMMENT     c   COMMENT ON INDEX auth.identities_email_idx IS 'Auth: Ensures indexed queries on the email column';
          auth          supabase_auth_admin    false    3794            �           1259    28402    identities_user_id_idx    INDEX     N   CREATE INDEX identities_user_id_idx ON auth.identities USING btree (user_id);
 (   DROP INDEX auth.identities_user_id_idx;
       auth            supabase_auth_admin    false    265            �           1259    28592    idx_auth_code    INDEX     G   CREATE INDEX idx_auth_code ON auth.flow_state USING btree (auth_code);
    DROP INDEX auth.idx_auth_code;
       auth            supabase_auth_admin    false    274            �           1259    28593    idx_user_id_auth_method    INDEX     f   CREATE INDEX idx_user_id_auth_method ON auth.flow_state USING btree (user_id, authentication_method);
 )   DROP INDEX auth.idx_user_id_auth_method;
       auth            supabase_auth_admin    false    274    274            �           1259    28598    mfa_challenge_created_at_idx    INDEX     `   CREATE INDEX mfa_challenge_created_at_idx ON auth.mfa_challenges USING btree (created_at DESC);
 .   DROP INDEX auth.mfa_challenge_created_at_idx;
       auth            supabase_auth_admin    false    268            �           1259    28459 %   mfa_factors_user_friendly_name_unique    INDEX     �   CREATE UNIQUE INDEX mfa_factors_user_friendly_name_unique ON auth.mfa_factors USING btree (friendly_name, user_id) WHERE (TRIM(BOTH FROM friendly_name) <> ''::text);
 7   DROP INDEX auth.mfa_factors_user_friendly_name_unique;
       auth            supabase_auth_admin    false    267    267    267            �           1259    28604    mfa_factors_user_id_idx    INDEX     P   CREATE INDEX mfa_factors_user_id_idx ON auth.mfa_factors USING btree (user_id);
 )   DROP INDEX auth.mfa_factors_user_id_idx;
       auth            supabase_auth_admin    false    267            (           1259    29175 #   one_time_tokens_relates_to_hash_idx    INDEX     b   CREATE INDEX one_time_tokens_relates_to_hash_idx ON auth.one_time_tokens USING hash (relates_to);
 5   DROP INDEX auth.one_time_tokens_relates_to_hash_idx;
       auth            supabase_auth_admin    false    294            )           1259    29174 #   one_time_tokens_token_hash_hash_idx    INDEX     b   CREATE INDEX one_time_tokens_token_hash_hash_idx ON auth.one_time_tokens USING hash (token_hash);
 5   DROP INDEX auth.one_time_tokens_token_hash_hash_idx;
       auth            supabase_auth_admin    false    294            *           1259    29176 &   one_time_tokens_user_id_token_type_key    INDEX     v   CREATE UNIQUE INDEX one_time_tokens_user_id_token_type_key ON auth.one_time_tokens USING btree (user_id, token_type);
 8   DROP INDEX auth.one_time_tokens_user_id_token_type_key;
       auth            supabase_auth_admin    false    294    294            �           1259    28409    reauthentication_token_idx    INDEX     �   CREATE UNIQUE INDEX reauthentication_token_idx ON auth.users USING btree (reauthentication_token) WHERE ((reauthentication_token)::text !~ '^[0-9 ]*$'::text);
 ,   DROP INDEX auth.reauthentication_token_idx;
       auth            supabase_auth_admin    false    240    240            �           1259    28406    recovery_token_idx    INDEX     �   CREATE UNIQUE INDEX recovery_token_idx ON auth.users USING btree (recovery_token) WHERE ((recovery_token)::text !~ '^[0-9 ]*$'::text);
 $   DROP INDEX auth.recovery_token_idx;
       auth            supabase_auth_admin    false    240    240            �           1259    16509    refresh_tokens_instance_id_idx    INDEX     ^   CREATE INDEX refresh_tokens_instance_id_idx ON auth.refresh_tokens USING btree (instance_id);
 0   DROP INDEX auth.refresh_tokens_instance_id_idx;
       auth            supabase_auth_admin    false    242            �           1259    16510 &   refresh_tokens_instance_id_user_id_idx    INDEX     o   CREATE INDEX refresh_tokens_instance_id_user_id_idx ON auth.refresh_tokens USING btree (instance_id, user_id);
 8   DROP INDEX auth.refresh_tokens_instance_id_user_id_idx;
       auth            supabase_auth_admin    false    242    242            �           1259    28401    refresh_tokens_parent_idx    INDEX     T   CREATE INDEX refresh_tokens_parent_idx ON auth.refresh_tokens USING btree (parent);
 +   DROP INDEX auth.refresh_tokens_parent_idx;
       auth            supabase_auth_admin    false    242            �           1259    28489 %   refresh_tokens_session_id_revoked_idx    INDEX     m   CREATE INDEX refresh_tokens_session_id_revoked_idx ON auth.refresh_tokens USING btree (session_id, revoked);
 7   DROP INDEX auth.refresh_tokens_session_id_revoked_idx;
       auth            supabase_auth_admin    false    242    242            �           1259    28594    refresh_tokens_updated_at_idx    INDEX     a   CREATE INDEX refresh_tokens_updated_at_idx ON auth.refresh_tokens USING btree (updated_at DESC);
 /   DROP INDEX auth.refresh_tokens_updated_at_idx;
       auth            supabase_auth_admin    false    242            �           1259    28531 "   saml_providers_sso_provider_id_idx    INDEX     f   CREATE INDEX saml_providers_sso_provider_id_idx ON auth.saml_providers USING btree (sso_provider_id);
 4   DROP INDEX auth.saml_providers_sso_provider_id_idx;
       auth            supabase_auth_admin    false    272            �           1259    28596     saml_relay_states_created_at_idx    INDEX     g   CREATE INDEX saml_relay_states_created_at_idx ON auth.saml_relay_states USING btree (created_at DESC);
 2   DROP INDEX auth.saml_relay_states_created_at_idx;
       auth            supabase_auth_admin    false    273            �           1259    28546    saml_relay_states_for_email_idx    INDEX     `   CREATE INDEX saml_relay_states_for_email_idx ON auth.saml_relay_states USING btree (for_email);
 1   DROP INDEX auth.saml_relay_states_for_email_idx;
       auth            supabase_auth_admin    false    273            �           1259    28545 %   saml_relay_states_sso_provider_id_idx    INDEX     l   CREATE INDEX saml_relay_states_sso_provider_id_idx ON auth.saml_relay_states USING btree (sso_provider_id);
 7   DROP INDEX auth.saml_relay_states_sso_provider_id_idx;
       auth            supabase_auth_admin    false    273            �           1259    28597    sessions_not_after_idx    INDEX     S   CREATE INDEX sessions_not_after_idx ON auth.sessions USING btree (not_after DESC);
 (   DROP INDEX auth.sessions_not_after_idx;
       auth            supabase_auth_admin    false    266            �           1259    28488    sessions_user_id_idx    INDEX     J   CREATE INDEX sessions_user_id_idx ON auth.sessions USING btree (user_id);
 &   DROP INDEX auth.sessions_user_id_idx;
       auth            supabase_auth_admin    false    266            �           1259    28513    sso_domains_domain_idx    INDEX     \   CREATE UNIQUE INDEX sso_domains_domain_idx ON auth.sso_domains USING btree (lower(domain));
 (   DROP INDEX auth.sso_domains_domain_idx;
       auth            supabase_auth_admin    false    271    271            �           1259    28512    sso_domains_sso_provider_id_idx    INDEX     `   CREATE INDEX sso_domains_sso_provider_id_idx ON auth.sso_domains USING btree (sso_provider_id);
 1   DROP INDEX auth.sso_domains_sso_provider_id_idx;
       auth            supabase_auth_admin    false    271            �           1259    28498    sso_providers_resource_id_idx    INDEX     j   CREATE UNIQUE INDEX sso_providers_resource_id_idx ON auth.sso_providers USING btree (lower(resource_id));
 /   DROP INDEX auth.sso_providers_resource_id_idx;
       auth            supabase_auth_admin    false    270    270            �           1259    28486    user_id_created_at_idx    INDEX     X   CREATE INDEX user_id_created_at_idx ON auth.sessions USING btree (user_id, created_at);
 (   DROP INDEX auth.user_id_created_at_idx;
       auth            supabase_auth_admin    false    266    266            �           1259    28566    users_email_partial_key    INDEX     k   CREATE UNIQUE INDEX users_email_partial_key ON auth.users USING btree (email) WHERE (is_sso_user = false);
 )   DROP INDEX auth.users_email_partial_key;
       auth            supabase_auth_admin    false    240    240            �           0    0    INDEX users_email_partial_key    COMMENT     }   COMMENT ON INDEX auth.users_email_partial_key IS 'Auth: A partial unique index that applies only when is_sso_user is false';
          auth          supabase_auth_admin    false    3748            �           1259    28403    users_instance_id_email_idx    INDEX     h   CREATE INDEX users_instance_id_email_idx ON auth.users USING btree (instance_id, lower((email)::text));
 -   DROP INDEX auth.users_instance_id_email_idx;
       auth            supabase_auth_admin    false    240    240            �           1259    16499    users_instance_id_idx    INDEX     L   CREATE INDEX users_instance_id_idx ON auth.users USING btree (instance_id);
 '   DROP INDEX auth.users_instance_id_idx;
       auth            supabase_auth_admin    false    240            �           1259    28621    users_is_anonymous_idx    INDEX     N   CREATE INDEX users_is_anonymous_idx ON auth.users USING btree (is_anonymous);
 (   DROP INDEX auth.users_is_anonymous_idx;
       auth            supabase_auth_admin    false    240                       1259    28744    ix_realtime_subscription_entity    INDEX     [   CREATE INDEX ix_realtime_subscription_entity ON realtime.subscription USING hash (entity);
 5   DROP INDEX realtime.ix_realtime_subscription_entity;
       realtime            supabase_admin    false    280            -           1259    29331    messages_topic_index    INDEX     L   CREATE INDEX messages_topic_index ON realtime.messages USING btree (topic);
 *   DROP INDEX realtime.messages_topic_index;
       realtime            supabase_realtime_admin    false    296            	           1259    28790 /   subscription_subscription_id_entity_filters_key    INDEX     �   CREATE UNIQUE INDEX subscription_subscription_id_entity_filters_key ON realtime.subscription USING btree (subscription_id, entity, filters);
 E   DROP INDEX realtime.subscription_subscription_id_entity_filters_key;
       realtime            supabase_admin    false    280    280    280            �           1259    16554    bname    INDEX     A   CREATE UNIQUE INDEX bname ON storage.buckets USING btree (name);
    DROP INDEX storage.bname;
       storage            supabase_storage_admin    false    246            �           1259    16576    bucketid_objname    INDEX     W   CREATE UNIQUE INDEX bucketid_objname ON storage.objects USING btree (bucket_id, name);
 %   DROP INDEX storage.bucketid_objname;
       storage            supabase_storage_admin    false    247    247            �           1259    28688    idx_multipart_uploads_list    INDEX     r   CREATE INDEX idx_multipart_uploads_list ON storage.s3_multipart_uploads USING btree (bucket_id, key, created_at);
 /   DROP INDEX storage.idx_multipart_uploads_list;
       storage            supabase_storage_admin    false    275    275    275            �           1259    28653    idx_objects_bucket_id_name    INDEX     f   CREATE INDEX idx_objects_bucket_id_name ON storage.objects USING btree (bucket_id, name COLLATE "C");
 /   DROP INDEX storage.idx_objects_bucket_id_name;
       storage            supabase_storage_admin    false    247    247            �           1259    16577    name_prefix_search    INDEX     X   CREATE INDEX name_prefix_search ON storage.objects USING btree (name text_pattern_ops);
 '   DROP INDEX storage.name_prefix_search;
       storage            supabase_storage_admin    false    247            I           2620    28746    subscription tr_check_filters    TRIGGER     �   CREATE TRIGGER tr_check_filters BEFORE INSERT OR UPDATE ON realtime.subscription FOR EACH ROW EXECUTE FUNCTION realtime.subscription_check_filters();
 8   DROP TRIGGER tr_check_filters ON realtime.subscription;
       realtime          supabase_admin    false    280    522            H           2620    28641 !   objects update_objects_updated_at    TRIGGER     �   CREATE TRIGGER update_objects_updated_at BEFORE UPDATE ON storage.objects FOR EACH ROW EXECUTE FUNCTION storage.update_updated_at_column();
 ;   DROP TRIGGER update_objects_updated_at ON storage.objects;
       storage          supabase_storage_admin    false    518    247            2           2606    28389 "   identities identities_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_user_id_fkey;
       auth          supabase_auth_admin    false    3755    265    240            6           2606    28479 -   mfa_amr_claims mfa_amr_claims_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT mfa_amr_claims_session_id_fkey;
       auth          supabase_auth_admin    false    269    3802    266            5           2606    28467 1   mfa_challenges mfa_challenges_auth_factor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_auth_factor_id_fkey FOREIGN KEY (factor_id) REFERENCES auth.mfa_factors(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY auth.mfa_challenges DROP CONSTRAINT mfa_challenges_auth_factor_id_fkey;
       auth          supabase_auth_admin    false    267    3807    268            4           2606    28454 $   mfa_factors mfa_factors_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_user_id_fkey;
       auth          supabase_auth_admin    false    267    240    3755            F           2606    29169 ,   one_time_tokens one_time_tokens_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY auth.one_time_tokens DROP CONSTRAINT one_time_tokens_user_id_fkey;
       auth          supabase_auth_admin    false    3755    294    240            0           2606    28422 -   refresh_tokens refresh_tokens_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_session_id_fkey;
       auth          supabase_auth_admin    false    3802    266    242            8           2606    28526 2   saml_providers saml_providers_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_sso_provider_id_fkey;
       auth          supabase_auth_admin    false    270    3818    272            9           2606    28599 6   saml_relay_states saml_relay_states_flow_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_flow_state_id_fkey FOREIGN KEY (flow_state_id) REFERENCES auth.flow_state(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_flow_state_id_fkey;
       auth          supabase_auth_admin    false    274    3836    273            :           2606    28540 8   saml_relay_states saml_relay_states_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_sso_provider_id_fkey;
       auth          supabase_auth_admin    false    273    3818    270            3           2606    28417    sessions sessions_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY auth.sessions DROP CONSTRAINT sessions_user_id_fkey;
       auth          supabase_auth_admin    false    266    240    3755            7           2606    28507 ,   sso_domains sso_domains_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY auth.sso_domains DROP CONSTRAINT sso_domains_sso_provider_id_fkey;
       auth          supabase_auth_admin    false    271    3818    270            @           2606    29079    mrte_facility constraint_name    FK CONSTRAINT     �   ALTER TABLE ONLY mrte_dba.mrte_facility
    ADD CONSTRAINT constraint_name FOREIGN KEY (division_id) REFERENCES fdm_dba.fdm_division(division_id);
 I   ALTER TABLE ONLY mrte_dba.mrte_facility DROP CONSTRAINT constraint_name;
       mrte_dba          postgres    false    285    3851    283            >           2606    29084 0   mrte_completion mrte_completion_division_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY mrte_dba.mrte_completion
    ADD CONSTRAINT mrte_completion_division_id_fkey FOREIGN KEY (division_id) REFERENCES fdm_dba.fdm_division(division_id);
 \   ALTER TABLE ONLY mrte_dba.mrte_completion DROP CONSTRAINT mrte_completion_division_id_fkey;
       mrte_dba          postgres    false    284    3851    283            ?           2606    29089 5   mrte_completion mrte_completion_fac_primo_prprty_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY mrte_dba.mrte_completion
    ADD CONSTRAINT mrte_completion_fac_primo_prprty_fkey FOREIGN KEY (fac_primo_prprty) REFERENCES mrte_dba.mrte_facility(primo_prprty);
 a   ALTER TABLE ONLY mrte_dba.mrte_completion DROP CONSTRAINT mrte_completion_fac_primo_prprty_fkey;
       mrte_dba          postgres    false    3859    284    285            A           2606    29094 ,   mrte_facility mrte_facility_division_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY mrte_dba.mrte_facility
    ADD CONSTRAINT mrte_facility_division_id_fkey FOREIGN KEY (division_id) REFERENCES fdm_dba.fdm_division(division_id);
 X   ALTER TABLE ONLY mrte_dba.mrte_facility DROP CONSTRAINT mrte_facility_division_id_fkey;
       mrte_dba          postgres    false    3851    283    285            G           2606    29620    routes routes_division_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY mrte_dba.routes
    ADD CONSTRAINT routes_division_id_fkey FOREIGN KEY (division_id) REFERENCES fdm_dba.fdm_division(division_id);
 J   ALTER TABLE ONLY mrte_dba.routes DROP CONSTRAINT routes_division_id_fkey;
       mrte_dba          postgres    false    297    283    3851            B           2606    29099 &   item_in_list item_in_list_item_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.item_in_list
    ADD CONSTRAINT item_in_list_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.item(id);
 P   ALTER TABLE ONLY public.item_in_list DROP CONSTRAINT item_in_list_item_id_fkey;
       public          postgres    false    3863    287    288            C           2606    29104 &   item_in_list item_in_list_list_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.item_in_list
    ADD CONSTRAINT item_in_list_list_id_fkey FOREIGN KEY (list_id) REFERENCES public.list(id);
 P   ALTER TABLE ONLY public.item_in_list DROP CONSTRAINT item_in_list_list_id_fkey;
       public          postgres    false    3867    288    289            D           2606    29109    list list_creator_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.list
    ADD CONSTRAINT list_creator_id_fkey FOREIGN KEY (creator_id) REFERENCES public.client(id);
 C   ALTER TABLE ONLY public.list DROP CONSTRAINT list_creator_id_fkey;
       public          postgres    false    3861    289    286            E           2606    29114 /   timeseries_data timeseries_data_key_metric_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY sdm_dba.timeseries_data
    ADD CONSTRAINT timeseries_data_key_metric_fkey FOREIGN KEY (key_metric) REFERENCES sdm_dba.data_catalog(key_metric);
 Z   ALTER TABLE ONLY sdm_dba.timeseries_data DROP CONSTRAINT timeseries_data_key_metric_fkey;
       sdm_dba          postgres    false    292    3873    291            1           2606    16566    objects objects_bucketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT "objects_bucketId_fkey" FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 J   ALTER TABLE ONLY storage.objects DROP CONSTRAINT "objects_bucketId_fkey";
       storage          supabase_storage_admin    false    3774    247    246            ;           2606    28663 8   s3_multipart_uploads s3_multipart_uploads_bucket_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 c   ALTER TABLE ONLY storage.s3_multipart_uploads DROP CONSTRAINT s3_multipart_uploads_bucket_id_fkey;
       storage          supabase_storage_admin    false    275    246    3774            <           2606    28683 D   s3_multipart_uploads_parts s3_multipart_uploads_parts_bucket_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 o   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey;
       storage          supabase_storage_admin    false    246    276    3774            =           2606    28678 D   s3_multipart_uploads_parts s3_multipart_uploads_parts_upload_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey FOREIGN KEY (upload_id) REFERENCES storage.s3_multipart_uploads(id) ON DELETE CASCADE;
 o   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey;
       storage          supabase_storage_admin    false    276    275    3841            �           0    16519    audit_log_entries    ROW SECURITY     =   ALTER TABLE auth.audit_log_entries ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    244            �           0    28585 
   flow_state    ROW SECURITY     6   ALTER TABLE auth.flow_state ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    274            �           0    28382 
   identities    ROW SECURITY     6   ALTER TABLE auth.identities ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    265            �           0    16512 	   instances    ROW SECURITY     5   ALTER TABLE auth.instances ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    243            �           0    28472    mfa_amr_claims    ROW SECURITY     :   ALTER TABLE auth.mfa_amr_claims ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    269            �           0    28460    mfa_challenges    ROW SECURITY     :   ALTER TABLE auth.mfa_challenges ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    268            �           0    28447    mfa_factors    ROW SECURITY     7   ALTER TABLE auth.mfa_factors ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    267            �           0    29159    one_time_tokens    ROW SECURITY     ;   ALTER TABLE auth.one_time_tokens ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    294            �           0    16501    refresh_tokens    ROW SECURITY     :   ALTER TABLE auth.refresh_tokens ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    242            �           0    28514    saml_providers    ROW SECURITY     :   ALTER TABLE auth.saml_providers ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    272            �           0    28532    saml_relay_states    ROW SECURITY     =   ALTER TABLE auth.saml_relay_states ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    273            �           0    16527    schema_migrations    ROW SECURITY     =   ALTER TABLE auth.schema_migrations ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    245            �           0    28412    sessions    ROW SECURITY     4   ALTER TABLE auth.sessions ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    266            �           0    28499    sso_domains    ROW SECURITY     7   ALTER TABLE auth.sso_domains ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    271            �           0    28490    sso_providers    ROW SECURITY     9   ALTER TABLE auth.sso_providers ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    270            �           0    16489    users    ROW SECURITY     1   ALTER TABLE auth.users ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    240            �           0    29323    messages    ROW SECURITY     8   ALTER TABLE realtime.messages ENABLE ROW LEVEL SECURITY;          realtime          supabase_realtime_admin    false    296            �           0    16540    buckets    ROW SECURITY     6   ALTER TABLE storage.buckets ENABLE ROW LEVEL SECURITY;          storage          supabase_storage_admin    false    246            �           0    16582 
   migrations    ROW SECURITY     9   ALTER TABLE storage.migrations ENABLE ROW LEVEL SECURITY;          storage          supabase_storage_admin    false    248            �           0    16555    objects    ROW SECURITY     6   ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;          storage          supabase_storage_admin    false    247            �           0    28654    s3_multipart_uploads    ROW SECURITY     C   ALTER TABLE storage.s3_multipart_uploads ENABLE ROW LEVEL SECURITY;          storage          supabase_storage_admin    false    275            �           0    28668    s3_multipart_uploads_parts    ROW SECURITY     I   ALTER TABLE storage.s3_multipart_uploads_parts ENABLE ROW LEVEL SECURITY;          storage          supabase_storage_admin    false    276            �           6104    16419    supabase_realtime    PUBLICATION     Z   CREATE PUBLICATION supabase_realtime WITH (publish = 'insert, update, delete, truncate');
 $   DROP PUBLICATION supabase_realtime;
                postgres    false            �	           826    16597     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES  TO dashboard_user;
          auth          supabase_auth_admin    false    16            �	           826    16598     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS  TO dashboard_user;
          auth          supabase_auth_admin    false    16            �	           826    16596    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON TABLES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON TABLES  TO dashboard_user;
          auth          supabase_auth_admin    false    16            �	           826    16980     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     }   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON SEQUENCES  TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    14            �	           826    16979     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     }   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON FUNCTIONS  TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    14            �	           826    16978    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     z   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON TABLES  TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    14             
           826    16624     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES  TO service_role;
          graphql          supabase_admin    false    21            �	           826    16623     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS  TO service_role;
          graphql          supabase_admin    false    21            �	           826    16622    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES  TO service_role;
          graphql          supabase_admin    false    21            �	           826    16611     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES  TO service_role;
          graphql_public          supabase_admin    false    20            �	           826    16610     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS  TO service_role;
          graphql_public          supabase_admin    false    20            �	           826    16609    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES  TO service_role;
          graphql_public          supabase_admin    false    20            �	           826    16839     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     s   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium GRANT ALL ON SEQUENCES  TO pgsodium_keyholder;
          pgsodium          supabase_admin    false    17            �	           826    16838    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     p   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium GRANT ALL ON TABLES  TO pgsodium_keyholder;
          pgsodium          supabase_admin    false    17            �	           826    16836     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     y   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium_masks GRANT ALL ON SEQUENCES  TO pgsodium_keyiduser;
          pgsodium_masks          supabase_admin    false    5            �	           826    16837     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     y   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium_masks GRANT ALL ON FUNCTIONS  TO pgsodium_keyiduser;
          pgsodium_masks          supabase_admin    false    5            �	           826    16835    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     v   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium_masks GRANT ALL ON TABLES  TO pgsodium_keyiduser;
          pgsodium_masks          supabase_admin    false    5            �	           826    16484     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES  TO service_role;
          public          postgres    false            �	           826    16485     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON SEQUENCES  TO service_role;
          public          supabase_admin    false            �	           826    16483     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS  TO service_role;
          public          postgres    false            �	           826    16487     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON FUNCTIONS  TO service_role;
          public          supabase_admin    false            �	           826    16482    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     }  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO service_role;
          public          postgres    false            �	           826    16486    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA public GRANT ALL ON TABLES  TO service_role;
          public          supabase_admin    false            �	           826    16601     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES  TO dashboard_user;
          realtime          supabase_admin    false    13            �	           826    16602     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS  TO dashboard_user;
          realtime          supabase_admin    false    13            �	           826    16600    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON TABLES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON TABLES  TO dashboard_user;
          realtime          supabase_admin    false    13            �	           826    16539     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES  TO service_role;
          storage          postgres    false    15            �	           826    16538     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS  TO service_role;
          storage          postgres    false    15            �	           826    16537    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES  TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES  TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES  TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES  TO service_role;
          storage          postgres    false    15            Y           3466    16615    issue_graphql_placeholder    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_graphql_placeholder ON sql_drop
         WHEN TAG IN ('DROP EXTENSION')
   EXECUTE FUNCTION extensions.set_graphql_placeholder();
 .   DROP EVENT TRIGGER issue_graphql_placeholder;
                supabase_admin    false    366            _           3466    16993    issue_pg_cron_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_cron_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_cron_access();
 )   DROP EVENT TRIGGER issue_pg_cron_access;
                supabase_admin    false    361            X           3466    16613    issue_pg_graphql_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_graphql_access ON ddl_command_end
         WHEN TAG IN ('CREATE FUNCTION')
   EXECUTE FUNCTION extensions.grant_pg_graphql_access();
 ,   DROP EVENT TRIGGER issue_pg_graphql_access;
                supabase_admin    false    365            W           3466    16594    issue_pg_net_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_net_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_net_access();
 (   DROP EVENT TRIGGER issue_pg_net_access;
                postgres    false    362            Z           3466    16616    pgrst_ddl_watch    EVENT TRIGGER     j   CREATE EVENT TRIGGER pgrst_ddl_watch ON ddl_command_end
   EXECUTE FUNCTION extensions.pgrst_ddl_watch();
 $   DROP EVENT TRIGGER pgrst_ddl_watch;
                supabase_admin    false    363            [           3466    16617    pgrst_drop_watch    EVENT TRIGGER     e   CREATE EVENT TRIGGER pgrst_drop_watch ON sql_drop
   EXECUTE FUNCTION extensions.pgrst_drop_watch();
 %   DROP EVENT TRIGGER pgrst_drop_watch;
                supabase_admin    false    364            �      x������ � �            x������ � �      �      x������ � �      �      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      �      x������ � �            x������ � �            x������ � �      �   ;  x�U�ˑ!���R�$>�l�qlk {���3AK4t�������(�9�~8���71�h�M&�藙~!L�gD�$_t�rz.N�贳w�c��n$p;���=����>J�A`�v<�a�d���^��mץ�R�2�NO�l�A��Q��O��Z�c>vV�u����Jğ�Ce���^�L��Ո0e�X׬6*Ǚy
-�7����/��pF},:�6/��r�R�7�p�9�V�E���B��35�܅fu�4b7�4����M��M�u��^?jl�]-E:禂�ܳ��T(����{�L�}������\             x������ � �            x������ � �            x������ � �      �      x������ � �         P   x�3������24�t�<�,KNgWwW���O��������c0��1���B�c�?���O�����7W� �T'         [  x�u�Mj�0��|
_�E���MJ����6����v�D���6���J�������v�O��+p�<M�c,�J�,h�1R����b\%���� ΁h���V*Z��|y����e���)Ҳ�7�RȦם�	��� �{(  ;H=T�P�&�
P�f�	`rP{X�J����`X�=4��Z,@t�:iNb:��3ŵ��b/S��x�p9�I�����r�b��Z��߬��.O��18B��K�	8F����)8AW�+�%p��:W���:s��v�8���_3}��k�����nu� �Ѳ��g[���+D�h�Y�:+hqƆ�&gm�6u6���e�K"9         q   x�e�A
�@��ur���H&�t��ҁBA����9)X���x�f,Mb<���2�̞��oPܚ
�1w�q�F\S�����,'W	���Dy�%���̊e*�~w&���� �_B�           x�M�Mn�0@�9`*<�-�`*�8m����}�#4Q��>�������i�!E@��6Q�3r�i�];������)�]��ǅ�j��,Ψ��Ɂ
��W��:)#
-���=܉���r�~u[��0ٜ�Ǌ=�����&QA����G��s�O����tm�>��̺O���|,ܷ�1�,�L�����-��������r<[$I+X���Ɣ2a,V"Z��������?������k��0n����i~��X�      `      x������ � �         Y   x��1
�0�9�K%?���.v\\�(��?X�m:BGʭTZ�EHQ��c�0�i}�N��s�J/��g�Y����mV��+��10��*d         �   x�-�K� ��0�K�t�j�$����޾Uލf��%ވ4Ϛ!X�s�����(��'�>�R���)M@68k��|�BbA��� 7BS�j��_��૏�6$����:����W�HB9�������c~T�.         9   x���  ���0F�<a��C�IӪ�$���Ko-V���=EZD&�q�g�
�         m   x�32266�t)M�Vp���K�442".333ΰ���<�ԜNCK3S.#c3N��̜��������"������Si	PL�9#39;5�������Ą+F��� J��         1   x�U�1  �=b�$J��_#�ۛYT:=��R~�o������n bc�            x������ � �         B  x����m�0C��)��E�vf��s������� �D2��u�6���a���X���7´l{$��q[�0�A"2��A���	��Z1����`ԺC��q���*1�v�8��D�F�����*�*|��6V�<�i�p������H�g���`���3ҬzA�f��(\��:QD ݗ�Y�F�҃�e��^Y�t:,�B�lU!m��7�E��"k]~�e�Tv+�u-]Gddn�����n�4o��@l
9dz�TQ7n�m�RW�u.u�e���r><�H��/��U�s ���iv�\����q?o&            x������ � �         �  x��XMod�<K����&��<v�C6���?�E���v�ߧZ�]�͓/��]��EV�y����0(��Y-x���ev��CUN�����>>���N����??��k���6�p�`�4x�V�	K�|D�W(V�$�����PS��u��^P�BW(l=������g��ת�:O2��O���4ܟw4�ιQ9-�p�l���J�)y���8=��4���P�&-I9�֓�8����P��]�QcकJ�9Q�u�����/~��߿�Tzv�iZ�Zb�Ugh,��s��_1�����~�?��}��Σ����	왒�"��ҷU.1=�[���3�����x���Zj�&�}ɥ�Ot�s����f�$�X6�cr��J-済O�:T[ԴI�� ���Yk2-6�?��N3; QΫ�2��:��ih])��Z#���v��	�-����1[�����Bj]$�V��iLo80�A�bAi��`\-��QW�<g�&�Bz�|;�)?�bS�������yj-�D�3�L>��k�6htF�J�Z�P4Z�ɧi�:��5LF��&���2�ݽX,�XJ�$��RH1���`)�x0��5p�_цF�N�:E�>K�xv�
�N5����$�#�L������0(MJ
K����5������	���{�����<�=zG�XI	Y�$s.y$~�G������o���O��/�ҌЉ]=h6̠v^ڡ.|I��K��l��4[��h�b?q�5x�S)�i����o���H��[�71���	��̢-C��":�~5k_���5�!a�(Ө`*�4�#ʅ�;�ԠN�ϱ�r-���.~����U'GPߏB��uK¨��4{��#��$M�n�j*�F�O��0m�������O�b�]>ޮ}��*Г !���iTik��a���"�k$tL� 6mR@SC�C�H9��;��<6M�!���1��B�E)�<��V�w�c���ݬ+�49l�I:��[��������L�g��dx1Z��e�}}�ydo�q�p���l�9G�Co�'X4I�N��n}�V�D���*�!�?E��	5��t�i��䶭��5֘�@�`ʒ���z�ô{kC!����J�lS��$>v�!E�������G"Om����VFAz���jR�@\wry M�t���n�/誶�6bF�<��";�%�:C������8Dhp��9nw8�{l�,��s����u~�l?u(1�˻u�ŃˊLM�j��]�^��=����^�m8���q�*a�AI�d@�|0��q|�r��v�x{�6�>Z�oՌ�RS1����!�I�}$�>�]q�>v�~��
�u5�(�&6�dXE��|���朥4,�>��&zI�Ly�Ft�� 7jip��^w3!���M�ij��N��#���SgH�)���-�`�m���V:K�E�R��2mm�+)x��4+V<r?����O�;�a�����p��r�!3} ���+�wQ*�����1V��!��V<�)��F��l�/쥙=�s/:M�P�w��<}M�ΊT��
��AZ��]1���<�h2,�s�c+p�ي\��omm�~�L0������J<�k˓/�Ipg���2Ð��mNvʷ@G��]@t\G��o9Z�1Y
�ZY�4���*�"��1�/��R�ݚUP-��4�#�ᰅxl_�K�+f�3潙;�n�/�\\���5��Q�� �a&�Т.9��Z�}��~M�Z51��g"��Wa�+wH�whqM�7@�Q���W�P��h�BG�S�J����bƕ���sW��}��@�����u�lR�%mG��~��mo���ъ�f~�N�#���k�������&�*v��^�;�wHS�ڴ�N�z�5l�be�ၥP}�w1'��-Y@�՟{H4�N_�e��ٸw����0�aDު �ب=D�޴z��
��0�I�#�2L;�₃�j-�,�q�i+:�n�^����`�u�6qq2R"PW���$u{�C԰��V�j�$Cq��\%S9I��z�3��ŋ��	�[8�[�2�V00t����u��/������&��__C����[�q��u�}��]ihSͽN��k�����X��D�a9�ɱ`q���/�@�/oH��&��ߵui9����@P͓t��>�	��֏z||�?h���            x���kr7�u���7�R���lJRi�C�{�d�*�s#�>w��te&	n�6r��q�y�%�o��r�ǯ�[��£>���I!�[ȷ��_(���o��%�Y�?��ՙS��k%���������|}~��������?���Y��(��z��oﳇ���c�u��(����0��o���[	���,_��ry�q��|�b������1��cׯJ���j{3�1?o��t�1��Wm��K�i��^����1Źn{]����(��k�߷Ǽ���=�����c��i~_�X�M�=�<G�'���G�=�\R�i�}����Ѝާ~�]?��;����=|���}�dN�i������k��Z�K����x�:�?n�z��bI����-|�o�C�!�a<��^K�����x�ݤ�K�]﻿�6ӣ}ߵb�P����������ʽ̏���/���J�����П���o����s��[HA�����f�}���������rx��L�@��=�ؓ^V��E��k���ܷ�i������ߏ�ʾ&kb��/ԟ�����>�!�������[����)��ٵ����{���%㿡��s���Y�c��Ş���Xޒݣ�rkU���{���w�}5���|�Oc	�u�xן���6�U��9�����>n�+hem�;瘟���9~������G�Z��ĨY��GЃ=�E�r�pCw\�vo����;��@�n;��_F�/bw���L9j����]���^G�҃,�_7E
����s}~f�m���W��Ok�ߔ����?"�q�Gx��CM��#�Ɨ��Ǘ��}��U���6�Kl!7-I������FjYA�3|��y�������}�:��-���/��{Q��Q�L����H�u���s~�4��+)jhM�����5���G��^��]hjO��>�~�V��/�3��z%���^����A����p3��QW�'*�����C�s�0��g׳�
��g�^����o�#���u�����,�=�^�&��&d���γ�iE+��t���v+Z�Z�Q!i*\~�����ʵLBI�D=ա�6�\����y���~{�ڵq�µ��-��r��/G�bP�7�l���$�x-x��֦"�[N黅��}|s@�9o�sjI�1FVd��-Rj/rx�0u��^J�98t�:���?�S�;>tB|6��.��Q�y���YGm.#�@%��Rt��}�8��ޓVeתԒ���]����amm�B�}4�r�#Eķ�����QoZ���>��ns������1ִa�.R�	��G�g�Zs������`�t�E��=�T?��j����CS��SW$��t�|���������������{V�F<�����(^�+��2z�)ZZy��_�N���#��ġso7݊��~�z�l��A�P��}j�w�a�
U��t�}I))�i=j��t�w-���d�9����0���;�Vd	��F�Z4�ڟ���P��r�5�4�Cڭ}}l/<����Z����aѴ$c����^��G�ɯ�ݿ3�?$�>����M����~o���$��r8��DBѿ�����;�����#B�fj�Ka��z3=m�2�[�{MQ*�����nxԢe����I�ٕo�1��ܭ~~u��ϯ�+�7&mܦu����b���Ի�
�___���q����&�+x޲6�Wҳa�BK fi�����;�"�:�k��#�ǧ���4��gP��z��k~���Ѧ���?u��k�nO[�������^�h���g��kM����������e�Яz�r�L���o_R���߷o��<HŊ�Ϗ���g����㞌YV����ɮc{�xK������q��h�h �ݻN��"��ml�R޵T���Z?��Ġ�8!N����̉Z�M�����[�X�s	|m*�ˬ�aV�Ơ��&}y�문I�B��|�iIL�P-�W��>uzK�HF�G�
�d��o:��c���R��Й�8˪�aQ�l������%Z@�P�g��ҹ�$j�~t�R��ژH�q�����_A0��:]?������둕{�z^�E��c�xKw���Y�7I���@aiJYJ8�Ֆ|��9~�ޤ״~$8o��ϖ�*=ܷ��WD]\�"��L���C/U�Rǿv_�n���v�M�3��E�����~��L��ճ|{�GQ���=��Jt��}K�)`���ĀN	�񠇪lX��ַ�'�����������m~��[�k���A�H�Z�1�,x�p�����_-��C������0����������L^�`�����?>9eu�U���E|H�<�X���wJ��e���WV�����K(��V`��}��q��P�/b J�W���^������>��}*�K}}�f�A+�����T�,�WL�����GG˼?tJH`(�r(VN	S�)K�����+Z}�C;H\Z����%��ֿkC�$� ��YX����R@ARBEWL-�������Қ�d!�*���ϛ6קҡ%p�N����V�P��F�z뒒_����[!�^����bM�E����Vz�#"�$�����v���v���'��K��+i�#dJV��"�_-0	�}j}ֵ����G���EIý$ݸ~�}J�~���h���_ƣ�� �O�g�M�mno����s�w~cӵ����q�
���W���?- �ֵ�u�u���#}���T��Y����j>�3���� �J�9$���.�p
��f�ґ{Q�,�Ub5���������
E7�u��zqE߷��#�}ǩ�!��m����IN/�W	�,�+A�f�_�M'����i�s�%g��nE'�W��[2�W	 �u(J �8|��	GIs�
�R�:k_�~��Z5���t@�� Q��S���l�+߿��u���3<<K	����񹭝�2�w��CQC? ���W�����1 �
�I�Y�_=|I���)�U�k�o�Q72'è_ʈ
6ĞG.�Bz)>Jd����<�M�$�������Y�r�l}�#�����~Wq]V�"K���bX��|
��RA�nN)i%�M/A�u�5�d`������������q����s��*i�H�~�LUr���S�3@�~��}�TвԎ�?~��(`F�N�"Uj�FW��,%QĒ��RH���@S�]Ç�8�h��Hyx ��{�����ݭU�#[+]uV���ѫ_:O��L���]
B[����?>��������ǧ�v�یY��$� ��Hr�ߟ�����⛎��1o�C+�ti���Љq�J���W������y��% ߧ�����J����Q��������0�A�m��6�O��F��':���[�����|��"a1���g��R9v���g���)D��K��l�|ee%]!��f�yg�R��ߢL��n���/M��?c�
�~��w��r�Р�8T?���OIOqH rԸY~6X~VT�Ui�~��7����#E�d������"��I���:�a~�a��`�AI]	>7���/l#bz����ǐ�б��" �^�����N�x*C�~������#�����g�B�ʂ����K�gv���~���/��4���c�Y~6X>_fu0�xպ���l��>s�7����y�ߵ��G�`,�K�O�A�n4&�be�~���*�|x(7��;���(����'��8?o8?*h�7V��4�8�����u���k���l�|���@ф����u�k�(�~���$Z�E�@bȍ���~�ҔLFS�4?�4�i�N4�9n��7�_%�*U'I'���g����g#A��~����3A6�"w��l��0y+|^��4?4?t�l����4?�4��I�ϊq�<ǉ���C�^��
�~��w�Ϸ脠Vr�p��� �]ZHۨ��2��~މ��>pNOTYT�#��!}It�ZU�_�'�� ��<6��%��@?�@�T>��������V�����y��H˚Z �O]����4ZL{G�M��N��󴚔HM'?���/�P�'�T���o�@¹�{�^+��~6��22�f� ���'�y'�Y=蚒�RVn    ���L"�~��҆ŏ����@m*���#��#������5�9���/r@�F�aj�)��e��~ވ~R�ܵ��^z���}�望�]�����+�	��;+܋����є8IAgE]7��;��ky��9?BMB�!�r�dY���j��N�'a��L�j��"��I�����~��6��"��Roy�	j�	�N�.e�tj��j2j�z7I*m��g��`��|-��W,i�F�iG�ةM��P��#�d �V3g��qR����A�G�^D�3�d0T-��3�Q���55$�Կ�.�5��k��w3Դ1T�!�ZFT��ꇨi��#f����l��&�*,*�Q���~����D�����E����ɀ���U�ѫ���&�R�ͤPA�^����k*��j��!j�!���j
Z�5����e�g��`��f (�\�5Ug���$��P��P�ޅ���>��^�������|m��?BMB�ĨEb������*#P:����?AM;A�#PH�:�p��tM�t�ků��Z���O��Ou@D��,����4���+L���L�
r�Ӵ�S]�À(G��Oӕ�6%aڗP:�0��4�T�M�y�8F??M;?�˃�'5�T~y�i���HU�"������L�^h�s?@M@U�T�Y����O��O)�#Tf�/��i��^L��A�R���O��O�c�C����ǧiç��1.jL�����rdw�-i�᧧ɠ�J�Z׻	�馧i���)�l	��@i��:b���u��I��4���`���T9��i��E���X�W��i�
���hc�Hk~~z7�@o�f�䩂�r���i秊D	¢�nT??M;?��T��� �R��4���k�rE��??��r�:$I�� %?AMA�C�m+Us$?AM;A�A�ko:ł2'7AMA�#P �cTT�y�'�i#��KP�o�a�	j����d�MIN�Դ��We�(���5mU4'��A��������9��6�*�5���z=�nZ��懨i���gEiF��V�uSԴST�_[�2ԡ��jk)��~�7��E�nD�E�n�!j� �$
j#*C櫃��ƍ�J���IJ�q����M� *{Á�D�!*Փ����C�h@Tjl�$�O逢F��*4����C�h@T]�ϩ:j��pCԸC�N���.�l�~���\�eJ�$
Q�NQ�Q�:5��sSԸS�0u�NPju�)j�(�D/�-R�	~�w�ʗ=E�8��F�V�4_�W�2�h0T�2�H����F��J����tԸT�U�5���7@�@�X���W�9�j4 ��⠸jfj��5U�|d�4tR�j�j��f�R�'?@�;@M
8��v&�G��4�T�O"�O8��~���I�
�GZ�sܺ�F��_:$���5U�A)��2��w��'�9�&�׏P�P���,�wz�55�ݴ��&�S�hP�N���}�~�7�Jm�~2�A)��F�Bm�j%�!j4 �BDZ��I�톨q��8�p4d�����_:e�n���`>�,`U?D�W�Zߩ�j�{)�T�5�S�*ݤP�Q��Q�39��觨q������n>*�)j�)�vy��I�oW^�w���^�wjܵ��F���t$�c�5�#��e�全q������)��w�Q�Q�+�v�bp��Q�Q�Ђ̋�Qр�T�f�,J\����i�&�f��ɍP�PW�mmF-s7B�;B�G��緡�G�qG�uf�ry��M(��ܤ���??@�@4)/���j��bJXrR�~�7��u\Yɝ��4��T�<L)�/�~~w~�%�܎�2
0��4���A�����J�+?e��Aɺr���q秝?^ҡ3��4��T��+4�M?>�;>UrWwX ��i��)$RaC1NB ��i���ʷx�%	}mv?>>�bT�\%�Ҏ~|��4(�L���u槧�JO��9'r?*���4��T,�vQ���s7==mX�.��y`�z�;
Xb�K�`�ӂ��D4��A0��z��5����K��8��=U�=k!�tb�zڠ+�
^�nxx�ÂcmM�i?<<]�PTQ�憧a���Z��R�N<y�O�<��^��O<y�NO%�%O��
=��=]HmN��O<y�P��R���OްT�����|N07@@m���v���Z� �+P�Á'o0jGW(m�}����~ª�6���j1R��O<y�Qv2s�z������� ����;%\8��5�]>����&�a'�$`Çe-��a�R�q�KYk��j0 *�.���Ĕ7 ��wC��I���
P�"�xG�j0 ��.E��hyu�` T�v��Ғ�'�a'���n)ʂW������f�6��<0�@�ɃWt҂:1�@ŔE�Nkʉ)o0 �~�BU�rb��Z��:�B;0�@Zݺ�68l���?���z;?@@Mz7��\�w��OP�AP���4>6�򆍠�U�H���'��a'�EG�b��-n�v�����QHHى�����*J��$V󧟟����]Y��pJ~�j�-Ş�1/E�〠���ꅇ�wð�WްԨ)�H��Wް��B�Ϙ��0�t�M����(����;�����!�>�#ԋP^��m�l�N|yÆP�b�zW=�a'�Z��`dtb�v��7J]N�C?��;@-��AR-�:�����e+;'��a�{L,�:��4����>p�'��a�|�'èZ�'��a�\��gF�������6�ʢkF������y�@�{�MZ=�����.�T�p��t�A���>�x��5�-��ħ�����Κ�����Sr����x��U�^t�������BO�@�)�M�	O�[:x��l�#jM:���y����U�Qs~z��r��ӪM�3��������ӈc����IOW�+=���S��>�������*�k���XY���y�W|��L��'=��7��S*E��}��7���S>�h=&m�ٝ���K^�)BW�Wł�ۿ��_�i\�Wʇj^'=��(��Ӷ���+R�㢧�-�=m��yN�����m�=-�#�������~��JL,�%K���w/��S*�r�?��O���i�T�u|�����u��S�Li����	O��k�I�b��Nx��0_�i�;�.�>����T��.���%��z�/9���7*T�<��������WV�^����ƠrڥlF�؍��Nr���^ɩN�HԈ������9�/]��������w�9�a�l��Q��?��/9E��������}��&�y�/R��:��o�x�)T�'m������JNu6L���"vo����~%���V�#'8�]��4Ӓ�0N^��߽��M�sN����]�Mi �V�93�u����*M(i��x�������0�xѝ�t��R�p�C�;����]�F��0ʶ}�tW`�Th���$�r�]	,nک3n������ ��L�y��qr�],n��o֧D�}��}���U<�0��>݅ ش�de�X�7��Mw%��Ө��q�|'8ݥ i�d]CiȚ��Ԓ�Ǵ�)��
`u:��.7���2$��t�`Ӷ��QY��щMw-��h�CVTa���b p�����-����� �J�KI&*��t��]@N%���2�K��	N7- 8-����&�����]
��s_�$���INw%P�;�T�T�.�3��tW��6b�$�An�INw% 9�U+	�L���n���v1S'�d
������$�
�:��t�?e&nB%��%?;��Oke��S:��W��µ�u��Ć;������Ѧ^5a�1Wn|j���w��&a��O-T�ne�L���S��T[��5��L��S����IOZP=������T/|���T�ڟ���Wx*�����㇧��iPL����#:l��t�?՞��H�E���p?��mlq�Sv?=��O^c�.��a~Z��1No�����0?�a��u*;����?�/;�r��0z�~vjx�6�|W@R�O-�Ӵ�    ���v���Z�\��Z�~xj��fbE[Mf�k~���Oi\׹�cl`qⅧ���6Z��J��5?�j�R��ueg�T�w~��|e���HYͽnzj��&l�3��ۺ�+Z^�i��
-ɂ�ǧ��)"��[f�Q�秆�ig����_aݏO-�����@{�??��O����}06��P-�5�u��No�����<�1Э����w^���Qz�A�~~j��bk��頭~~j���:��g�����TI7��$�ڏR�n�j�&d9X:� �2@�����*n�u7@J�ߘpyK~�j�F�_ye ͏PwT>�P���>��0@e�}���s�~���Bx�|��~�j�*H11}�ԏPԧ���A�����ɴ$�T0g�~�j�&z��Χz�3TC����AF�6c=�u�?%��Aa�����]�I"�7���?`%ʡ�ovo�%�rdXcB贚�#�vE� *�gcXH��x)�� U��-��k�P~���29�]��H~�j��j�W:�g,��P�S̃���=z�Ow= Cs���J:hFvC�����ג+�`��놨��)�:�W���!�n*e}�Rz�~�����&�3y�uw?�8�M�����u�?�y��1��x Q7�S�^�yu^�釨�����v
:��u�?�ҥ�����;��^P�;�i�r���C�ƨ��2¬�h�K�1�ဪ�Y��)��p�ƨ�*;�"�7�A�a�Z�B-��/��r@M���&-��稛*�\+TѺ�l7G�P#/[g�dx�~�j���a�dR2�"������u,2�� �����3���j?E5�O���v���cT�����Y�r՟4?F5�Oi�T�ݕ4.G/G�,P��t[)^/��QT����2��8��*��$�Q�~�jx�J#2�TB�R3���	�n�E�1/��T�51�<�}5�A��
��VrR�jx�5Z;�Ґ������(_9*�R�E�tpT�5P}�R� )�A��:(����
.n��{���A��R[����7��T�����4�zA�e�*��,��������X��<ਆ�Pj�G9�'�0���j�j�:��k�����R��OEc���,~�����������	�n�j��2�wf�K�7?I�LP��~�9zGI�.�W�0>���U0�Q�e�J%s�h��ɏRwT��D���K\�Y�a���#�?����6�R����HO~�jؠr�3[���~����FlUӪ��ۋRwT��7*2qn? ��*]�L��^�u?I�]PugZ�kƫ����Z.�a�nn|t*~��+�N�ޏ4���RwT�]�pg��A�����o'����*s��(;��ԋ X�s�G�*m�^�j8�Q#�qR�zuBU@�03���'����y�%Jהr?J5�P�tG#q�U���V�Z�Z�U�[����
U��A�!�50��Rw+T\��8�Un�j�.�3@k�M?IݍP�Z���B]�ORw#Ԑ1���/�??I5�P�$������~�����X�Qi;K$usB���I:,���&��j*�#�*(Ğԣ�^�Jdu�����Zށь�+8A��jy�b`�(�W��sT�UdL:��}�$��Ѕ��qNQ���G5�P�m9���樖*���#��N���/�^MɍV�C���~��+H�͎�ew�T��%�t�f����*|�O��� u�B����vO������^Ij�Jg�/��,7H��P��0�#>�� հB�+�-'	��jY�2���J\�V����HM|�`&��^?G5�P��po�Q��=K�yᨒ?�U��pT�
�I��Q�1�儊[�*��ɍQ'T-xF=`b�T��L;�S�GG�@�T�	���t�����0B��`ʗ6&���u7B���D���A9�f}���	]j��$��^)j�t?��i�$���^0*�8��n�A;�n�J+�0%��}�KQ#T��cK"c�a�KQ#T�4�~���A;��J#?�KH���A�/uU�7���0Ber�ԧݧ@T�uٍ+���z'I��������4:���j��&V[�=打���F����h����ö0�Y�T�>�9SAH�P��'��j���A�L?B5lP���l�	�n���;����C��Z>�i���`�LяP#�D9oY-��k�����,���W/��Pw1#�2x�|��j��PT>���Z�����AABeޞ���>�̠��G�Pl�&�a'�wȱ
�� ��u�����FX����F����e[Ak���nF��i�TQ18 �u�BUЍ|�j,$��.���\�q�@ݭPG�8�M�����
5$
(g���^+�] ��֘Δ a�%�kja��3�޶��V�zda��-��
uWT-u`) ~��FP1�|��:o���r�Am�2�b�P��+^*�e�,˒�^��/ u}\�������\�
P�r�w�������+��S$ژ�j�����s|���wХx��>W��*6w��`�����ռ��*�R,:����>W�+?mX�U|n�����y�|Z镏��/ԟ��BOi�ҋRҶ�nz�|�z�7ꌤ	���K^�i��B��6\g��>�+>m���̟#Zx��OD{ŧ���h3E6���~�!+/�۹��l�W|Z�JO9T�n|��$��S���մkv��碼��Щ��O��OG�<�w[���N����N%S;H25�ؼ��g'������J�#�_��{��a�q��J��~�����WxZ�ng�A28��OH{a�XU0�Zz�I~#ԟg��Nq�L�������Wx*��G����^x�#X^�)cƚ�`䦧?��/=�?�D���$���'���D?�"K��N��+;��~%`���O�O��.����0s���y�<H�)��nx�����S��o�N���g缰�4�Ra�3���N�;�| +9�;����<�WvZ�'a�AR*�E�?���2�#����&�?K���v�r�mÌպ���l�Wr��p�PW�r���U�N�N%3��5���U�N	�������N�R v�̫�*�W�e�W%��i��f����^� �4(�f�#�wnxz�|��+����D�W)�Щ~�P��ՙ����@�;k�Untz��v��u�6��B5�@����@/h^tz���0&ӣ������^� �43��ڇw��.���y|����O�Z`�G�i��PB����^��b�A[B���#=���U�N����1u����UHVU��izGBnvz��S-u���N��N�j v�MĀ$�↧W9 <�=FH�T~�^������P�F瞗�^� �3��k�:}/<���T�~@��S�w�ӫ ��mӘ2�#��^��d�c�R�эN��>��0���ɍNǆN��8:��=���xE��}��Xd�*:&��t\ѩ�7d0�Y��G�cG�qua����f��`�LQg�0��N��N���h?7<<՝L���g������Wx��D,�����a�S��"D%�~x:x�iAAlhs���0੤OgX�6����� ���5�9�e�{����ة�v�k�\����N��Nu��\�@��OH{e�z�Ћ�sp/;;����1�?��t�Tq������v�ӱ�S&�2���w��t��F\zdB��_z�܊zک,�Zu�!���0�)����?>>Փ+Q;P���������O�8!R0}?>>E�ue�����at��4��V�So�o���(_�)�Ca��%?<<U4g�J�$~x:vxJ/�r`��y��S�p+?�RAnx:xu�U�E��g��`���·��;}>�t((��+��t�J'd�bz��a�Ӫ�+i�9���t��\�d+@ 7;;;-LAdl���)R?���fz�
"���N��N1y�l������0�i{܊k�~x:x�\I+T��Q��ӋhQ��VR��iP}᧧c��-Rj�+�O�O��
j�����0�i���n�/����b@W�ˬƮ3g�᧧c���e�    ��ͽ�t����ktj�������*k��C�{�$��X�����r�ו��ԐRs��Q��/~x:6x0cf��N��NeU�Al�_wz�Ӻ\$l#����t��T�1�KI�,��~r:vrJK�^?�u����*f�ݼEj���ON�FN3_����_uzU�S-�H�͚��'�c'�z+�ڣ��t��f*�����Y?99�,B��~��U,����=��N�R p��D!�k�Ӌ�I3
?ͧ�������4u���i�Щ8`%P\]����>'*՗�[3*��o��+������N��N��M ±�����N�u���w�?�x!�$^W�أ��v��j��e�I���i7�iA�U���fvs�npS���1afk��i7�i�քAЁ����঩AU�4̺�i7�)C-=�a��'�� ��(��ά��i��i��IGB�e��%�}'�ڳ��������v���Y,���MN�NN�FSg���v��su��o���i7�i�-�$���p��n��A|�T���'�� ��֡�l�~r�r*�_ Z��k~r�r�g8�˛�O?9�9��P����ߵ��_�)]/\�{���O\{ɗh��&f�w��O��+:Ŷ��Fʭ��i7�)����f��i�٩�`a���~x�7x��f�Y���-��݀��ӅY؃�7=�=��@��0�ͺ�i��S�k�#*�94?<�<-P>�t>}�^x�x�f������i��) Z7-�'�qPy�wz������&~|�|�0芫����i7�)_n$	R�X#��i7�i͍j�BU^���n�S�^;�3�r�����T�rPGF���Ӿ�S�3_��^���o���2�����2J9�� ����txPBIa���i��i^=f|N�B���n�S��1�J�>J/=�=e�^��D	m���n��J���&� ���U���Ւ�{��Ӿ��Q%���G���i��i�6_R��������f���	|������T�rM�T�]���v��f~&$�����)�_c�Y���o�4� �G�i�<�;�;=]|@gm�2q�Ӿ�S�F/M�s������;�w��i�ة�I[�8^��i����A$��p�Ӿ�S��뜓�!��i��)bk���E?<�;<��Yf��?<m<��
5UlL������I��)��i��)�g����3ԝ�����[(z��O�O����
�z�zZ)���^�䧧͢�����W�p�O��O%�u�1�}��i3�)=Ez�������\ii??m?���j*X�gG���W|Z������>m>m}��*��l7>m>sFZ�{�XɍOێO�$��M�c��i3�i�Z��l&h��i3�i��
 @���f��H�g��7>m>������3��i3�)SKt$J@���Y�T�J'-b?��f�S��\̹�v��f�S�3�jJ�����T�Xg�8����~^�+=�ez.G����ft�I_��	q�~�ӟ'�
O�vf"m(c��i3�)�EAr���i3�)>-3���Ӷ�S<T׈z�q�v�Ӷ�S2Mp�6��i3��ꖔ[�|���m��K�1�m�j��i3�if,�~q���i3�)�C����w���ȨB����ਟ��BO��X�8��~x�x��י�7S���T-�⬵�i3�rm�|F�x�x��b,�Ð���Ӷ�S&x�#9�<m;<%M�G����j�I�+D�9��f�S���� �0�i��io�F[5�~t�vt��LU��8@��@���5+%e����T�q+9�gF]��B����E���-����eB�����R��D��'?:m:e*%Gv�1� �6�b�����Ӷ��V�,�Y�SI�����	3Z�n?;m;;EM1�� 0��m�4Rm�l�xPy�vv����x�������-�I�>���N��N�g�sbs����Ӷ�S��!���ό�j�%�>�8�I���i��)~dt�M>�烮���S<���N O??m;?m"�Q���u㧍q]ү���u�I[PKP�������b����M�LqT?@�@U�Ձݖ'Y<�>�;@%�W"�!�L?@�@�/D��r}�ԺTɵW������i5*$��z����i5 j�����~й_��qF��o΃�Q���T>{j��F�&�� �e���������� ��OP땠���`,�����U"ÙF����j�5С����F=�x��A2����OP�APỌt������l�@3X�?ߍO��O�j*5@���O��O�v#����f��W^���&�V��ǧ���UW�w����Z-��7��է��a����x?@�@Փ���5.K^?@�;@�Ԙܵ�V���V���lYQ���n�Z7����U��⤛�֍��̹������� ���¬��V�f>�7$������Fv�W]+�P�P��<�?��O��OVӌ�H̝pԺԁ��[�P�P0�z�)��	j5����f)�� �j T6L��6���Q?���f,%O��J�#�j T�o�`�?4� �m�T�X&�j�j�k*��?B�;B����-��P��ZuM��l�ύ�
j�r0*�X��P��P#˛7�����V���G�L1��U�1�D)�S�jPT�T�|����STC`P��C_N�'ާu���L�	G��ֹ��V��F�;(����RԺS��GO�*P�NQ�(�Ls�"'ާՠ�����h�Z����U�������5hss`�������J�楩�������C���ŋQ�Q�T�dդ`�f?F�F-�܆[
z�n�Zw��"�<g`��ǨuǨcԡ�}���U�W�YIj���֝�VeO�"xT������b&�)���OQ�FQ�G��Ͻ���ʪ��j���l�2bN��q}�n�Zv��1}�C����b@Tڸ�0x�e?D-Dl&̥���d��b�Q��d��8�C�bAT�9t���~�Z��d==Df~O?C-C�g�1&:h��X�*�v+�
�X�����U����������g���g�eg��#��n���b0T���Ef.y�C�b@T,h`n>~�Z,����?��X���� ���Ũ�����J	����5W�P�:���5>���08j18ja�5���wc�b`T������9j�9�s,eb�p-~�Zӳ
2��Y�T�эQ��Q�a��
�)�1j�0jb�J_S��ˎQu2P�P�1j�1*�
�Q��V��c�b`�N3�p�sc�b`Tj�BZ������l��!-�Ȳ�ÏQ��Q����a��A18jT8�M�g��Ǩ����#Ѭ�1j10�~#��Ty���b���q�)j�(j"�G4�V?E-EM� ��4Ii7E-EM��e=�n�Z�*�:խ�p��Zv�JQ� x����QY�J�����eǨ�rG��V[��Ui7�6�{�~�Zv������׏Q��Q�WP�� j�!j��j��!�!j1 j"��7��~�j���x+)�׸j�K?D-Dա����`��!j�!*�3�������F���/�0��U�R�W5�Uj1*ސ�F���F7C-;Ce���ok;�j���L�[��'�D����&^=�L7~0?��U��>�R~�Zv��Į0�v�v`�Zv�
@��I�`�T�!*#/��?�凨e��x%&<�=�n�Zv�Z� �g?D-;D�x'�5ah�g�yc��*�p�<� �w�Jƍ�q�`�T��ֹ��5�Y�D�;De?6*t�#��QuF4�HQn=�5����S����b�
����Kᅨـ���C)Cly�j���ȁ(��W��5[5+��т�������aH�0��n7E�E����R�MQ�AQ�w�x�O��)j�(*��U�-67E�E-�D�aR��{)j�(j�ǥ�:�!j� j������⧨y��Z�چ�A�=�!j6 j��2cvC�lA���C����?[U�S�G�ą�Q�Q3�X��2���P��Pcg�B�?D�D�|U�ۅV?D�D-    ���k��E͆���D�~�x`�T�f���O���5U"��~�~���Y1yV�tCԼAT�I�`���n�lQT%$%�����Ǩ�¨Cx)kF�)j�(j�3��p0I*u����g��b�q=�J�q���w���V(3w�8���;Eҥ�A���S�lQT|�7���uc�l`T�8��B���Q/F�F��;�9���f��F<`��V�y����L����텨ـ�AA-J�����y��+ə#��3�l0�1SY����'�e�yg��>��	#m�~����?@n������Zٱ~c�ҁj�9j�f��#�2�9j�8*y��.���Q=�5���O��J��y�zQ0n�m?G�;G��E��Q:*�5U�n,T����y稰^�\Θ��������B�h?�C�G-q�:L��5_1j�d�0����1j60j�@׺��5���;�7D�D]��z�z���5o�
E8�@�~����Ӫa����!j6 j���o9�D�D-�%&�*��!j6 *��"�o��W^��v���F��vBQ�FQc���^z>�DM;EU�9W��k�)j�)j���D>��ɠ�QDy�͟,��(>�"�a!n������e*;�Q�Q1#���)?vC�dA�J��|:��ɂ�Bq+��5Y�z&���:��ɂ��m훁���&��4)[�ppCԴC�D5���� j2 *�����DMD�����#Û�5�9�Jǘ�C�dA�R�ʮ2�P�Q��_���U7DMDe��`΁n������Y]W3��&�EH��V-J?DMD�&Ա��C�Q�Q�Vi�� �&�&�M���DMD���V�H���ɂ����<�L�JE%��C��OQ�NQu6JU��t�)j�)jY�SG[�Ϡ��KQ�AQ��a��)��S�dQT��ekNg������6�m*K)�P�dQTz~���Ũ���a���`��|�Q��Q��E�twՃ��dPԼ�2v�5Y5��R�z�~��,�J�a��d̛��&��2�v܉�OQ�AQ�h�Lt����ɠ�z�xfKT�|P��v���A�JJ�!b~�����$��%���5Y�/l�:�k�c�d`T"�b$�󀢦��29D�B����,����5��EMEmh�� r@Q�EQIt
�]JL����F@麫��MQ�AQSWD/�p@Q�AQ�֥���X?EM;E�#��$ǀ��&���sQfRi�S�dPT&?�H�K	5��)ZM�n��v�Z1��_�$(j2(�Ӷc��ǨiǨ8'�#��FM;FŢ�dG:�آ���rr|汀sS�dPT���˵~�EME�Z�:�t�����a�
��릨i���K�ֻ�5�U{���?9�*w�J6'�To�CԸCTj������d�T� *#��s�&3��5���;�1�^Q8��F]�iV���c�haT�9~�e�1j�0j�(TbK�c�haT�	@X�ɏQ��Q��'BV-��Ǩ�¨��& ��pS�hQTe��H^���Ѣ�Y�(c؆�rSԸS�(��9#�~�w����`�V���S�hQԠ�6�#S�5ZUڴ2��!�~�-��D^g�v]/~�-����(Z�J�5���
i�-آF��|�yfd���F��J�����*Q�Q{�;��%~�-�����.�q�P��PcI�{:n�5ZSxC��@�M�nP��P�ß� 8��F��G�f�0r����E�͓��n�w��!�|����R�b��w1eLn������z~�w�ZC�g3�@�s���P�Uh�G�j�*��b�o]��P��P1���dJi5?D�D�#�{?�E�D�uH��!�_�hA�L*�,�E�Q�Q���5��5�KQ�EQ;C�*����F�����6)6�!j4 jS~T�΁-j4 j��:�u�g��b��n�r�ZJQ��P%�Q�sA�C�h@T�z�_ɧ,?D�D��]=]�l�!j4 jՊ$?n�*~���"F�hb����`�9�#��V?D�D�����;��F�.�Ʃ���!j4 *ʊkR�~��:��?�Uo~P�-��t����0̖�;BE��g�H�#Ը#Ԣ#Lуz�x0Z*�5�IKR�<�j4j�S7ÛZ:�D�B����%����ǝ��e�4h�~�w�JwF�	��)���F��*���|���Ɲ��Ì�_n�j4j�u��;�D;C�RW_���j���׌.� �j0���k�`�v��P��P�K�F^W�5Xup�b�\�A)j�*5����Z?B&B�)҃�Q�	P��3�@!�`�T0	*��R��	j0	*.����j0�Ԋт\Nrn�L��ƚ4fe?A&AU�F�2>�OP�APu�J��'-!7AAU<����v�`��0L�K�X���&��t8{	j0	*�9J�0��#�`"��M��G��*D�so`Y�s�`T�kK���`T��ω�L�#�`"Ԥd[��\n�,�*ݬsQ�Q7B&B���U�CC�_K���*���g��d�S�Ɖ�
5�u���*b����"a"M9�j����ٞ�)S{ȏP��P+n�X)��j��\S�QN͏P��P�u�f���xj0�"����7C&CMt��5�܍P��P�� ���!?AAM%�����`�ɨ3��yP�L�� 40�=0D&>��/|OU��ǧ�ħ!� �����JMF)(�??M:t�u�I???-�N2��P�	P{�Lt��j0 ��Q�8m��i��i�_�%�����j�T��@���`�S-I&�r�O��O�yY�g?>5� m�	�
�L����`�S�*V��u�Ƨ���Z�$�T�%?>>�ʸA�倠���v1�����`T�d �N�P�P����+=R�5��F]Wj�%�F��B�$Qv� �#�`!T%��u��؏P��P�,�JTX���R�@�����8$7BB]ù�6���F��B������G��B��Ы��P�EP���e�	j�F/�^�W:�I�D�\q���9j���\q���Qg'/A�[+�� =Uz@����+���d��P��>�x�X�+$���ӟ�x���YHZ?����\=['�X)�ֺ�ϛ�v�S�j����� �N~\5����������|�ktԟ�s�R��tS������(� �&1@)����K^j�/P�!�y_^�����F~܁��K��F���v��T-�~~��╟�ۈ�ԟ�x�|̅���O�k#?�t�b:v����&��4� �Y��^~�܊[��@Y��������W3T	m�vr棢���l�?�l��A�p���C���JQ�*I������K?%UBR(r�ӟ���OӤ���AI����<�k���v]�v�KO�����O��E�����r���v��	�������a��#�����']�P��E�Tjy���
����0��H����>�+<%X���F���m�z5Q�&s���W�����(Z	F{��϶y%��R�q�nr�-^�i�9�D�@�%�?����/��[b����ϫ��Sಅ����,�k#W]����l�;�)u����_{z��~/]'Dkf���^��b��-� z����*;-Yw_����f�W)�����-�:�������s�J����d�W)�l�o�&w���4Q'<�j��~��fz����*<��,�S竛�^��O?Q=W�9��� ��'�J����*<�R@p��B��ӫx6�k12/-�텧W1�l��:2cM�p�ӫx���+�C,:�������w-���>�ʁ���k��l����U�N[A�k�|���^�������%���^��B��	Oۚ�E�W9�|Pٕ������%�9��)�҆����������ZD�	�_|z���w�s<R�&�W-�l�o���^�����s6w�������i+�U��|����ä���A�ЏNǎN�
u1%FE;�_}�%�����z���7vZ�Y�# 7<<�|�M����鰦IE؍    ��&7>>�rG9�b��;����?��5�@�L?>>e:r��v��ǧ�§#/[�H���s�Ԕ��J��������J:]�����%��T�G/[�(���珼�S��ۺm7>>]����D?=�,)�7i|��s����)�ӏ����r���@�r�O��O%e���o��O�5LJA�S3�H��t�ä.�z�~�:�iRz�����i�OP�APu<��[B��ԟ~&�l� E��'�cO�$�������������I��	BB�f��[_��uӤ��<�����(J<�(�����s��Z'��A�YD��[�P�?J��_ ��B��Q^U�uX���Hr���u�aS?���:��V��`���S�aPԎ���Z~�:,�� ��]� ��u�ä�:%���pS�aQT����)ͪDǍQ�5MJAw���X�S�aPԶ\D&�o�
ԫ$Xä$%q�R��(�0(jW���H�a�uu�g(�@R�u��sI!����f�cg�JB'1��TՊt3�a1�U�[B����j{�I+�CCՉ;������r����0�U���Q�Q��.Z��uc���c0ل� ������"���{@Q�AQ��Ɛ&h������C��=���OQ�AQWQt��!��!��Eѱ�G����0*�J����o�ʁ5L�q3#<%�us	?���槨c��M�H���������:b������>V�c擘����T:ݚ� �����#%�|�I�Ǩ}è��u��g��Ǩ}Ǩ��Ӕ��cԾaT%ہ~�>���SԾQT
�
�3��OQ�NQ1��}��V�7n���Zp��,ˣ�MQ�EQ�t��>)B�EeX�P4�K:(B�;DՏ�D^����v��2�ge�����umE�E��v��җJ����S�nPT>}r�Ĩ�OQ�FQ)�~�X+i�)j�)��ɴ��۞~����:X�J��P��Q�Z�)��^�4�����Q;��zѝ!~�����ov5QS秨ݠ���ԩV�a�S�nQ�F� 01�T�v��N�hZ�tX�!j� *m�L��R�~��-�J;S�)D5�������M�Dy��v���g��e/E�E���(��]z�OQ�AQ�bH�}>
Q�Q�8s��o��|�B�,�}��~��-�
�Ӿ��rC�nAT�z�V�Ĺ9j�9*u�Fۢ�v��$�c�槨ݢ��״��������b�Ѥ[���	/u�2� �L?E�E��d�tR����lq2�����m����C�nATm����������]Oq���&uU��j�1Ņ�~ԫ"����ɦ�	ä����Q�'e	���aRWE Gm�ڼ���ä��`qTܖ�.�W���%:� ����q��������4G����%$2 9���覨}���`��s�)j7(j�5TS�짨ݠ����P�%�ᦨ}��]��T�Q�6?E�E�$ލ3?E�;EeL��y�x�|~�گu!n�$�j<�� �SҊ����� � �m�BiG�{�^��OM�%픈�Aj�@*���DF��Aj7@����{)�R�R��(m��u��P�r ������{�^���|���;�z�Q��Q�P�&!���m5e��n��~n��6�ڗ����Nt?Hm;H��X������R�R�^�~QgD?(GmH�k�=mX�o���$_9�\>�:��EmE� :fJ�r�ƨ���QQW9h���1j30*8(7L����U?r��07l~��,�:),�tgHO�9j38*5����71?Gm;G�Ӝ��v�Q��Q��l�ҹ9j�8j�s�Z�:w��6�bYڙ7��o���_Aj����C����6��6�fѪ+~��,�*��Ä$�A9j3@��Z�����C}��G�K�3��� � ���1��~;�ߓ�/G���e��5g��Q��QҞV���R۞7�c�;S3������f�T���YD���9j38j�K�V@�t#y9j�9�2�@����������2N]����c�s�fp�5<lr�U���� ���ڌ�"���m�3��O��Y�!�:0������f�T7�����g�rT���<H���I���W�:ً�2Es7Gm;G��:ТdI�s�fpT]SQ@:C�MQ�EQ�+C�a妨͠�L�L�ѹ〢6��2FCg������jw����!j3 ��Մ'=�~��v���6��$��8^���ʠ/ޥ�U�3Զ3T-s���[�V�W)�D�3q�΀��G�mG�,���Uu~���J A���M/B5�@W�Ƀ����~����U<��l��2Զ3T^��ڤϧ�j�*n8�O�q*Q��P#Ɲ�{L��k�3�f0�V(;���ˋ��6���lS!=��ZԶ1�ȜE����T����?�-޸j����,��|�~��v�J��$��Y�A1j��^4�\QD���P��P���HB5a�~����tC:zҰZ�Q�Q�x+S���Q�Q�;(͵���n�ߤlN�
��f�uc�����i���i�tY.7n�Z7�ڗ7/M�+s3Ժ3T܇�j+�3 ��P��P���𠃆��#T����֚5���5k�5�_���Q�Q�C�mn�Z���1Tb���r3�j1TB�b����`������!�:�E��B���8��$4��^*nX�n^j�jff��~r��G��@��PdCU?B�Bm�Xb ��#�j!�5�]W�aӏP��P�#6LdN�P�P�J�B�e9�C�@��^��	�/A�A��Tfh�	j5��$���5�V�����g��I~�Z���$�g�Ժ�M|8gN���������
�T������ZUrW�����"Ժ!TF~��F!F�#Ժ#�g�ڤ�L��j5��JX�'��j5*UeZt9Io�j�*]9�|���#�j �L~�A�ò�j5*��XFR�G�uG��c�G�G]�#Ժ#T�]~B� � 5*�P�\t0?@�@� �+���Z�Z�R���i�p{j5j!��j�j�jס��a�����u5W��U r3Ժ3Ա]��pE�3�j1Te;��L��P��P��}$��#n�Zw��(V�~�Z��H���g����24���0��?9>�ڻ��PMAlj�+-Y.L~�Zw�*)����ϓ��E pE����g�ug��
>�6��I]� �ᄁ)M�	�?O�*B�I��fg,;������Ύ-�'7B�;B��������j �Z����6*��uG�Z�}8]�#Ժ#T-nY�m��yR5 B�L�B�a<�G�uG�Z�e��>~�Zw�:+Ʒ��!����ӂ��������)i�mk}<�2Բ1�5R�)��{܍PˆP�+XoJ_�عj�*-�X���&��e��,���$M~�Z6�*͎��Pnu��_~��0*��SY�����F��(��R������p"C4�rq�bTpV8�%?B-BŰ+2�S�����*���������p�|��N~�Z�ʗs����r�#Բ!T�:C�/��F�eG�4�L�%�v�#�b T�צ��S;pE-B��Fg���Aj1j´UA�oX�OP�AP���c �T�����*WP"Q�+�Aj1 j[s�C���C�b@Tp,��,�ꇨŀ������G�S�bQT�of�$�����R�g���7E-E��s0Kk�n���5b��3htG����o�h+m?F-;F�X�H@��9ٍQˆQ��d;�����1j�1��P�M>��1j10*	˿�G�ƨeǨ�6�*]��wc�b`�B��{0ʍQ��Q�Ӵ���"������&�� ��T>�xAj�Ajn-W)U���OR�AR5�$��i~�Z��;aH�o�9� � #�ܻ"�q?H-H�f�A1j�A�Z�[�V��$�e'��� ���r7I-;I�ʌ/�m~�Z�����~
ُRˎR���'s��,��,UI�B1��{�~�Z�:��bI��Qj1P�Ԓ�1�z��_�Z���^B�e    �KREPɏ)ʜ8M(w�Բ�Tm���Z�:�V�dM
�(��(U�����.�Qj�Q*ݕZ�3b�^�3���ŀ�:�u݆Cj�~�Zv�:0g��@)O��Բ����(E�zP�Zv�Z!�=����ȍRˎR4ްp�0H~�Zv���)w�8�Ij�H�~ި��C������V�� qyL~�Z6������R���yAj�A�s��RP-?G-;G�-Nv���9j�8��O����_Լ�Ԫ���IA"�_Լ�ԉ��<CJ��5o$28G��Ij�IjT�F�1|EҍR��R���I9���'�� �����?I�I��O�6G:�� 5 5k�(?�sbT��f�J�c-��s@R�ARu���z@'���f��JO�̔���~����-1g&ʇ��Ry#��C�J됂�A1j�I��9Èi��Ke��2֘,l�� 5� UJU'��V%���yIj6Hj�{N@j6@*S�%����n����|�<���֤�f���ҵ0�*�n���Z�������ਃr(��u��9j68�劖cyȸ9j68j�rT7=����yϚVE&���M�~���*E���:�܋Q��Qr�(�ӹ秨y��i�7���n馨y��Ő	�5z�Ο���*��+U?D�D��T�#Û���+Dղ�᯳���jQ�Q+�aZ�X��j6j�o��@��5�5�e.9�K��*�2VuuT�f�����QH���ـ�4��DK�C�l@T����,{s?C�CmR��0�����P��P�#���"�j�*L����l��!T2��Vh���l�4��JТ~��w��=���f���;@��tU�G��f���U����5oUQ2�Cu��t0[*���Z�d���l)C���/8���G�yG�|����:w#Լ#TݮT��ă�RyG��j�0��΍P�P�|�9a;)��j6*���:.�w���0���<(G�A��]Q���r���P��P���w%���;C�W7rɕ�j�jM�-ٟx�5o��ܰ:�*qCԼCT��i�����x��CT�����w�ꧨy��=��4p�9�^��w�ʴ�B�����ƨ�Q+~˛��0V�5m����76���Un��^9j~�Fgf��7�5]9jE��,Ii�~��v��Ô�S�y�9j28��a �����
��* Y�����$�MZw`!��� ��
�����ਓ��v��.7GMGU��CA�R��Q��Q)�RN+-~2^*u��b��
n��6�� ��= Ht?GM;G�j@���v�ԟ�J���D���&�2<$b���n������1)�$5$����VrP��v�JF��ҁ���:��*���&��J;��7�Sq��d���	�%>�8�EMGU�c��5�1j20�"{��a�N?EM[ⴾ3�IQG���(j2(�����5�66�S�0j�1*c�p�b��AO�0j�P}%ր�Q�5;=���<1EME��&��R?EME��N� z��S�dPT���`���&�.�XƳ��MQ�NQ�D�T�Q%j�1��g��D�A%j2(j�H�废�&��*k�u�JTl��5�9�ˍH)^�c�d`T_L-`������^�@C��R3+UzT��v��G���[�]�i�
SJhpB�Ԣ&����񝺺���Fĺ&D��RԴ�T]-3k�vP��v������W:��7IM;I��f+�VH@�Ij2H*���=�k�QwA@���K��:g�������su�����$5�$5�a�OS�?��O;ImR�ps,�jQ�R>��0fu�B}�i稤�i�6������.�1z�V-~��6��W�>���t�n��v���ޔ�a�]����QW�S��~��v��0���:���i�#�m�~��v��yXJ��<h�O;GU��j�qR�z�]{2���IAG(j�)�2x���oxR�7��HA�O F�釨q������w���!j� j⫴T���8i�D�#��u�3=�Q�Q)�g��¸v����&>��K�ztC�h@TH���燨р�c9D	s	5?D�Dm��ɬ%?D�;D��U�����@�h@Ԇ���m�:��5�U�:s�&�A-j�BT��()Icʒ-~�7���$��W�j�jg���z��j4* 5� ~�P��P�$�5ꭥ�����i�M쀡Ɲ��H>�����-ەG��5�A-�s����mS��CN��Wƪ̌�PH�$lfŤ�3�0TT�;��i��E�C�au:�(i_0�0T�H���x���o�ZJD$t��5�U5TZ>ʛ&C�C=���/E��P�PM����n�>B�Bm�VZO�Y�j*�E}�Q���o��o�c"��^������j���?hrj��c���o�� �.*���-�5_Ufb�6���M��Ps�P��#:xl����{��z�hD�7BU�
��n�)��|TU�d���"6A�AEq3aX���5���\T	u���怠�˾��-/j*6 �a:����o��T�@	��,j�*�L��*�����ء�X3N�6?�?����p��}~�o~��11��I;_����j1C�
7$8���4�T�q�W^�z��4�����u�s�Os�OQ��G%�[d��� "g�`�<)t��4��T��b��%>�>>�7>�'y�9���b�?�����D��b�5m~�o~Z��ڄ05̖�Ps P3#��i�V_������cԙ��Y�|T%i
��D��X�'��&�Z�:����x1͟o�J�NQuP�G>A�7A��y��P"zщ�/��U$*������&�h�!�p�L��曠VhI��A�7AUn��OiUW�	j�*�@��v�OP�EP�.�r�*�>AMA�cO��ך�PӅP+�W��Q�5^XK��VX�֚.U�G��F�:q]F���� �*�A>y�a�����vV�P��?��&AMA�\FgJ}1ϟ��J�E��G�)@�E�?(J(�}������r��S��) ��^� >�����f��?P�6}��.�:�S&޴w�ql��n��6h����&�) �+��>3�6@M@UΫ"yi�PS P��R�<���i
�ii8��PG��PS P����)��tԉD[�_b2.d� �u�ܓ������"�G��ˋY� Ԍ��@'s��4�te�M�=}~�n~��M?������4��֝:U��l��tT(�^�N��rrj�*E���RӜ_��'@U0�4�T�,v�� �6���s0� 5� U%wm�0��b�?]U������&��]0AȀ��&�) ��2d��	j�	jgB�bz���'��&��(R^J��\���Jm��x�>�}���Z(ؔ�F{��PӍP�B�h�tj
��1M/K�a�t#T���%�v�j�*������b�?���Lg�~�OPS@P�ߠ�N���&��&�t���Qф��MP�MP1:��ЮI�4� 5 ����:
>�>AM7AEz��m�����f�mh/��y���逶�F�\lz�_�tԪlS��b�?��+'�iZv/F��MPiU"��z�>@M7@M�����(�}���Z�a,|��96@M7@���7�4]�t�]pU0gji��4]��V�Jg�ͦ�馧���TR�s�馧�B�d�N#��'<܁!�7?^�����|&�Ȫ|x�nx��c2�vQ�����B��?�B��4��T�����ms����)����������~>��*�i�i���N�>�AO����:�8�M|���>բ�zV�������O~:�JP�Q�&@�����Vt酙���I���Iv�|e�}W���[@��t�En�߻�ŧ:T���Z�]�ç�����Y&3W�+y����~��E�ͤஶ���
����1	{��߳| T<@Wb�u�m��G> ��D��B�(�����@�p�i��΅�P���/@�&B��pN� ��'> �rU�����ʡ�m�_���~:`V�P�� �P��H����~2�5� �؟#����0	    ��� ���(��E�q������������N����_�Z�(y��f�J���/B-���H,w����_��*)�B\*���_\������m(�����Ĩ����sO �]�$�_H����ԘYR��=�����@��g{�^�	Q���!�9iA����RԿ@�KQi�E��y����_��}��P ���{�?�r[a-+X*r���'�Rԭ/GT2�]S���������#]�ڠڦR{燢�+��t�� �_������ʟ�SrQ��/EE�H�'-%n� �������q�#��E�GQ�V�/E�MK7)kӪ2!�����u&�q�o�m��RwJ C���@2Y״D�S�u|_��C�Bp��N	���I��f��41��:���T����wJ G�Z���FU���tP(��L�f|��Q��pTZ�2À�q�;#��2��1�l��*u'��f
����$��Q�|@)�$���.Xy��N���/z�9o��=�z�`T������Q�t�j���*�����Q>�|�}L��p[&F���Q۹-P��;�&F�0*H��#��N2�ٛ��ӗɘ�R� ������^L�zg{):�Q��e��;!Ы�TS��2dńa��+!���&;S�>�$�w>p�h���s��-���� $U��
t�� �� ��1��[mn� RU�n�No>H��P��!�ې�F���j9YВ�AwA�-��Z"���K6�V���
X�>a�;M�V��O�:�&�����>��Qq�R���>G��P\M'��>F�P���3"��!�5PC=bѪ��_ʁl�ȡN�#
�Y��1ꥆ�����@%�K�j��*����χ�Q/9T�:3��G�F��ƨ��ڴ���`�Gic�[�+�KdV��5PC�z7ϑ�����}���L��5C]Tv��3��s�@5wz��R�`�樑jǠt���1j���'�Pmؼ!��b��5[���5C���`�ݦ��*Rwe��rnUm����c�@֤�ǧ��j��.R���C�Hat��U�m�r��G�s�w�<>E�P���au~�OQ/9Ԣ �Kѱ� �TC�5�C�)�8��5D�E��΂��MQoAT�=�B�1æ�� �vz?Į}C����͎�8i�OQAT�I�5u���z�
A�o#.���s)j$��':�b��U��5�C�f�x�b��P9T�`��|.��Cԧ*�*�݇z�0T7�YҢ��'����/3�*C��	j �J˄�B�26@��P� ���~0���@
	}��Uy�ꭄ����yW��j���/9�]�L�J�C�H����>@�P3r�[1aw}��,�t+�z��@P�������OP%�U��H�����VB=rK��+�q}���؅X�MUw�w���H
��m�=� 5PB��O����u�P/%�3I������Jw�魄znh���@,���J�� ���"��Oo%T-���F���n+� P+��:b�����[	U����<�����Ͷ�?i8,�5�B�h�q+��OPo-TE�u� �'��*����:�^�K�&5E�q�?Ўq	ꭅ:Q�ȫұn�[
Yym@l�J>@�P��ulcn[��O#!T�!�6�G�FB�(+(�Ɍ�5��B�tx���>V�.>tPG>7j���%�FB�J*��������BEc��E���^��i$��iߞ����_��FJ��+��1���K	��0LL�p�_��[	�q'���1Z>?�P�NA���F:�����QD��i����1��v�OO#T}ہб����[�zz�;Ow'wa6>�Pq�E[L	��,��B�(v#E��4�A��X��d��H	U�I�������O%T\�u���T^t�Z�\�*�ߴ��a�I�=�~���%\����i��Jwy���ܦ�����2J�c���RBU��x�|ݦ	�=��P�XW$���=����kN8�+����-��.*�s"�}zh�bDQ��fч����7��~�xb��@us�8H}������B�N���D8��i �J�w���d�=����z9��`�6?�P�d�]ё�>>}j��O��uR��i ��}W����j��-��p�D�5}��\�H�.�|��I�R�X8W�jN��ԝ P?..l��^t��Z���"�j$���:G����*���I�r'��d� ԖN)�tD���A20�J�H��e�P-T蜶J�X�6@�P	AzWXMw����$���>�u�]/�(HG���>�G��������/��N��� UG�b�V}v���t �/��Ěj#���[u�R���.}��OoT�Ł_��r��\ |Z��q���zz����b��;n���*��P�"�r��L z��`X����3�)�o�Htwmz�vTY�@�G�ޥ��*6W�$�����K�(�0�<2��zzˠ.ڟ�84ƙl~z�.FF�̏��~��A�!�ᆣlWq�Mj���_ٹ���'��*��k�T �:�u��7��:���P��"��F:���fF����饂���dY�.�ǧ���#�fg��F2�sq�"����O/T<�0� G{�~zˠ�@�h�
N?�E�i ��qM�C�s1��Hu#u0����4�A]���?��Y�j��:WW�H�t� 5�A�nC�f�O��4�AU��tj�#2��OTJڴJ�{w�FB�:W��wZ��6?��P�����g>?�P��gdo#����@
��)�L,���4�BUY�����_��4�B�w���^yAPo)�}>��������B�|R'���T|~(���`�8�O�FJ�]���Ĳ�����A� T�̺v���uֹ�O%��-Jw
o�Zl�(���@����b��[	���R��z���[	�W���
΀>?�PqNe7�ilz��ER����>=�tPuVtz���d.>}ꠂOY�g�^�Ћ��@_i�ZU3�NRw: >E���ᬰ���@u���7>�E�i�����A����@UI��H��Oo!T%x������H6�����MOT�:�5��_��F:��An�9s|z��`�G��.��\xȠ"4x�.i��[u&����R������Am��A~o�O�L 5T;u>�sF~1���.4,�H޶�ԝ�N�m�q7I_4�^*�8�(�*�_�g-�2�V�~�RQ��:�Sǡ���d���Ooԭ�ȹ��j>?��PǠ�N�w�Wo��[u`x �������BE�����)���4B�֦,�,k~�}�Όi���L��4*�����~��*� �]h�A?�P��_���f�����/ *� �̇gm�EQ�O��O���,j�t:�tp��# U��!E��?��}����L������ ��o�O޾�����S%�[ɡ,�����$�t��G$���~~���6,��q���~�/A]ܭ)�m�\��~僠�U��Y\#��G>*>�Ug��QAk�$��/�KPY��\��]��j�����������*�'A�M��&�߽�KPu���W�I��P����Z:V@�R�~������1��]��ي��_C��o@�|�@�MR�X_����"�_2$��ӿs���T;h�"G��O�o��֣˚��~C�O�ą��!S�й�}���ŧ�s�M���O����*��t���I�/g�����7)��l|���ŧ��ظ��~��/@ͣ�2�P�P����� ����>@�<��Ԯn+�O\0�����Q�e��� �/��/@�OK'�ɺ ��y~ *�ĳ�cSs�7d� Զټ*��~�P����*��L=�`�������E�;-��މ߀�]�u����]+�����PzM;I��G�ό ��i��1��=�ό �:h�o��S�Ȇ�ό@�����6��eP������rbo^�MQ�)O��7�*�jS�gF E�JQ3�tyN�N��Eeƅ����>S���$m)��i�U�>S��Q�$N&�    3]�6F�r��+kR�q)Gd��ϔ ��zG���ϔ �Z����a�as�gF@5��y
�ZF
@��wJ���ܷ�����9�3%8uwN1�G���Ϝ ��i
?
��o�>S�P���i�}R�) U�יt֩�m����
���*�#�r9�3#���NO���Q;��>R8��g8!�.G}fd��U�k�>�9�3!��f���Ŧo=m������c�*p�̺���Q�^�'ᷡ��ĨJ$3�E���gS�uQԁG�G��!� *�H;eݑ���z2Tŵ#��cEoh�u�U/W�/����PW�P�VU��.Y|���Z������ ���#�f���=��W��P{��J�f�>C]C�:\3�T)�^R���@�$*�$e�!���e�G-��߅�y����=06;��u]U/���T����f��f�����y~��PW�P���a���QW Q���܁*�u�_687cÇ�놨ZE[�]�5�=��%��Pu���^����PW�P�a�@�X��~��[>*M1�+��E9�QW Q��e�N��OQW@Q�
0
o-��|���J���d���Ƶ����p��h��xK�1�
0��.���Ǩ+�����y���1�1jպl(�f���Ң�*�*)!/0�
0ja�T!C���s��U��QjC+��>F]F�t�"�����)�
(*7� E-�����e��Ũʺ���W���y~8��wƯ�z��u�U�M"��L~#��I�rԶ�����>F]O�:ȁ�{i	�u��D��
G��Z�� ��T�^׶)��l��.���i�ӒCCƇ�놨s�0Ķ��.D]7D�W(Fk��PW�P��!���g��b��!@:2�j�u���_a���zf�-�m�,)�}��n��1(U��X>C]C��܊M���P��P/�X���xcC�uAT|\�v;[G݆�놨=Ў���6D]7DŬ���ܦ�P�| ��T8�Z�*��>C]7Cձ�:B��d|���6�$�9ِ����BG-t4W�8��P��P'2Ie�J�u���~U��܆�놨�j�C�<ʉ>D]D�|�gAԆ�놨:����Ggԇ�놨4Xc�남9��k�C]7CU�	��C�l�:/���F�D���`��b��m�9�Q�Q�#���bl�:/�Z��yn�c�u��G�J+ #6D�7D%�$��j�>F�Fm���Tj�uuթ*Q�CJ�F�F�0��d�F�7F�4�([��^�� �%]�*�|�:o���=-tؑOQg@Q��u|�t���S�yQT\/�o,���:o��7��ʱU}�:���4��hȼ��3��z�]U[?̦�3����Ґ΁����=��RT�n�s5�6G�G-tk)����>F�FU����i)/0�0*bKJ�����:o���T۱�c��%�w����*��M)��|�:��Z	���J���2G����'�͗B�>�_�ڹ�F|h�J��!�����}�Q�Qy�v�bV/>D�Dݘ��� �w�Qg Q��-P�uu�g�Ƣ�E/� j���Q���xQg Q�[�x�*H���3����*}��>C�7C�KQAH���P��P�BDE�P}�Pg�P1P�j�.�u�#� .�/�*V�����?���ݿ[��T��̋V�yCT�	�U����!�!*uHW�[|�:o��5�k�1�g�u�}0��o����	^0�k��u�U�Vr��T��Pg�P˩�7��g��f�efr铲�uu���%��l�:o��q����['c���B�F���#�y#TU"d	�V|�:o���$M4�7��N��D��˯��U��*�x��5mq����P��^�7*�l�:/��6:�c2ts\�:o����|��3X�2�y3�u�8�T���P��Pu"VDo7�9� �#X�g⚖���h�3�y3���R+�+��6C�7Cm%�J���g��f�%�3C�>C�CU�зZ�e�u\��]Ut-��3�q1Tj�LR��.��*���go}�>DD�fD�[Y����C�qCT�J}V�J�g�u5����B��PG�P�k��n���g�< ��aR��'6g>@@�4�7Qa�6@@չ���F���# ��)����N�PG P3��	�{4�� �EF�O�D�� u\ ��x�i�h>@7@�2�h;&d`}�:��h��l�6� u �.=�zZ�K�	���|4';m�'�# �e03���W�>AAU}xM�c�u�U��'��E_3� u u�Lv�p.@@ͨ�0>����# ���J�'#�y� u U�vm��x����9�һ|v��P����b�\΅�v�P�P'sq
BH��hB7?eXhvE�]����Oǳ`��#f�O���d����i?�a��9M������Ϋw��S�??=���IKs�����n���t'.������nP)����O��O;]���/ ��j���\6�� �N���k.��>AAŠ�����O��O+Prp�g�}~:~��:��8X����hK���P�PU"ߕŨ*��*��UaMa��uu��m��OP�MP�r>�cU�h�u�u�� ��&�� �V~���_}�:n�Z��1���Ά�ㆨ<B��H���!�!j���jQԗl�:n�Z[Ҟ��`j�B�qCT�*�N ���}�:n��T�gT	9�}G�;'п��H�����Ϝ�@T�	tl��j�!�!��[kZ?r�u\u��t����ZӇ�エ���lkj.������)y
Q���n��ioPJ�b�\;�uh��9f3�q1�y<���xb�u��!H�U�u���S�b%��kC�qC����>ש6C�Cm:)�J�zz�L��/��I�U�s�1�Q�Q��W�����P�!j� ��M>9Pc>Ç�������p��-�>������^nS��P{�P�hz]G�~M���rU�PO�1[_H�� �*�� A�e�������dB��L�� �*{Q=;��E�`��4*:`|���Z�j i�{����������d"�}��/�ڑ�X@�g����F%�Qխ�Q{�Q1I��o*�݌�ui1�Mh`�1j0j%K�M���=����z����E�@Ԍ��X)^���Uu	=L�aMoS�PT��:�&�/$Q{@Q��I����2�S�PT���P���M�~Q�J���s�B����G�/F�{ Q���η���)j�)*Ԧ䙴Nߌ������b�?\���Q{ Q��9�Z��̆�=������l��/��&&_�����?�$�Z�FA��#� T:D�t��/�P��P�1y]��k���U)��ʖ��P{ P���&�Qo� Te��?s.�g|�����[ntjMD�]��o����9r��P��Pu�7��������v��yY�+�������!�>��_��� �΁1���2���6b��Q}K��P�P�UKRߒt�� �*A�J�]>?�7?Ձ��H&5�������(������;�M+��0ɤU[��������>�-/ZP�MO�R��C{���驒2�t��\�xz���}&�P�iՇ�=��.IF����)�~�Ӗe��~�O�O�RH�Vk/�P��Ni�@�ьC��b�K��x^���$
o����W~�g��b�Q�øQ��i�٩Jضё�G�F��F��p	��O.>:�7:m��ڪ�G��F�uQ������N��N{>W`U�zI/�O��V����o�}t�.t�+���t���]�T%F):z2&�6:m7:��*�U�͖�/�����V}/n0P���i�)&.���ҽ���j<Ec����~��N[�Nч����N�E�����2^��� �� ku)�9������
F\8��~R-��6}�C�lz�.z����C`�=�톧�F��u�0���v�S������>:m:UtPda�CD�� ��?���- �@ت������F�-@�ôc�H3��N[�N���na�����    3�	��/�[@N+4�T��}t�tZ���p�X��N[�N7���?~��\vڮz����p�R˄Y��N[�N#�*�&��i�iQԥ�c��c��v�S�-�EV��v�S�6x20�J����Sr?&ΕZ��@m:E�K�|��G��B�Z&��8а|�~�v�N"ۘ��G��F�H�3�~.�mv�nv���~�Yo���"���?��VR-��0D7̅|x�x�h5�ts(���i��:�Wk[��N[�N3�l9���G��F��h��
F�lt�nt��G�O�lt�nt��r����q���S��W�~����aEj[!�F��B�\6��A�N6`�����t��\Ν�O�Oq��A[i���R�Tz�h.r���W*�>�1[� ��i��iG�Pkj�O�O�/�&����0����[�Ι�U��B�J>��]��1���֥�-���.7�0�?r�i��)ʼ̆�]|z�.z�ȠW�h�n��i���Tt�����v�S\WN?�����i�)��0g��(>?m?��3�@���i���dD�������jQ�H�Hu�����kRn��o����O���j^�����\�s}���O��O��G�O���z��c�	k���0��7>�T_�Ӎ������I��cw׆밋Ok�OB�D eC��5�K9�*0l�W��i���b,!��]�P�P}T"�Ty�|Z~�թ2斻���O��OdǿQ��ր�bONf�Q���i�)C2J�����ǧ�Ƨ�n-ұut�����B:Z��_���S�b? A>?�?�����ީ�����T��D��<�]�Z��Q�j�c�a�T�ZD	��#�5@�� ������G�5@��wU�k���j�J	%@�/�l�Z��dJ	�Һ��I�Fu~��2�OP�U51`�e,��Ե>A�AU�K8�c5�3�0TL{���C�zC�Uс�z�J�}�Z/�Z1:UGP�@b��u��S���է�5��H�ji�/P�EQGQ\�XRk��A�E�g�pV<T}�Z�J�#��)�hA�F]��)ms��UQB�H��KQk@Q�~�j��:�}�Z��3Q�U^L�׈���*�=�"����㷒^8I� ���S[L��������	� ��Qk�Q	�ԋ���Qk�Q�k���F��1j0*�������UE��D�ǝާ�5���ny�BI�B��u� �J-�>E�E��pr�ا�w>�ל:2���W�>E�E]tKLv���MQ�MQ��J�Ź|�Zo��L ���I�)�d=ˆ��`�O��OQk@Q;�B�����U�wR�������(�U[b�6�d����UɊ��J��������gz3��6E�7E͊GZE�,t��֛��_f�c������V�z���Ǩ5���TrV��OQk@Q�(S9G��Zo���N/G��dJܦ�墨�%�/�rzхZn���3���������]����OQ�EQ��+�N���7"�妨�n�8�����N���_��g�%b�zv-7Կl�Z�J��lz!�Z"�:�[y *�6C-C�
�vQL�}�Z"�����W	��m����>�t�4F��DuLr��h\�!j� �n't,h�蠖��Q;���6D-D��Ni���U^蠖��.�S��l�Z"�:��aZ��j�(*�JV����)j	(ꨐ�TY�ۆ�%���S�3��j	j!L�B�f|��Z�����Ɲ�B-B�mc�=P��!j�!jM�3ҭ����B-7C]�9:�9o��j	�F�V	���#�!ԓZ�3���T4�����rT`���t�T�'�% �ZA�Qk�7��% �x�CcU�B��Uy��I�SGV�� �7Mz9��D-B�ED�bU���U�I�A����P��P3<�2D[}�Zn����A��1�A"���G�%@���{��s�a�T���CV���T��`*XdU��'�% ���
�(�~!�Zn�J�3�c߼}�Z"��/ܔ��"i/TP�MP�s9�9ky�PK�P��Ja��B�u�������[��0��/TPK�PUzWT���z��z���s�/�����j�f��f�*������f�%`�G�R,��>C-C���;�L�m#�+!P���hL��PK�P����躋�PˍP�qҢB��F��F��CU��ϛ>�rT�s4?`k�k6A-7A��w�W^^H����4~�����j� �B�RO���ym�Zn�J��A_�n�rԥ��Pc��OP�MP�G��H8��@-A��h��GC������N�=�����Hv��rPi��i��)&��-�}�_�H���ER��yFE�&�9 ����z�1S1Ɵ���Εoo�8>B�B=��5�>C�C�)q������ �fT_�N%��G�9B�2\�|��#��Q��8����9b�
n������3�0ԑH���{�P��PQ��"���3�0T��.�<?�f�9b�ZM���ai3�0�Y��J�55�	��A!)�5^>��0���j�3Ǹ��Ps�PUW�~���5G����a�>A�Am��TF�	j�2(*i���	j���������b�[�$T�<��>@�@U�L>0��Os�O�Z��Pq�B�4����AS���|z�/z�l�sf��4G���x�#��><�<�a�^��狝N������d��i��)�,>��mr�#rڎtʢ���i�)�L��9��4��Ɋ�+:o68�8����B�|p�p��yQ宧�b�?G�TI�2������F�I:yy��i�)��t��9d����Z���U���i��*��ַX>8�78�:L��p~Ns Nw ���i��i)'�)E/�i��)�J�p�|!~�ol��!b�l��c�aS��P����(
��])���`�Egg��a���4�ؔ���P�i�Ʀ�ƦHJP�4���� ��
��!��5���>}n�#nژX\���wT����޵��k67�7U���Y����9��z@J�*��/��r�M��D�����c�`�N$�%��ln�on�0a��s~a�n�Ԗ),L��怛Nn*
�l>8�8��;�5��>8�78��������tj+��y��ON�MN1yσ6�7����z�	�*��z��i����k�x��x3��l�u\Ӑ�m���i��)*P���_xG���"V��G���)�dC_�tmp�"p��,���5��4E�Tτg���s�pS��Hs��4Դ���(�ǆ�)��ܯ,�@ӛ���芖�YD���~
��Q�:��o��SM������9*Eдg��Vii�i��)o�ya}��)���0�v��OMSDM���r�
�>6M6e��d��yT��)~Te�!Q�NSN9�	c��'�)"�:g�dI����)⦪��֏�>7M77e�gW�#�NSN�+��G6�����j���n�h�OOS@O;��$��@M7=�+OH��Y�lx�"x��m]�K֧�)����Wۆ�OӍO^ȊJǙ�ǧ)��dk
D���}~�"~:��f�J���n�/PuF'�AM7AU�v���x�x�"~�T�(�)m��4E�T��$�U(� 5E U��^	M��B5EwB�c/���Pg�q�kUR>@M@��1Г���tT�Sfڌ��)�
kȾ*z1��n~:q��*D_4�� ���
7a��5ur)R�cR���Ԇ�F!���~�*5�v��>@������Q�8�|�O��Og�r �oF�S�Oy\�}b�����S�D}ؑ�>>�r;*me2/'��?M>UR�D��-�br?�T?��/�*_L��*�X�U��ļ� 5 u5��ߝ�L� ����"���) �gnb�s���� 5] ��m�mH���OS�O,�E��_��&���~
��i�7��)��Zr4�cD��Ӵo~��$TI@�v��)���4Ì����P��'@�G�p)58~x.A�#ub��^(���O|T,����&���|TLə�R��6A�>�A�oU ןH/:    O?+�IP�o�#����y �F�N^(����E�$��zI9֞/:O?��IP�B�r��L��P�K�P�l��|��y�O�����E���H�O��uta�w���2�ϗ�e��/�"�	���F�_���i%�T��7�~>��P1��{p�_m��݌�����:�m���$��F���F��E�@���]|��F����D�[�p6A�|�'AE�Uu����߽� �z+=�W��ӿ����2�|�4�������%��F��	�7��Te�r��o�MP���r�ɵtRz����o8T���6�쫟~��_~ʻ��|3t���o���X "�r���?���A���Bư����৛5��r���I��S�����!۟��|ⓟB�
��o?���~�)�#:,�K6=��_z��F�������.~���#�����O���OwG�S�l{�~�}�|�@8*5������)�kXT�#�����~�S<X�S�5إ��\���L#�N/�[��>S�CO�Z��'����
zZ�ѯ
l6=}fz��g����L�|8-�g�^j��g&p��С�U.����g&�E9�J�����g*p�i_;��x����	|�)�͑l�#��i�
(Va�8��fL<=L~��?�_'��E����T���>��������~�?
��H����@>=F}~�($.@}&�:wZ#\��L �� c�������l ��}];�K����t� ԭ��9�4���l��SF��}�\|����~ʏD��f�f��G:p��"6�Q
\��f��}p�����P��  ��q P�hշ	�3���^h��	%f��>��CP1�C���s�����f��2pf��������,o�'�+ ��l��F��}���T�*.���>A]Q*�83)�������jU&�����+�J�e�����
�)m�ʩ�A}��B�����X/�O?k�����^��~~�PQ����z>A]a�&� ��OPW؅:�1�a��'�+ ��:�ۢ��%�+"��y[&7/���7�=*W�-�E_���W�v�������'A=f���/�O��o�:V�u�UoQ���MPWHP3%��C�'�+�AU���Ƽ�?�n�'B���j���
*�}�_ȟ~_��	qM�Dn~�7��2T���t_�H|��B��#�=�B]!Bm�/s_����<j&��y__�~c�/C͸s��\C�{P�A�كJ߶J<%�Ӈ�+���ӭ_��PW�P��B��ګ>C]a�%\(�P?�K !*��f��O��т��4� ���߀�Z��9�.x���;a������m?{Pu@ oܛ߂�]��T����䋟~����9fBa��u��T'Q���*�Ӌ
���3�0T};}n�t��u��Z�J��/�O�����%�l�G�����u+�&v�߀���� 	���P>}���v�z/�O�����[�oJ	�#�;P�=6b���؛>A]Q*WC:f!|��>��41�uE�M���o��+��9�yQO���T-Ѿ0S�|��>-�������38-�*�A]�8��uE5�����"����\'���uE�ث�"�g�����S<����g.��A]���}�#�!�Λ��/f�����	UնN�����g.�A����i��	��O��6J�|�:o���>����?���JǕ�TL�hI���B�K�}F��)�x�E�5�R��Og�O�9n]�B��3�G�M/�jc�����S�Gb��3�Z������tF��<"ym�6?�?�p�뇊`��Og�Outur��_���Slܔ�$��||:o��̀"7W����tC��Y�����.>����v���4b��tF��e����i�������BƩ��Og�OUs�O��}z:��E=�����MOgDO1MЧ�����N��T[3�����S���PF����S���!_�}|:#|�0�F�F[�ǧ�Ƨ���ΐ��Og4į��!���Og�O3���.��|�o���O�,+�q���O��Ou���S'��Έ�N���"�>?�?�,!������Ua!�e�0_4���"�����P���*+�|�Pg ��)n�e��3 ��	~�:�m~:#~:��Y�*����i!���H)�PgP�q][�f��m�:#�ڗ�M.�m�:o��l���3%�|�:��P������%�3 ��r�+�6��Έ��n���q���TE	���ʷ��TxJ�	�I���&.�`�A�A�Ʉ�%]`�'�3"��&k���N
Tr�Bfج���u�Uэ�*66�.B�B��o}��q�#� T}���,r->B��dZ]c�,�hK��*�tM�9C�>B�B�sD˼SF�u��"cT����eP���A����Pꢸf#� T���+�ߔ}�:�zTꡉ��>A�Am'�d�k��uU;�V$J��OP�MP�.Ql޷OPg@P#8�k��}�:��iSd��8|�:n�:Pva���3�q3T�;ʚ���~����b#Fժe�j���Bt%��Ds�u��c@��t�M�#���_��D�Ň�#����Nz�^@��G)_��9�d�C�@T����׹�b�D�1�Ҹ��QG����|n�!���(0��I�C�@�~NϤ3��u�U�]�Ja�}�:���;As��Շ�#��ǎJI��QGQ3��U�%]�� �sU�֮���� ��L4�kI���Rp#��x�.DD�8Lu�=�uDi$Ė>��.DD=7�܂���uD���F�vyAQGDQ;Cv�u�UaM�qҁ���Q���2>�3V���1�0*7lZ��X�O�� ��D�t
���c�qaT��2L�r�� �����rw��L׻�9�8�>m�fU%6G7GE�&�����9ꈼ����B����uD�OO��!$l���TU�[�x�_���IMN���qzwA�@*z'Y��R� u U��E��E'�@*s)x�3�����J�Z�� u ��mx�~�� �꯫��:L1����:����� �#�ZA*�d�����*BU��tF�|�:�����P�|}�:�:��Lڀ�"�uU%�Jg �o�����6�)���9�����P�Ot��uurلM��ƨ#���IN��k/>FF��Y=[���Q�l �٩:J�j�7��#¨L��^��5}�:�ڵ�*����Ũ�ƨ��]�"��c�`TD+JA(s�� �����D��uU�������s�qsԉ�M�R�uUI�f|�(g�9�8*�]��|�����R)��3|�:�ʉ�$B뇼�Ũ�ƨ����0��}��/�����DJF����4�Q�}�&>F�7F�_�Rҩ[��|������ֶ.է�=��4Bm��^��Q{�Q�Lq��c�aԣW����Q{�Q��<��:m��#�������	�����>�k��G�akK�ެ>E�EU҇Aj*٧����:�&S�:���t)j(��2:����>E�E=��S��rG�����*=]��O���=����ĵ	�A6E�E��a4��-�����R�Ѐ�x�}���ʜ�24����#��)���V��Ui�D�I�e�������bT��&%c�F�F=��z?:�|�گ�	����ӶeC�AT��U�4:�}��#�J7K��Fj�������%FX8�����J��Y�oj����aE�U}��#��w��� �������y&��e�j��
W�J�u���U� iEM�E3jj��UT�)]����0�ma�����{%_@�A�~jO��y���=��J�H��������N�� �n�/���!�� ��!j�!j9�4A|����bF�P�#�~#T���^��ʞ}����f+�N�P� Q�T�Ђ>D�D%�����,>D�7DUŹ�	ק�ͨ=���dE�U%�Q�l@��m���uw�>E�EU�TeǾ�j��(S��m� �   �P��P3�A�5���'�W.��\����P&,>A�A�^�f�sZL�����R07j=�Rl��/����KG��@E�����j)��B��OP�MP�1F��J�� ��͐�N����~�Ӫ}�G늺6?�?�U-+jc�c���S��;Ҽ
h>=�=-�+A=�6>�7>�*-]��������������\      �      x������ � �      �   �  x�uU[��H��N�h@�ٯ�e����ю_��<��KٛI�Q �,���XU���TV�N��&�|9/�*娃bj�gWjS�*$�rC�AJ��[�'��|B��ٞ��1���<��?��#$�ER)W"RߝO=�}�1��F��r��NK}ӓ��Ro�\�*��j�]�1b��$x�)�膫�o��]�S���@�` .	c��|��c(�U�r���a�g�#�گ�ގ���/�u�j�F6s�W
N5��v�v���I;��2��S���|�Y!� �>�P�23�$�j���{��0�79��O���t���A��г3a���q�FM苃Ԫ)M���$�&����Ŵ^�r��.���ႴR���[�����H��Qd���1=p��r��нTqY[�=�S
`+�[00��]��}�9���>��[}��|p�)w&u^,�����mQ���D��9z7"?`�.�q��*r"j"z�j�	��q�0������я��M��6z۴��}ܯm��������ɗV�m!4�.wI��&g�7o�ȭ��>�gSFzpnD'����ܧ��>�5�����)��yL%W��II&lkf��z�'bJ1��D�iO�n�p���i��תن�]B�X�b%f�f>����Yx?�.3X&����S���t��6���3��2ǡ�T�C�4G��E�&�v�����F|f���r��m�.�o���%�C�.��;k�(�'��bκo2v1o&�/z[6����,\֛��^#�*�!���[��>��i���n��t�z6K�.:�ӻ~:�R(�n-l�D-��*�e���?�۠L�G�_�s{}�������|3lui+�.i{�@R�\4y�Φn#�]Cإ���?y��jwh��~\�/r��cX��@�sDS�:HQ�T�ʾ�֒`����L-�G��8/���y}3ƇO�"��j�v�E�H�e�t��*ݖ񾕂w�n	��M'��|���z�H[�-pc�jC�j�E�vr�ly>�lr��`�n[�v��2̶����|j��f9[6�\La���s����Sr#��r]M[k�o�ܢ��L����
��T��Eg������'Ĝ�Hl����?��Ӭ�c5ų�P�<�"�7I����I�'N�?|���YE n]���8��Gw�      �      x������ � �      	      x������ � �      
      x������ � �         \  x���9r�PCk���9���I���#��ȩ\0�44zC ��vi�����q��P�#�d���S"I
�`o��� �hJ:���'і�R�Tg�v�e�?��=� 洈9�ĭ�J�y;N�#N�V5�ɢ��)0Įt[gk��2nV�/�O�Vv�R:R���r�;F��¸���;��%�]�����9��v x=��&�s�;/���0!.���=��\�9�H�N���`���}B~����,z��3�A�bЬє���0
�i2O�j?����
:x��������ݓ�L�c��n�^6e)��S!�����n�æ9f1�;f2�z�����j�J+      b      x������ � �     