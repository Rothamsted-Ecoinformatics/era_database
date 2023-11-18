insert into lte_data.factor_level_terms (term_label, term_uri) values 
('conventional tillage process', 'http://purl.obolibrary.org/obo/AGRO_00000015');

insert into lte_data.factor_level_terms (term_label, term_uri) values 
('no-till', 'http://purl.obolibrary.org/obo/AGRO_00000026');

insert into lte_data.factor_level_terms (preferred_term_id, term_label, term_uri) 
select id, 'zero tillage', 'http://aims.fao.org/aos/agrovoc/c_8511' 
from lte_data.factor_level_terms where term_label = 'no-till';

insert into lte_data.factor_level_terms (preferred_term_id, term_label, term_uri) 
select id, 'conventional tillage', 'http://aims.fao.org/aos/agrovoc/c_34250' 
from lte_data.factor_level_terms where term_label = 'conventional tillage process';

insert into lte_data.factor_level_terms (term_label, term_uri) values 
('compost', 'http://purl.obolibrary.org/obo/ENVO_00002170');

insert into lte_data.factor_level_terms (term_label, term_uri) values 
('castor meal exposure', 'http://purl.obolibrary.org/obo/PECO_0001067');

insert into lte_data.factor_level_terms (term_label, term_uri) values
('rapeseed meal exposure','http://purl.obolibrary.org/obo/PECO_0001068');

insert into lte_data.factor_level_terms (term_label, term_uri) values
('farmyard manure exposure',null);

insert into lte_data.factor_level_terms (term_label, term_uri) values
('crop residue harvest process',null);

insert into lte_data.factor_level_terms (term_label, term_uri) values
('crop residue incorporation process',null);