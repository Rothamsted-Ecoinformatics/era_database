INSERT INTO lte_data.trait_terms
    (term_label, term_uri, ontology_id, usage_notes, other_notes)
VALUES
    ('grain yield', 'http://purl.obolibrary.org/obo/TO_0000396', 'TO', null, null),
    ('thousand grain weight', 'http://purl.obolibrary.org/obo/TO_0000382', 'TO', null, null),
    ('grain length', 'http://purl.obolibrary.org/obo/TO_0000734', 'TO', null, null),
    ('grain width', 'http://purl.obolibrary.org/obo/TO_0000975', 'TO', null, null),
    ('seed yield trait', 'http://purl.obolibrary.org/obo/TO_0000905', 'TO', null, null),
    ('forage yield', 'http://purl.obolibrary.org/obo/TO_0000388', 'TO', null, null),
    ('biomass yield', 'http://purl.obolibrary.org/obo/TO_0000457', 'TO', null, null),
    ('grain nitrogen content', 'http://purl.obolibrary.org/obo/TO_0003068', 'TO', null, null)
ON CONFLICT (term_uri) DO NOTHING;