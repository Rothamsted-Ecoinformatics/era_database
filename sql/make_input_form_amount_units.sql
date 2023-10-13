create table lte_data.input_form_amount_units (
	id smallserial not null,
	symbol text not null,
	term_label text not null,
	term_uri text null,
	unit_system text not null,
	constraint input_form_amount_units_pk primary key(id),
	constraint input_form_amount_units_unq unique (symbol, term_uri)
);

comment on table lte_data.input_form_amount_units is 'input_form_amount_units is a dimension table used to provide a standardised list of units for 
input form amount units. These are typically area density units.';

comment on column lte_data.input_form_amount_units.unit_system is 'Indicates whether the unit is metric or imperial.';
