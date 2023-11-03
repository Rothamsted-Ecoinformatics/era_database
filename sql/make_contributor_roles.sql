CREATE TABLE lte_data.contributor_roles (
	id smallserial NOT NULL,
	datacite_label text NOT NULL,
	natural_language_label text NOT NULL,
	CONSTRAINT contributor_roles_pk PRIMARY KEY (id)
);

INSERT INTO lte_data.contributor_roles (datacite_label,natural_language_label) VALUES
	('DataCollector','Data Collector'),
	('ContactPerson','Contact Person'),
	('DataCurator','Data Curator'),
	('DataManager','Data Manager'),
	('ProjectLeader','Project Leader'),
	('ProjectManager','Project Manager'),
	('ProjectMember','Project Member'),
	('WorkPackageLeader','Work Package Leader'),
	('Researcher','Researcher');