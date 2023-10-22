create table lte_data.plot_group_collections (
    id smallserial not null,
    group_label text not null,
    title text not null,
    notes text not null,
    constraint plot_group_collection_pk primary key(id)
);

comment on table lte_data.plot_group_collections is 'plot_group_collections is used to identify a group of related plot groups, for example,
sections in Broadbalk.';