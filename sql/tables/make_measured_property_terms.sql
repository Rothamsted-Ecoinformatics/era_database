CREATE TABLE lte_data.measured_property_terms (
	id smallserial NOT NULL,
	preferred_term_id int2 NULL,
	term_label text NOT NULL,
	term_uri text NULL,
	ontology_id text NULL,
	usage_notes text NULL,
	other_notes text NULL,
	CONSTRAINT measured_property_term_pk PRIMARY KEY (id),
	CONSTRAINT measured_property_terms_term_uri_unq UNIQUE (term_uri),
	CONSTRAINT measured_property_terms_ontology_id_fk FOREIGN KEY (ontology_id) REFERENCES lte_data.ontologies(id),
	CONSTRAINT measured_property_terms_preferred_term_id FOREIGN KEY (preferred_term_id) REFERENCES lte_data.measured_property_terms(id)
);

comment on table lte_data.measured_property_terms is 'measured_property_terms dimension table is used to provide a standardised 
classification for the properties being measured for something in a field experiment. Terms are backed by a curated ontology term, if one exists.';