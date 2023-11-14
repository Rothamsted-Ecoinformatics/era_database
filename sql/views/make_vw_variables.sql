create view lte_data.vw_variables as
select v.id, v.variable_label, v.title, 
	mpt.term_label as measured_property_term_label, 
	mpt.term_uri as measured_property_term_uri,
	met.term_label as measured_entity_term_label, 
	met.term_uri as measured_entity_term_uri,
	mept.term_label as measured_entity_part_term_label, 
	mept.term_uri as measured_entity_part_term_uri,
	dtt.term_label as data_type_term_label,
	dtt.term_uri as data_type_term_uri,
	mut.symbol as unit_symbol,
	mut.term_uri as unit_uri
from lte_data.variables v
inner join lte_data.measured_property_terms mpt on v.measured_property_term_id = mpt.id
inner join lte_data.measured_entity_terms met on v.measured_entity_term_id = met.id
inner join lte_data.measured_entity_part_terms mept on v.measured_entity_part_term_id = mept.id
inner join lte_data.data_type_terms dtt on v.data_type_id = dtt.id
inner join lte_data.measurement_unit_terms mut on v.measurement_unit_term_id = mut.id;