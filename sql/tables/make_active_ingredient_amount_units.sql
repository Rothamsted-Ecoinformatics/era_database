create table lte_data.active_ingredient_amount_units (
	id smallserial not null,
	symbol text not null,
	term_label text not null,
	term_uri text null,
	constraint active_ingredient_amount_units_pk primary key(id),
	constraint active_ingredient_amount_units_unq unique (symbol, term_uri)
);

comment on table lte_data.active_ingredient_amount_units is 'active_ingredient_amount_units dimension table used to provide a standardised list of units for active ingredient amounts.'