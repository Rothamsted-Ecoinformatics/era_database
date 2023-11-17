create table loading.dataset_contributors_ldr (
	id serial not null,
	dataset_id int not null, 
	contributor_id int2 not null,
	contributor_role_id int2 not null,
	contribution_notes text null,
	constraint dataset_contributors_pk primary key (id)
);