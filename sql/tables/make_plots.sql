create table lte_data.plots (
	id serial not null,
	plot_guid uuid not null default gen_random_uuid(),
	experiment_id smallint not null,
	plot_label text not null,
	main_plot_label text not null,
	sub_plot_level_1_label text null,
	sub_plot_level_2_label text null,
	sub_plot_level_3_label text null,
	original_label text not null,
	year_created int2 not null,
	year_ended int2 null,
	plot_area_ha numeric(9,6) null,
	plot_length_m numeric(5,2) null,
	plot_width_m numeric(5,2) null,
	design_plot_number int null,
	design_row_number int2 null,
	design_column_number int2 null,
	design_blocking_number int2 null,
	boundary public.geometry(geometrycollection, 4326) NULL,
	location_description varchar(250) null,
	description text null, 
	constraint plots_pk primary key(id),
	constraint plots_experiment_id foreign key (experiment_id) references experiments(id)
);

comment on table lte_data.plots is 'This table is used to collect core information about a plot. 
A plot is primarily described by its geography, namely it represents a defined area of land. 
For modern plots this is given as a geolocated boundary, but for older plots, a boundary may be approximate or 
described narratively. It is also possible for experiment plots to have the same label or number, but a different 
geometry. This is more common for older plots and generally not expected for modern plots.';

comment on column lte_data.plots.plot_guid is 'A randomly generated GUID for identifying the plot.';
comment on column lte_data.plots.experiment_id is 'An FK to identify the experiment the plot belongs to.';
comment on column lte_data.plots.plot_label IS 'An experiment specific label used to identify the plot. Plots with different spatial extents may have the same label but must have intersecting extents.';
comment on column lte_data.plots.main_plot_label IS 'A label to identify the main plot.';
comment on column lte_data.plots.sub_plot_level_1_label IS 'A label to identify the first tier main plot level split.';
comment on column lte_data.plots.sub_plot_level_2_label IS 'A label to identify the second tier main plot level split.';
comment on column lte_data.plots.sub_plot_level_3_label IS 'A label to identify the third tier main plot level split.';
comment on column lte_data.plots.original_label IS 'For older experiments the original label used to identify the plot.';
comment on column lte_data.plots.year_created IS 'The year the plot was created.';
comment on column lte_data.plots.year_ended IS 'The year the plot ended. If the plot is still in use then null. Note a plot may reappear at a later date but this is considered a new plot even if its other facets are the same.';
comment on column lte_data.plots.plot_area_ha IS 'The total area of the plot in hectares.';
comment on column lte_data.plots.plot_length_m IS 'The plot length in metres.';
comment on column lte_data.plots.plot_width_m IS 'The plot width in metres.';
comment on column lte_data.plots.design_plot_number IS 'The statistical design plot number. Does not apply to classicals and older LTEs.';
comment on column lte_data.plots.design_row_number IS 'The statistical design row number. Does not apply to classicals and older LTEs.';
comment on column lte_data.plots.design_column_number IS 'The statistical design column number. Does not apply to classicals and older LTEs.';
comment on column lte_data.plots.design_blocking_number IS 'The statistical design blocking number. Does not apply to classicals and older LTEs.';
comment on column lte_data.plots.boundary IS 'The geolocated boundary for the plot.';
comment on column lte_data.plots.location_description IS 'A narrative description of the plot location if no boundary is available or is approximate';
comment on column lte_data.plots.description IS 'a freetext description of the plot.';