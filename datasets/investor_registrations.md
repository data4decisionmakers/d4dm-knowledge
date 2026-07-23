---
type: data
title: International Business Companies Application
description: Synthetic dataset containing information about international business company applications to the Financial Services Authority
resource: ./datasets/ibc_applications.xlsx
tags: [data, international business, company applications]
timestamp: 2026-07-23T02:53:54Z
---

# Schema

| **Column**               | **Type** | **Description**                                        |
|--------------------------|----------|--------------------------------------------------------|
| `app_id`                 | STRING   | Application unique identifier                          |
| `company_name`           | STRING   | Name of company                                        |
| `applicant_name`         | STRING   | Name of person submitting the application              |
| `occupation`             | STRING   | Occupation of the person submitting the application    |
| `nationality`            | STRING   | Nationality of the person submitting the application   |
| `service_type`           | STRING   | Type of service provided by the company                |
| `num_directors`          | INTEGER  | Number of directors                                    |
| `compliance_officer`     | STRING   | Name of compliance officer                             |
| `has_alt_officer`        | BOOLEAN  | Is there an alternative compliance officer?; Yes or No |
| `has_former_names`       | BOOLEAN  | Does the company have former names?; Yes or No         |
| `capital_usd`            | NUMERIC  | Capital in USD                                         |
| `capital_source`         | STRING   | Source of capital; Loan or Equity or Shareholder       |
| `employment_total`       | INTEGER  | Proposed employment size                               |
| `employment_locals`      | INTEGER  | Number of proposed employment size for locals          |
| `employment_expats`      | INTEGER  | Number of proposed employment size for expatriates     |
| `annual_revenue_usd`     | NUMERIC  | Annual revenue in USD                                  |
| `annual_expenditure_usd` | NUMERIC  | Annual expenditure in USD                              |
| `dom_expenditure_scr`    | NUMERIC  | Domestic expenditure in SCR                            |

