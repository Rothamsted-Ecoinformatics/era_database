CREATE TABLE lte_data.ontologies (
	id text NOT NULL,
	ontology_name text NOT NULL,
	ontology_uri text NOT NULL,
	CONSTRAINT ontologies_pk PRIMARY KEY (id)
);