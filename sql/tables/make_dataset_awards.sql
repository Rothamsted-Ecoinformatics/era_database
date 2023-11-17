create table lte_data.dataset_awards (
	id int not null,
	dataset_id int2 not null,
	award_id int2 not null,
	constraint dataset_awards_pk primary key (id),
	constraint dataset_award_dataset_id_fk foreign key (dataset_id) references datasets(id),
	constraint dataset_award_award_id_fk foreign key (award_id) references awards(id),
	constraint dataset_awards_unq unique (dataset_id, award_id)
);

comment on table lte_data.dataset_awards is 'dataset_awards is a resolution table linking a dataset to its funding awards.';