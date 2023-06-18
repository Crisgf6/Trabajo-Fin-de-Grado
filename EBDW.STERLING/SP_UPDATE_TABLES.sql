CREATE OR REPLACE PROCEDURE EBDW.STERLING.SP_UPDATE_TABLES("P_SOURCE_TABLE_NAME" VARCHAR(16777216), "P_TARGET_TABLE_NAME" VARCHAR(16777216), "P_PRIMARY_KEY" VARCHAR(16777216))
RETURNS TABLE ()
LANGUAGE SQL
EXECUTE AS OWNER
AS 'DECLARE
    source varchar := concat(''sterling.'',:p_source_table_name);
    target varchar := concat(''sterling.'',:p_target_table_name);
    exe_q varchar;
    res resultset;
BEGIN
    
    CREATE TABLE identifier(:target) IF NOT EXISTS AS
    with marca_true as
    (
        select 
            CASE
                WHEN (row_number() over (partition by identifier(:p_primary_key) order by identifier(:p_primary_key) ,lockid desc) =1) THEN TRUE
                ELSE FALSE
            END as "IS_CURRENT"
            ,*
        from identifier(:source)
    )
    select distinct * exclude is_current from marca_true 
    where is_current=true
    ;

    create or replace temporary table rango_modifyts as
    select 
         min(modifyts) as min_modifyts
        ,max(modifyts) as max_modifyts
    from identifier(:source) -- yfs_order_release_status_vw
    where modifyts >= (select max(modifyts) from identifier(:target)) --yfs_order_release_status
    ;
    
    -- res:=(select * from rango_modifyts);

    create or replace temporary table a_insertar as
    with ordena as
    (
        select DISTINCT
            CASE
                WHEN (row_number() over (partition by identifier(:p_primary_key) order by identifier(:p_primary_key) ,lockid desc) =1) THEN TRUE
                ELSE FALSE
            END as "IS_CURRENT"
            ,*
        from identifier(:source)
        where modifyts between 
                    (select min_modifyts from rango_modifyts) and 
                    (select max_modifyts from rango_modifyts)
    )
    select * exclude is_current from ordena where is_current=true
    ;

    -- res:=(select count(*) from a_insertar);
    exe_q := concat(''delete from '',:target,'' a using a_insertar b where a.'',:p_primary_key,''= b.'',:p_primary_key,'';'');
    execute immediate exe_q;

    res := (insert into identifier(:target) select * from a_insertar);
    -- Retornar mensaje de éxito
    RETURN TABLE(res);
    
END';