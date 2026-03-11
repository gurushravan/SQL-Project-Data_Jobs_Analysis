 /*
 wat are the top paying data analyst jobs
 identify top 10 highest paying data analyst roles
 focuses on job postings with specified salaries
 why? highlight the top paying opportunities for data analytics
 */



select job_id, job_title, job_location, job_schedule_type, salary_year_avg, job_posted_date, name as company_name 
from job_postings_fact
LEFT JOIN
company_dim on job_postings_fact.company_id = company_dim.company_id
where job_title_short = 'Data Analyst' and job_location = 'India'
and salary_year_avg is not NULL
ORDER BY salary_year_avg DESC
limit 10