SELECT 

job_title_short,
job_location,
job_via,
job_posted_date::date


from
(SELECT * from january_jobs

UNION ALL

SELECT * from february_jobs

union ALL

select * from march_jobs
) as quarter1_job_postings


where quarter1_job_postings.salary_year_avg > 70000
and quarter1_job_postings.job_title_short = 'Data Analyst';