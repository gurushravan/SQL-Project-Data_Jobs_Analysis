select skill_id, count(*) as skill_count 
from skills_job_dim as skills_to_job inner join job_postings_fact as job_postings on job_postings.job_id = skills_to_job.job_id
where job_postings.job_work_from_home = True
GROUP BY skill_id;