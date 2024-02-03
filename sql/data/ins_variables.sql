select * from lte_data.variables; 
where variable_label like '%content%' and measured_entity_term_id = 82;
order by variable_label;

--==================
-- SPRING WHEAT
--==================
insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_dm_at_harvest_pct', 'Spring Wheat Grain Percentage dry matter content at harvest',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain moisture content'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_straw_dm_at_harvest_pct', 'Spring Wheat Straw Percentage dry matter content at harvest',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage moisture content trait'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_yield_at_85pct_dm_t_ha', 'Spring wheat grain yield at 85% dry matter'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain yield trait'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_straw_yield_at_85pct_dm_t_ha', 'Spring Wheat straw yield at 85% dry matter'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage yield'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_length_1t3p5mm_pct', 'Percentage of spring wheat grain with length between 1 to 3.5mm'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain length'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_length_2p25t3p5mm_pct', 'Percentage of spring wheat grain with length between 2.25 to 3.5mm'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain length'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_length_1pt2p25mm_pct', 'Percentage of spring wheat grain with length between 1 to 2.25mm'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain length'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_alpha_amylase_activity_s', 'Spring Wheat Hagberg Falling Number',
'Hagberg Falling number is a measure of alpha-amaylase, an enzyme used to breakdown starch to sugars. A high Hagberg falling is an indication of low alpha-amaylase activity, thus good for bread making. https://www.yara.co.uk/crop-nutrition/wheat/increasing-hagberg-falling-number'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'alpha amaylase activity trait'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 's';
select * from variables;

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_thousand_grain_weight_g', 'Spring Wheat Thousand Grain Weight',
'Thousand grain weight is the weight of 1000 grains.'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'thousand grain weight'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 'g';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_density_kg_hl', 'Spring Wheat Grain Density',
'Grain density, or specific weight, or hectolitre grain weight, is an indication of the density of grain. https://www.yara.co.uk/crop-nutrition/wheat/increasing-wheat-specific-weight/'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain density'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 'kg hL-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_calcium_content_pct', 'Spring Wheat Grain Calcium Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'calcium content trait'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat straw_calcium_content_pct', 'Spring Wheat Straw Calcium Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'calcium content trait'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_sodium_content_pct', 'Spring Wheat Grain Sodium Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'sodium content'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_straw_sodium_content_pct', 'Spring Wheat Straw Sodium Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'sodium content'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_nitrogen_content_pct', 'Spring Wheat Grain Nitrogen Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'nitrogen content'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_straw_nitrogen_content_pct', 'Spring Wheat Straw Nitrogen Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'nitrogen content'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_potassium_content_pct', 'Spring Wheat Grain Potassium Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain potassium content trait'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_straw_potassium_content_pct', 'Spring Wheat Straw Potassium Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'potassium content trait'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_phosphorus_content_pct', 'Spring Wheat Grain Phosphorus Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain phosphorus content'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_straw_phosphorus_content_pct', 'Spring Wheat Straw Phosphorus Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'phosphorus content'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_grain_sulfur_content_pct', 'Spring Wheat Grain Sulfur Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'sulfur content'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_wheat_straw_sulfur_content_pct', 'Spring Wheat Straw Sulfur Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'sulfur content'
and met.preferred_term_id is null and met.term_label = 'spring wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

--================
-- WINTER WHEAT
--================
insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_yield_at_fmc_t_ha', 'Wheat grain yield at field moisture content',
'Grain yield measured at field moisture content.'
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
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_straw_yield_at_fmc_t_ha', 'Wheat grain straw at field moisture content',
'Straw yield measured at field moisture content.'
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

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_yield_lbs_bushel', 'Winter Wheat Grain Yield Weight per Bushel',
'Grain yield measured as weight per bushel dressed grain.'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain yield trait'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 'lb bu-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_dm_at_harvest_pct', 'Winter Wheat Grain Percentage dry matter content at harvest',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain moisture content'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_straw_dm_at_harvest_pct', 'Winter Wheat Straw Percentage dry matter content at harvest',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage moisture content trait'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_yield_at_85pct_dm_t_ha', 'Winter Wheat grain yield at 85% dry matter'
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
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_straw_yield_at_85pct_dm_t_ha', 'Winter Wheat straw yield at 85% dry matter'
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

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_length_1t3p5mm_pct', 'Percentage of winter wheat grain with length between 1 to 3.5mm'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain length'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_length_2p25t3p5mm_pct', 'Percentage of winter wheat grain with length between 2.25 to 3.5mm'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain length'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter wheat_grain_length_1pt2p25mm_pct', 'Percentage of winter wheat grain with length between 1 to 2.25mm'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain length'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_alpha_amylase_activity_s', 'Winter Wheat Hagberg Falling Number',
'Hagberg Falling number is a measure of alpha-amaylase, an enzyme used to breakdown starch to sugars. A high Hagberg falling is an indication of low alpha-amaylase activity, thus good for bread making. https://www.yara.co.uk/crop-nutrition/wheat/increasing-hagberg-falling-number'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'alpha amaylase activity trait'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 's';
select * from variables;

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_thousand_grain_weight_g', 'Winter Wheat Thousand Grain Weight',
'Thousand grain weight is the weight of 1000 grains.'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'thousand grain weight'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 'g';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_density_kg_hl', 'Winter Wheat Grain Density',
'Grain density, or specific weight, or hectolitre grain weight, is an indication of the density of grain. https://www.yara.co.uk/crop-nutrition/wheat/increasing-wheat-specific-weight/'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain density'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 'kg hL-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_calcium_content_pct', 'Winter Wheat Grain Calcium Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'calcium content trait'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_straw_calcium_content_pct', 'Winter Wheat Straw Calcium Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'calcium content trait'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_sodium_content_pct', 'Winter Wheat Grain Sodium Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'sodium content'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_straw_sodium_content_pct', 'Winter Wheat Straw Sodium Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'sodium content'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_nitrogen_content_pct', 'Winter Wheat Grain Nitrogen Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'nitrogen content'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_straw_nitrogen_content_pct', 'Winter Wheat Straw Nitrogen Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'nitrogen content'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_potassium_content_pct', 'Winter Wheat Grain Potassium Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain potassium content trait'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_straw_potassium_content_pct', 'Winter Wheat Straw Potassium Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'potassium content trait'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_phosphorus_content_pct', 'Winter Wheat Grain Phosphorus Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain phosphorus content'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_straw_phosphorus_content_pct', 'Winter Wheat Straw Phosphorus Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'phosphorus content'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_grain_sulfur_content_pct', 'Winter Wheat Grain Sulfur Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'sulfur content'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_wheat_straw_sulfur_content_pct', 'Winter Wheat Straw Sulfur Content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'sulfur content'
and met.preferred_term_id is null and met.term_label = 'winter wheat'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

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


-- ===================================
-- WINTER BEANS
-- ===================================
insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_bean_seed_thousand_grain_weight_g', 'Winter Bean Thousand Seed Weight',
'Thousand seed weight is the weight of 1000 bean seeds. This definition currently references the grain weight term as a seed weight term does not exist in TO.'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'thousand grain weight'
and met.preferred_term_id is null and met.term_label = 'winter beans'
and mept.preferred_term_id is null and mept.term_label = 'seed'
and dtt.term_label  = 'Float'
and mut.symbol = 'g';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_bean_seed_yield_at_85pct_dm_t_ha', 'Winter Bean Yield at 85% dry matter content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'seed yield trait'
and met.preferred_term_id is null and met.term_label = 'winter beans'
and mept.preferred_term_id is null and mept.term_label = 'seed'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_bean_straw_yield_at_85pct_dm_t_ha', 'Winter Bean Straw at 85% dry matter content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage yield'
and met.preferred_term_id is null and met.term_label = 'winter beans'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_bean_seed_dm_at_harvest_pct', 'Winter Bean Seed Percentage dry matter content at harvest',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'moisture content trait'
and met.preferred_term_id is null and met.term_label = 'winter beans'
and mept.preferred_term_id is null and mept.term_label = 'seed'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_bean_straw_dm_at_harvest_pct', 'Winter Bean Straw Percentage dry matter content at harvest',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage moisture content trait'
and met.preferred_term_id is null and met.term_label = 'winter beans'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

-- ===================================
-- SPRING BEANS
-- ===================================
insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_bean_seed_thousand_grain_weight_g', 'Spring Bean Thousand Seed Weight',
'Thousand seed weight is the weight of 1000 bean seeds. This definition currently references the grain weight term as a seed weight term does not exist in TO.'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'thousand grain weight'
and met.preferred_term_id is null and met.term_label = 'spring beans'
and mept.preferred_term_id is null and mept.term_label = 'seed'
and dtt.term_label  = 'Float'
and mut.symbol = 'g';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_bean_seed_yield_at_85pct_dm_t_ha', 'Spring Bean Yield at 85% dry matter content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'seed yield trait'
and met.preferred_term_id is null and met.term_label = 'spring beans'
and mept.preferred_term_id is null and mept.term_label = 'seed'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_bean_straw_yield_at_85pct_dm_t_ha', 'Spring Bean Straw at 85% dry matter content',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage yield'
and met.preferred_term_id is null and met.term_label = 'spring beans'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_bean_seed_dm_at_harvest_pct', 'Spring Bean Seed Percentage dry matter content at harvest',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'moisture content trait'
and met.preferred_term_id is null and met.term_label = 'spring beans'
and mept.preferred_term_id is null and mept.term_label = 'seed'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_bean_straw_dm_at_harvest_pct', 'Spring Bean Straw Percentage dry matter content at harvest',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage moisture content trait'
and met.preferred_term_id is null and met.term_label = 'spring beans'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

-- ===================================
-- MAIZE
-- ===================================
insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'forage_maize_forage_yield_at_100pct_dm_t_ha', 'Forage Maize whole crop (stover) percentage dry matter at harvest',
'Yield of the whole crop, or stover above the cut line.'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage moisture content trait'
and met.preferred_term_id is null and met.term_label = 'maize'
and mept.preferred_term_id is null and mept.term_label = 'shoot system'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'forage_maize_forage_dm_at_harvest_pct', 'Forage Maize whole crop (stover) yield at 100% dry matter',
'Measured in the whole crop, or stover above the cut line.'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage yield'
and met.preferred_term_id is null and met.term_label = 'maize'
and mept.preferred_term_id is null and mept.term_label = 'shoot system'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

-- ===================================
-- WINTER OATS
-- ===================================
insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_oats_grain_dm_at_harvest_pct', 'Winter Oats Grain Percentage dry matter content at harvest',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain moisture content'
and met.preferred_term_id is null and met.term_label = 'winter oats'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_oats_straw_dm_at_harvest_pct', 'Winter Oats Straw Percentage dry matter content at harvest',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage moisture content trait'
and met.preferred_term_id is null and met.term_label = 'winter oats'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_oats_grain_yield_at_85pct_dm_t_ha', 'Winter Oats grain yield at 85% dry matter'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain yield trait'
and met.preferred_term_id is null and met.term_label = 'winter oats'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_oats_straw_yield_at_85pct_dm_t_ha', 'Winter Oats straw yield at 85% dry matter'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage yield'
and met.preferred_term_id is null and met.term_label = 'winter oats'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_oats_grain_length_1t3p5mm_pct', 'Percentage of winter oats grain with length between 1 to 3.5mm'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain length'
and met.preferred_term_id is null and met.term_label = 'winter oats'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_oats_grain_length_2p25t3p5mm_pct', 'Percentage of winter oats grain with length between 2.25 to 3.5mm'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain length'
and met.preferred_term_id is null and met.term_label = 'winter oats'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_oats_grain_length_1t2p25mm_pct', 'Percentage of winter oats grain with length between 1 to 2.25mm'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain length'
and met.preferred_term_id is null and met.term_label = 'winter oats'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_oats_grain_thousand_grain_weight_g', 'Winter Oats Thousand Grain Weight',
'Thousand grain weight is the weight of 1000 grains.'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'thousand grain weight'
and met.preferred_term_id is null and met.term_label = 'winter oats'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 'g';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'winter_oats_grain_density_kg_hl', 'Winter Oats Grain Density',
'Grain density, or specific weight, or hectolitre grain weight, is an indication of the density of grain. https://www.yara.co.uk/crop-nutrition/wheat/increasing-wheat-specific-weight/'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain density'
and met.preferred_term_id is null and met.term_label = 'winter oats'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 'kg hL-1';

-- ===================================
-- SPRING OATS
-- ===================================
insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_oats_grain_dm_at_harvest_pct', 'Spring Oats Grain Percentage dry matter content at harvest',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain moisture content'
and met.preferred_term_id is null and met.term_label = 'spring oats'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_oats_straw_dm_at_harvest_pct', 'Spring Oats Straw Percentage dry matter content at harvest',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage moisture content trait'
and met.preferred_term_id is null and met.term_label = 'spring oats'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_oats_grain_yield_at_85pct_dm_t_ha', 'Spring Oats grain yield at 85% dry matter'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain yield trait'
and met.preferred_term_id is null and met.term_label = 'spring oats'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_oats_straw_yield_at_85pct_dm_t_ha', 'Spring Oats straw yield at 85% dry matter'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'forage yield'
and met.preferred_term_id is null and met.term_label = 'spring oats'
and mept.preferred_term_id is null and mept.term_label = 'straw'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_oats_grain_length_2p25t3p5mm_pct', 'Percentage of spring oats grain with length between 2.25 to 3.5mm'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain length'
and met.preferred_term_id is null and met.term_label = 'spring oats'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_oats_grain_length_1t2p25mm_pct', 'Percentage of spring oats grain with length between 1 to 2.25mm'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain length'
and met.preferred_term_id is null and met.term_label = 'spring oats'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = '%';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_oats_grain_thousand_grain_weight_g', 'Spring Oats Thousand Grain Weight',
'Thousand grain weight is the weight of 1000 grains.'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'thousand grain weight'
and met.preferred_term_id is null and met.term_label = 'spring oats'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 'g';

insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'spring_oats_grain_density_kg_hl', 'Spring Oats Grain Density',
'Grain density, or specific weight, or hectolitre grain weight, is an indication of the density of grain. https://www.yara.co.uk/crop-nutrition/wheat/increasing-wheat-specific-weight/'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'grain density'
and met.preferred_term_id is null and met.term_label = 'spring oats'
and mept.preferred_term_id is null and mept.term_label = 'grain'
and dtt.term_label  = 'Float'
and mut.symbol = 'kg hL-1';

-- ===================================
-- POTATOES
-- ===================================
insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'potato_tuber_ware_yield_3p81cm_pct', 'Percentage potato tuber ware crop yield at 3.81cm riddle',
'Ware crop yield is the percentage of tubers not passing through a 3.81cm (1.5") riddle.'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'ware crop yield'
and met.preferred_term_id is null and met.term_label = 'potatoes'
and mept.preferred_term_id is null and mept.term_label = 'subterranean shoot axis tuber'
and dtt.term_label  = 'Float'
and mut.symbol = '%';
	
insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'potato_tuber_fresh_yield_t_ha', 'Potato fresh yield weight',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'subterranean shoot axis tuber fresh weight'
and met.preferred_term_id is null and met.term_label = 'potatoes'
and mept.preferred_term_id is null and mept.term_label = 'subterranean shoot axis tuber'
and dtt.term_label  = 'Float'
and mut.symbol = 't ha-1';
	
insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'potato_tuber_dm_pct', 'Percentage dry matter of potatoe tubers',
null
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'subterranean shoot axis tuber dry weight'
and met.preferred_term_id is null and met.term_label = 'potatoes'
and mept.preferred_term_id is null and mept.term_label = 'subterranean shoot axis tuber'
and dtt.term_label  = 'Float'
and mut.symbol = '%';
	
insert into lte_data.variables (measured_property_term_id, measured_entity_term_id, measured_entity_part_term_id, data_type_id, 
	measurement_unit_term_id, variable_label, title, variable_description)
select mpt.id, met.id, mept.id, dtt.id, mut.id, 'potato_tuber_dirt_tare_pct', 'Potato tuber dirt tare percentage',
'Dirt tare is the amount of dirt adhearing to harvested potato tubers.'
from lte_data.measured_property_terms mpt, 
	lte_data.measured_entity_terms met,
	lte_data.measured_entity_part_terms mept,
	lte_data.data_type_terms dtt,
	lte_data.measurement_unit_terms mut
where mpt.preferred_term_id is null and mpt.term_label = 'ware crop yield'
and met.preferred_term_id is null and met.term_label = 'potatoes'
and mept.preferred_term_id is null and mept.term_label = 'subterranean shoot axis tuber'
and dtt.term_label  = 'Float'
and mut.symbol = '%';
	







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
select ma.id, mep.id, dt.id, 'barley_bushel_weight_kg', 'Barley weight per bushel of dressed grain', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'crop yield'
and mep.label = 'shoot system'
and mu.symbol = 'kg'
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
select ma.id, mep.id, dt.id, 'barley_grain_density_kg_hl', 'Barley Hectolitre Grain Weight', mu.id
from measurement_annotations ma, measurement_units mu, measured_entity_parts mep, data_types dt
where ma.is_preferred = 1 and ma.label = 'grain density'
and mep.label = 'grain'
and mu.symbol = 'kg hL-1'
and dt.name = 'Float'; 
select * from measurement_annotations ma;



select * from measurements where label like '%barley%';


wheat_grain_size_all_pct numeric(6,3) null,
	wheat_grain_size_large_pct numeric(6,3) null,
	wheat_grain_size_small_pct


select m.label, m.title, ma.uri, mep.label as part, dt.name, dt.uri, mu.symbol from measurements m
inner join measurement_annotations ma on m.measurement_annotation_id = ma.id
inner join data_types dt on m.data_type_id = dt.id
inner join measured_entity_parts mep on m.measured_entity_part_id = mep.id 
inner join measurement_units mu on m.measurement_unit_id = mu.id;