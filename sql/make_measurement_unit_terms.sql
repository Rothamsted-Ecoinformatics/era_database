create table lte_data.measurement_unit_terms (
	id smallserial not null,
	symbol varchar(10) not null,
	preferred_term_id int2 null,
	term_label text not null,
	term_uri text null,
	ontology_id text null,
	constraint measurement_unit_terms_pk primary key(id),
	constraint measurement_unit_terms_ontology_id foreign key (ontology_id) references ontologies(id),
	constraint measurement_unit_terms_preferred_term_id foreign key (preferred_term_id) references measurement_unit_terms(id),
	constraint unq_measurement_unit_term_uri unique (term_uri)
);

comment on table lte_data.measurement_unit_terms is 'measurement_unit_terms dimension table is used to provide a standardised classification for 
variable measurement units and is backed by a curated ontology term, if one exists.';
