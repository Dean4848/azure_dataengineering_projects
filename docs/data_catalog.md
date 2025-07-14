# Data Catalog for Star Schema 
## Overview
The **Star Schema** data model consist of tables that are ready for analytical representation and reporting. It consist of **dimension tables** and **facts tables** supporting analytical reporting.

---

### 1. **dim_gender**
- **Purpose:** Holds information about athletes gender.
- **Columns:**

| Column Name      | Data Type     | Description                                                                                   |
|------------------|---------------|-----------------------------------------------------------------------------------------------|
| GenderID         | INT           | Surrogate key uniquely identifying each gender record in the dimension table.                 |
| DisciplineID     | INT           | Unique identifier assigned to each discipline.                                                |
| MaleCount        | INT           | Sum total number of male in each discipline.                                                  |
| FemaleCount      | INT           | Display  sum of female athletes in each discipline .                                          |
| TotalCount       | INT           | Sum the MaleCount and FemaleCount in each discipline .                                        |

---

### 2. **dim_Coach**
- **Purpose:** Provides information about the coach and their attributes .
- **Columns:**

| Column Name         | Data Type     | Description                                                                                   |
|---------------------|---------------|-----------------------------------------------------------------------------------------------|
| CoachID             | INT           | Surrogate key uniquely identifying each coach in the dim_coach table.                         |
| CoachName           | NVARCHAR(50)  | Name of coach representing each team and country.                                             |
| CountryID           | INT           | A unique identifier of each participating country.                                            |
| DisciplineID        | INT           | Unique identifier of each discipline in the olympic                                           |

- - -

### 3. **dim_discipline**
- **Purpose:** Provides information about the dim_discipline table and it attributes.
- **Columns:**

| Column Name         | Data Type     | Description                                                                                   |
|---------------------|---------------|-----------------------------------------------------------------------------------------------|
| DisciplineID        | INT           | Unique identifier of each discipline in the olympic                                           |
| DisciplineName      | NVARCHAR(50)  | Name of discipline.                                                                           |

---

### 4. **dim_medal**
- **Purpose:** Provides information about the dim_medal table and it attributes.
- **Columns:**

| Column Name         | Data Type     | Description                                                                                   |
|---------------------|---------------|-----------------------------------------------------------------------------------------------|
| MedalID             | INT           | Unique identifier of each medal type in the dim_medal table                                   |
| MedalType           | NVARCHAR(50)  | Type of medal gold, silver and bronze.                                                        |

- - -

### 5. **dim_country**
- **Purpose:** Provides information about the dim_country table and it attributes.
- **Columns:**

| Column Name         | Data Type     | Description                                                                                   |
|---------------------|---------------|-----------------------------------------------------------------------------------------------|
| CountryID           | INT           | Unique identifier of each country in the dim_country table.                                   |
| CountryNmae         | NVARCHAR(50)  | Name of participating country.                                                                |

### 3. **fact_atheletes_participation**
- **Purpose:** Stores participation information about participant.
- **Columns:**

| Column Name     | Data Type     | Description                                                                                   |
|-----------------|---------------|-----------------------------------------------------------------------------------------------|
| AtheleteID      | INT           | A unique  identifier for each athletes.                                                       |
| Name            | NVARCHAR(50)  | Name of athletes  participating in the olympic                                                |
| CountryID       | INT           | A unique identifier of each participating country.                                            |
| DisciplineID    | INT           | Unique identifier of each discipline in the olympic                                           |
| GenderID        | INT           | Surrogate key uniquely identifying each gender record in the dimension table.                 |
| MedalID         | INT           | Unique identifier of each medal type in the dim_medal table                                   |
