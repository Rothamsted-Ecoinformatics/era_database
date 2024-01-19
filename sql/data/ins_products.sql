insert into lte_data.products (product_name, product_role_id) 
select 'Nitram 34.5%N', id from product_role_terms where term_label = 'nitrogen fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id) 
select 'DoubleTop', id from product_role_terms where term_label = 'nitrogen fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id) 
select 'Nitraprill', id from product_role_terms where term_label = 'nitrogen fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id) 
select 'Nitrochalk 21', id from product_role_terms where term_label = 'nitrogen fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id) 
select 'Nitrochalk 25', id from product_role_terms where term_label = 'nitrogen fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id) 
select 'Nitrochalk 26', id from product_role_terms where term_label = 'nitrogen fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id) 
select 'Nitrochalk 27.5', id from product_role_terms where term_label = 'nitrogen fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id) 
select 'Nitraprill 34.5%', id from product_role_terms where term_label = 'nitrogen fertilizer' 
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id) 
select 'rape cake', id from product_role_terms where term_label = 'organic fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id)
select 'castor meal', id from product_role_terms where term_label = 'organic fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id)
select 'farmyard manure', id from product_role_terms where term_label = 'organic fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id)
select 'ground chalk', id from product_role_terms where term_label = 'liming material'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id)
select 'Kieserite', id from product_role_terms where term_label = 'magnesium fertilizer'
	and product_role_terms.preferred_term_id is null;
	
insert into lte_data.products (product_name, product_role_id)
select 'calcined bone dust and acid', id from product_role_terms where term_label = 'phosphorus fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id)
select 'triple superphosphate', id from product_role_terms where term_label = 'phosphorus fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id)
select 'basic slag', id from product_role_terms where term_label = 'phosphorus fertilizer'
	and product_role_terms.preferred_term_id is null;	

insert into lte_data.products (product_name, product_role_id)
select 'mineral phosphate', id from product_role_terms where term_label = 'phosphorus fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id)
select 'superphosphate', id from product_role_terms where term_label = 'phosphorus fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id)
select 'muriate of potash', id from product_role_terms where term_label = 'potassium fertilizer'
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id)
select 'sulphate of potash', id from product_role_terms where term_label = 'potassium fertilizer'
	and product_role_terms.preferred_term_id is null;
	
insert into lte_data.products (product_name, product_role_id)
select 'nitrate of soda', id from product_role_terms where term_label = 'sodium fertilizer'
	and product_role_terms.preferred_term_id is null;