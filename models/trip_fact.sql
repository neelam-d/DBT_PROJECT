with trip as
(
    select ride_id
    ,      date(to_timestamp(start_at)) as trip_date
    ,      start_station_id
    ,      end_station_id
    ,      member_casual
    ,      timestampdiff(second,to_timestamp(start_at), to_timestamp(end_at)) trip_duration
    from {{ ref('stage_bike') }}
    where ride_id <> 'ride_id'
)
select *
from trip