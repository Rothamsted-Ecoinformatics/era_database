INSERT INTO lte_data.trait_entity_terms
    (term_label, term_uri, ontology_id, usage_notes, other_notes)
VALUES
    ('caryopsis fruit (grain)', 'http://purl.obolibrary.org/obo/PO_0030104', 'PO', null, null),
    ('shoot system', 'http://purl.obolibrary.org/obo/PO_0009006', 'PO', null, null),
    ('root system', 'http://purl.obolibrary.org/obo/PO_0025025', 'PO', null, null),
    ('seed', 'http://purl.obolibrary.org/obo/PO_0009010', 'PO', null, null),
    ('crop canopy', 'http://purl.obolibrary.org/obo/ENVO_01001241', 'ENVO', null, null),
    ('straw', 'http://purl.obolibrary.org/obo/ENVO_00003869', 'ENVO', null, null),
ON CONFLICT (term_uri) DO NOTHING;
