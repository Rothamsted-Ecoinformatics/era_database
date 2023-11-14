create table lte_data.datasets (
	id serial not null,
	experiment_id smallint not null,
	version_number SMALLINT NOT NULL,
	dataset_title text not null,
	date_from date null,
	date_to date null,
	date_precision char(2) not null,
	date_loaded timestamp not null,
	loaded_by text not null,
	dataset_description text null,
	version_history_notes text null,
	constraint dataset_pk primary key(id),
	CONSTRAINT dataset_experiment_id_fk foreign key (experiment_id) references experiments(id)
);

comment on table lte_data.datasets is 'datasets is a grouping of logically related observation and measurement records. Records would normally be 
grouped based on criteria such as timing of collection and protocols applied. Datasets are version controlled and an entire dataset can be 
superceeded, but datasets should not be deleted.';

comment on column lte_data.datasets.experiment_id is 'The experiment the dataset belongs to.';
comment on column lte_data.datasets.version_number is 'The dataset version number. Version numbers are seqeuntial integers starting at 1.';
comment on column lte_data.datasets.dataset_title is 'A descriptive title for the dataset which should include the type of data and the timing, for example Broadbalk grain yield data 2023.';
comment on column lte_data.datasets.date_from is 'The start date for the temporal coverage of the dataset.';
comment on column lte_data.datasets.date_to is 'The end date for the temporal coverage of the dataset.';
comment on column lte_data.datasets.date_precision is 'The precision of the date range.';
comment on column lte_data.datasets.date_loaded is 'The date for when the dataset was loaded.';
comment on column lte_data.datasets.loaded_by is 'Ther person who loaded the dataset. This is freetext and full names should be preferred rather than initials.';
comment on column lte_data.datasets.dataset_description is 'A descriptive overview of the dataset';
comment on column lte_data.datasets.version_history_notes is 'for recording notes on the version history of the dataset. This should be used to capture changes about the dataset between versions.';