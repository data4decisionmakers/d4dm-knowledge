---
type: data
title: International Business Companies (IBC) dataset
description: Synthetic dataset containing information on International Business Companies applications to the Seychelles Financial Services Authority (FSA)
resource: ./datasets/ibc_applications.xlsx
tags: [data, international business companies, comparative data analysis]
timestamp: 2026-07-23T02:49:45Z
---

# Schema

| **Column**    | **Type** | **Description**                                        |
|---------------|----------|--------------------------------------------------------|
| `name`.       | STRING   | Name of investor                                       |
| `sex`.        | STRING   | Sex of investor; Male or Female                        |
| `nationality` | STRING   | Nationality of the investor                            |
| `position`.   | STRING   | Position of the investor in the company they represent |
| `company`     | STRING   | Name of the company that the investor represents       |
| `country`     | STRING   | Country in which company is based                      |
| `dietary`     | STRING   | Dietary preference of the investor                     |
| `investor`    | STRING   | Type of investor; Prospective or Current.              |
