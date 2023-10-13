create table lte_data.product_role_terms (
    id smallserial not null,
    preferred_term_id int2 null,
	term_label text not null,
	term_uri text null,
	ontology_id text null,
	constraint product_role_pk primary key(id),
	constraint product_roles_ontology_id_fk foreign key (ontology_id) references ontologies(id)
);

comment on table lte_data.product_role_terms is 'product_role_terms is a dimension table for identifying product roles.';
    