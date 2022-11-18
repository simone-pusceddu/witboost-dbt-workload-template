insert into output_table(
    date,
    location_key,
    new_confirmed,
    new_deceased,
    new_recovered,
    new_tested,
    cumulative_confirmed,
    cumulative_deceased,
    cumulative_recovered,
    cumulative_tested
) select date, location_key, new_confirmed, new_deceased, new_recovered, new_tested,
            cumulative_confirmed, cumulative_deceased, cumulative_recovered, cumulative_tested 
from google_covid_dataset;