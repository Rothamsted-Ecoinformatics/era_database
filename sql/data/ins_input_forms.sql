insert into lte_data.input_form_terms(term_label, term_uri, ontology_id) values 
	('ammonium salts','http://purl.obolibrary.org/obo/CHEBI_47704','CHEBI'),
	('ammonium sulfate','http://purl.obolibrary.org/obo/CHEBI_62946','CHEBI'),
	('ammonium chloride','http://purl.obolibrary.org/obo/CHEBI_31206','CHEBI'),
	('ammonium carbonate','http://purl.obolibrary.org/obo/CHEBI_184335','CHEBI'),
	('ammonium nitrate','http://purl.obolibrary.org/obo/CHEBI_63038','CHEBI'),
	('calcium ammonium nitrate','http://purl.obolibrary.org/obo/CHEBI_91238','CHEBI'),
	('farmyard manure','http://purl.obolibrary.org/obo/ENVO_00003884','CHEBI'),
	('poultry manure','http://purl.obolibrary.org/obo/ENVO_01001117','CHEBI'),
	('wheat straw','http://purl.obolibrary.org/obo/ENVO_00003869','CHEBI'),
	('magnesium sulfate monohydrate',null,null),
	('magnesium phosphate','http://purl.obolibrary.org/obo/CHEBI_190298','CHEBI'),
	('calcium magnesium carbonate','http://purl.obolibrary.org/obo/CHEBI_31793','CHEBI'),
	('magnesium sulfate','http://purl.obolibrary.org/obo/CHEBI_32599','CHEBI'),
	('potassium chloride','http://purl.obolibrary.org/obo/CHEBI_32588','CHEBI'),
	('potassium sulfate','http://purl.obolibrary.org/obo/CHEBI_32036','CHEBI'),
	('potassium silicate',null,null),
	('potassium carbonate','http://purl.obolibrary.org/obo/CHEBI_131526','CHEBI'),
	('potassium phosphate','http://purl.obolibrary.org/obo/CHEBI_63036','CHEBI'),
	('sodium phosphate','http://purl.obolibrary.org/obo/CHEBI_37586','CHEBI'),
	('sodium carbonate','http://purl.obolibrary.org/obo/CHEBI_29377','CHEBI'),
	('sodium sulfate','http://purl.obolibrary.org/obo/CHEBI_32149','CHEBI'),
	('sodium nitrate','http://purl.obolibrary.org/obo/CHEBI_63005','CHEBI'),
	('basic slag','http://aims.fao.org/aos/agrovoc/c_837','AGROVOC'),
	('bone ash',null,null),
	('superphosphate','http://aims.fao.org/aos/agrovoc/c_7521','AGROVOC'),
	('superphosphate of lime',null,null),
	('single superphosphate','http://purl.obolibrary.org/obo/AGRO_00002064','AGROVOC'),
	('triple superphosphate','http://purl.obolibrary.org/obo/AGRO_00002065','AGROVOC'),
	('rapeseed cake','http://aims.fao.org/aos/agrovoc/c_16027','AGROVOC'),
	('castor meal',null,null),
	('Liebig''s wheat manure',null,null),
	('farmyard manure ash',null,null),
	('straw ash',null,null),
	('bird guano','http://purl.obolibrary.org/obo/AGRO_00020003','AGRO'),
	('tapioca','http://purl.obolibrary.org/obo/FOODON_03307663','FOODON'),
	('compost','http://purl.obolibrary.org/obo/ENVO_00002170','ENVO')
;

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'ammonium chloride + ammonium nitrate', null, null
from lte_data.input_form_terms where term_label = 'ammonium salts';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'kieserite', null, null
from lte_data.input_form_terms where term_label = 'magnesium sulfate monohydrate';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'Peruvian guano', null, null
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/AGRO_00020003';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'Ichaboe guano', null, null
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/AGRO_00020003';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'rapeseed meal', null, null
from lte_data.input_form_terms where term_uri = 'http://aims.fao.org/aos/agrovoc/c_16027';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'ammonium sulfate', 'http://aims.fao.org/aos/agrovoc/c_354', 'AGROVOC'
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_62946';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'ammonium chloride', 'http://aims.fao.org/aos/agrovoc/c_350', 'AGROVOC'
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_31206';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'ammonium nitrate', 'http://aims.fao.org/aos/agrovoc/c_352', 'AGROVOC'
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_63038';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'calcium ammonium nitrate', 'http://aims.fao.org/aos/agrovoc/c_23997', 'AGROVOC'
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_91238';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'farmyard manure', 'http://aims.fao.org/aos/agrovoc/c_2810', 'AGROVOC'
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/ENVO_00003884';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'poultry manure', 'http://aims.fao.org/aos/agrovoc/c_932275ef', 'AGROVOC'
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/ENVO_01001117';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'wheat straw', 'http://aims.fao.org/aos/agrovoc/c_16066', 'AGROVOC'
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/ENVO_00003869';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'potassium chloride', 'http://aims.fao.org/aos/agrovoc/c_6140', 'AGROVOC'
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_32588';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'potassium sulfate', 'http://aims.fao.org/aos/agrovoc/c_6142', 'AGROVOC'
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_32036';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'sodium nitrate', 'http://aims.fao.org/aos/agrovoc/c_7148', 'AGROVOC'
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_63005';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'tapioca', 'http://aims.fao.org/aos/agrovoc/c_15525', 'AGROVOC'
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/FOODON_03307663';

insert into lte_data.input_form_terms (preferred_term_id, term_label, term_uri, ontology_id)
select id, 'compost', 'http://aims.fao.org/aos/agrovoc/c_1795', 'AGROVOC'
from lte_data.input_form_terms where term_uri = 'http://purl.obolibrary.org/obo/ENVO_00002170';
