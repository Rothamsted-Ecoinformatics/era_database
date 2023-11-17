drop view vw_plot_years;
create view vw_plot_years as 
select py.id as plot_year_id, p.id as plot_id, c.id as crop_id, p.experiment_id, e.experiment_code, e.experiment_uuid, e.experiment_name, 
	p.plot_label, p.plot_guid, p.main_plot_label, p.sub_plot_level_1_label, p.sub_plot_level_2_label, p.sub_plot_level_3_label, p.original_label, 
	py.plot_year, c.crop_name, c.crop_name_uri, py.harvest_area_ha, py.treatment_label, py.description, py.deviations
from lte_data.experiments e
inner join lte_data.plots p on p.experiment_id = e.id
inner join lte_data.plot_years py on py.plot_id = p.id
inner join lte_data.crops c on py.crop_id = c.id;

select * from vw_plot_years where crop_name = 'winter wheat' and plot_year between 1988 and 1990 and experiment_code = 'R/BK/1';