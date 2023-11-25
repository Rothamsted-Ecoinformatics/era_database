create table lte_data.activity_log_type_terms (
	id smallserial not null,
	preferred_term_id int2 null,
	term_label text not null,
	term_uri text null,
	ontology_id text null,
	constraint activity_log_type_terms_pk primary key(id),
	constraint activity_log_type_terms_ontology_id foreign key (ontology_id) references ontologies(id),
	constraint activity_log_type_terms_preferred_term_id foreign key (preferred_term_id) references activity_log_type_terms(id),
	constraint activity_log_type_terms_term_uri_unq unique (term_uri)
);

comment on table lte_data.activity_log_type_terms is 'activity_log_type_terms is a dimension table used to provide a standardised classification for a agronomic activity log types backed by a curated ontology term, if one exists.';
