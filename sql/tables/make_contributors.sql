CREATE TABLE lte_data.contributors (
	id smallserial NOT NULL,
	organisation_id smallint NULL,
	given_name text NOT null,
	family_name text NOT null,
	orcid text null,
	honorific text NULL,
	CONSTRAINT contributors_pk PRIMARY KEY (id),
	CONSTRAINT contributors_organisations_fk FOREIGN KEY (organisation_id) REFERENCES organisations(id)
);

comment on table lte_data.contributors is 'contributors captures information about the people who have contributed to the development of datasets.';

comment on column lte_data.contributors.organisation_id is 'FK to the organisation the person is affiliated to.';
comment on column lte_data.contributors.orcid is 'The ORCID for the person. this is recommended.';