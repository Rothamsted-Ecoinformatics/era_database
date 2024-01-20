CREATE TABLE lte_data.product_active_ingredients (
	id smallserial NOT NULL,
	product_id int4 NOT NULL,
	active_ingredient_id int4 NOT NULL,
	amount numeric NULL,
	active_ingredient_amount_unit_id int2 NULL,
	CONSTRAINT product_active_ingredients_pk PRIMARY KEY (id),
	CONSTRAINT product_active_ingredients_active_ingredient_idfk FOREIGN KEY (active_ingredient_id) REFERENCES lte_data.active_ingredient_terms(id),
	CONSTRAINT product_active_ingredients_active_ingredient_amount_unit_id_fk FOREIGN KEY (active_ingredient_amount_unit_id) REFERENCES lte_data.active_ingredient_amount_units(id) ON DELETE SET NULL ON UPDATE SET NULL,
	CONSTRAINT product_active_ingredients_product_id_fk FOREIGN KEY (product_id) REFERENCES lte_data.products(id) ON DELETE CASCADE ON UPDATE CASCADE
);

comment on table lte_data.product_active_ingredients is 'product_active_ingredients is a resolution table linking a product to its active ingredients.';

comment on column lte_data.product_active_ingredients.product_id is 'Foreign key to the product the active ingredient is for.';
comment on column lte_data.product_active_ingredients.active_ingredient_id is 'Foreign key to the active ingredient for the product.';
comment on column lte_data.product_active_ingredients.amount is 'The amount of active ingredient in the product.';
comment on column lte_data.product_active_ingredients.active_ingredient_amount_unit_id is 'Units for the amount of active ingredient in the product.';
