INSERT INTO lte_data.variables (
    variable_label,
    title,
    trait_term_id,
    trait_entity_term_id,
    trait_characteristic_term_id,
    participant_term_id,
    participant_role_term_id,
    data_type_term_id,
    measurement_unit_term_id,
    format_mask,
    transformation,
    validation_rule,
    variable_description,
    method_description
)
SELECT
    v.variable_label,
    v.title,
    tt.id,
    tet.id,
    tct.id,
    pt.id,
    prt.id,
    dtt.id,
    mut.id,
    v.format_mask,
    v.transformation,
    v.validation_rule,
    v.variable_description,
    v.method_description
FROM (
    -- trait, trait entity, trait characteristic
    VALUES
    ('grnyld_fmc', 'Grain yield at field moisture content', 'grain yield', 'caryopsis fruit (grain)', 'grain yield', NULL, NULL, 'Float', 't ha-1', NULL, NULL, NULL, NULL, NULL),
    ('grnyld_85pctdm', 'Grain yield at 85% dry matter content', 'grain yield', 'caryopsis fruit (grain)', 'grain yield', NULL, NULL, 'Float', 't ha-1', NULL, NULL, NULL, NULL, NULL),
    ('stryld_85pctdm', 'Straw yield at 85% dry matter content', 'straw yield', 'straw', 'yield', NULL, NULL, 'Float', 't ha-1', NULL, NULL, NULL, NULL, NULL),
    ('stryld_fmc', 'Straw yield at field moisture content', 'straw yield', 'straw', 'yield', NULL, NULL, 'Float', 't ha-1', NULL, NULL, NULL, NULL, NULL),
    ('grnyld_fmc_bu', 'Grain yield weight per bushel', 'graing yield', 'caryopsis fruit (grain)', 'grain yield', NULL, NULL, 'Float', 'lb bu-1', NULL, NULL, NULL, 'Grain yield measured as weight per bushel dressed grain.', NULL),
    ('grn_hrvdm', 'Grain percentage dry matter content at harvest', 'grain dry matter content trait', 'caryopsis fruit (grain)', 'dry matter content', NULL, NULL, 'Float', '%', NULL, NULL, NULL, 'Grain Percentage dry matter content at harvest', NULL),
    ('str_hrvdm', 'Straw percentage dry matter content at harvest', 'straw dry matter content trait', 'straw', 'dry matter content', NULL, NULL, 'Float', '%', NULL, NULL, NULL, 'Straw percentage dry matter content at harvest', NULL),
    ('grn_len_1_to_3p5-mm_pct', 'Percentage of grain with length between 1 to 3.5mm', 'grain length', 'caryopsis fruit (grain)', 'proportion', NULL, NULL, 'Float', '%', NULL, NULL, NULL, null, 'Determination of grain length followed by classification into the 1 to 3.5 mm interval'),
    ('grn_len_1_to_2p25-mm_pct', 'Percentage of grain with length between 1 to 2.25mm', 'grain length', 'caryopsis fruit (grain)', 'proportion', NULL, NULL, 'Float', '%', NULL, NULL, NULL, null, 'Determination of grain length followed by classification into the 1 to 2.25 mm interval'),
    ('grn_len_2p25_to_3p5-mm_pct', 'Percentage of grain with length between 2.25 to 3.5mm', 'grain length', 'caryopsis fruit (grain)', 'proportion', NULL, NULL, 'Float', '%', NULL, NULL, NULL, null, 'Determination of grain length followed by classification into the 2.25 to 3.5 mm interval'),
    ('grn_hfn','Hagberg falling number','alpha-amylase activity trait','caryopsis fruit (grain)','alpha-amylase activity trait',null,null,'Float','s', NULL, NULL, NULL, null, 'Hagberg Falling number is a measure of alpha-amaylase, an enzyme used to breakdown starch to sugars. A high Hagberg falling is an indication of low alpha-amaylase activity, thus good for bread making. https://www.yara.co.uk/crop-nutrition/wheat/increasing-hagberg-falling-number','Hagberg falling number method'),
    
) AS v (
    variable_label,
    title,
    trait_label,
    trait_entity_label,
    trait_characteristic_label,
    participant_label,
    participant_role_label,
    data_type_label,
    measurement_unit_symbol,
    format_mask,
    transformation,
    validation_rule,
    variable_description,
    method_description
)
JOIN lte_data.trait_terms tt
    ON tt.term_label = v.trait_label
   AND tt.preferred_term_id IS NULL
JOIN lte_data.trait_entity_terms tet
    ON tet.term_label = v.trait_entity_label
   AND tet.preferred_term_id IS NULL
JOIN lte_data.trait_characteristic_terms tct
    ON tct.term_label = v.trait_characteristic_label
   AND tct.preferred_term_id IS NULL
LEFT JOIN lte_data.participant_terms pt
    ON pt.term_label = v.participant_label
   AND pt.preferred_term_id IS NULL
LEFT JOIN lte_data.participant_role_terms prt
    ON prt.term_label = v.participant_role_label
   AND prt.preferred_term_id IS NULL
JOIN lte_data.data_type_terms dtt ON dtt.term_label = v.data_type_label
JOIN lte_data.measurement_unit_terms mut ON mut.symbol = v.measurement_unit_symbol
ON CONFLICT (variable_label) DO NOTHING;