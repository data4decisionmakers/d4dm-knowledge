---
type: data
title: Complaints
description: Synthetic dataset containing customer complaints on services received from generic government service providers
resource: ./datasets/complaints.xlsx
tags: [data, complaints, comparative data analysis]
timestamp: 2026-07-23T02:49:45Z
---

# Schema

| **Column**  | **Type** | **Description**                                        |
|-------------|----------|--------------------------------------------------------|
| `id`.       | STRING   | Unique identifier                                      |
| `timestamp` | STRING   | Date and time feedback was logged/recorded             |
| `age`       | INTEGER  | Age (years) of person lodging the feedback             |
| `sex`       | STRING   | Sex of the person lodging the feedback; Male or Female |
| `location`  | STRING   | Ddistrict in which person lodging the feedback is from |
| `feedback`  | STRING   | Feedback provided                                      |
