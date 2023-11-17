create view vw_plot_years as 
select e.experiment_code, e.experiment_uuid, e.experiment_name, 
	p.plot_label, p.plot_guid, 
	py.plot_year, c.crop_name, c.crop_name_uri, py.harvest_area_ha, py.treatment_label, py.description, py.deviations
from lte_data.experiments e
inner join lte_data.plots p on p.experiment_id = e.id
inner join lte_data.plot_years py on py.plot_id = p.id
inner join lte_data.crops c on py.crop_id = c.id;