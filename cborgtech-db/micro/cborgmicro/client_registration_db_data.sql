UPDATE page_option_value SET option_value='false' WHERE page_option_name_id=(SELECT id FROM page_option_name WHERE name = 'REGISTRATION_SERVICE') AND lang='en';
UPDATE page_option_value SET option_value='false' WHERE page_option_name_id=(SELECT id FROM page_option_name WHERE name = 'REGISTRATION_SERVICE') AND lang='es';

UPDATE page_option_value SET option_value='false' WHERE page_option_name_id=(SELECT id FROM page_option_name WHERE name = 'REGISTRATION_SHOW_FORM') AND lang='en';
UPDATE page_option_value SET option_value='false' WHERE page_option_name_id=(SELECT id FROM page_option_name WHERE name = 'REGISTRATION_SHOW_FORM') AND lang='es';