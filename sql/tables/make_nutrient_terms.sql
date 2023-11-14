create table lte_data.nutrient_terms (
	id smallserial not null, 
	chemical_symbol varchar(2) not null, 
	preferred_term_id int2 null,
	term_label text not null,
	term_uri text,
	ontology_id text,
	constraint nutrient_terms_pk primary key(id),
	constraint nutrient_terms_ontology_id foreign key (ontology_id) references ontologies(id),
	constraint nutrient_terms_preferred_term_id foreign key (preferred_term_id) references nutrient_terms(id),
    constraint nutrient_terms_uri_unq unique (term_uri)
);

comment on table lte_data.nutrient_terms is 'nutrient is a dimension table used to provide a standardised classification for plant elemental nutrients. 
Terms are entered from CHEBI and AGROVOC vocabularies and CHEBI terms are preferred. Unlike other terms tables this table includes an additional column for the nutrient element chemical symbol.';