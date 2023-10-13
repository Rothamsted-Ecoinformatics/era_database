create table lte_data.application_methods (
	id smallserial not null,
	class_label varchar(25) not null,
	class_uri varchar(50) not null,
	constraint application_methods_pk primary key (id)
);

insert into lte_data.application_methods (class_label, class_uri) values
('reversible ploughs','http://aims.fao.org/aos/agrovoc/c_25910');


select * from application_methods; 