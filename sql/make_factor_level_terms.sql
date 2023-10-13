create table lte_data.factor_level_terms (  
	id smallserial not null,
	preferred_term_id int2 null,
	term_label text not null,
	term_uri text null,
	ontology_id text null,
	constraint factor_level_annotations_pk primary key(id),
	constraint factor_annotations_ontology_id foreign key (ontology_id) references ontologies(id)
);

comment on table lte_data.factor_level_terms is 'factor_level_terms is a dimension table of terms for classifying experiment factor levels.';