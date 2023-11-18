INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Andrew', 'Macdonald','https://orcid.org/0000-0002-1785-4892', NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Andy', 'Gregory', 'https://orcid.org/0000-0001-7123-0784', NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Wendy', 'Wilmer', 'https://orcid.org/0000-0002-6463-6636', NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Mark', 'Durenkamp', 'https://orcid.org/0000-0002-2195-1855', NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Melanie', 'Brookman', 'https://orcid.org/0000-0001-6085-9288', NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Chloe', 'Garwood', 'https://orcid.org/0000-0002-2831-6854', NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Margaret', 'Glendining', 'https://orcid.org/0000-0002-6466-4629', NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Sarah', 'Perryman', 'https://orcid.org/0000-0002-0056-2754', NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Nathalie', 'Castells-Brooke', 'https://orcid.org/0000-0003-0168-6254', NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Richard', 'Ostler', 'https://orcid.org/0000-0002-1434-9495', NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Suzanne', 'Clark', 'https://orcid.org/0000-0002-3684-1253', NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Paul', 'Poulton', 'https://orcid.org/0000-0002-5720-064X', NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Ellen', 'Farnham', null, NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Ben', 'Charlston', null, NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

INSERT INTO lte_data.contributors (organisation_id, given_name, family_name, orcid, honorific)
SELECT id, 'Chris', 'Hall', null, NULL FROM lte_data.organisations WHERE abbreviation = 'RRES';

select * from contributors;