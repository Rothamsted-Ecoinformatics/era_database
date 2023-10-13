create table lte_data.input_form_terms (
	id smallserial not null,
	preferred_term_id int2 null,
	term_label text not null,
	term_uri text null,
	ontology_id text null,
	constraint input_form_terms_pk primary key(id),
	constraint input_form_terms_ontology_id foreign key (ontology_id) references ontologies(id)
	constraint input_form_terms_preferred_term_id foreign key (preferred_term_id) references input_form_terms(id),
	constraint input_form_terms_term_uri_unq unique (term_uri)
);

comment on table lte_data.product_role_terms is 'input_form_terms dimension table used to provide a standardised classification for 
material input forms backed by a curated ontology term, if one exists. An input form is typically the chemical form of something, 
but could also be a material such as compost or straw.';