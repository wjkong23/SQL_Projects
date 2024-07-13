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
        AND job_location ILIKE '%Indonesia%'
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
    "job_id": 1771851,
    "job_title_short": "Data Analyst",
    "job_title": "Marketing Data Analytics Manager",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "132500.0",
    "skills": "sql"
  },
  {
    "job_id": 1771851,
    "job_title_short": "Data Analyst",
    "job_title": "Marketing Data Analytics Manager",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "132500.0",
    "skills": "python"
  },
  {
    "job_id": 1771851,
    "job_title_short": "Data Analyst",
    "job_title": "Marketing Data Analytics Manager",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "132500.0",
    "skills": "javascript"
  },
  {
    "job_id": 1771851,
    "job_title_short": "Data Analyst",
    "job_title": "Marketing Data Analytics Manager",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "132500.0",
    "skills": "excel"
  },
  {
    "job_id": 1771851,
    "job_title_short": "Data Analyst",
    "job_title": "Marketing Data Analytics Manager",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "132500.0",
    "skills": "tableau"
  },
  {
    "job_id": 1771851,
    "job_title_short": "Data Analyst",
    "job_title": "Marketing Data Analytics Manager",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "132500.0",
    "skills": "power bi"
  },
  {
    "job_id": 176019,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Merchant Success",
    "company_name": "BukuWarung",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "111175.0",
    "skills": "sql"
  },
  {
    "job_id": 176019,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Merchant Success",
    "company_name": "BukuWarung",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "111175.0",
    "skills": "python"
  },
  {
    "job_id": 176019,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Merchant Success",
    "company_name": "BukuWarung",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "111175.0",
    "skills": "r"
  },
  {
    "job_id": 413113,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Consumer Lending",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "105000.0",
    "skills": "sql"
  },
  {
    "job_id": 413113,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Consumer Lending",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "105000.0",
    "skills": "python"
  },
  {
    "job_id": 413113,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Consumer Lending",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "105000.0",
    "skills": "tableau"
  },
  {
    "job_id": 413113,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Consumer Lending",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "105000.0",
    "skills": "looker"
  },
  {
    "job_id": 1516589,
    "job_title_short": "Data Analyst",
    "job_title": "Customer Loyalty SLA Control Tower & Data Analyst",
    "company_name": "Ninja Van",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "105000.0",
    "skills": "excel"
  },
  {
    "job_id": 869889,
    "job_title_short": "Data Analyst",
    "job_title": "(Operation) Data Analyst Manual Activity",
    "company_name": "Ninja Van",
    "job_location": "Yogyakarta, Yogyakarta City, Special Region of Yogyakarta, Indonesia",
    "salary_year_avg": "102500.0",
    "skills": "sql"
  },
  {
    "job_id": 869889,
    "job_title_short": "Data Analyst",
    "job_title": "(Operation) Data Analyst Manual Activity",
    "company_name": "Ninja Van",
    "job_location": "Yogyakarta, Yogyakarta City, Special Region of Yogyakarta, Indonesia",
    "salary_year_avg": "102500.0",
    "skills": "excel"
  },
  {
    "job_id": 1367719,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst",
    "company_name": "Stockbit",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "100500.0",
    "skills": "sql"
  },
  {
    "job_id": 1367719,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst",
    "company_name": "Stockbit",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "100500.0",
    "skills": "tableau"
  },
  {
    "job_id": 1467344,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Junior",
    "company_name": "Samsung Electronics",
    "job_location": "Indonesia",
    "salary_year_avg": "77017.5",
    "skills": "sql"
  },
  {
    "job_id": 1467344,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Junior",
    "company_name": "Samsung Electronics",
    "job_location": "Indonesia",
    "salary_year_avg": "77017.5",
    "skills": "python"
  },
  {
    "job_id": 1467344,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Junior",
    "company_name": "Samsung Electronics",
    "job_location": "Indonesia",
    "salary_year_avg": "77017.5",
    "skills": "aws"
  },
  {
    "job_id": 1467344,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Junior",
    "company_name": "Samsung Electronics",
    "job_location": "Indonesia",
    "salary_year_avg": "77017.5",
    "skills": "excel"
  },
  {
    "job_id": 182865,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst",
    "company_name": "Trusting Social",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "75067.5",
    "skills": "sql"
  },
  {
    "job_id": 182865,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst",
    "company_name": "Trusting Social",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "75067.5",
    "skills": "python"
  },
  {
    "job_id": 182865,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst",
    "company_name": "Trusting Social",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "75067.5",
    "skills": "r"
  },
  {
    "job_id": 182865,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst",
    "company_name": "Trusting Social",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "75067.5",
    "skills": "hadoop"
  },
  {
    "job_id": 182865,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst",
    "company_name": "Trusting Social",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "75067.5",
    "skills": "excel"
  },
  {
    "job_id": 496498,
    "job_title_short": "Data Analyst",
    "job_title": "Audit Data Analytics & System Development",
    "company_name": "Amartha",
    "job_location": "South Jakarta, South Jakarta City, Jakarta, Indonesia",
    "salary_year_avg": "64800.0",
    "skills": "sql"
  },
  {
    "job_id": 496498,
    "job_title_short": "Data Analyst",
    "job_title": "Audit Data Analytics & System Development",
    "company_name": "Amartha",
    "job_location": "South Jakarta, South Jakarta City, Jakarta, Indonesia",
    "salary_year_avg": "64800.0",
    "skills": "sql server"
  },
  {
    "job_id": 496498,
    "job_title_short": "Data Analyst",
    "job_title": "Audit Data Analytics & System Development",
    "company_name": "Amartha",
    "job_location": "South Jakarta, South Jakarta City, Jakarta, Indonesia",
    "salary_year_avg": "64800.0",
    "skills": "excel"
  },
  {
    "job_id": 496498,
    "job_title_short": "Data Analyst",
    "job_title": "Audit Data Analytics & System Development",
    "company_name": "Amartha",
    "job_location": "South Jakarta, South Jakarta City, Jakarta, Indonesia",
    "salary_year_avg": "64800.0",
    "skills": "word"
  },
  {
    "job_id": 496498,
    "job_title_short": "Data Analyst",
    "job_title": "Audit Data Analytics & System Development",
    "company_name": "Amartha",
    "job_location": "South Jakarta, South Jakarta City, Jakarta, Indonesia",
    "salary_year_avg": "64800.0",
    "skills": "powerpoint"
  },
  {
    "job_id": 681820,
    "job_title_short": "Business Analyst",
    "job_title": "Business Intelligence Analyst",
    "company_name": "Moladin",
    "job_location": "South Jakarta, South Jakarta City, Jakarta, Indonesia",
    "salary_year_avg": "64800.0",
    "skills": "sql"
  },
  {
    "job_id": 681820,
    "job_title_short": "Business Analyst",
    "job_title": "Business Intelligence Analyst",
    "company_name": "Moladin",
    "job_location": "South Jakarta, South Jakarta City, Jakarta, Indonesia",
    "salary_year_avg": "64800.0",
    "skills": "tableau"
  },
  {
    "job_id": 399957,
    "job_title_short": "Business Analyst",
    "job_title": "Associate Business Intelligence",
    "company_name": "tiket.com",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "64800.0",
    "skills": "sql"
  },
  {
    "job_id": 399957,
    "job_title_short": "Business Analyst",
    "job_title": "Associate Business Intelligence",
    "company_name": "tiket.com",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "64800.0",
    "skills": "python"
  },
  {
    "job_id": 399957,
    "job_title_short": "Business Analyst",
    "job_title": "Associate Business Intelligence",
    "company_name": "tiket.com",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "64800.0",
    "skills": "shell"
  },
  {
    "job_id": 399957,
    "job_title_short": "Business Analyst",
    "job_title": "Associate Business Intelligence",
    "company_name": "tiket.com",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "64800.0",
    "skills": "tableau"
  },
  {
    "job_id": 277216,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst",
    "company_name": "Gravel",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "57500.0",
    "skills": "python"
  },
  {
    "job_id": 277216,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst",
    "company_name": "Gravel",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "57500.0",
    "skills": "bigquery"
  },
  {
    "job_id": 1110700,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst (Junior/Entry-level) - Campaign Management",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "57500.0",
    "skills": "r"
  },
  {
    "job_id": 521352,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Ads and Promo Platform",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "57500.0",
    "skills": "sql"
  },
  {
    "job_id": 521352,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Ads and Promo Platform",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "57500.0",
    "skills": "python"
  },
  {
    "job_id": 521352,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Ads and Promo Platform",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "57500.0",
    "skills": "bigquery"
  },
  {
    "job_id": 521352,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Ads and Promo Platform",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "57500.0",
    "skills": "gitlab"
  },
  {
    "job_id": 521352,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Ads and Promo Platform",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "57500.0",
    "skills": "asana"
  },
  {
    "job_id": 521352,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analyst - Ads and Promo Platform",
    "company_name": "GoTo Group",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "57500.0",
    "skills": "slack"
  },
  {
    "job_id": 578228,
    "job_title_short": "Business Analyst",
    "job_title": "Junior Business Intelligence Analyst",
    "company_name": "Cermati.com",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "50400.0",
    "skills": "sql"
  },
  {
    "job_id": 578228,
    "job_title_short": "Business Analyst",
    "job_title": "Junior Business Intelligence Analyst",
    "company_name": "Cermati.com",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "50400.0",
    "skills": "python"
  },
  {
    "job_id": 578228,
    "job_title_short": "Business Analyst",
    "job_title": "Junior Business Intelligence Analyst",
    "company_name": "Cermati.com",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "50400.0",
    "skills": "r"
  },
  {
    "job_id": 578228,
    "job_title_short": "Business Analyst",
    "job_title": "Junior Business Intelligence Analyst",
    "company_name": "Cermati.com",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "50400.0",
    "skills": "bigquery"
  },
  {
    "job_id": 578228,
    "job_title_short": "Business Analyst",
    "job_title": "Junior Business Intelligence Analyst",
    "company_name": "Cermati.com",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "50400.0",
    "skills": "jupyter"
  },
  {
    "job_id": 578228,
    "job_title_short": "Business Analyst",
    "job_title": "Junior Business Intelligence Analyst",
    "company_name": "Cermati.com",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "50400.0",
    "skills": "excel"
  },
  {
    "job_id": 176958,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analytics Associate",
    "company_name": "Gravel",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "50400.0",
    "skills": "python"
  },
  {
    "job_id": 176958,
    "job_title_short": "Data Analyst",
    "job_title": "Data Analytics Associate",
    "company_name": "Gravel",
    "job_location": "Jakarta, Indonesia",
    "salary_year_avg": "50400.0",
    "skills": "bigquery"
  }
]

*/