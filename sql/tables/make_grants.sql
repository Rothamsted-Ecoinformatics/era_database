create table awards (
	id smallserial not null,
	funder_id int2 not null,
	award_number text not null,
	awarded_from int2 not null,
	awarded_to int2 not null,
	title text null,
	award_uri text not null,
	constraint awards_pk primary key(id),
	CONSTRAINT award_award_id_fk foreign key (funder_id) references funders(id)
);

comment on table lte_data.awards is 'awards is used to identify the funding awards used to collect and manage datasets. With the funders table, awards conforms to the fields 
necessary for citing funding in the DataCite metadata schema..';

comment on column lte_data.awards.funder_id is 'FK for the award funder.';
comment on column lte_data.awards.award_number is 'The funders unique code or number for identifying the award.';
comment on column lte_data.awards.title is 'The award title.';
comment on column lte_data.awards.award_uri is 'The funder provided link to award information.';
comment on column lte_data.awards.awarded_from is 'The year the award started.';
comment on column lte_data.awards.awarded_to is 'The year the award ended.';
