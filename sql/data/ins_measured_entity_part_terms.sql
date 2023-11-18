insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id) values
	('seed','http://purl.obolibrary.org/obo/PO_0009010','PO');

insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id, preferred_term_id) 
	select 'seed','http://aims.fao.org/aos/agrovoc/c_6927','AGROVOC',id 
	from lte_data.measured_entity_part_terms where term_uri = 'http://purl.obolibrary.org/obo/PO_0009010';

insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id) values
	('grain','http://purl.obolibrary.org/obo/PO_0030104','PO');

insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id, preferred_term_id) 
	select 'grain', 'http://aims.fao.org/aos/agrovoc/c_3346', 'AGROVOC', id
	from lte_data.measured_entity_part_terms where term_uri = 'http://purl.obolibrary.org/obo/PO_0030104';

insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id) values
	('tuber','http://purl.obolibrary.org/obo/PO_0025522','PO');

insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id, preferred_term_id) 
	select 'tuber', 'http://aims.fao.org/aos/agrovoc/c_7998', 'AGROVOC', id
	from lte_data.measured_entity_part_terms where term_uri = 'http://purl.obolibrary.org/obo/PO_0025522';

insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id) values
	('shoot system','http://purl.obolibrary.org/obo/PO_0009006','PO');

insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id, preferred_term_id) 
	select 'shoot system', 'http://aims.fao.org/aos/agrovoc/c_14261', 'AGROVOC', id
	from lte_data.measured_entity_part_terms where term_uri = 'http://purl.obolibrary.org/obo/PO_0009006';

insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id) values
	('root system','http://purl.obolibrary.org/obo/PO_0025025','PO');

insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id, preferred_term_id) 
	select 'root system', 'http://aims.fao.org/aos/agrovoc/c_16034', 'AGROVOC', id
	from lte_data.measured_entity_part_terms where term_uri = 'http://purl.obolibrary.org/obo/PO_0025025';

insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id) values
	('straw','http://purl.obolibrary.org/obo/ENVO_00003869','ENVO');

insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id, preferred_term_id) 
	select 'straw', 'http://aims.fao.org/aos/agrovoc/c_7441', 'AGROVOC', id
	from lte_data.measured_entity_part_terms where term_uri = 'http://purl.obolibrary.org/obo/ENVO_00003869';

insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id) values
	('soil horizon','http://purl.obolibrary.org/obo/ENVO_03600030','ENVO');

insert into lte_data.measured_entity_part_terms (term_label, term_uri, ontology_id, preferred_term_id) 
	select 'soil horizon', 'http://aims.fao.org/aos/agrovoc/c_32749', 'AGROVOC', id
	from lte_data.measured_entity_part_terms where term_uri = 'http://purl.obolibrary.org/obo/ENVO_03600030';
