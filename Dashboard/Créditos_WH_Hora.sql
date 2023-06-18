select 
    start_time
    ,name as "Tipo"
    ,round(sum(credits_used),2) as "Créditos"
from snowflake.account_usage.metering_history
where start_time >= current_date()
group by 
    start_time
   ,name
order by 1,2;