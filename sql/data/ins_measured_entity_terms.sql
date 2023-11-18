insert into lte_data.measured_entity_terms (term_label, term_uri, ontology_id) values
	('soil','http://purl.obolibrary.org/obo/ENVO_00001998','ENVO');

insert into lte_data.measured_entity_terms (term_label, term_uri, ontology_id, preferred_term_id) 
	select 'soil','http://aims.fao.org/aos/agrovoc/c_7156', 'AGROVOC', id 
	from lte_data.measured_entity_terms where term_uri = 'http://purl.obolibrary.org/obo/ENVO_00001998';

insert into lte_data.measured_entity_terms (term_label, term_uri, ontology_id) values
    ('air','http://purl.obolibrary.org/obo/ENVO_00002005','ENVO');

insert into lte_data.measured_entity_terms (term_label, term_uri, ontology_id, preferred_term_id) 
	select 'air','http://aims.fao.org/aos/agrovoc/c_224','AGROVOC', id
	from lte_data.measured_entity_terms where term_uri = 'http://purl.obolibrary.org/obo/ENVO_00002005';

insert into lte_data.measured_entity_terms (term_label, term_uri, ontology_id) values
    ('plot','http://purl.obolibrary.org/obo/AGRO_00000301','AGRO');
    
insert into lte_data.measured_entity_terms (term_label, term_uri, ontology_id) values
	('winter wheat', 'http://aims.fao.org/aos/agrovoc/c_8412', 'AGROVOC'),
	('maize', 'http://aims.fao.org/aos/agrovoc/c_12332', 'AGROVOC'),
	('spring barley', 'http://aims.fao.org/aos/agrovoc/c_ad10e027', 'AGROVOC'),
	('sugar beet', 'http://aims.fao.org/aos/agrovoc/c_7499', 'AGROVOC'),
	('potatoes', 'http://aims.fao.org/aos/agrovoc/c_13551', 'AGROVOC'),
	('turnips', 'http://aims.fao.org/aos/agrovoc/c_8019', 'AGROVOC'),
	('rye grass', 'http://aims.fao.org/aos/agrovoc/c_4423', 'AGROVOC'),
	('red clover', 'http://aims.fao.org/aos/agrovoc/c_7917', 'AGROVOC'),
	('rye', 'http://aims.fao.org/aos/agrovoc/c_14010', 'AGROVOC'),
	('lucerne', 'http://aims.fao.org/aos/agrovoc/c_4693', 'AGROVOC'),
	('winter oats', null, null),
	('cocksfoot', 'http://aims.fao.org/aos/agrovoc/c_2101', 'AGROVOC'),
	('Italian ryegrass', 'http://aims.fao.org/aos/agrovoc/c_4424', 'AGROVOC'),
	('Timothy grass', 'http://aims.fao.org/aos/agrovoc/c_5786', 'AGROVOC'),
	('white clover', 'http://aims.fao.org/aos/agrovoc/c_7918', 'AGROVOC'),
	('alsike clover', 'http://aims.fao.org/aos/agrovoc/c_7914', 'AGROVOC'),
	('kales', 'http://aims.fao.org/aos/agrovoc/c_4070', 'AGROVOC'),
	('cabbages', 'http://aims.fao.org/aos/agrovoc/c_1173', 'AGROVOC'),
	('swedes', 'http://aims.fao.org/aos/agrovoc/c_6713', 'AGROVOC'),
	('vetches', 'http://aims.fao.org/aos/agrovoc/c_8214', 'AGROVOC'),
	('sainfoin', 'http://aims.fao.org/aos/agrovoc/c_5357', 'AGROVOC'),
	('mangolds', 'http://aims.fao.org/aos/agrovoc/c_4576', 'AGROVOC'),
	('Melilotus alba', 'http://aims.fao.org/aos/agrovoc/c_4720', 'AGROVOC'),
	('carrots', 'http://aims.fao.org/aos/agrovoc/c_9640', 'AGROVOC'),
	('leeks', 'http://aims.fao.org/aos/agrovoc/c_12128', 'AGROVOC'),
	('spring beans', null, null),
	('peas', 'http://aims.fao.org/aos/agrovoc/c_13177', 'AGROVOC'),
	('barley', 'http://aims.fao.org/aos/agrovoc/c_823', 'AGROVOC'),
	('wheat', 'http://aims.fao.org/aos/agrovoc/c_8373', 'AGROVOC'),
	('spring wheat', 'http://aims.fao.org/aos/agrovoc/c_7337', 'AGROVOC'),
	('bare fallow', 'http://aims.fao.org/aos/agrovoc/c_34009', 'AGROVOC'),
	('fallow', 'http://aims.fao.org/aos/agrovoc/c_34007', 'AGROVOC'),
	('winter beans', null, null),
	('spring oats', null, null),
	('mustard', null, null),
	('soybeans', 'http://aims.fao.org/aos/agrovoc/c_14477', 'AGROVOC'),
	('linseed', 'http://aims.fao.org/aos/agrovoc/c_12192', 'AGROVOC'),
	('winter oilseed rape', null, null),
	('grass/clover ley', 'http://aims.fao.org/aos/agrovoc/c_cdb03095', 'AGROVOC'),
	('field beans', 'http://aims.fao.org/aos/agrovoc/c_10722', 'AGROVOC'),
	('cowpeas', 'http://aims.fao.org/aos/agrovoc/c_1938', 'AGROVOC'),
	('oats', 'http://aims.fao.org/aos/agrovoc/c_5287', 'AGROVOC');