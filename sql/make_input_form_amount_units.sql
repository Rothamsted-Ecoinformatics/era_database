create table lte_data.input_form_amount_units (
	id smallserial not null,
	symbol text not null,
	class_label text not null,
	class_uri text null,
	unit_system text not null,
	constraint input_form_amount_units_pk primary key(id)
);

comment on table lte_data.input_form_amount_units is 'input_form_amount_units is a dimension table of input form amount units. 
these are typically area density units.';

comment on column lte_data.input_form_amount_units.unit_system is 'indicates whether the unit is metric or imperial.';

insert into lte_data.input_form_amount_units(symbol, class_label, unit_system, class_uri) values 
	('kg ha-1','kilograms per hectare','metric','http://purl.obolibrary.org/obo/UO_0000283'),
	('t ha-1','ton per hectare','metric','http://purl.obolibrary.org/obo/UO_0000323'),
	('cwt acre-1','hundredweights per acre','imperial',null),
	('ton acre-1','ton per acre','imperial',null),
	('lb acre-1','lb per acre','imperial',null);