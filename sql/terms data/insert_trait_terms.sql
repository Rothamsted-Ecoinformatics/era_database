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
    ('grain nitrogen content', 'http://purl.obolibrary.org/obo/TO_0003068', 'TO', null, null),
    ('straw yield',null,null,'Used for any cereal straw yield measurement as a post-harvest fraction consisting of mostly stems and leaves after removal of harvested grain', 'Note that Plant Trait Ontology does have forage yield but we do not use this as straw is not necessairly used for forage.'),
    ('straw moisture content trait',null,null,'Used for any cereal straw measuremnt','Note that Plant Trait Ontology does have forage moisture content, but we do not use this as straw is not necessairly used for forage.'),
    ('moisture content trait','http://purl.obolibrary.org/obo/TO_0000228','TO',null,null),
    ('grain moisture content','http://purl.obolibrary.org/obo/TO_0000057','TO',null,null),
    ('straw dry matter content trait',null,null,null,null),
    ('grain dry matter content trait',null,null,null,null),
    ('alpha amaylase activity trait','http://purl.obolibrary.org/obo/TO_0000288','TO','Measured by Hagberg falling number',null),
    ('thousand grain weight','http://purl.obolibrary.org/obo/TO_0000382','TO',null,null)
    
ON CONFLICT (term_uri) DO NOTHING;