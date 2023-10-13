create table lte_data.factor_level_terms (  
	id smallserial not null,
	preferred_term_id int2 null,
	term_label text not null,
	term_uri text null,
	ontology_id text null,
	constraint factor_level_terms_pk primary key(id),
	constraint factor_level_terms_ontology_id_fk foreign key (ontology_id) references ontologies(id),
	constraint factor_level_terms_preferred_term_id foreign key (preferred_term_id) references factor_level_terms(id),
	constraint factor_level_terms_term_uri_unq unique (term_uri)
);

comment on table lte_data.factor_level_terms is 'factor_level_terms is a dimension table of terms for classifying experiment factor levels.';