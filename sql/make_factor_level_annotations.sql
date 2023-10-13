create table lte_data.factor_level_annotations (  
	id smallserial not null,
	preferred_annotation_id int2 null,
	class_label text not null,
	class_uri text null,
	ontology_id text null,
	constraint factor_level_annotations_pk primary key(id),
	constraint factor_annotations_ontology_id foreign key (ontology_id) references ontologies(id)
);

comment on table lte_data.factor_level_annotations is 'factor_level_annotations is a dimension table of URIs used for annotating 
experimet factor levels. The table identifies the preferred annotation term for a factor level, but allows the use of alternative terms';