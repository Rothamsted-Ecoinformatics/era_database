create table dataset_metadata_items (
	id serial not null,
	dataset_id int2 not null,
	item_label text not null,
	item_value text not null,
	item_label_uri text null,
	item_value_uri text null,
	constraint dataset_metadata_item_pk primary key (id),
	constraint dataset_metadata_items_dataset_id_fk foreign key (dataset_id) references datasets(id)
);

comment on table lte_data.dataset_metadata_items is 'dataset_metadata_items is used to record additional descipritve metadata for a dataset.
The table uses a flexible name value pair format, and ideally item labels and values should be annotated with URIs if available. These 
URIs do not currently have an FK relationhship to associated terms tables but this could be added later.';

comment on column lte_data.dataset_metadata_terms.dataset_id is 'FK to the dataset the metadata term is for.';