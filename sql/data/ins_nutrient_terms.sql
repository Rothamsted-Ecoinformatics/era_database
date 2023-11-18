insert into lte_data.nutrient_terms (chemical_symbol, term_label, term_uri, ontology_id) values 
	('N','nitrogen','http://purl.obolibrary.org/obo/CHEBI_25555','CHEBI'),
	('P','phosphorus','http://purl.obolibrary.org/obo/CHEBI_28659','CHEBI'),
	('K','potassium','http://purl.obolibrary.org/obo/CHEBI_26216','CHEBI'),
	('S','sulfur','http://purl.obolibrary.org/obo/CHEBI_26833','CHEBI'),
	('Mg','magnesium','http://purl.obolibrary.org/obo/CHEBI_25107','CHEBI'),
	('Na','sodium','http://purl.obolibrary.org/obo/CHEBI_26708','CHEBI'),
	('Mn','manganese','http://purl.obolibrary.org/obo/CHEBI_18291','CHEBI'),
	('Zn','zinc','http://purl.obolibrary.org/obo/CHEBI_27363','CHEBI')
;

insert into lte_data.nutrient_terms (chemical_symbol, preferred_term_id, term_label, term_uri, ontology_id)
select 'N', id, 'nitrogen', 'http://aims.fao.org/aos/agrovoc/c_5192', 'AGROVOC'
from lte_data.nutrient_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_25555';

insert into lte_data.nutrient_terms (chemical_symbol, preferred_term_id, term_label, term_uri, ontology_id)	
select 'P', id, 'phosphorus','http://aims.fao.org/aos/agrovoc/c_5804', 'AGROVOC'
from lte_data.nutrient_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_28659';

insert into lte_data.nutrient_terms (chemical_symbol, preferred_term_id, term_label, term_uri, ontology_id)
select 'K', id, 'potassium','http://aims.fao.org/aos/agrovoc/c_6139', 'AGROVOC'
from lte_data.nutrient_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_26216';

insert into lte_data.nutrient_terms (chemical_symbol, preferred_term_id, term_label, term_uri, ontology_id)
select 'S', id, 'sulfur','http://aims.fao.org/aos/agrovoc/c_7514', 'AGROVOC'
from lte_data.nutrient_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_26833';

insert into lte_data.nutrient_terms (chemical_symbol, preferred_term_id, term_label, term_uri, ontology_id)
select 'Mg', id, 'magnesium','http://aims.fao.org/aos/agrovoc/c_4517', 'AGROVOC'
from lte_data.nutrient_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_25107';

insert into lte_data.nutrient_terms (chemical_symbol, preferred_term_id, term_label, term_uri, ontology_id)	
select 'Na', id, 'sodium','http://aims.fao.org/aos/agrovoc/c_7145', 'AGROVOC'
from lte_data.nutrient_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_26708';

insert into lte_data.nutrient_terms (chemical_symbol, preferred_term_id, term_label, term_uri, ontology_id)	
select 'Mn', id, 'manganese','http://aims.fao.org/aos/agrovoc/c_4570', 'AGROVOC'
from lte_data.nutrient_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_18291';

insert into lte_data.nutrient_terms (chemical_symbol, preferred_term_id, term_label, term_uri, ontology_id)	
select 'Zn', id, 'zinc','http://aims.fao.org/aos/agrovoc/c_8517', 'AGROVOC'
from lte_data.nutrient_terms where term_uri = 'http://purl.obolibrary.org/obo/CHEBI_27363';