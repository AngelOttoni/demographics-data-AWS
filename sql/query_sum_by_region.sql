select region,
	sum(population)
from "population-db-amo"."dio_athena_data_amo"
where region='Nordeste'
group by region;
