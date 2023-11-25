drop view lte_data.vw_plot_year_factor_levels;

create view lte_data.vw_plot_year_factor_levels as 
select vpy.experiment_id, vpy.experiment_code, vpy.plot_label, vpy.plot_year, vpy.treatment_label, 
	ef.factor_name, efl.factor_level_code, efl.factor_level_label,
	vpy.plot_year_id, pyfl.id as plot_year_factor_level_id, pyfl.experiment_factor_level_id,
	pyfl.product_id, pyfl.input_form_term_id, pyfl.input_form_amount, pyfl.input_form_amount_unit_id,
	pyfl.nutrient_term_id, pyfl.nutrient_amount, pyfl.nutrient_amount_unit_id,
	pyfl.application_timing_term_id, pyfl.application_timing_description, pyfl.application_method_term_id, pyfl.application_method_description
from lte_data.vw_plot_years vpy
inner join lte_data.plot_year_factor_levels pyfl on vpy.plot_year_id = pyfl.plot_year_id
inner join experiment_factor_levels efl on pyfl.experiment_factor_level_id = efl.id
inner join experiment_factors ef on efl.experiment_factor_id = ef.id;
