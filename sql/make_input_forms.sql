create table lte_data.input_forms (
	id smallserial not null,
	class_label varchar(40) not null,
	class_uri varchar(50) null,
	agrovoc_uri varchar(50) null,
	alternative_label varchar(50) null,
	constraint input_forms_pk primary key(id)
)

insert into lte_data.input_forms(class_label, class_uri, agrovoc_uri, alternative_name) values 
	('ammonium salts','http://purl.obolibrary.org/obo/CHEBI_47704',null, 'ammonium chloride + ammonium nitrate'),
	('ammonium sulfate','http://purl.obolibrary.org/obo/CHEBI_62946','http://aims.fao.org/aos/agrovoc/c_354', 'ammonium sulphate'),
	('ammonium chloride','http://purl.obolibrary.org/obo/CHEBI_31206','http://aims.fao.org/aos/agrovoc/c_350', null),
	('ammonium carbonate','http://purl.obolibrary.org/obo/CHEBI_184335',null, null),
	('ammonium nitrate','http://purl.obolibrary.org/obo/CHEBI_63038','http://aims.fao.org/aos/agrovoc/c_352', null),
	('calcium ammonium nitrate','http://purl.obolibrary.org/obo/CHEBI_91238','http://aims.fao.org/aos/agrovoc/c_23997','nitro-chalk'),
	('farmyard manure','http://purl.obolibrary.org/obo/ENVO_00003884','http://aims.fao.org/aos/agrovoc/c_2810',null),
	('poultry manure','http://purl.obolibrary.org/obo/ENVO_01001117','http://aims.fao.org/aos/agrovoc/c_932275ef',null),
	('wheat straw','http://purl.obolibrary.org/obo/ENVO_00003869','http://aims.fao.org/aos/agrovoc/c_16066',null),
	('magnesium sulfate monohydrate',null,null,'kieserite'),
	('magnesium phosphate','http://purl.obolibrary.org/obo/CHEBI_190298',null,null),
	('calcium magnesium carbonate','http://purl.obolibrary.org/obo/CHEBI_31793',null,null),
	('magnesium sulfate','http://purl.obolibrary.org/obo/CHEBI_32599',null,null),
	('potassium chloride','http://purl.obolibrary.org/obo/CHEBI_32588','http://aims.fao.org/aos/agrovoc/c_6140','muriate of potash'),
	('potassium sulfate','http://purl.obolibrary.org/obo/CHEBI_32036','http://aims.fao.org/aos/agrovoc/c_6142',null),
	('potassium silicate',null,null,null),
	('potassium carbonate','http://purl.obolibrary.org/obo/CHEBI_131526',null,null),
	('potassium phosphate','http://purl.obolibrary.org/obo/CHEBI_63036',null,'potassium dihydrogen phosphate'),
	('sodium phosphate','http://purl.obolibrary.org/obo/CHEBI_37586',null,null),
	('sodium carbonate','http://purl.obolibrary.org/obo/CHEBI_29377',null,null),
	('sodium sulfate','http://purl.obolibrary.org/obo/CHEBI_32149',null,null),
	('sodium nitrate','http://purl.obolibrary.org/obo/CHEBI_63005','http://aims.fao.org/aos/agrovoc/c_7148',null),
	('basic slag',null,'http://aims.fao.org/aos/agrovoc/c_837',null),
	('bone ash',null,null,null),
	('superphosphate',null,'http://aims.fao.org/aos/agrovoc/c_7521',null),
	('superphosphate of lime',null,null,null),
	('single superphosphate','http://purl.obolibrary.org/obo/AGRO_00002064',null,null),
	('triple superphosphate','http://purl.obolibrary.org/obo/AGRO_00002065',null,null),
	('rapeseed cake',null,'http://aims.fao.org/aos/agrovoc/c_16027',null),
	('castor meal',null,null,'castor bean meal'),
	('Liebig''s wheat manure',null,null,null),
	('farmyard manure ash',null,null,null),
	('straw ash',null,null,null),
	('rapeseed meal',null,'http://aims.fao.org/aos/agrovoc/c_16027','rapeseed cake'),
	('Peruvian guano','http://purl.obolibrary.org/obo/AGRO_00020003','http://aims.fao.org/aos/agrovoc/c_3414',null),
	('Ichaboe guano','http://purl.obolibrary.org/obo/AGRO_00020003','http://aims.fao.org/aos/agrovoc/c_3414',null),
	('tapioca','http://purl.obolibrary.org/obo/FOODON_03307663','http://aims.fao.org/aos/agrovoc/c_15525',null),
	('compost','http://purl.obolibrary.org/obo/ENVO_00002170','http://aims.fao.org/aos/agrovoc/c_1795','composts');