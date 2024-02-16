# era_database
SQL code for a PostgreSQL implementation of the new e-RA database for the Rothamsted long-term experiments.

The a-RA database is used for recording all numeric and text data associated with the Rothamsted Long-term experiments, however the data model is generic and can be used for any LTE.

Metadata and FAIR ready are key features of the design, therefore in addition to the measured and observed data values, the database collects extensive information to describe the data and their provenance including:
- Information about protocols used
- Observations about problems or issues with plots or measurements
- Information about the people contributing to the collection and management of the data
- Information about the data funders
- Semantic annotation using FAIR ontologies

# Dataset Organisation
The database organises data into datasets as the basic organisational unit. Datasets are version controlled meaning a dataset can be superceded, but the previous dataset isn't deleted. A dataset is typically define as a collection of related data, for example yearly yield data, a time series campaign of soil measurements etc. 

# Plot year architectural concept
The plot year is the principal concept behind the data model. A plot year, as the name suggests represents and links all the information about a single plot in a single year. A year in this case refers to the harvest year, namely the period from seedbed prepartion to harvest. Other regions may have seasonal cycles, in which case plot year season may be a more appropriate concept.

The plot year concept is used to link together:
- Agronomic information (sowing dates, harvest dates, inputs, cultivations)
- Experiment factor levels applied
- Measured and observed data.

# Data Model
[This file illustrates the data model](https://github.com/Rothamsted-Ecoinformatics/era_database/blob/main/era_load_ER_v1.png)

[Further information about the design](https://github.com/Rothamsted-Ecoinformatics/era_database/blob/main/sql/Design%20notes.md).

# License
This work is licensed under a
[Creative Commons Attribution 4.0 International License][cc-by].

[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
