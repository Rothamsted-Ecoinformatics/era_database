create table lte_data.plot_group_plots (
	id serial not null,
	plot_id int not null,
	plot_group_id smallint not null,
	constraint plot_group_plots_pk primary key(id),
	constraint plot_group_plots_plot_id foreign key (plot_id) references plots(id),
	constraint plot_group_plots_plot_group_id_fk foreign key (plot_group_id) references plot_groups(id)
);

comment on table lte_data.plot_groups is 'plot_group_plots is used to identify the plots belonging to a plot group. 
A plot can belong to multiple plot groups.';