create table lte_data.fertilizer_activity_logs (
	id serial not null,
	plot_year_id int not null,
	activity_log_type_term_id int2 not null,
	start_date date null,
	end_date date null,
	experiment_factor_level_id int2 null,
	nutrient_id int2 null,
	nutrient_amount numeric NULL,
	nutrient_amount_unit text NULL,
	orig_nutrient_amount numeric NULL,
	orig_nutrient_amount_unit text NULL,
	input_form_id int2 NULL,
	input_form_amount numeric NULL,
	input_form_amount_unit text NULL,
	orig_input_form_amount numeric NULL,
	orig_input_form_amount_unit text NULL,
	product_id int2 null,
	product_amount numeric NULL,
	product_amount_unit text NULL,
	orig_product_amount numeric NULL,
	orig_product_amount_unit text NULL,
	equipment_id int2 null,
	tractor_id int2 null,
	application_method_id int2 NULL,
	log_notes text null,
	constraint fertilizer_activity_logs_pk primary key (id),
	constraint fertilizer_activity_logs_plot_year_id_fk foreign key (plot_year_id) references plot_years(id),
	constraint fertilizer_activity_logs_activity_log_type_term_id_fk foreign key (activity_log_type_term_id) references activity_log_type_terms(id),
	constraint fertilizer_activity_logs_input_form_id_fk foreign key (input_form_id) references input_form_terms(id),
	constraint fertilizer_activity_logs_nutrient_id_fk foreign key (nutrient_id) references nutrient_terms(id),
	constraint fertilizer_activity_logs_product_id_fk foreign key (product_id) references products(id),
	constraint fertilizer_activity_logs_application_method_id_fk foreign key (application_method_id) references application_method_terms(id),
	constraint fertilizer_activity_logs_equipment_id_fk foreign key (equipment_id) references equipment(id),
	constraint fertilizer_activity_logs_tractor_id_fk foreign key (tractor_id) references equipment(id)
);

comment on table lte_data.fertilizer_activity_logs is 'fertilizer_activity_logs records information about organic and inorganic fertilizer applications for a plot year. 
There will be duplication within a year where different plots are growing the same crop, but this is the simplest way to manage logs with the necessary 
plot year granularity. The level of detail provided by the logs increases over time as the record detail improves. 
The nutrient, input form and product columns all have equivalent columns prefixed orig_. These columns capture the input amounts using the originally recorded units if different to metric.';
comment on column lte_data.fertilizer_activity_logs.plot_year_id is 'FK to the plot year the log is for.';
comment on column lte_data.fertilizer_activity_logs.activity_log_type_term_id is 'FK to an ontology annotation for the fertilization process.';
comment on column lte_data.fertilizer_activity_logs.start_date is 'The date the activity started.';
comment on column lte_data.fertilizer_activity_logs.end_date is 'The date activity ended if different from the start.';
comment on column lte_data.fertilizer_activity_logs.equipment_id is 'FK to the type of fertilizer application equipment used.';
comment on column lte_data.fertilizer_activity_logs.tractor_id is 'FK to the type of tractor used.';
comment on column lte_data.fertilizer_activity_logs.log_notes is 'Freetext notes for the log.';
comment on column lte_data.fertilizer_activity_logs.nutrient_id is 'FK to the chemical form of the nutrient being applied.';
comment on column lte_data.fertilizer_activity_logs.nutrient_amount is 'The metric amount of nutrient applied per unit area.';
comment on column lte_data.fertilizer_activity_logs.nutrient_amount_unit is 'The metric units for the nutrient amount.';
comment on column lte_data.fertilizer_activity_logs.input_form_id is 'FK to the nutrient being applied.';
comment on column lte_data.fertilizer_activity_logs.input_form_amount is 'The metric amount of the chemical form for the nutrient applied per unit area.';
comment on column lte_data.fertilizer_activity_logs.input_form_amount_unit is 'The metric units for the chemical form for the nutrient amount.';
comment on column lte_data.fertilizer_activity_logs.product_id is 'FK to the product suppling the nutrient being applied.';
comment on column lte_data.fertilizer_activity_logs.product_amount is 'The metric amount of product applied per unit area.';
comment on column lte_data.fertilizer_activity_logs.product_amount_unit is 'The metric units for the product amount.';
comment on column lte_data.fertilizer_activity_logs.application_method_id is 'FK to the application method.';