create table loading.dataset_awards_ldr (
	id serial not null,
	dataset_id int2 not null,
	award_id int2 not null,
	constraint dataset_awards_pk primary key (id)
);