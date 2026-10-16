create table lte_data.participant_terms (
	id smallserial not null,
    preferred_term_id int2 null,
	term_label text not null,
	term_uri text null,
	ontology_id text null,
	usage_notes text null,
	other_notes text null,
	constraint participant_termss_id_pk primary key(id),
	constraint participant_terms_ontology_id_fk foreign key (ontology_id) references lte_data.ontologies(id),
	constraint participant_terms_preferred_term_id foreign key (preferred_term_id) references lte_data.participants(id),
	constraint participant_terms_uri_unq unique (term_uri)
);

comment on table lte_data.participant_terms is 'participant_terms dimension table is used to provide a standardised classification for variable participants. Terms are backed by a curated ontology term, if one exists.';