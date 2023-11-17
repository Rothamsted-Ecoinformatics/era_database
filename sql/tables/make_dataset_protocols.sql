create table lte_data.dataset_protocols (
	id int not null,
	dataset_id int not null,
	protocol_type_id int2 NOT NULL,
	protocol_uri text NULL,
	protocol_description text NOT NULL,
	constraint dataset_protocols_pk primary key(id),
	constraint dataset_protocols_dataset_id_fk foreign key (dataset_id) references datasets(id),
	constraint dataset_protocols_protocol_type_id_fk foreign key (protocol_type_id) references protocol_types(id)
);

comment on table lte_data.dataset_protocols is 'dataset_protocols is used to describe the protocols used for generating a particular dataset. 
This can include protocols for sampling, preparation, and analysis. A direct reference to a document by its DOI is preffered along with a freetext
summary, partly as a safeguard for if the document reference is no longer accessible.';

comment on column lte_data.dataset_protocols.id is 'PK value. The primary key value is set in the loading database table dataset_protocols_ldr.';
comment on column lte_data.dataset_protocols.dataset_id is 'FK linking the protocol to the dataset it is for.';
comment on column lte_data.dataset_protocols.protocol_type_id is 'FK to identify the type of protocol';
comment on column lte_data.dataset_protocols.protocol_uri is 'A link to the published protocol document. Ideally this will be a DOI.';
comment on column lte_data.dataset_protocols.protocol_description is 'A brief description of the protocol.'; 