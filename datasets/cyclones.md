---
type: data
title: Cyclones
description: Dataset containing records of every cyclone that entered the Philippine area of responsibility from 2017 to 2021.
resource: ./datasets/cyclones.xlsx
tags: [data, cyclones, exploratory data analysis]
timestamp: 2026-07-21T01:35:56Z
---

# Schema

| **Column**      | **Type**  | **Description**                                              |
|-----------------|-----------|--------------------------------------------------------------|
| `year`          | STRING    | Year                                                         |
| `category_code` | STRING    | Tropical cyclone category code                               |
| `category_name` | NUMERIC   | Tropical cyclone category name                               |
| `name`          | STRING    | Name given to the tropical cyclone by Philippine authorities |
| `rsmc_name`     | STRING    | Name given to the tropical cyclone by RSMC                   |
| `start`         | STRING    | Date and time at which cyclone enters Philippine waters      |
| `end`           | STRING    | Date and time at which cyclone leaves Philippine waters      |
| `pressure`      | NUMERIC   | Maximum central pressure in hPa                              |
| `speed`         | NUMERIC   | Maximum sustained wind speed in km/h                         |

