create table lte_data.plot_years (
	id serial not null,
	plot_id int not null,
	plot_year smallint not null,
	crop_id smallint not null,
	treatment_label text null,
	harvest_area_ha numeric(9,6) null,
	original_treatment_label text null,
	description text null,
	deviations text null,
	constraint plot_years_pk primary key(id),
	constraint plot_years_plot_id_fk foreign key (plot_id) references plots(id),
	constraint plot_years_crop_id_fk foreign key (crop_id) references crops(id)
);

comment on table lte_data.plot_years is 'This table is used to connect a plot to the data for that plot in a harvest year and to connect the plot to the factor levels applied to it.';

comment on column lte_data.plot_years.plot_id IS 'This is an FK to the plot.';
comment on column lte_data.plot_years.plot_year IS 'This is the harvest year the data refers to.';
comment on column lte_data.plot_years.crop_id IS 'This is the crop grown in that plot for the year. If a second crop is grown then a new plot year record should be created.';
comment on column lte_data.plot_years.treatment_label IS 'This is an optional label based on a composite of the different factor levels applied. It is a space delimited concatenation of the factor_level_codes.';
comment on column lte_data.plot_years.original_treatment_label IS 'This is an optional label for the treatments originally in use.';
comment on column lte_data.plot_years.harvest_area_ha IS 'The harvest area for the plot. This is given in the plot_year as harvest area may change between years and crops.';
comment on column lte_data.plot_years.description is 'This is an optional description of the plot for the current year.';
comment on column lte_data.plot_years.deviations is 'This is an optional field for recording any deviations including crop damage or plot failure.';
