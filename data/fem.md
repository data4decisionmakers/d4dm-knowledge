---
type: data
title: Female students mental health dataset
description: Dataset containing records of female students' mental health information.
resource: ./data/female_mental_health.xlsx
tags: [data, mental health, exploratory data analysis]
timestamp: 2026-07-21T01:58:45Z
---

# Schema

| **Column** | **Type**  | **Description**                                   |
|------------|-----------|---------------------------------------------------|
| `ID`       | INTEGER   | Unique identifier                                 |
| `AGE`      | INTEGER   | Age in years                                      |
| `IQ`       | NUMERIC   | IQ score                                          |
| `ANX`      | INTEGER   | Anxiety (1=none, 2=mild, 3=moderate, 4=severe)    |
| `DEP`      | INTEGER   | Depression (1=none, 2=mild, 3=moderate or severe) |
| `SLP`      | INTEGER   | Sleeping normally (1=yes, 2=no)                   |
| `SEX`      | INTEGER   | Lost interest in sex (1=yes, 2=no)                |
| `LIFE`     | INTEGER   | Considered suicide (1=yes, 2=no)                  |
| `WT`       | NUMERIC   | Weight change (kg) in previous 6 months           |
