create table lte_data.funders (
	id smallserial not null,
	funder_name text not null,
	abbreviation text not null,
	crossref_funder_id text null,
	CONSTRAINT funders_pk PRIMARY KEY (id)
);

comment on table lte_data.funders is 'funders stores information about the organisations funding the collection and management of datasets. The table conforms to the requirements of DataCite funder citation, therefore information such as address is not included.';

comment on column lte_data.funders.funder_name is 'The name of the funder.';
comment on column lte_data.funders.abbreviation is 'The abbreviation form of the funder name.';
comment on column lte_data.funders.crossref_funder_id is 'the Crossref funder ID.';