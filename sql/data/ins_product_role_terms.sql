insert into lte_data.product_role_terms (term_label,term_uri,ontology_id) 
values ('nitrogen fertilizer','http://purl.obolibrary.org/obo/AGRO_00020007','AGRO');

insert into lte_data.product_role_terms (term_label,term_uri,ontology_id) 
values ('phosphorus fertilizer','http://purl.obolibrary.org/obo/AGRO_00020008','AGRO');
    
insert into lte_data.product_role_terms (term_label,term_uri,ontology_id) 
values ('potassium fertilizer','http://purl.obolibrary.org/obo/AGRO_00020009','AGRO');

insert into lte_data.product_role_terms (term_label,term_uri,ontology_id) 
values ('organic fertilizer','http://purl.obolibrary.org/obo/AGRO_00002039','AGRO');

insert into lte_data.product_role_terms (term_label,term_uri,ontology_id) 
values ('magnesium fertilizers','http://aims.fao.org/aos/agrovoc/c_27904','AGROVOC');

insert into lte_data.product_role_terms (term_label,term_uri,ontology_id) 
values ('liming material','http://purl.obolibrary.org/obo/AGRO_00000197','AGRO');
    
insert into lte_data.product_role_terms (term_label,term_uri,ontology_id) 
values ('sodium fertilizer',null,null);

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