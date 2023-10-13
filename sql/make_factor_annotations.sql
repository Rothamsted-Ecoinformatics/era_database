create table lte_data.factor_annotations (
	id smallserial not null,
	preferred_annotation_id int2 null,
	class_label text not null,
	class_uri text null,
	ontology_id text null,
	constraint factors_pk primary key(id),
	constraint factor_annotations_ontology_id foreign key (ontology_id) references ontologies(id)
);

comment on table lte_data.factor_annotations is 'factor_annotations is a dimension table of URIs used for annotating experimet factors. 
The table identifies the preferred annotation term for a factor, but allows the use of alternative terms';
