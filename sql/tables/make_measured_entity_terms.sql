create table lte_data.measured_entity_terms (
	id smallserial not null,
    preferred_term_id int2 null,
	term_label text not null,
	term_uri text null,
	ontology_id text null,
	usage_notes text null,
	other_notes text null,
	constraint measured_entity_term_pk primary key(id),
	constraint measured_entity_terms_ontology_id_fk foreign key (ontology_id) references ontologies(id),
	constraint measured_entity_terms_preferred_term_id foreign key (preferred_term_id) references measured_entity_terms(id),
	constraint measured_entity_terms_term_uri_unq unique (term_uri)
);

comment on table lte_data.measured_entity_terms is 'measured_entity_terms dimension table is used to provide a standardised classification for 
things which can be measured in a field experiment. Terms are backed by a curated ontology term, if one exists.';