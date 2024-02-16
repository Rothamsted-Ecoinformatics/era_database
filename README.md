# era_database
SQL code for a PostgreSQL implementation of the new e-RA database for long-term experiments.

The a-RA database used for recording all numeric and text data associated with Rothamsted Long-term experiments. The data model is generic and can be used for any LTE.

Metadata and FAIR ready are key features of the design, therefore in addition to the measured and observed data values, the database collects extensive information to describe the data and their provenance including:
- Information about protocols used
- Observations about problems or issues with plots or measurements
- Information about the people contributing to the collection and management of the data
- Information about the data funders
- Semantic annotation using FAIR ontologies

# Dataset Organisation
The database organises data into datasets as the basic organisational unit. Datasets are version controlled meaning a dataset can be superceded, but the previous dataset isn't deleted. A dataset is typically define as a collection of related data, for example yearly yield data, a time series campaign of soil measurements etc. 

Also included are design decisions around the design of the database.

This work is licensed under a
[Creative Commons Attribution 4.0 International License][cc-by].

[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
