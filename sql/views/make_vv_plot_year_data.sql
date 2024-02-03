create or replace view vw_plot_year_data as
select pyd.id as plot_year_data_id, pyd.plot_year_id, pyd.variable_id, 
vpy.plot_year,vpy.treatment_label,
pyd.data_value,
vv.variable_label, vv.title, 
vv.measured_property_term_label, vv.measured_property_term_uri, 
vv.measured_entity_term_label, vv.measured_entity_term_uri,
vv.measured_entity_part_term_label, vv.measured_entity_part_term_uri,
vv.data_type_term_label, vv.data_type_term_uri,
vv.unit_symbol, vv.unit_uri,
vpy.crop_name, vpy.crop_name_uri,
vpy.plot_label, vpy.main_plot_label, vpy.sub_plot_level_1_label, vpy.sub_plot_level_2_label, vpy.sub_plot_level_3_label, vpy.design_plot_number, vpy.design_row_number, vpy.design_column_number, vpy.design_blocking_number, vpy.description, vpy.deviations,
vpy.experiment_code, vpy.experiment_name, vpy.experiment_uuid
from lte_data.plot_year_data pyd
inner join lte_data.vw_plot_years vpy on pyd.plot_year_id = vpy.plot_year_id
inner join lte_data.vw_variables vv on pyd.variable_id = vv.id;