insert into lte_data.products (product_name, product_role_id) 
select 'Nitram 34.5%', id from product_role_terms where term_label = 'nitrogen fertilizer';
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id) 
select 'Nitrochalk 21', id from product_role_terms where term_label = 'nitrogen fertilizer';
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id) 
select 'Nitrochalk 25', id from product_role_terms where term_label = 'nitrogen fertilizer';
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id) 
select 'Nitrochalk 26', id from product_role_terms where term_label = 'nitrogen fertilizer';
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id) 
select 'Nitrochalk 27.5', id from product_role_terms where term_label = 'nitrogen fertilizer';
	and product_role_terms.preferred_term_id is null;

insert into lte_data.products (product_name, product_role_id) 
select 'Nitraprill 34.5%', id from product_role_terms where term_label = 'nitrogen fertilizer' 
	and product_role_terms.preferred_term_id is null;

