create table loading.dataset_metadata_items_ldr (
	id serial not null,
	dataset_id int2 not null,
	item_label text not null,
	item_value text not null,
	item_label_uri text null,
	item_value_uri text null,
	constraint dataset_metadata_item_pk primary key (id)
);