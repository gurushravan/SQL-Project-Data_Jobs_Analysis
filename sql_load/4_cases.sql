select job_title_short, job_location, count(job_id) as number_of_jobs,
case 
when job_location = 'Anywhere' then 'Remote'
when job_location = 'New York' then 'Local'
else 'Onsite'

end as location_category

FROM job_postings_fact

where job_title_short = 'Data Analyst'

group BY location_category, job_title_short, job_location