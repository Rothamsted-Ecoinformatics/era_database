INSERT INTO lte_data.trait_characteristic_terms
    (term_label, term_uri, ontology_id, usage_notes, other_notes)
VALUES
    ('grain yield', 'http://purl.obolibrary.org/obo/TO_0000396', 'TO', null, null),
    ('stem dry weight', 'http://purl.obolibrary.org/obo/TO_0003001', 'TO', null, null),
    ('yield trait', 'http://purl.obolibrary.org/obo/TO_0000371', 'TO', null, null),
    ('incidence', 'http://purl.obolibrary.org/obo/STATO_0000413', 'STATO', null, null),
    ('scaled score', 'http://purl.obolibrary.org/obo/NCIT_C120341', 'NCIT', null, null),
    ('proportion', 'http://purl.obolibrary.org/obo/STATO_0000607', 'STATO', 'Proportion should be used for percentage variables which express the relative amount of entities meeting some criterion, such as numbers of grains of a particular size', null),
    ('dry matter content', null, null, null, 'This is the inverse of moisture content trait'),
    ('alpha amaylase activity trait','http://purl.obolibrary.org/obo/TO_0000288','TO','Measured by Hagberg falling number',null)
ON CONFLICT (term_uri) DO NOTHING;