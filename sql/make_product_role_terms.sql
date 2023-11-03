create table lte_data.product_role_terms (
    id smallserial not null,
    preferred_term_id int2 null,
	term_label text not null,
	term_uri text null,
	ontology_id text null,
	constraint product_role_term_pk primary key(id),
	constraint product_role_terms_ontology_id_fk foreign key (ontology_id) references ontologies(id),
	constraint product_role_terms_preferred_term_id foreign key (preferred_term_id) references product_role_terms(id),
	constraint product_role_terms_term_uri_unq unique (term_uri)
);

comment on table lte_data.product_role_terms is 'product_role_terms dimension table is used to provide a standardised classification for product roles backed by a curated ontology term, if one exists.';
    