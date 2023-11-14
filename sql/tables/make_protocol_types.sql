CREATE TABLE lte_data.protocol_types (
	id smallserial not null,
    protocol_type_label text not null,
    constraint protocol_types_pk primary key(id)
);

comment on table lte_data.protocol_types is 'A list for classifying protocols by their type.';

insert into lte_data.protocol_types (protocol_type_label) values 
('sample collection'),
('sample preparation'),
('sample analysis'),
('data preparation'),
('field survey');
