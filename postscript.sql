COMMENT ON SCHEMA
   agi_mopublic_pub_export
IS
   'Dieses Schema wird für den Export des MOpublic-SO verwendet. Fragen: stefan.ziegler@bd.so.ch'
;
GRANT USAGE ON SCHEMA agi_mopublic_pub_export TO public, ogc_server, sogis_service, gretl
;
GRANT SELECT ON ALL TABLES IN SCHEMA agi_mopublic_pub_export TO public, ogc_server, sogis_service
;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA agi_mopublic_pub_export TO gretl
;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA agi_mopublic_pub_export TO gretl
;
