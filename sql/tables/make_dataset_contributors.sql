create table lte_data.dataset_contributors (
	id serial not null,
	dataset_id int not null, 
	contributor_id int2 not null,
	contributor_role_id int2 not null,
	contribution_notes text null,
	constraint dataset_contributors_pk primary key (id),
	constraint dataset_contributors_datasets_fk foreign key (dataset_id) references datasets(id),
	constraint dataset_contributors_contributors_fk foreign key (contributor_id) references contributors(id),
	constraint dataset_contributors_contributor_roles_fk foreign key (contributor_role_id) references contributor_roles(id)
);

comment on table lte_data.dataset_contributors is 'dataset_contributors links a datasets to the people who have contributed to its development. 
Their contribution is indicated by the contributor role and can be expanded on in the notes.';

comment on column lte_data.dataset_contributors.dataset_id is 'FK to the dataset the contribution is for.';
comment on column lte_data.dataset_contributors.contributor_id is 'FK to the contributor to the dataset.';
comment on column lte_data.dataset_contributors.contributor_role_id is 'FK to the contributors role in developing the dataset.';
comment on column lte_data.dataset_contributors.contribution_notes is 'Additional explanaory notes for the contributors role.';