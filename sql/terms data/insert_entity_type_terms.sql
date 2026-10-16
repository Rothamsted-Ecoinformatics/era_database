INSERT INTO lte_data.measured_entity_terms
    (term_label, term_uri, ontology_id, usage_notes, other_notes)
VALUES
    ('winter wheat', 'http://aims.fao.org/aos/agrovoc/c_8412', 'AGROVOC', null, null),
    ('maize', 'http://aims.fao.org/aos/agrovoc/c_12332', 'AGROVOC', null, null),
    ('spring barley', 'http://aims.fao.org/aos/agrovoc/c_ad10e027', 'AGROVOC', null, null),
    ('sugar beet', 'http://aims.fao.org/aos/agrovoc/c_7499', 'AGROVOC', null, null),
    ('potatoes', 'http://aims.fao.org/aos/agrovoc/c_13551', 'AGROVOC', null, null),
    ('soil','http://purl.obolibrary.org/obo/ENVO_00001998','ENVO', null, null)
ON CONFLICT (term_uri) DO NOTHING;