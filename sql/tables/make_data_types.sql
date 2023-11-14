create table lte_data.data_type_terms (
	id smallserial not null,
	term_label text not null,
	term_uri text null,
	constraint data_types_pk primary key (id)
);

comment on table lte_data.data_type_terms is 'data_type_terms is a dimension table to describe the expected data type of a variable.';

insert into lte_data.data_type_terms (term_label, term_uri) values
	('DateTime','https://schema.org/DateTime'),
	('Boolean','https://schema.org/Boolean'),
	('Number','https://schema.org/Number'),
	('Float','https://schema.org/Float'),
	('Integer','https://schema.org/Integer'),
	('Date','https://schema.org/Date'),
	('Time','https://schema.org/Time'),
	('Text','https://schema.org/Text');