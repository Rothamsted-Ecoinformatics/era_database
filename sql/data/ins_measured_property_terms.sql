insert into lte_data.measured_property_terms (term_label, term_uri, ontology_id) values
	('ware crop yield',null,null),
	('subterranean shoot axis tuber fresh weight','http://purl.obolibrary.org/obo/TO_0003012','TO'),
	('subterranean shoot axis tuber dry weight','http://purl.obolibrary.org/obo/TO_0003013','TO'),
	('moisture content trait','http://purl.obolibrary.org/obo/TO_0000228','TO'),
	('alpha amaylase activity trait','http://purl.obolibrary.org/obo/TO_0000288','TO'),
	('grain length','http://purl.obolibrary.org/obo/TO_0000734','TO'),
	('grain yield trait', 'http://purl.obolibrary.org/obo/TO_0000396', 'TO'),
	('thousand grain weight','http://purl.obolibrary.org/obo/TO_0000382','TO'),
    ('hectolitre weight of grain',null,null),
    ('forage yield','http://purl.obolibrary.org/obo/TO_0000388','TO'),
    ('grain moisture content','http://purl.obolibrary.org/obo/TO_0000057','TO'),
    ('forage moisture content trait',null,null),
    ('seed yield trait','http://purl.obolibrary.org/obo/TO_0000905','TO'),
    ('subterranean shoot axis tuber dirt tare',null,null),
   	('calcium content trait','http://purl.obolibrary.org/obo/TO_0006047','TO'),
    ('potassium content trait','http://purl.obolibrary.org/obo/TO_0000609','TO'),
    ('grain potassium content trait','http://purl.obolibrary.org/obo/TO_0003056','TO'),
    ('magnesium content','http://purl.obolibrary.org/obo/TO_0006044','TO'),
    ('sodium content','http://purl.obolibrary.org/obo/TO_0000608','TO'),
    ('phosphorus content','http://purl.obolibrary.org/obo/TO_0001024','TO'),
    ('grain phosphorus content','http://purl.obolibrary.org/obo/TO_0003082','TO'),
    ('nitrogen content','http://purl.obolibrary.org/obo/TO_0020093','TO'),
    ('grain nitrogen content','http://purl.obolibrary.org/obo/TO_0003068','TO'),
    ('sulfur content','http://purl.obolibrary.org/obo/TO_0006046','TO')
;

insert into lte_data.measured_property_terms (term_label, term_uri, ontology_id, preferred_term_id)
	select 'forage yield','http://aims.fao.org/aos/agrovoc/c_15adb263','AGROVOC', id	
	from lte_data.measured_property_terms where term_uri = 'http://purl.obolibrary.org/obo/TO_0000388';


select * from lte_data.measured_property_terms mpt;
