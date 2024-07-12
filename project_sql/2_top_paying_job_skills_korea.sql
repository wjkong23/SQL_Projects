/*
Question: What are the top-paying data analyst jobs, and what skills are required?

- Identify the top 10 highest-paying Data Analyst jobs and the specific skills required for these roles.
- Filters for roles with specified salaries that are remote
- Why? It provides a detailed look at which high-paying jobs demand certain skills, helping job seekers understand which skills to develop that align with top salaries

*/

WITH top_paying_jobs AS (
    SELECT 
        job_id,
        job_title_short,
        job_title,
        company_dim.name AS company_name,
        job_location,
        salary_year_avg
    FROM
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short IN ('Data Analyst', 'Business Analyst')
        AND job_location ILIKE '%Korea%'
        AND salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
)

SELECT 
    top_paying_jobs.*,
    skills_dim.skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC

/*
[
  {
    "job_id": 87796,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 87796,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "excel"
  },
  {
    "job_id": 87796,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "tableau"
  },
  {
    "job_id": 87796,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "power bi"
  },
  {
    "job_id": 105031,
    "job_title_short": "Data Analyst",
    "job_title": "Senior / Staff Data Analyst (Rocket Growth - Data Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 105031,
    "job_title_short": "Data Analyst",
    "job_title": "Senior / Staff Data Analyst (Rocket Growth - Data Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "r"
  },
  {
    "job_id": 105031,
    "job_title_short": "Data Analyst",
    "job_title": "Senior / Staff Data Analyst (Rocket Growth - Data Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "spark"
  },
  {
    "job_id": 105031,
    "job_title_short": "Data Analyst",
    "job_title": "Senior / Staff Data Analyst (Rocket Growth - Data Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "airflow"
  },
  {
    "job_id": 105031,
    "job_title_short": "Data Analyst",
    "job_title": "Senior / Staff Data Analyst (Rocket Growth - Data Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "tableau"
  },
  {
    "job_id": 105031,
    "job_title_short": "Data Analyst",
    "job_title": "Senior / Staff Data Analyst (Rocket Growth - Data Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "power bi"
  },
  {
    "job_id": 105031,
    "job_title_short": "Data Analyst",
    "job_title": "Senior / Staff Data Analyst (Rocket Growth - Data Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "github"
  },
  {
    "job_id": 390450,
    "job_title_short": "Data Analyst",
    "job_title": "Senior, Data Analyst (Channel Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 390450,
    "job_title_short": "Data Analyst",
    "job_title": "Senior, Data Analyst (Channel Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "r"
  },
  {
    "job_id": 390450,
    "job_title_short": "Data Analyst",
    "job_title": "Senior, Data Analyst (Channel Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "airflow"
  },
  {
    "job_id": 390450,
    "job_title_short": "Data Analyst",
    "job_title": "Senior, Data Analyst (Channel Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "tableau"
  },
  {
    "job_id": 390450,
    "job_title_short": "Data Analyst",
    "job_title": "Senior, Data Analyst (Channel Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "github"
  },
  {
    "job_id": 390450,
    "job_title_short": "Data Analyst",
    "job_title": "Senior, Data Analyst (Channel Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "jira"
  },
  {
    "job_id": 390450,
    "job_title_short": "Data Analyst",
    "job_title": "Senior, Data Analyst (Channel Analytics)",
    "company_name": "Coupang",
    "job_location": "Seoul, South Korea",
    "salary_year_avg": "111175.0",
    "skills": "confluence"
  }
]

*/