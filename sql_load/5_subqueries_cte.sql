select * FROM
(SELECT * FROM job_postings_fact where EXTRACT (month from job_posted_date) = 1) as january_jobs; 


select company_id, name from company_dim where company_id in (select company_id from job_postings_fact where job_no_degree_mention = true);


with company_job_count as (
select company_id, count(*) as total_jobs from job_postings_fact GROUP BY company_id)
select company_dim.name, company_job_count.total_jobs from company_dim left join company_job_count on company_job_count.company_id = company_dim.company_id;


