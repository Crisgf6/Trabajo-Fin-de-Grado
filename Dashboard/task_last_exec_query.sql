with task_con_number as
(
    SELECT
      row_number() over (partition by database_name,schema_name,name order by scheduled_time desc) as row_number,
      DATABASE_NAME,
      SCHEMA_NAME,
      NAME,
      SCHEDULED_TIME,
      QUERY_START_TIME,
      COMPLETED_TIME,
      initcap(STATE) STATE,
      ERROR_CODE,
      ERROR_MESSAGE,
      DATEDIFF(
        'ms',
        QUERY_START_TIME,
        COALESCE(COMPLETED_TIME, current_timestamp())
      ) as DURATION,
     replace(iff(datediff(seconds,query_start_time,coalesce(completed_time, current_timestamp()))/60<0,
          concat('00:00:',to_varchar(datediff(seconds,query_start_time,coalesce(completed_time, current_timestamp()))),'00') 
         ,concat('00:',
                 to_varchar(trunc(datediff(seconds,query_start_time,coalesce(completed_time, current_timestamp()))/60),'00'),':',
                 to_varchar(datediff(seconds,
                                     query_start_time,
                                     coalesce(completed_time,
                                              current_timestamp()))-(trunc(datediff(seconds,
                                                                                    query_start_time,
                                                                                    coalesce(completed_time, 
                                                                                             current_timestamp()))/60))*60,'00')
                )
     ),' ','') as duracion
    FROM
      table(
        "STAGING".INFORMATION_SCHEMA.TASK_HISTORY(
          scheduled_time_range_start => to_timestamp_ltz(dateadd('day',-7,current_timestamp())),
          -- scheduled_time_range_end => TO_TIMESTAMP_LTZ('2023-01-20T23:00:00.000Z', 'AUTO'),
          RESULT_LIMIT => 10000
        )
      )
      -- where name like '%LINE%'
    ORDER BY
      SCHEDULED_TIME DESC
    LIMIT 50
)    
select 
    concat(database_name,'.',schema_name,'.',name) as Tarea,
    scheduled_time,
    query_start_time,
    completed_time,
    state,
    error_code,
    -- duration,
    duracion
from task_con_number
where row_number<=2 or error_code is not null
order by 1,2 desc;


-- select to_timestamp_ltz(dateadd('day',-7,current_timestamp()));