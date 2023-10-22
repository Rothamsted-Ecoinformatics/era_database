create table lte_data.plot_groups (
    id smallserial not null,
    plot_group_collection_id smallint not null,
    label text not null,
    notes text null,
    constraint plot_groups_pk primary key(id),
    constraint plot_groups_plot_group_collection_fk foreign key (plot_group_collection_id) references plot_group_collections(id)
);

comment on table lte_data.plot_groups is 'plot_group_collections is used to identify a group of plots related by some 
design feature of the experiment. Typically these are design features which have not been imposed on the plots through a 
statistical design feature such as a row, column or block, rather they are arbitrary groups.';