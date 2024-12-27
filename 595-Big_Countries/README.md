# 595. Big Countries

## Problem

There are some countries in the world, and each country has a population and area. You need to return the name of the countries where both the population and the area are greater than a certain threshold.

Write a SQL query to find all the countries with a population greater than `population_threshold` and an area greater than `area_threshold`.

### Table: `Countries`
| Column Name   | Type    |
| ------------- | ------- |
| name          | varchar |
| population    | int     |
| area          | int     |

- `name` is the name of the country.
- `population` is the population of the country.
- `area` is the area of the country.

### Constraints
- `1 <= population <= 10^9`
- `1 <= area <= 10^6`
- `1 <= population_threshold <= 10^9`
- `1 <= area_threshold <= 10^6`

### Example

#### Input

| name      | population | area |
| --------- | ---------- | ---- |
| CountryA  | 5000000    | 10000|
| CountryB  | 10000000   | 5000 |
| CountryC  | 7000000    | 30000|

- `population_threshold` = 6000000
- `area_threshold` = 10000

#### Output

| name      |
| --------- |
| CountryA  |
| CountryC  |

### Explanation
- `CountryA` has a population of 5000000 and area of 10000, which are both greater than or equal to the thresholds.
- `CountryB` does not meet the population condition.
- `CountryC` has both population and area greater than or equal to the thresholds.
