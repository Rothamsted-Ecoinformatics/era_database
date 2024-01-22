insert into lte_data.product_role_terms (term_label,term_uri,ontology_id) 
values 
('weting agents','http://aims.fao.org/aos/agrovoc/c_7529','AGROVOC'),
('plant growth regulator','http://purl.obolibrary.org/obo/CHEBI_39317','AGRO'),
('herbicide','http://purl.obolibrary.org/obo/CHEBI_24527','CHEBI'),
('semio-chemical','http://aims.fao.org/aos/agrovoc/c_32370','AGROVOC'),
('pesticide','http://purl.obolibrary.org/obo/CHEBI_25944','CHEBI'),
('adjuvant','http://purl.obolibrary.org/obo/CHEBI_60809','CHEBI'),
('pod sticker',null,null),
('molluscicide','http://purl.obolibrary.org/obo/CHEBI_33904','CHEBI'),
('rodenticide','http://purl.obolibrary.org/obo/CHEBI_33288','CHEBI'),
('micronutrient fertilizer','http://aims.fao.org/aos/agrovoc/c_4806','AGROVOC'),
('nitrification inhibitor','http://purl.obolibrary.org/obo/CHEBI_148436','CHEBI'),
('fungicide','http://purl.obolibrary.org/obo/CHEBI_24127','CHEBI'),
('use unknown',null,null),
('insecticide','http://purl.obolibrary.org/obo/CHEBI_24852','CHEBI');
('nitrogen fertilizer','http://purl.obolibrary.org/obo/AGRO_00020007','AGRO'),
('phosphorus fertilizer','http://purl.obolibrary.org/obo/AGRO_00020008','AGRO'),
('potassium fertilizer','http://purl.obolibrary.org/obo/AGRO_00020009','AGRO'),
('organic fertilizer','http://purl.obolibrary.org/obo/AGRO_00002039','AGRO'),
('magnesium fertilizers','http://aims.fao.org/aos/agrovoc/c_27904','AGROVOC'),
('liming material','http://purl.obolibrary.org/obo/AGRO_00000197','AGRO'),
('sodium fertilizer',null,null);

insert into lte_data.product_role_terms (preferred_term_id, term_label,term_uri,ontology_id) 
SELECT id, 'herbicides','http://aims.fao.org/aos/agrovoc/c_3566','AGROVOC'
FROM lte_data.product_role_terms WHERE term_uri = 'http://purl.obolibrary.org/obo/CHEBI_24527'; 

insert into lte_data.product_role_terms (preferred_term_id, term_label,term_uri,ontology_id) 
SELECT id, 'pesticides','http://aims.fao.org/aos/agrovoc/c_5739','AGROVOC'
FROM lte_data.product_role_terms WHERE term_uri = 'http://purl.obolibrary.org/obo/CHEBI_25944'; 

insert into lte_data.product_role_terms (preferred_term_id, term_label,term_uri,ontology_id) 
SELECT id, 'adjuvants','http://aims.fao.org/aos/agrovoc/c_16381','AGROVOC'
FROM lte_data.product_role_terms WHERE term_uri = 'http://purl.obolibrary.org/obo/CHEBI_60809'; 

insert into lte_data.product_role_terms (preferred_term_id, term_label,term_uri,ontology_id) 
SELECT id, 'molluscicides','http://aims.fao.org/aos/agrovoc/c_4897','AGROVOC'
FROM lte_data.product_role_terms WHERE term_uri = 'http://purl.obolibrary.org/obo/CHEBI_33904'; 

insert into lte_data.product_role_terms (preferred_term_id, term_label,term_uri,ontology_id) 
SELECT id, 'rodenticides','http://aims.fao.org/aos/agrovoc/c_6632','AGROVOC'
FROM lte_data.product_role_terms WHERE term_uri = 'http://purl.obolibrary.org/obo/CHEBI_33288'; 

insert into lte_data.product_role_terms (preferred_term_id, term_label,term_uri,ontology_id) 
SELECT id, 'nitrification inhibitors','http://aims.fao.org/aos/agrovoc/c_5189','AGROVOC'
FROM lte_data.product_role_terms WHERE term_uri = 'http://purl.obolibrary.org/obo/CHEBI_148436'; 

insert into lte_data.product_role_terms (preferred_term_id, term_label,term_uri,ontology_id) 
SELECT id, 'fungicides','http://aims.fao.org/aos/agrovoc/c_3146','AGROVOC'
FROM lte_data.product_role_terms WHERE term_uri = 'http://purl.obolibrary.org/obo/CHEBI_24127'; 

insert into lte_data.product_role_terms (preferred_term_id, term_label,term_uri,ontology_id) 
SELECT id, 'insecticides','http://aims.fao.org/aos/agrovoc/c_3887','AGROVOC'
FROM lte_data.product_role_terms WHERE term_uri = 'http://purl.obolibrary.org/obo/CHEBI_24852'; 

insert into lte_data.product_role_terms (preferred_term_id, term_label,term_uri,ontology_id) 
SELECT id, 'nitrogen fertilizer','http://aims.fao.org/aos/agrovoc/c_5195','AGROVOC'
FROM lte_data.product_role_terms WHERE term_uri = 'http://purl.obolibrary.org/obo/AGRO_00020007';    

insert into lte_data.product_role_terms (preferred_term_id, term_label,term_uri,ontology_id) 
SELECT id, 'phosphorus fertilizer','http://aims.fao.org/aos/agrovoc/c_5800','AGROVOC'
FROM lte_data.product_role_terms WHERE term_uri = 'http://purl.obolibrary.org/obo/AGRO_00020008';

insert into lte_data.product_role_terms (preferred_term_id, term_label,term_uri,ontology_id) 
SELECT id, 'potassium fertilizer','http://aims.fao.org/aos/agrovoc/c_6138','AGROVOC'
FROM lte_data.product_role_terms WHERE term_uri = 'http://purl.obolibrary.org/obo/AGRO_00020009';

insert into lte_data.product_role_terms (preferred_term_id, term_label,term_uri,ontology_id) 
SELECT id, 'liming materials','http://aims.fao.org/aos/agrovoc/c_200','AGROVOC'
FROM lte_data.product_role_terms WHERE term_uri = 'http://purl.obolibrary.org/obo/AGRO_00000197';




select * from lte_data.product_role_terms prt;


