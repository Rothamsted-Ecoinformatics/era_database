create table lte_data.plot_year_factor_levels (
	id serial not null,
	plot_year_id int not null,
	experiment_factor_level_id int2 not null,
	product_id int2 null,
 	input_form_term_id int2 null,
	input_form_amount numeric(6,2) null,
	input_form_amount_unit_id int2 null,
	nutrient_term_id int2 null,
	nutrient_amount numeric(6,2) null, 
	nutrient_amount_unit_id int2 null,
	application_timing_term_id int2 null,
	application_timing_description text null,
	application_method_term_id int2 null,
	application_depth_cm numeric(5,2) null,
	application_row_spacing_cm numeric(5,2) null,
	application_method_description text null,
	rotation_phase text NULL,
	description text null,
	deviations text null,
	original_input_form_amount numeric(6,2) null,
	original_input_form_amount_unit_id smallint null,
	original_input_amount_conversion_factor text null,
	original_nutrient_amount numeric(6,2) null,
	original_nutrient_amount_unit_id smallint null,
	original_nutrient_amount_conversion_factor text null,
	constraint plot_year_factor_levels_pk primary key(id),
	constraint plot_year_factor_levels_plot_year_id_fk foreign key (plot_year_id) references plot_years(id),
	constraint plot_year_factor_levels_experiment_factor_level_id_fk foreign key (experiment_factor_level_id) references experiment_factor_levels(id),
	constraint plot_year_factor_levels_input_form_term_id_fk foreign key (input_form_term_id) references input_form_terms(id),
	constraint plot_year_factor_levels_input_form_amount_unit_id_fk foreign key (input_form_amount_unit_id) references input_form_amount_units(id),
	constraint plot_year_factor_levels_nutrient_term_id_fk foreign key (nutrient_id) references nutrient_terms(id),
	constraint plot_year_factor_levels_product_id_fk foreign key (product_id) references products(id),
	constraint plot_year_factor_levels_application_timing_term_id_fk foreign key (application_timing_term_id) references application_timing_terms(id),
	constraint plot_year_factor_levels_application_method_term_id_fk foreign key (application_method_term_id) references application_method_terms(id)
);

comment on table lte_data.plot_year_factor_levels is 'This table is used to describe a factor level for an experiment in a 
specific year for a specific plot. Because the information about a factor can vary significantly, and only a subset of fields may be 
relevant to a particular factor this table may be sparsely populated. 
This level of granularity allows detail information to be collected including changes between 
years, for example due to rotation or frequency of application, and deviations from expected practice. 
When a deviation has occurred, this should be reflected in the record. For example if standard practice for a factor level 
is 100 kg N, but 50 was applied by mistake, then 50 should be the value recorded. This should also be captured in full detail 
with the agronomic record.';

comment on column lte_data.plot_year_factor_levels.rotation_phase IS 'Optional label or code value for rotation factors to identify the current phase in the rotation for the plot year.';
comment on column lte_data.plot_year_factor_levels.product_id IS 'Optional FK to identify a specific product used as part of the factor level';
comment on column lte_data.plot_year_factor_levels.input_form_term_id IS 'Optional FK to identify the material form of factor levels which are inputs, for example: ammonium nitrate';
comment on column lte_data.plot_year_factor_levels.input_form_amount IS 'The amount of input material applied';
comment on column lte_data.plot_year_factor_levels.input_form_amount_unit_id IS 'Units for the amount of input material applied';
comment on column lte_data.plot_year_factor_levels.nutrient_id IS 'Optional field for nutrient inputs and can be used in addition to input_form. It describes the nutrient element, for example, Nitrogen';
comment on column lte_data.plot_year_factor_levels.nutrient_amount is 'The amount of nutrient applied.';
comment on column lte_data.plot_year_factor_levels.nutrient_amount_unit_id is 'Units for the amount of nutrient applied.';
comment on column lte_data.plot_year_factor_levels.application_timing_term_id is 'Optional FK to a standardised list of application timing terms';
comment on column lte_data.plot_year_factor_levels.application_timing_description is 'Optional field to provide an additional decription of the timing of the application of the factor level.';
comment on column lte_data.plot_year_factor_levels.application_method_term_id is 'Optional FK to a standardises list of application method terms.';
comment on column lte_data.plot_year_factor_levels.application_method_description is 'Optional FK to provide an additional description of the application method for the factor level.';
comment on column lte_data.plot_year_factor_levels.application_depth_cm is 'Optonal field to record the depth in cm at which a factor level occurs, for example depth of tillage or drilling';
comment on column lte_data.plot_year_factor_levels.application_row_spacing_cm is 'Optional field to record the row spacing of the application';
comment on column lte_data.plot_year_factor_levels.description is 'An optional description to further explain the factor level as applied to a plot in a year.';
comment on column lte_data.plot_year_factor_levels.deviations is 'Optional narrative to describe any deviations from standard practice, for example, incorrect amount of an input applied.';
comment on column lte_data.plot_year_factor_levels.original_input_form_amount is 'An optional field for the amount of input as orginally recorded. This is typically used for historic data recorded using imperial measurements';
comment on column lte_data.plot_year_factor_levels.original_input_form_amount_unit_id is 'An optional FK for the amount of input units as orginally recorded. This is typically used for historic data recorded using imperial measurements';
comment on column lte_data.plot_year_factor_levels.original_nutrient_amount is 'An optional field for the amount of nutrient as orginally recorded. This is typically used for historic data recorded using imperial measurements';
comment on column lte_data.plot_year_factor_levels.original_nutrient_amount_unit_id is 'An optional FK for the amount of nutrient as orginally recorded. This is typically used for historic data recorded using imperial measurements';
comment on column lte_data.plot_year_factor_levels.original_input_amount_conversion_factor is 'An optional field to give the conversion factor for converting the original input amount to the preferred input amount';
comment on column lte_data.plot_year_factor_levels.original_nutrient_amount_conversion_factor is 'An optional field to give the conversion factor for converting the original nutrient amount to the preferred nutrient amount';