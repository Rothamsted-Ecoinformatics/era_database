create table lte_data.application_timing_terms (
	id smallserial not null,
	preferred_term_id int2 null,
	term_label text not null,
	term_uri text null,
	ontology_id text null,
	constraint application_timing_terms_pk primary key(id),
	constraint application_timing_terms_ontology_id foreign key (ontology_id) references ontologies(id),
	constraint application_timing_terms_preferred_term_id foreign key (preferred_term_id) references application_timing_terms(id),
	constraint application_timing_terms_term_uri_unq unique (term_uri)
);

comment on table lte_data.application_timing_terms is 'application_timings_terms is a dimension table used to provide a standardised classification for a factor level application timings backed by a curated ontology term, if one exists.';
