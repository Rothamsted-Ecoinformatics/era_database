create table lte_data.active_ingredient_terms (
	id int2 not null,
	chemical_name text not null,
	chebi_uri text null,
	agrovoc_uri text null,
	constraint active_ingredient_terms_pk primary key(id),
	constraint active_ingredient_terms_chemical_name_unq unique (chemical_name)
);

comment on table lte_data.active_ingredient_terms is 'active_ingredient_terms is a dimension table used to provide a standardised classification for pesticide product active ingredients. active ingredients are mapped to both CHEBI and Agrovoc terms where available.
The data is populated from the archive database, therefore the primary key is set to int rather than serial.';