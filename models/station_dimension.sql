with bike as
(
    select distinct start_station_id
    ,      start_station_name
    ,      start_lat
    ,      start_lag
    from {{ ref('stage_bike') }}
    where ride_id <> 'ride_id'
)
select *
from bike