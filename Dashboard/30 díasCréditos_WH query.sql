select 
    to_date(start_time)
    ,name as "Tipo"
    ,round(sum(credits_used),2) as "Créditos"
from snowflake.account_usage.metering_history
where start_time >= current_date() - 30
group by 1,2
order by 1,2;