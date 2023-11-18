select * from lte_data.variables;

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'wheat_grain_yield_at_85pct_dm_t_ha', 'Wheat grain yield at 85% dry matter'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain yield trait'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'wheat_straw_yield_at_85pct_dm_t_ha', 'Wheat straw yield at 85% dry matter'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage yield'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

select * from lte_data.plots where experiment_id = 1 and plot_label like '2.1%';
select * from lte_data.measured_property_terms mpt;

select * from lte_data.measured_entity_terms met;

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'barley_grain_yield_at_85pct_dm_t_ha', 'Barley grain yield at 85% dry matter', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'grain yield trait'
and mep.label = 'grain'
and mu.symbol = 't ha-1'
and dt.name = 'Float';  




insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'barley_straw_yield_at_85pct_dm_t_ha', 'Barley straw yield at 85% dry matter', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'forage yield'
and mep.label = 'straw'
and mu.symbol = 't ha-1'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_dm_at_harvest_pct', 'Wheat grain % dry matter at harvest', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'grain dry matter content'
and mep.label = 'grain'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_straw_dm_at_harvest_pct', 'Wheat straw % dry matter at harvest', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'straw dry matter content'
and mep.label = 'straw'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_yield_at_fmc_t_ha', 'Wheat grain yield at field moisture content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'grain yield trait'
and mep.label = 'grain'
and mu.symbol = 't ha-1'
and dt.name = 'Float';  

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_straw_yield_at_fmc_t_ha', 'Wheat straw yield at field moisture content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'forage yield'
and mep.label = 'straw'
and mu.symbol = 't ha-1'
and dt.name = 'Float'; 

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_bushel_weight_kg', 'Wheat weight per bushel of dressed grain', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'crop yield'
and mep.label = 'shoot system'
and mu.symbol = 'kg'
and dt.name = 'Float'; 

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'barley_bushel_weight_kg', 'Barley weight per bushel of dressed grain', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'crop yield'
and mep.label = 'shoot system'
and mu.symbol = 'kg'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_bushel_weight_lb', 'Wheat weight per bushel of dressed grain (pounds)', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'crop yield'
and mep.label = 'shoot system'
and mu.symbol = 'lb'
and dt.name = 'Float'; 

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_phosphorus_uptake_kg_ha', 'Wheat grain phosphorus uptake', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'phosphorus uptake'
and mep.label = 'grain'
and mu.symbol = 'kg ha-1'
and dt.name = 'Float'; 

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'barley_grain_phosphorus_uptake_kg_ha', 'Barley grain phosphorus uptake', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'phosphorus uptake'
and mep.label = 'grain'
and mu.symbol = 'kg ha-1'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_straw_phosphorus_uptake_kg_ha', 'Wheat straw phosphorus uptake', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'phosphorus uptake'
and mep.label = 'straw'
and mu.symbol = 'kg ha-1'
and dt.name = 'Float'; 

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'barley_straw_phosphorus_uptake_kg_ha', 'Barley straw phosphorus uptake', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'phosphorus uptake'
and mep.label = 'straw'
and mu.symbol = 'kg ha-1'
and dt.name = 'Float'; 

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_alpha_amylase_s', 'Wheat Hagberg Falling Number', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'alpha-amylase activity trait'
and mep.label = 'straw'
and mu.symbol = 's'
and dt.name = 'Float'; 

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_thousand_grain_weight_g', 'Wheat Thousand Grain Weight', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = '1000-grain weight'
and mep.label = 'grain'
and mu.symbol = 's'
and dt.name = 'Float'; 

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_density_kg_hl', 'Wheat Hectolitre Grain Weight', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'grain density'
and mep.label = 'grain'
and mu.symbol = 'kg hL-1'
and dt.name = 'Float'; 
select * from measurement_annotations ma; 

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'barley_grain_density_kg_hl', 'Barley Hectolitre Grain Weight', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'grain density'
and mep.label = 'grain'
and mu.symbol = 'kg hL-1'
and dt.name = 'Float'; 
select * from measurement_annotations ma;

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_calcium_content_pct', 'Wheat grain calcium content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'calcium content trait'
and mep.label = 'grain'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_straw_calcium_content_pct', 'Wheat straw calcium content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'calcium content trait'
and mep.label = 'straw'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_sodium_content_pct', 'Wheat grain sodium content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'sodium content trait'
and mep.label = 'grain'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_straw_sodium_content_pct', 'Wheat straw sodium content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'sodium content trait'
and mep.label = 'straw'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_nitrogen_content_pct', 'Wheat grain nitrogen content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'grain nitrogen content trait'
and mep.label = 'grain'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_straw_nitrogen_content_pct', 'Wheat straw nitrogen content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'nitrogen content trait'
and mep.label = 'straw'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_potassium_content_pct', 'Wheat grain potassium content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'grain potassium content trait'
and mep.label = 'grain'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_straw_potassium_content_pct', 'Wheat straw potassium content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'potassium content trait'
and mep.label = 'straw'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_phosphorus_content_pct', 'Wheat grain phosphorus content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'grain phosphorus content trait'
and mep.label = 'grain'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'barley_grain_phosphorus_content_pct', 'Barley grain phosphorus content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'grain phosphorus content trait'
and mep.label = 'grain'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_straw_phosphorus_content_pct', 'Wheat straw phosphorus content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'phosphorus content trait'
and mep.label = 'straw'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'barley_straw_phosphorus_content_pct', 'Barley straw phosphorus content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'phosphorus content trait'
and mep.label = 'straw'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_sulfur_content_pct', 'Wheat grain sulfur content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'sulfur content trait'
and mep.label = 'grain'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_straw_sulfur_content_pct', 'Wheat straw sulfur content', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'sulfur content trait'
and mep.label = 'straw'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_size_all_pct', 'Percentage of wheat grain with length between 1 to 3.5mm', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'grain length'
and mep.label = 'grain'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_size_large_pct', 'Percentage of large wheat grain with length between 2.25 to 3.5mm', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'grain length'
and mep.label = 'grain'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_size_small_pct', 'Percentage of small wheat grain with length between 1 to 2.25mm', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'grain length'
and mep.label = 'grain'
and mu.symbol = '%'
and dt.name = 'Float';

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_grain_nitrogen_uptake_kg_ha', 'Wheat grain nitrogen uptake', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'nitrogen uptake'
and mep.label = 'grain'
and mu.symbol = 'kg ha-1'
and dt.name = 'Float'; 

insert into lte_data.measurements (measurement_annotation_id, measured_entity_part_id, data_type_id, label, title, measurement_unit_id)
select ma.id, mep.id, dt.id, 'wheat_straw_nitrogen_uptake_kg_ha', 'Wheat straw nitrogen uptake', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'nitrogen uptake'
and mep.label = 'straw'
and mu.symbol = 'kg ha-1'
and dt.name = 'Float';

select * from measurements where label like '%barley%';


wheat_grain_size_all_pct numeric(6,3) null,
	wheat_grain_size_large_pct numeric(6,3) null,
	wheat_grain_size_small_pct


select m.label, m.title, ma.uri, mep.label as part, dt.name, dt.uri, mu.symbol from measurements m
inner join measurement_annotations ma on m.measurement_annotation_id = ma.id
inner join data_types dt on m.data_type_id = dt.id
inner join measured_entity_parts mep on m.measured_entity_part_id = mep.id 
inner join measurement_units mu on m.measurement_unit_id = mu.id;