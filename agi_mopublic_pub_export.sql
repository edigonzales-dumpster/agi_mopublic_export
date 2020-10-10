CREATE SCHEMA IF NOT EXISTS agi_mopublic_pub_export;
CREATE SEQUENCE agi_mopublic_pub_export.t_ili2db_seq;;
-- SO_AGI_MOpublic_20201009.MOpublic.Bodenbedeckung
CREATE TABLE agi_mopublic_pub_export.mopublic_bodenbedeckung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,egid integer NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
)
;
CREATE INDEX mopublic_bodenbedeckung_geometrie_idx ON agi_mopublic_pub_export.mopublic_bodenbedeckung USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_bodenbedeckung.art_txt IS 'Bodenbedeckungsart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_bodenbedeckung.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_bodenbedeckung.egid IS 'Eidgenössischer Gebäudeidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_bodenbedeckung.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_bodenbedeckung.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_bodenbedeckung.geometrie IS 'Geometrie';
-- SO_AGI_MOpublic_20201009.MOpublic.BodenbedeckungProj
CREATE TABLE agi_mopublic_pub_export.mopublic_bodenbedeckungproj (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,egid integer NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
)
;
CREATE INDEX mopublic_bodenbedeckngproj_geometrie_idx ON agi_mopublic_pub_export.mopublic_bodenbedeckungproj USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_bodenbedeckungproj.art_txt IS 'Bodenbedeckungsart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_bodenbedeckungproj.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_bodenbedeckungproj.egid IS 'Eidgenössischer Gebäudeidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_bodenbedeckungproj.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_bodenbedeckungproj.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_bodenbedeckungproj.geometrie IS 'Geometrie';
-- SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektFlaeche
CREATE TABLE agi_mopublic_pub_export.mopublic_einzelobjektflaeche (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,egid integer NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
)
;
CREATE INDEX mopublic_einzelobjektflche_geometrie_idx ON agi_mopublic_pub_export.mopublic_einzelobjektflaeche USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektflaeche.art_txt IS 'Einzelobjektart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektflaeche.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektflaeche.egid IS 'Eidgenössischer Gebäudeidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektflaeche.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektflaeche.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektflaeche.geometrie IS 'Geometrie';
-- SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektLinie
CREATE TABLE agi_mopublic_pub_export.mopublic_einzelobjektlinie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
)
;
CREATE INDEX mopublic_einzelobjektlinie_geometrie_idx ON agi_mopublic_pub_export.mopublic_einzelobjektlinie USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektlinie.art_txt IS 'Einzelobjektart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektlinie.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektlinie.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektlinie.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektlinie.geometrie IS 'Geometrie';
-- SO_AGI_MOpublic_20201009.MOpublic.Gemeindegrenze
CREATE TABLE agi_mopublic_pub_export.mopublic_gemeindegrenze (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,gemeindename varchar(100) NOT NULL
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_gemeindegrenze_geometrie_idx ON agi_mopublic_pub_export.mopublic_gemeindegrenze USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gemeindegrenze.gemeindename IS 'Name der Gemeinde';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gemeindegrenze.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gemeindegrenze.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gemeindegrenze.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gemeindegrenze.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20201009.MOpublic.GemeindegrenzeProj
CREATE TABLE agi_mopublic_pub_export.mopublic_gemeindegrenzeproj (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,gemeindename varchar(100) NOT NULL
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_gemeindegrenzproj_geometrie_idx ON agi_mopublic_pub_export.mopublic_gemeindegrenzeproj USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gemeindegrenzeproj.gemeindename IS 'Name der Gemeinde';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gemeindegrenzeproj.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gemeindegrenzeproj.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gemeindegrenzeproj.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gemeindegrenzeproj.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20201009.MOpublic.Rohrleitung
CREATE TABLE agi_mopublic_pub_export.mopublic_rohrleitung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,betreiber varchar(40) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_rohrleitung_geometrie_idx ON agi_mopublic_pub_export.mopublic_rohrleitung USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_rohrleitung.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_rohrleitung.art_txt IS 'Transportmedium (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_rohrleitung.betreiber IS 'Betreiber';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_rohrleitung.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_rohrleitung.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_rohrleitung.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20201009.MOpublic.Strassenachse
CREATE TABLE agi_mopublic_pub_export.mopublic_strassenachse (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(LINESTRING,2056) NOT NULL
  ,strassenname varchar(100) NULL
  ,ordnung integer NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_strassenachse_geometrie_idx ON agi_mopublic_pub_export.mopublic_strassenachse USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassenachse.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassenachse.strassenname IS 'Strassenname';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassenachse.ordnung IS 'Ordnung des Strassenstückes';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassenachse.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassenachse.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassenachse.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektPunkt
CREATE TABLE agi_mopublic_pub_export.mopublic_einzelobjektpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,symbolorientierung decimal(5,2) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,geometrie geometry(POINT,2056) NOT NULL
)
;
CREATE INDEX mopublic_einzelobjektpunkt_geometrie_idx ON agi_mopublic_pub_export.mopublic_einzelobjektpunkt USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektpunkt.art_txt IS 'Einzelobjektart (Txt-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektpunkt.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektpunkt.symbolorientierung IS 'Orientierung des Symbols';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektpunkt.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektpunkt.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_einzelobjektpunkt.geometrie IS 'Geometrie';
-- SO_AGI_MOpublic_20201009.MOpublic.Flurname
CREATE TABLE agi_mopublic_pub_export.mopublic_flurname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,flurname varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,gemeinde varchar(255) NOT NULL
)
;
CREATE INDEX mopublic_flurname_geometrie_idx ON agi_mopublic_pub_export.mopublic_flurname USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurname.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurname.flurname IS 'Flurname';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurname.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurname.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurname.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurname.gemeinde IS 'Name der Gemeinde';
-- SO_AGI_MOpublic_20201009.MOpublic.FlurnamePos
CREATE TABLE agi_mopublic_pub_export.mopublic_flurnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,flurname varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,gemeinde varchar(255) NOT NULL
)
;
CREATE INDEX mopublic_flurnamepos_pos_idx ON agi_mopublic_pub_export.mopublic_flurnamepos USING GIST ( pos );
COMMENT ON TABLE agi_mopublic_pub_export.mopublic_flurnamepos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurnamepos.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurnamepos.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurnamepos.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurnamepos.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurnamepos.flurname IS 'Flurname';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurnamepos.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurnamepos.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurnamepos.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_flurnamepos.gemeinde IS 'Name der Gemeinde';
-- SO_AGI_MOpublic_20201009.MOpublic.Gebaeudeadresse
CREATE TABLE agi_mopublic_pub_export.mopublic_gebaeudeadresse (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,lage geometry(POINT,2056) NOT NULL
  ,strassenname varchar(100) NULL
  ,hausnummer varchar(20) NULL
  ,egid integer NULL
  ,edid integer NULL
  ,plz integer NOT NULL
  ,ortschaft varchar(100) NOT NULL
  ,astatus varchar(20) NULL
  ,ist_offizielle_bezeichnung boolean NULL
  ,hoehenlage integer NULL
  ,gebaeudename varchar(100) NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_gebaeudeadresse_lage_idx ON agi_mopublic_pub_export.mopublic_gebaeudeadresse USING GIST ( lage );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.lage IS 'Lage des Gebäudeeingangs';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.strassenname IS 'Name der Strasse';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.hausnummer IS 'Hausnummer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.egid IS 'Eidgenössischer Gebäudeidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.edid IS 'Eidgenössischer Eingangsidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.plz IS 'Vierstellige Postleitzahl';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.ortschaft IS 'Ortschaftsname';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.astatus IS 'Status des Gebäudeinganges';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.ist_offizielle_bezeichnung IS 'Ist Adresse offiziell? ja/nein';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.hoehenlage IS 'Relative Lage des Gebäudeeinganges';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.gebaeudename IS 'Name des Gebäudes';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadresse.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadressePos
CREATE TABLE agi_mopublic_pub_export.mopublic_gebaeudeadressepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,pos geometry(POINT,2056) NULL
  ,orientierung decimal(5,2) NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,strassenname varchar(100) NULL
  ,hausnummer varchar(20) NULL
  ,egid integer NULL
  ,edid integer NULL
  ,plz integer NOT NULL
  ,ortschaft varchar(100) NOT NULL
  ,astatus varchar(20) NULL
  ,ist_offizielle_bezeichnung boolean NULL
  ,hoehenlage integer NULL
  ,gebaeudename varchar(100) NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_gebaeudeadresspos_pos_idx ON agi_mopublic_pub_export.mopublic_gebaeudeadressepos USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.pos IS 'Positionierungspunkt für Beschriftung der Hausnummer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.orientierung IS 'Orientierung des Beschriftungstextes';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.strassenname IS 'Name der Strasse';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.hausnummer IS 'Hausnummer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.egid IS 'Eidgenössischer Gebäudeidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.edid IS 'Eidgenössischer Eingangsidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.plz IS 'Vierstellige Postleitzahl';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.ortschaft IS 'Ortschaftsname';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.astatus IS 'Status des Gebäudeinganges';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.ist_offizielle_bezeichnung IS 'Ist Adresse offiziell? ja/nein';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.hoehenlage IS 'Relative Lage des Gebäudeeinganges';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.gebaeudename IS 'Name des Gebäudes';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gebaeudeadressepos.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20201009.MOpublic.Gelaendename
CREATE TABLE agi_mopublic_pub_export.mopublic_gelaendename (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,gelaendename varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,gemeinde varchar(255) NOT NULL
)
;
CREATE INDEX mopublic_gelaendename_pos_idx ON agi_mopublic_pub_export.mopublic_gelaendename USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gelaendename.gelaendename IS 'Geländename';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gelaendename.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gelaendename.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gelaendename.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gelaendename.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gelaendename.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gelaendename.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gelaendename.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_gelaendename.gemeinde IS 'Name der Gemeinde';
-- SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt
CREATE TABLE agi_mopublic_pub_export.mopublic_grenzpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(POINT,2056) NOT NULL
  ,lagegenauigkeit decimal(4,1) NOT NULL
  ,lagezuverlaessigkeit boolean NOT NULL
  ,punktzeichen_txt varchar(100) NOT NULL
  ,symbolorientierung decimal(5,2) NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,gueltigkeit varchar(255) NOT NULL
)
;
CREATE INDEX mopublic_grenzpunkt_geometrie_idx ON agi_mopublic_pub_export.mopublic_grenzpunkt USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grenzpunkt.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grenzpunkt.lagegenauigkeit IS 'Lagegenauigkeit';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grenzpunkt.lagezuverlaessigkeit IS 'Ist Lagebestimmung zuverlässig? ja/nein';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grenzpunkt.punktzeichen_txt IS 'Art des Punktzeichens (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grenzpunkt.symbolorientierung IS 'Symbolorientierung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grenzpunkt.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grenzpunkt.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grenzpunkt.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grenzpunkt.gueltigkeit IS 'Gueltigkeit';
-- SO_AGI_MOpublic_20201009.MOpublic.Grundstueck
CREATE TABLE agi_mopublic_pub_export.mopublic_grundstueck (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(15) NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,flaechenmass integer NOT NULL
  ,egrid varchar(14) NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,grundbuch varchar(255) NOT NULL
  ,gemeinde varchar(255) NOT NULL
)
;
CREATE INDEX mopublic_grundstueck_geometrie_idx ON agi_mopublic_pub_export.mopublic_grundstueck USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueck.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueck.nbident IS 'Nummerierungsbereichidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueck.nummer IS 'Grundbuchnummer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueck.art_txt IS 'Grundstücksart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueck.flaechenmass IS 'Fläche des Grundstückes in m2';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueck.egrid IS 'Eidgenössischer Grundstücksidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueck.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueck.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueck.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueck.grundbuch IS 'Name des Grundbuchs (= Grundbuchkreis)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueck.gemeinde IS 'Name der Gemeinde';
-- SO_AGI_MOpublic_20201009.MOpublic.GrundstueckPos
CREATE TABLE agi_mopublic_pub_export.mopublic_grundstueckpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(15) NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,flaechenmass integer NOT NULL
  ,egrid varchar(14) NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,grundbuch varchar(255) NOT NULL
  ,gemeinde varchar(255) NOT NULL
)
;
CREATE INDEX mopublic_grundstueckpos_pos_idx ON agi_mopublic_pub_export.mopublic_grundstueckpos USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.nbident IS 'Nummerierungsbereichidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.nummer IS 'Grundbuchnummer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.art_txt IS 'Grundstücksart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.flaechenmass IS 'Fläche des Grundstückes in m2';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.egrid IS 'Eidgenössischer Grundstücksidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.grundbuch IS 'Name des Grundbuchs (= Grundbuchkreis)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckpos.gemeinde IS 'Name der Gemeinde';
-- SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProj
CREATE TABLE agi_mopublic_pub_export.mopublic_grundstueckproj (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(15) NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,flaechenmass integer NOT NULL
  ,egrid varchar(14) NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,grundbuch varchar(255) NOT NULL
  ,gemeinde varchar(255) NOT NULL
)
;
CREATE INDEX mopublic_grundstueckproj_geometrie_idx ON agi_mopublic_pub_export.mopublic_grundstueckproj USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckproj.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckproj.nbident IS 'Nummerierungsbereichidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckproj.nummer IS 'Grundbuchnummer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckproj.art_txt IS 'Grundstücksart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckproj.flaechenmass IS 'Fläche des Grundstückes in m2';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckproj.egrid IS 'Eidgenössischer Grundstücksidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckproj.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckproj.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckproj.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckproj.grundbuch IS 'Name des Grundbuchs (= Grundbuchkreis)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckproj.gemeinde IS 'Name der Gemeinde';
-- SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjPos
CREATE TABLE agi_mopublic_pub_export.mopublic_grundstueckprojpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(15) NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,flaechenmass integer NOT NULL
  ,egrid varchar(14) NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,grundbuch varchar(255) NOT NULL
  ,gemeinde varchar(255) NOT NULL
)
;
CREATE INDEX mopublic_grundstueckprjpos_pos_idx ON agi_mopublic_pub_export.mopublic_grundstueckprojpos USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.nbident IS 'Nummerierungsbereichidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.nummer IS 'Grundbuchnummer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.art_txt IS 'Grundstücksart (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.flaechenmass IS 'Fläche des Grundstückes in m2';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.egrid IS 'Eidgenössischer Grundstücksidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.grundbuch IS 'Name des Grundbuchs (= Grundbuchkreis)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_grundstueckprojpos.gemeinde IS 'Name der Gemeinde';
-- SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos
CREATE TABLE agi_mopublic_pub_export.mopublic_objektnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,objektname varchar(100) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,herkunft varchar(255) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,astatus varchar(20) NOT NULL
)
;
CREATE INDEX mopublic_objektnamepos_pos_idx ON agi_mopublic_pub_export.mopublic_objektnamepos USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_objektnamepos.objektname IS 'Name des Objektes';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_objektnamepos.pos IS 'Position';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_objektnamepos.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_objektnamepos.hali IS 'Halignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_objektnamepos.vali IS 'Valignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_objektnamepos.art_txt IS 'Art des Objektnamens, aus Art BB/EO. (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_objektnamepos.herkunft IS 'Herkunft des Objektnames';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_objektnamepos.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_objektnamepos.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_objektnamepos.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_objektnamepos.astatus IS 'Status der Geometrie: projektiert/realisiert';
-- SO_AGI_MOpublic_20201009.MOpublic.Ortsname
CREATE TABLE agi_mopublic_pub_export.mopublic_ortsname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(POLYGON,2056) NOT NULL
  ,ortsname varchar(40) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_ortsname_geometrie_idx ON agi_mopublic_pub_export.mopublic_ortsname USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_ortsname.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_ortsname.ortsname IS 'Ortsname';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_ortsname.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_ortsname.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_ortsname.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20201009.MOpublic.OrtsnamePos
CREATE TABLE agi_mopublic_pub_export.mopublic_ortsnamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,ortsname varchar(40) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_ortsnamepos_pos_idx ON agi_mopublic_pub_export.mopublic_ortsnamepos USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_ortsnamepos.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_ortsnamepos.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_ortsnamepos.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_ortsnamepos.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_ortsnamepos.ortsname IS 'Ortsname';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_ortsnamepos.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_ortsnamepos.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_ortsnamepos.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20201009.MOpublic.StrassennamePos
CREATE TABLE agi_mopublic_pub_export.mopublic_strassennamepos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,strassenname varchar(100) NOT NULL
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_strassennamepos_pos_idx ON agi_mopublic_pub_export.mopublic_strassennamepos USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassennamepos.strassenname IS 'Strassenname';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassennamepos.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassennamepos.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassennamepos.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassennamepos.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassennamepos.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassennamepos.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_strassennamepos.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20201009.MOpublic.Fixpunkt
CREATE TABLE agi_mopublic_pub_export.mopublic_fixpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(POINT,2056) NOT NULL
  ,typ_txt varchar(100) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NULL
  ,hoehe decimal(7,3) NULL
  ,bfs_nr integer NOT NULL
  ,lagegenauigkeit decimal(4,1) NOT NULL
  ,hoehengenauigkeit decimal(4,1) NULL
  ,punktzeichen_txt varchar(100) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,koordinate varchar(40) NOT NULL
)
;
CREATE INDEX mopublic_fixpunkt_geometrie_idx ON agi_mopublic_pub_export.mopublic_fixpunkt USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunkt.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunkt.typ_txt IS 'Fixpunkttyp (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunkt.nbident IS 'Nummerierungsbereichidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunkt.nummer IS 'Bezeichnung des Fixpunktes';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunkt.hoehe IS 'Höhe';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunkt.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunkt.lagegenauigkeit IS 'Lagegenauigkeit';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunkt.hoehengenauigkeit IS 'Höhengenauigkeit';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunkt.punktzeichen_txt IS 'Punktzeichen (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunkt.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunkt.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunkt.koordinate IS 'Koordinate (Text-Repräsentation)';
-- SO_AGI_MOpublic_20201009.MOpublic.FixpunktPos
CREATE TABLE agi_mopublic_pub_export.mopublic_fixpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,pos geometry(POINT,2056) NOT NULL
  ,orientierung decimal(5,2) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,typ_txt varchar(100) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NULL
  ,hoehe decimal(7,3) NULL
  ,bfs_nr integer NOT NULL
  ,lagegenauigkeit decimal(4,1) NOT NULL
  ,hoehengenauigkeit decimal(4,1) NULL
  ,punktzeichen_txt varchar(100) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,koordinate varchar(40) NOT NULL
)
;
CREATE INDEX mopublic_fixpunktpos_pos_idx ON agi_mopublic_pub_export.mopublic_fixpunktpos USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.orientierung IS 'Textorientierung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.typ_txt IS 'Fixpunkttyp (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.nbident IS 'Nummerierungsbereichidentifikator';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.nummer IS 'Bezeichnung des Fixpunktes';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.hoehe IS 'Höhe';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.lagegenauigkeit IS 'Lagegenauigkeit';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.hoehengenauigkeit IS 'Höhengenauigkeit';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.punktzeichen_txt IS 'Punktzeichen (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.nachfuehrung IS 'Datum der Nachführung durch Geometer';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_fixpunktpos.koordinate IS 'Koordinate (Text-Repräsentation)';
-- SO_AGI_MOpublic_20201009.MOpublic.Hoheitsgrenzpunkt
CREATE TABLE agi_mopublic_pub_export.mopublic_hoheitsgrenzpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,geometrie geometry(POINT,2056) NOT NULL
  ,nummer varchar(20) NULL
  ,punktzeichen_txt varchar(100) NOT NULL
  ,schoener_stein boolean NOT NULL
  ,lagegenauigkeit decimal(4,1) NOT NULL
  ,lagezuverlaessigkeit boolean NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_hoheitsgrenzpunkt_geometrie_idx ON agi_mopublic_pub_export.mopublic_hoheitsgrenzpunkt USING GIST ( geometrie );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunkt.geometrie IS 'Geometrie';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunkt.nummer IS 'Nummer des Hoheitsgrenzpunktes';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunkt.punktzeichen_txt IS 'Punktzeichen (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunkt.schoener_stein IS 'Schöner Stein? ja/nein';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunkt.lagegenauigkeit IS 'Lagegenauigkeit';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunkt.lagezuverlaessigkeit IS 'Ist Lagebestimmung zuverlässig? ja/nein';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunkt.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunkt.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunkt.nachfuehrung IS 'Datum der Nachführung durch Geometer';
-- SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktPos
CREATE TABLE agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('agi_mopublic_pub_export.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,pos geometry(POINT,2056) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,symbolorientierung decimal(5,2) NULL
  ,nummer varchar(20) NULL
  ,punktzeichen_txt varchar(100) NOT NULL
  ,schoener_stein boolean NOT NULL
  ,lagegenauigkeit decimal(4,1) NOT NULL
  ,lagezuverlaessigkeit boolean NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
CREATE INDEX mopublic_hohetsgrnzpnktpos_pos_idx ON agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos USING GIST ( pos );
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos.pos IS 'Positionierungspunkt für Beschriftung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos.hali IS 'HAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos.vali IS 'VAlignment';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos.symbolorientierung IS 'Symbolorientierung';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos.nummer IS 'Nummer des Hoheitsgrenzpunktes';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos.punktzeichen_txt IS 'Punktzeichen (Text-Repräsentation)';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos.schoener_stein IS 'Schöner Stein? ja/nein';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos.lagegenauigkeit IS 'Lagegenauigkeit';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos.lagezuverlaessigkeit IS 'Ist Lagebestimmung zuverlässig? ja/nein';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos.importdatum IS 'Importdatum';
COMMENT ON COLUMN agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos.nachfuehrung IS 'Datum der Nachführung durch Geometer';
CREATE TABLE agi_mopublic_pub_export.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
  ,domains varchar(1024) NULL
)
;
CREATE INDEX T_ILI2DB_BASKET_dataset_idx ON agi_mopublic_pub_export.t_ili2db_basket ( dataset );
CREATE TABLE agi_mopublic_pub_export.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE agi_mopublic_pub_export.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(1024) NULL
)
;
CREATE TABLE agi_mopublic_pub_export.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE agi_mopublic_pub_export.T_ILI2DB_MODEL (
  filename varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (modelName,iliversion)
)
;
CREATE TABLE agi_mopublic_pub_export.valignment (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE agi_mopublic_pub_export.halignment (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE agi_mopublic_pub_export.mopublic_objektnamepos_herkunft (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE agi_mopublic_pub_export.mopublic_grenzpunkt_gueltigkeit (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
  ,description varchar(1024) NULL
)
;
CREATE TABLE agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,ColOwner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (ColOwner,SqlName)
)
;
CREATE TABLE agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columnname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE agi_mopublic_pub_export.T_ILI2DB_META_ATTRS (
  ilielement varchar(255) NOT NULL
  ,attr_name varchar(1024) NOT NULL
  ,attr_value varchar(1024) NOT NULL
)
;
ALTER TABLE agi_mopublic_pub_export.mopublic_bodenbedeckung ADD CONSTRAINT mopublic_bodenbedeckung_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_bodenbedeckung ADD CONSTRAINT mopublic_bodenbedeckung_egid_check CHECK( egid BETWEEN 0 AND 999999999);
ALTER TABLE agi_mopublic_pub_export.mopublic_bodenbedeckungproj ADD CONSTRAINT mopublic_bodenbedckngproj_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_bodenbedeckungproj ADD CONSTRAINT mopublic_bodenbedckngproj_egid_check CHECK( egid BETWEEN 0 AND 999999999);
ALTER TABLE agi_mopublic_pub_export.mopublic_einzelobjektflaeche ADD CONSTRAINT mopublic_einzelobjktflche_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_einzelobjektflaeche ADD CONSTRAINT mopublic_einzelobjktflche_egid_check CHECK( egid BETWEEN 0 AND 999999999);
ALTER TABLE agi_mopublic_pub_export.mopublic_einzelobjektlinie ADD CONSTRAINT mopublic_einzelobjektlnie_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_gemeindegrenze ADD CONSTRAINT mopublic_gemeindegrenze_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_gemeindegrenzeproj ADD CONSTRAINT mopublic_gemeindegrnzproj_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_rohrleitung ADD CONSTRAINT mopublic_rohrleitung_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_strassenachse ADD CONSTRAINT mopublic_strassenachse_ordnung_check CHECK( ordnung BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_strassenachse ADD CONSTRAINT mopublic_strassenachse_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_einzelobjektpunkt ADD CONSTRAINT mopublic_einzelobjektpnkt_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_einzelobjektpunkt ADD CONSTRAINT mopublic_einzelobjektpnkt_symbolorientierung_check CHECK( symbolorientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_flurname ADD CONSTRAINT mopublic_flurname_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_flurnamepos ADD CONSTRAINT mopublic_flurnamepos_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_flurnamepos ADD CONSTRAINT mopublic_flurnamepos_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_gebaeudeadresse ADD CONSTRAINT mopublic_gebaeudeadresse_egid_check CHECK( egid BETWEEN 0 AND 999999999);
ALTER TABLE agi_mopublic_pub_export.mopublic_gebaeudeadresse ADD CONSTRAINT mopublic_gebaeudeadresse_edid_check CHECK( edid BETWEEN 0 AND 99);
ALTER TABLE agi_mopublic_pub_export.mopublic_gebaeudeadresse ADD CONSTRAINT mopublic_gebaeudeadresse_plz_check CHECK( plz BETWEEN 0 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_gebaeudeadresse ADD CONSTRAINT mopublic_gebaeudeadresse_hoehenlage_check CHECK( hoehenlage BETWEEN -99 AND 99);
ALTER TABLE agi_mopublic_pub_export.mopublic_gebaeudeadresse ADD CONSTRAINT mopublic_gebaeudeadresse_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_gebaeudeadressepos ADD CONSTRAINT mopublic_gebaeudeadrsspos_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_gebaeudeadressepos ADD CONSTRAINT mopublic_gebaeudeadrsspos_egid_check CHECK( egid BETWEEN 0 AND 999999999);
ALTER TABLE agi_mopublic_pub_export.mopublic_gebaeudeadressepos ADD CONSTRAINT mopublic_gebaeudeadrsspos_edid_check CHECK( edid BETWEEN 0 AND 99);
ALTER TABLE agi_mopublic_pub_export.mopublic_gebaeudeadressepos ADD CONSTRAINT mopublic_gebaeudeadrsspos_plz_check CHECK( plz BETWEEN 0 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_gebaeudeadressepos ADD CONSTRAINT mopublic_gebaeudeadrsspos_hoehenlage_check CHECK( hoehenlage BETWEEN -99 AND 99);
ALTER TABLE agi_mopublic_pub_export.mopublic_gebaeudeadressepos ADD CONSTRAINT mopublic_gebaeudeadrsspos_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_gelaendename ADD CONSTRAINT mopublic_gelaendename_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_gelaendename ADD CONSTRAINT mopublic_gelaendename_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_grenzpunkt ADD CONSTRAINT mopublic_grenzpunkt_lagegenauigkeit_check CHECK( lagegenauigkeit BETWEEN 0.0 AND 700.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_grenzpunkt ADD CONSTRAINT mopublic_grenzpunkt_symbolorientierung_check CHECK( symbolorientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_grenzpunkt ADD CONSTRAINT mopublic_grenzpunkt_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_grundstueck ADD CONSTRAINT mopublic_grundstueck_flaechenmass_check CHECK( flaechenmass BETWEEN 0 AND 2147483647);
ALTER TABLE agi_mopublic_pub_export.mopublic_grundstueck ADD CONSTRAINT mopublic_grundstueck_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_grundstueckpos ADD CONSTRAINT mopublic_grundstueckpos_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_grundstueckpos ADD CONSTRAINT mopublic_grundstueckpos_flaechenmass_check CHECK( flaechenmass BETWEEN 0 AND 2147483647);
ALTER TABLE agi_mopublic_pub_export.mopublic_grundstueckpos ADD CONSTRAINT mopublic_grundstueckpos_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_grundstueckproj ADD CONSTRAINT mopublic_grundstueckproj_flaechenmass_check CHECK( flaechenmass BETWEEN 0 AND 2147483647);
ALTER TABLE agi_mopublic_pub_export.mopublic_grundstueckproj ADD CONSTRAINT mopublic_grundstueckproj_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_grundstueckprojpos ADD CONSTRAINT mopublic_grundstuckprjpos_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_grundstueckprojpos ADD CONSTRAINT mopublic_grundstuckprjpos_flaechenmass_check CHECK( flaechenmass BETWEEN 0 AND 2147483647);
ALTER TABLE agi_mopublic_pub_export.mopublic_grundstueckprojpos ADD CONSTRAINT mopublic_grundstuckprjpos_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_objektnamepos ADD CONSTRAINT mopublic_objektnamepos_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_objektnamepos ADD CONSTRAINT mopublic_objektnamepos_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_ortsname ADD CONSTRAINT mopublic_ortsname_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_ortsnamepos ADD CONSTRAINT mopublic_ortsnamepos_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_ortsnamepos ADD CONSTRAINT mopublic_ortsnamepos_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_strassennamepos ADD CONSTRAINT mopublic_strassennamepos_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_strassennamepos ADD CONSTRAINT mopublic_strassennamepos_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_fixpunkt ADD CONSTRAINT mopublic_fixpunkt_hoehe_check CHECK( hoehe BETWEEN -200.0 AND 1600.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_fixpunkt ADD CONSTRAINT mopublic_fixpunkt_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_fixpunkt ADD CONSTRAINT mopublic_fixpunkt_lagegenauigkeit_check CHECK( lagegenauigkeit BETWEEN 0.0 AND 700.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_fixpunkt ADD CONSTRAINT mopublic_fixpunkt_hoehengenauigkeit_check CHECK( hoehengenauigkeit BETWEEN 0.0 AND 700.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_fixpunktpos ADD CONSTRAINT mopublic_fixpunktpos_orientierung_check CHECK( orientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_fixpunktpos ADD CONSTRAINT mopublic_fixpunktpos_hoehe_check CHECK( hoehe BETWEEN -200.0 AND 1600.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_fixpunktpos ADD CONSTRAINT mopublic_fixpunktpos_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_fixpunktpos ADD CONSTRAINT mopublic_fixpunktpos_lagegenauigkeit_check CHECK( lagegenauigkeit BETWEEN 0.0 AND 700.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_fixpunktpos ADD CONSTRAINT mopublic_fixpunktpos_hoehengenauigkeit_check CHECK( hoehengenauigkeit BETWEEN 0.0 AND 700.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_hoheitsgrenzpunkt ADD CONSTRAINT mopublic_hoheitsgrenzpnkt_lagegenauigkeit_check CHECK( lagegenauigkeit BETWEEN 0.0 AND 700.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_hoheitsgrenzpunkt ADD CONSTRAINT mopublic_hoheitsgrenzpnkt_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos ADD CONSTRAINT mopublic_hohtsgrnzpnktpos_symbolorientierung_check CHECK( symbolorientierung BETWEEN -270.0 AND 90.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos ADD CONSTRAINT mopublic_hohtsgrnzpnktpos_lagegenauigkeit_check CHECK( lagegenauigkeit BETWEEN 0.0 AND 700.0);
ALTER TABLE agi_mopublic_pub_export.mopublic_hoheitsgrenzpunktpos ADD CONSTRAINT mopublic_hohtsgrnzpnktpos_bfs_nr_check CHECK( bfs_nr BETWEEN 1 AND 9999);
ALTER TABLE agi_mopublic_pub_export.T_ILI2DB_BASKET ADD CONSTRAINT T_ILI2DB_BASKET_dataset_fkey FOREIGN KEY ( dataset ) REFERENCES agi_mopublic_pub_export.T_ILI2DB_DATASET DEFERRABLE INITIALLY DEFERRED;
CREATE UNIQUE INDEX T_ILI2DB_DATASET_datasetName_key ON agi_mopublic_pub_export.T_ILI2DB_DATASET (datasetName)
;
CREATE UNIQUE INDEX T_ILI2DB_MODEL_modelName_iliversion_key ON agi_mopublic_pub_export.T_ILI2DB_MODEL (modelName,iliversion)
;
CREATE UNIQUE INDEX T_ILI2DB_ATTRNAME_ColOwner_SqlName_key ON agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (ColOwner,SqlName)
;
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProj','mopublic_grundstueckproj');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Rohrleitung','mopublic_rohrleitung');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('INTERLIS.VALIGNMENT','valignment');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grundstueck','mopublic_grundstueck');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase','mopublic_flurnamebase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('INTERLIS.HALIGNMENT','halignment');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase','mopublic_gebaeudeadressebase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt.Gueltigkeit','mopublic_grenzpunkt_gueltigkeit');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt','mopublic_grenzpunkt');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase','mopublic_hoheitsgrenzpunktbase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Flurname','mopublic_flurname');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckPos','mopublic_grundstueckpos');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnameBase','mopublic_ortsnamebase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnamePos','mopublic_flurnamepos');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gebaeudeadresse','mopublic_gebaeudeadresse');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnamePos','mopublic_ortsnamepos');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos','mopublic_objektnamepos');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gelaendename','mopublic_gelaendename');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GemeindegrenzeProj','mopublic_gemeindegrenzeproj');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Hoheitsgrenzpunkt','mopublic_hoheitsgrenzpunkt');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktPos','mopublic_hoheitsgrenzpunktpos');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Bodenbedeckung','mopublic_bodenbedeckung');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Strassenachse','mopublic_strassenachse');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Ortsname','mopublic_ortsname');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.StrassennamePos','mopublic_strassennamepos');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase','mopublic_grundstueckprojbase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektPunkt','mopublic_einzelobjektpunkt');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjPos','mopublic_grundstueckprojpos');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktPos','mopublic_fixpunktpos');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Fixpunkt','mopublic_fixpunkt');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos.Herkunft','mopublic_objektnamepos_herkunft');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase','mopublic_fixpunktbase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektLinie','mopublic_einzelobjektlinie');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.BodenbedeckungProj','mopublic_bodenbedeckungproj');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadressePos','mopublic_gebaeudeadressepos');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase','mopublic_grundstueckbase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gemeindegrenze','mopublic_gemeindegrenze');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_CLASSNAME (IliName,SqlName) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektFlaeche','mopublic_einzelobjektflaeche');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Strassenachse.Importdatum','importdatum','mopublic_strassenachse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.StrassennamePos.Importdatum','importdatum','mopublic_strassennamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnamePos.VAli','vali','mopublic_flurnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Nachfuehrung','nachfuehrung','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gemeindegrenze.BFS_Nr','bfs_nr','mopublic_gemeindegrenze',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektPunkt.Importdatum','importdatum','mopublic_einzelobjektpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Importdatum','importdatum','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Gemeinde','gemeinde','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos.Art_txt','art_txt','mopublic_objektnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GemeindegrenzeProj.Gemeindename','gemeindename','mopublic_gemeindegrenzeproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjPos.Pos','pos','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Strassenname','strassenname','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase.Nachfuehrung','nachfuehrung','mopublic_flurnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Grundbuch','grundbuch','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektPunkt.BFS_Nr','bfs_nr','mopublic_einzelobjektpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Strassenname','strassenname','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektPunkt.Art_txt','art_txt','mopublic_einzelobjektpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektLinie.Art_txt','art_txt','mopublic_einzelobjektlinie',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos.Importdatum','importdatum','mopublic_objektnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.NBIdent','nbident','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gelaendename.HAli','hali','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Nummer','nummer','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Rohrleitung.Geometrie','geometrie','mopublic_rohrleitung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Gebaeudename','gebaeudename','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnameBase.Importdatum','importdatum','mopublic_ortsnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Rohrleitung.Art_txt','art_txt','mopublic_rohrleitung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Nachfuehrung','nachfuehrung','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos.Orientierung','orientierung','mopublic_objektnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektLinie.Importdatum','importdatum','mopublic_einzelobjektlinie',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Grundbuch','grundbuch','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GemeindegrenzeProj.Nachfuehrung','nachfuehrung','mopublic_gemeindegrenzeproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektFlaeche.EGID','egid','mopublic_einzelobjektflaeche',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktPos.Orientierung','orientierung','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Gebaeudename','gebaeudename','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektFlaeche.Importdatum','importdatum','mopublic_einzelobjektflaeche',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.EGRID','egrid','mopublic_grundstueckproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Strassenachse.Ordnung','ordnung','mopublic_strassenachse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnamePos.VAli','vali','mopublic_ortsnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Hoehengenauigkeit','hoehengenauigkeit','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Bodenbedeckung.Importdatum','importdatum','mopublic_bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.EGRID','egrid','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnameBase.Ortsname','ortsname','mopublic_ortsnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Nachfuehrung','nachfuehrung','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.NBIdent','nbident','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.NBIdent','nbident','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.PLZ','plz','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.NBIdent','nbident','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Nachfuehrung','nachfuehrung','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.EGRID','egrid','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos.BFS_Nr','bfs_nr','mopublic_objektnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.StrassennamePos.Pos','pos','mopublic_strassennamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Bodenbedeckung.Nachfuehrung','nachfuehrung','mopublic_bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.StrassennamePos.Strassenname','strassenname','mopublic_strassennamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Hausnummer','hausnummer','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase.Nachfuehrung','nachfuehrung','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.BFS_Nr','bfs_nr','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.Importdatum','importdatum','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Rohrleitung.BFS_Nr','bfs_nr','mopublic_rohrleitung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Status','astatus','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Importdatum','importdatum','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Rohrleitung.Importdatum','importdatum','mopublic_rohrleitung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Bodenbedeckung.Art_txt','art_txt','mopublic_bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GemeindegrenzeProj.BFS_Nr','bfs_nr','mopublic_gemeindegrenzeproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Importdatum','importdatum','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Hoehengenauigkeit','hoehengenauigkeit','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Importdatum','importdatum','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.PLZ','plz','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.BodenbedeckungProj.BFS_Nr','bfs_nr','mopublic_bodenbedeckungproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gemeindegrenze.Gemeindename','gemeindename','mopublic_gemeindegrenze',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.BFS_Nr','bfs_nr','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckPos.HAli','hali','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.BFS_Nr','bfs_nr','mopublic_grundstueckproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.BodenbedeckungProj.Importdatum','importdatum','mopublic_bodenbedeckungproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.BodenbedeckungProj.Geometrie','geometrie','mopublic_bodenbedeckungproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Gemeinde','gemeinde','mopublic_grundstueckproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.Nachfuehrung','nachfuehrung','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.NBIdent','nbident','mopublic_grundstueckproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.BFS_Nr','bfs_nr','mopublic_hoheitsgrenzpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.Nachfuehrung','nachfuehrung','mopublic_hoheitsgrenzpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektPunkt.Nachfuehrung','nachfuehrung','mopublic_einzelobjektpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadressePos.Pos','pos','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Art_txt','art_txt','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Nachfuehrung','nachfuehrung','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektPunkt.Geometrie','geometrie','mopublic_einzelobjektpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Ortschaft','ortschaft','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektLinie.Geometrie','geometrie','mopublic_einzelobjektlinie',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnameBase.Importdatum','importdatum','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.Lagegenauigkeit','lagegenauigkeit','mopublic_hoheitsgrenzpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektPunkt.Symbolorientierung','symbolorientierung','mopublic_einzelobjektpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Ortschaft','ortschaft','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt.Lagezuverlaessigkeit','lagezuverlaessigkeit','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos.Pos','pos','mopublic_objektnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase.Gemeinde','gemeinde','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjPos.VAli','vali','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Importdatum','importdatum','mopublic_grundstueckproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadressePos.Orientierung','orientierung','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktPos.VAli','vali','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Nummer','nummer','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.StrassennamePos.VAli','vali','mopublic_strassennamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Nummer','nummer','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.Lagegenauigkeit','lagegenauigkeit','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Fixpunkt.Geometrie','geometrie','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnamePos.Pos','pos','mopublic_flurnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Art_txt','art_txt','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Lagegenauigkeit','lagegenauigkeit','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Hausnummer','hausnummer','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.EGID','egid','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GemeindegrenzeProj.Geometrie','geometrie','mopublic_gemeindegrenzeproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gelaendename.Importdatum','importdatum','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Art_txt','art_txt','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Flaechenmass','flaechenmass','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadressePos.HAli','hali','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grundstueck.Geometrie','geometrie','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Hoehe','hoehe','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Punktzeichen_txt','punktzeichen_txt','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase.Flurname','flurname','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Koordinate','koordinate','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Strassenachse.BFS_Nr','bfs_nr','mopublic_strassenachse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Rohrleitung.Betreiber','betreiber','mopublic_rohrleitung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gelaendename.Orientierung','orientierung','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.BodenbedeckungProj.Art_txt','art_txt','mopublic_bodenbedeckungproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Nachfuehrung','nachfuehrung','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Nachfuehrung','nachfuehrung','mopublic_grundstueckproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Flurname.Geometrie','geometrie','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos.Status','astatus','mopublic_objektnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Strassenachse.Nachfuehrung','nachfuehrung','mopublic_strassenachse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt.Lagegenauigkeit','lagegenauigkeit','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Bodenbedeckung.Geometrie','geometrie','mopublic_bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektFlaeche.BFS_Nr','bfs_nr','mopublic_einzelobjektflaeche',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Typ_txt','typ_txt','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.BFS_Nr','bfs_nr','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.BodenbedeckungProj.Nachfuehrung','nachfuehrung','mopublic_bodenbedeckungproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.StrassennamePos.BFS_Nr','bfs_nr','mopublic_strassennamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Koordinate','koordinate','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.EGID','egid','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gelaendename.VAli','vali','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Ortsname.Geometrie','geometrie','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProj.Geometrie','geometrie','mopublic_grundstueckproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnameBase.BFS_Nr','bfs_nr','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase.Importdatum','importdatum','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.StrassennamePos.HAli','hali','mopublic_strassennamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjPos.Orientierung','orientierung','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase.Gemeinde','gemeinde','mopublic_flurnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Flaechenmass','flaechenmass','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Punktzeichen_txt','punktzeichen_txt','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjPos.HAli','hali','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.BFS_Nr','bfs_nr','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektLinie.Nachfuehrung','nachfuehrung','mopublic_einzelobjektlinie',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektFlaeche.Nachfuehrung','nachfuehrung','mopublic_einzelobjektflaeche',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase.Flurname','flurname','mopublic_flurnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckPos.Orientierung','orientierung','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.StrassennamePos.Orientierung','orientierung','mopublic_strassennamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Importdatum','importdatum','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt.Importdatum','importdatum','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt.Nachfuehrung','nachfuehrung','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektFlaeche.Geometrie','geometrie','mopublic_einzelobjektflaeche',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gelaendename.Pos','pos','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt.Symbolorientierung','symbolorientierung','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnameBase.Nachfuehrung','nachfuehrung','mopublic_ortsnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Bodenbedeckung.BFS_Nr','bfs_nr','mopublic_bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktPos.HAli','hali','mopublic_hoheitsgrenzpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Rohrleitung.Nachfuehrung','nachfuehrung','mopublic_rohrleitung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gebaeudeadresse.Lage','lage','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt.Geometrie','geometrie','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnameBase.Ortsname','ortsname','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckPos.Pos','pos','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Importdatum','importdatum','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.Importdatum','importdatum','mopublic_hoheitsgrenzpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadressePos.VAli','vali','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnamePos.Pos','pos','mopublic_ortsnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gemeindegrenze.Nachfuehrung','nachfuehrung','mopublic_gemeindegrenze',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos.Herkunft','herkunft','mopublic_objektnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Hoheitsgrenzpunkt.Geometrie','geometrie','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.Punktzeichen_txt','punktzeichen_txt','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektLinie.BFS_Nr','bfs_nr','mopublic_einzelobjektlinie',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Nummer','nummer','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.Lagezuverlaessigkeit','lagezuverlaessigkeit','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnameBase.BFS_Nr','bfs_nr','mopublic_ortsnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Bodenbedeckung.EGID','egid','mopublic_bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Strassenachse.Strassenname','strassenname','mopublic_strassenachse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktPos.HAli','hali','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Grundbuch','grundbuch','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnamePos.HAli','hali','mopublic_flurnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Flaechenmass','flaechenmass','mopublic_grundstueckproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos.Nachfuehrung','nachfuehrung','mopublic_objektnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Importdatum','importdatum','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Hoehenlage','hoehenlage','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gemeindegrenze.Importdatum','importdatum','mopublic_gemeindegrenze',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnamePos.Orientierung','orientierung','mopublic_flurnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.NBIdent','nbident','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktPos.Pos','pos','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.ist_offizielle_bezeichnung','ist_offizielle_bezeichnung','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gemeindegrenze.Geometrie','geometrie','mopublic_gemeindegrenze',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.EDID','edid','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnamePos.HAli','hali','mopublic_ortsnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gelaendename.Nachfuehrung','nachfuehrung','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktPos.VAli','vali','mopublic_hoheitsgrenzpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Hoehe','hoehe','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos.HAli','hali','mopublic_objektnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Art_txt','art_txt','mopublic_grundstueckproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.BFS_Nr','bfs_nr','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.schoener_Stein','schoener_stein','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.schoener_Stein','schoener_stein','mopublic_hoheitsgrenzpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktPos.Pos','pos','mopublic_hoheitsgrenzpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Flaechenmass','flaechenmass','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktPos.Symbolorientierung','symbolorientierung','mopublic_hoheitsgrenzpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.Nummer','nummer','mopublic_hoheitsgrenzpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Nummer','nummer','mopublic_grundstueckproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.Punktzeichen_txt','punktzeichen_txt','mopublic_hoheitsgrenzpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Gemeinde','gemeinde','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnameBase.Nachfuehrung','nachfuehrung','mopublic_ortsname',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt.Gueltigkeit','gueltigkeit','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Nachfuehrung','nachfuehrung','mopublic_grundstueckprojpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.BodenbedeckungProj.EGID','egid','mopublic_bodenbedeckungproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos.Objektname','objektname','mopublic_objektnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektFlaeche.Art_txt','art_txt','mopublic_einzelobjektflaeche',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos.VAli','vali','mopublic_objektnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase.Grundbuch','grundbuch','mopublic_grundstueckproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Hoehenlage','hoehenlage','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt.BFS_Nr','bfs_nr','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckPos.VAli','vali','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.ist_offizielle_bezeichnung','ist_offizielle_bezeichnung','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.BFS_Nr','bfs_nr','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Nummer','nummer','mopublic_fixpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.Lagezuverlaessigkeit','lagezuverlaessigkeit','mopublic_hoheitsgrenzpunktpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gelaendename.Gelaendename','gelaendename','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.Status','astatus','mopublic_gebaeudeadresse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase.BFS_Nr','bfs_nr','mopublic_flurnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.StrassennamePos.Nachfuehrung','nachfuehrung','mopublic_strassennamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gelaendename.BFS_Nr','bfs_nr','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase.BFS_Nr','bfs_nr','mopublic_flurname',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase.Nummer','nummer','mopublic_hoheitsgrenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.BFS_Nr','bfs_nr','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.EGRID','egrid','mopublic_grundstueckpos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Strassenachse.Geometrie','geometrie','mopublic_strassenachse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gelaendename.Gemeinde','gemeinde','mopublic_gelaendename',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnamePos.Orientierung','orientierung','mopublic_ortsnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase.EDID','edid','mopublic_gebaeudeadressepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Typ_txt','typ_txt','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase.Importdatum','importdatum','mopublic_flurnamepos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt.Punktzeichen_txt','punktzeichen_txt','mopublic_grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.BFS_Nr','bfs_nr','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase.Lagegenauigkeit','lagegenauigkeit','mopublic_fixpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase.Gemeinde','gemeinde','mopublic_grundstueck',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_ATTRNAME (IliName,SqlName,ColOwner,Target) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GemeindegrenzeProj.Importdatum','importdatum','mopublic_gemeindegrenzeproj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProj','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Rohrleitung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grundstueck','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Flurname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnameBase','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gebaeudeadresse','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gelaendename','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GemeindegrenzeProj','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Hoheitsgrenzpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Bodenbedeckung','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Strassenachse','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Ortsname','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.StrassennamePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektPunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktPos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Fixpunkt','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektLinie','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.BodenbedeckungProj','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadressePos','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase','ch.ehi.ili2db.inheritance','subClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gemeindegrenze','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TRAFO (iliname,tag,setting) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektFlaeche','ch.ehi.ili2db.inheritance','newClass');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.StrassennamePos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.BodenbedeckungProj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktPos','SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.ObjektnamePos',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktPos','SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadressePos','SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnameBase',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektLinie',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Flurname','SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckPos','SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Hoheitsgrenzpunkt','SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Bodenbedeckung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GemeindegrenzeProj',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grundstueck','SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Fixpunkt','SO_AGI_MOpublic_20201009.MOpublic.FixpunktBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektFlaeche',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.EinzelobjektPunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Grenzpunkt',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckBase',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjPos','SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gemeindegrenze',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Rohrleitung',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Ortsname','SO_AGI_MOpublic_20201009.MOpublic.OrtsnameBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.FlurnamePos','SO_AGI_MOpublic_20201009.MOpublic.FlurnameBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.OrtsnamePos','SO_AGI_MOpublic_20201009.MOpublic.OrtsnameBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Strassenachse',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProj','SO_AGI_MOpublic_20201009.MOpublic.GrundstueckProjBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gebaeudeadresse','SO_AGI_MOpublic_20201009.MOpublic.GebaeudeadresseBase');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.HoheitsgrenzpunktBase',NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_INHERITANCE (thisClass,baseClass) VALUES ('SO_AGI_MOpublic_20201009.MOpublic.Gelaendename',NULL);
INSERT INTO agi_mopublic_pub_export.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (0,'Top',0,'Top',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (1,'Cap',1,'Cap',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (2,'Half',2,'Half',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (3,'Base',3,'Base',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.valignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (4,'Bottom',4,'Bottom',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.halignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (0,'Left',0,'Left',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.halignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (1,'Center',1,'Center',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.halignment (seq,iliCode,itfCode,dispName,inactive,description) VALUES (2,'Right',2,'Right',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.mopublic_objektnamepos_herkunft (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'EO_Punkt',0,'EO Punkt',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.mopublic_objektnamepos_herkunft (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'EO_Linie',1,'EO Linie',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.mopublic_objektnamepos_herkunft (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'EO_Flaeche',2,'EO Flaeche',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.mopublic_objektnamepos_herkunft (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'BB',3,'BB',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.mopublic_grenzpunkt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'projektiert',0,'projektiert',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.mopublic_grenzpunkt_gueltigkeit (seq,iliCode,itfCode,dispName,inactive,description) VALUES (NULL,'gueltig',1,'gueltig',FALSE,NULL);
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadresse',NULL,'lage','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'hoehengenauigkeit','ch.ehi.ili2db.unit','cm');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassennamepos',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckungproj',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckungproj',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckungproj',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckungproj',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckungproj',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckungproj',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckungproj',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsname',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_bodenbedeckung',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckprojpos',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenze',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenzeproj',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenzeproj',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenzeproj',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenzeproj',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenzeproj',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenzeproj',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gemeindegrenzeproj',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunktpos',NULL,'hoehe','ch.ehi.ili2db.unit','M');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunktpos',NULL,'lagegenauigkeit','ch.ehi.ili2db.unit','cm');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunktpos',NULL,'lagegenauigkeit','ch.ehi.ili2db.unit','cm');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektflaeche',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektflaeche',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektflaeche',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektflaeche',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektflaeche',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunktpos',NULL,'symbolorientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunktpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektpunkt',NULL,'symbolorientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurname',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunktpos',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueck',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_objektnamepos',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'lagegenauigkeit','ch.ehi.ili2db.unit','cm');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunktpos',NULL,'hoehengenauigkeit','ch.ehi.ili2db.unit','cm');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsnamepos',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurnamepos',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassennamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassennamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassennamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassennamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassennamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassennamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassennamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'lagegenauigkeit','ch.ehi.ili2db.unit','cm');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'hoehe','ch.ehi.ili2db.unit','M');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'lagegenauigkeit','ch.ehi.ili2db.unit','cm');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_rohrleitung',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_fixpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grenzpunkt',NULL,'symbolorientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckpos',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadressepos',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckprojpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckprojpos',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckprojpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckprojpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckprojpos',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckprojpos',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckprojpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadressepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadressepos',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadressepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadressepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadressepos',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadressepos',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gebaeudeadressepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_gelaendename',NULL,'orientierung','ch.ehi.ili2db.unit','Angle_Degree');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckpos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckpos',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckpos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckpos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckpos',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckpos',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckpos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_ortsnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurnamepos',NULL,'pos','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurnamepos',NULL,'pos','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurnamepos',NULL,'pos','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurnamepos',NULL,'pos','ch.ehi.ili2db.geomType','POINT');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurnamepos',NULL,'pos','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurnamepos',NULL,'pos','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_flurnamepos',NULL,'pos','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektlinie',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektlinie',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektlinie',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektlinie',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektlinie',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektlinie',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_einzelobjektlinie',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.geomType','LINESTRING');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_strassenachse',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckproj',NULL,'geometrie','ch.ehi.ili2db.coordDimension','2');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckproj',NULL,'geometrie','ch.ehi.ili2db.c1Max','2870000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckproj',NULL,'geometrie','ch.ehi.ili2db.c2Max','1310000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckproj',NULL,'geometrie','ch.ehi.ili2db.geomType','POLYGON');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckproj',NULL,'geometrie','ch.ehi.ili2db.c1Min','2460000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckproj',NULL,'geometrie','ch.ehi.ili2db.c2Min','1045000.000');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_COLUMN_PROP (tablename,subtype,columnname,tag,setting) VALUES ('mopublic_grundstueckproj',NULL,'geometrie','ch.ehi.ili2db.srid','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_grenzpunkt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_strassenachse','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_grundstueckprojpos','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_einzelobjektlinie','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_bodenbedeckung','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_ortsnamepos','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('halignment','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_hoheitsgrenzpunkt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_grundstueckproj','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('valignment','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_grundstueckpos','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_strassennamepos','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_gemeindegrenze','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_grenzpunkt_gueltigkeit','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_fixpunktpos','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_einzelobjektpunkt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_fixpunkt','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_rohrleitung','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_gemeindegrenzeproj','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_ortsname','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_bodenbedeckungproj','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_gebaeudeadresse','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_objektnamepos','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_gebaeudeadressepos','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_hoheitsgrenzpunktpos','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_flurnamepos','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_einzelobjektflaeche','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_flurname','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_gelaendename','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_grundstueck','ch.ehi.ili2db.tableKind','CLASS');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_TABLE_PROP (tablename,tag,setting) VALUES ('mopublic_objektnamepos_herkunft','ch.ehi.ili2db.tableKind','ENUM');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part4_ADMINISTRATIVEUNITS_20110830.ili','2.3','CHAdminCodes_V1 AdministrativeUnits_V1{ CHAdminCodes_V1 InternationalCodes_V1 Dictionaries_V1 Localisation_V1 INTERLIS} AdministrativeUnitsCH_V1{ CHAdminCodes_V1 InternationalCodes_V1 LocalisationCH_V1 AdministrativeUnits_V1 INTERLIS}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART IV -- ADMINISTRATIVE UNITS
   - Package CHAdminCodes
   - Package AdministrativeUnits
   - Package AdministrativeUnitsCH
*/

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2018-02-19 | KOGIS | Enumeration CHCantonCode adapted (FL and CH added)
!! 2020-04-24 | KOGIS | Constraint in Association Hierarchy in Model AdministrativeUnitsCH_V1 corrected (#CHE)
!! 2020-08-25 | KOGIS | Classes AdministrativeUnit and AdministrativeUnion declared as not abstract.

!! ########################################################################
!!@technicalContact=mailto:models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL CHAdminCodes_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2018-02-19" =

  DOMAIN
    CHCantonCode = (ZH,BE,LU,UR,SZ,OW,NW,GL,ZG,FR,SO,BS,BL,SH,AR,AI,SG,
                    GR,AG,TG,TI,VD,VS,NE,GE,JU,FL,CH);

    CHMunicipalityCode = 1..9999;  !! BFS-Nr

END CHAdminCodes_V1.

!! ########################################################################
!!@technicalContact=mailto:models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL AdministrativeUnits_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2020-08-25" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS UNQUALIFIED CHAdminCodes_V1;
  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Localisation_V1;
  IMPORTS Dictionaries_V1;

  TOPIC AdministrativeUnits (ABSTRACT) =

    CLASS AdministrativeElement (ABSTRACT) =
    END AdministrativeElement;

    CLASS AdministrativeUnit EXTENDS AdministrativeElement =
    END AdministrativeUnit;

    ASSOCIATION Hierarchy =
      UpperLevelUnit (EXTERNAL) -<> {0..1} AdministrativeUnit;
      LowerLevelUnit -- AdministrativeUnit;
    END Hierarchy;

    CLASS AdministrativeUnion EXTENDS AdministrativeElement =
    END AdministrativeUnion;

    ASSOCIATION UnionMembers =
      Union -<> AdministrativeUnion;
      Member -- AdministrativeElement; 
    END UnionMembers;

  END AdministrativeUnits;

  TOPIC Countries EXTENDS AdministrativeUnits =

    CLASS Country EXTENDS AdministrativeUnit =
      Code: MANDATORY CountryCode_ISO3166_1;
    UNIQUE Code;
    END Country;

  END Countries;

  TOPIC CountryNames EXTENDS Dictionaries_V1.Dictionaries =
    DEPENDS ON AdministrativeUnits_V1.Countries;

    STRUCTURE CountryName EXTENDS Entry =
      Code: MANDATORY CountryCode_ISO3166_1;
    END CountryName;
      
    CLASS CountryNamesTranslation EXTENDS Dictionary  =
      Entries(EXTENDED): LIST OF CountryName;
    UNIQUE Entries->Code;
    EXISTENCE CONSTRAINT
      Entries->Code REQUIRED IN AdministrativeUnits_V1.Countries.Country: Code;
    END CountryNamesTranslation;

  END CountryNames;

  TOPIC Agencies (ABSTRACT) =
    DEPENDS ON AdministrativeUnits_V1.AdministrativeUnits;

    CLASS Agency (ABSTRACT) =
    END Agency;

    ASSOCIATION Authority =
      Supervisor (EXTERNAL) -<> {1..1} Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;
      Agency -- Agency;
    END Authority;

    ASSOCIATION Organisation =
      Orderer (EXTERNAL) -- Agency OR AdministrativeUnits_V1.AdministrativeUnits.AdministrativeElement;
      Executor -- Agency;
    END Organisation;

  END Agencies;

END AdministrativeUnits_V1.

!! ########################################################################
!!@technicalContact=mailto:models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
MODEL AdministrativeUnitsCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2020-04-24" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS UNQUALIFIED CHAdminCodes_V1;
  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS LocalisationCH_V1;
  IMPORTS AdministrativeUnits_V1;

  TOPIC CHCantons EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnits_V1.Countries;

    CLASS CHCanton EXTENDS AdministrativeUnit =
      Code: MANDATORY CHCantonCode;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
    UNIQUE Code;
    END CHCanton;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnits_V1.Countries.Country;
      LowerLevelUnit (EXTENDED) -- CHCanton;
    MANDATORY CONSTRAINT
      UpperLevelUnit->Code == #CHE;
    END Hierarchy;

  END CHCantons;

  TOPIC CHDistricts EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;

    CLASS CHDistrict EXTENDS AdministrativeUnit =
      ShortName: MANDATORY TEXT*20;
      Name: LocalisationCH_V1.MultilingualText;
      Web: MANDATORY URI;
    END CHDistrict;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton;
      LowerLevelUnit (EXTENDED) -- CHDistrict;
    UNIQUE UpperLevelUnit->Code, LowerLevelUnit->ShortName;
    END Hierarchy;

  END CHDistricts;

  TOPIC CHMunicipalities EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;

    CLASS CHMunicipality EXTENDS AdministrativeUnit =
      Code: MANDATORY CHMunicipalityCode;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
    UNIQUE Code;
    END CHMunicipality;

    ASSOCIATION Hierarchy (EXTENDED) =
      UpperLevelUnit (EXTENDED, EXTERNAL) -<> {1..1} AdministrativeUnitsCH_V1.CHCantons.CHCanton
      OR AdministrativeUnitsCH_V1.CHDistricts.CHDistrict;
      LowerLevelUnit (EXTENDED) -- CHMunicipality;
    END Hierarchy;

  END CHMunicipalities;

  TOPIC CHAdministrativeUnions EXTENDS AdministrativeUnits_V1.AdministrativeUnits =
    DEPENDS ON AdministrativeUnits_V1.Countries;
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;
    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;

    CLASS AdministrativeUnion (EXTENDED) =
    OID AS UUIDOID;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
      Description: LocalisationCH_V1.MultilingualMText;
    END AdministrativeUnion;

  END CHAdministrativeUnions;

  TOPIC CHAgencies EXTENDS AdministrativeUnits_V1.Agencies =
    DEPENDS ON AdministrativeUnits_V1.Countries;
    DEPENDS ON AdministrativeUnitsCH_V1.CHCantons;
    DEPENDS ON AdministrativeUnitsCH_V1.CHDistricts;
    DEPENDS ON AdministrativeUnitsCH_V1.CHMunicipalities;

    CLASS Agency (EXTENDED) =
    OID AS UUIDOID;
      Name: LocalisationCH_V1.MultilingualText;
      Web: URI;
      Description: LocalisationCH_V1.MultilingualMText;
    END Agency;

  END CHAgencies;

END AdministrativeUnitsCH_V1.

!! ########################################################################
','2020-10-10 14:55:25.073');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('Units-20120220.ili','2.3','Units','!! File Units.ili Release 2012-02-20

INTERLIS 2.3;

!! 2012-02-20 definition of "Bar [bar]" corrected
!!@precursorVersion = 2005-06-06

CONTRACTED TYPE MODEL Units (en) AT "http://www.interlis.ch/models"
  VERSION "2012-02-20" =

  UNIT
    !! abstract Units
    Area (ABSTRACT) = (INTERLIS.LENGTH*INTERLIS.LENGTH);
    Volume (ABSTRACT) = (INTERLIS.LENGTH*INTERLIS.LENGTH*INTERLIS.LENGTH);
    Velocity (ABSTRACT) = (INTERLIS.LENGTH/INTERLIS.TIME);
    Acceleration (ABSTRACT) = (Velocity/INTERLIS.TIME);
    Force (ABSTRACT) = (INTERLIS.MASS*INTERLIS.LENGTH/INTERLIS.TIME/INTERLIS.TIME);
    Pressure (ABSTRACT) = (Force/Area);
    Energy (ABSTRACT) = (Force*INTERLIS.LENGTH);
    Power (ABSTRACT) = (Energy/INTERLIS.TIME);
    Electric_Potential (ABSTRACT) = (Power/INTERLIS.ELECTRIC_CURRENT);
    Frequency (ABSTRACT) = (INTERLIS.DIMENSIONLESS/INTERLIS.TIME);

    Millimeter [mm] = 0.001 [INTERLIS.m];
    Centimeter [cm] = 0.01 [INTERLIS.m];
    Decimeter [dm] = 0.1 [INTERLIS.m];
    Kilometer [km] = 1000 [INTERLIS.m];

    Square_Meter [m2] EXTENDS Area = (INTERLIS.m*INTERLIS.m);
    Cubic_Meter [m3] EXTENDS Volume = (INTERLIS.m*INTERLIS.m*INTERLIS.m);

    Minute [min] = 60 [INTERLIS.s];
    Hour [h] = 60 [min];
    Day [d] = 24 [h];

    Kilometer_per_Hour [kmh] EXTENDS Velocity = (km/h);
    Meter_per_Second [ms] = 3.6 [kmh];
    Newton [N] EXTENDS Force = (INTERLIS.kg*INTERLIS.m/INTERLIS.s/INTERLIS.s);
    Pascal [Pa] EXTENDS Pressure = (N/m2);
    Joule [J] EXTENDS Energy = (N*INTERLIS.m);
    Watt [W] EXTENDS Power = (J/INTERLIS.s);
    Volt [V] EXTENDS Electric_Potential = (W/INTERLIS.A);

    Inch [in] = 2.54 [cm];
    Foot [ft] = 0.3048 [INTERLIS.m];
    Mile [mi] = 1.609344 [km];

    Are [a] = 100 [m2];
    Hectare [ha] = 100 [a];
    Square_Kilometer [km2] = 100 [ha];
    Acre [acre] = 4046.873 [m2];

    Liter [L] = 1 / 1000 [m3];
    US_Gallon [USgal] = 3.785412 [L];

    Angle_Degree = 180 / PI [INTERLIS.rad];
    Angle_Minute = 1 / 60 [Angle_Degree];
    Angle_Second = 1 / 60 [Angle_Minute];

    Gon = 200 / PI [INTERLIS.rad];

    Gram [g] = 1 / 1000 [INTERLIS.kg];
    Ton [t] = 1000 [INTERLIS.kg];
    Pound [lb] = 0.4535924 [INTERLIS.kg];

    Calorie [cal] = 4.1868 [J];
    Kilowatt_Hour [kWh] = 0.36E7 [J];

    Horsepower = 746 [W];

    Techn_Atmosphere [at] = 98066.5 [Pa];
    Atmosphere [atm] = 101325 [Pa];
    Bar [bar] = 100000 [Pa];
    Millimeter_Mercury [mmHg] = 133.3224 [Pa];
    Torr = 133.3224 [Pa]; !! Torr = [mmHg]

    Decibel [dB] = FUNCTION // 10**(dB/20) * 0.00002 // [Pa];

    Degree_Celsius [oC] = FUNCTION // oC+273.15 // [INTERLIS.K];
    Degree_Fahrenheit [oF] = FUNCTION // (oF+459.67)/1.8 // [INTERLIS.K];

    CountedObjects EXTENDS INTERLIS.DIMENSIONLESS;

    Hertz [Hz] EXTENDS Frequency = (CountedObjects/INTERLIS.s);
    KiloHertz [KHz] = 1000 [Hz];
    MegaHertz [MHz] = 1000 [KHz];

    Percent = 0.01 [CountedObjects];
    Permille = 0.001 [CountedObjects];

    !! ISO 4217 Currency Abbreviation
    USDollar [USD] EXTENDS INTERLIS.MONEY;
    Euro [EUR] EXTENDS INTERLIS.MONEY;
    SwissFrancs [CHF] EXTENDS INTERLIS.MONEY;

END Units.

','2020-10-10 14:55:25.073');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CoordSys-20151124.ili','2.3','CoordSys','!! File CoordSys.ili Release 2015-11-24

INTERLIS 2.3;

!! 2015-11-24 Cardinalities adapted (line 122, 123, 124, 132, 133, 134, 142, 143,
!!                                   148, 149, 163, 164, 168, 169, 206 and 207)
!!@precursorVersion = 2005-06-16

REFSYSTEM MODEL CoordSys (en) AT "http://www.interlis.ch/models"
  VERSION "2015-11-24" =

  UNIT
    Angle_Degree = 180 / PI [INTERLIS.rad];
    Angle_Minute = 1 / 60 [Angle_Degree];
    Angle_Second = 1 / 60 [Angle_Minute];

  STRUCTURE Angle_DMS_S =
    Degrees: -180 .. 180 CIRCULAR [Angle_Degree];
    CONTINUOUS SUBDIVISION Minutes: 0 .. 59 CIRCULAR [Angle_Minute];
    CONTINUOUS SUBDIVISION Seconds: 0.000 .. 59.999 CIRCULAR [Angle_Second];
  END Angle_DMS_S;

  DOMAIN
    Angle_DMS = FORMAT BASED ON Angle_DMS_S (Degrees ":" Minutes ":" Seconds);
    Angle_DMS_90 EXTENDS Angle_DMS = "-90:00:00.000" .. "90:00:00.000";


  TOPIC CoordsysTopic =

    !! Special space aspects to be referenced
    !! **************************************

    CLASS Ellipsoid EXTENDS INTERLIS.REFSYSTEM =
      EllipsoidAlias: TEXT*70;
      SemiMajorAxis: MANDATORY 6360000.0000 .. 6390000.0000 [INTERLIS.m];
      InverseFlattening: MANDATORY 0.00000000 .. 350.00000000;
      !! The inverse flattening 0 characterizes the 2-dim sphere
      Remarks: TEXT*70;
    END Ellipsoid;

    CLASS GravityModel EXTENDS INTERLIS.REFSYSTEM =
      GravityModAlias: TEXT*70;
      Definition: TEXT*70;
    END GravityModel;

    CLASS GeoidModel EXTENDS INTERLIS.REFSYSTEM =
      GeoidModAlias: TEXT*70;
      Definition: TEXT*70;
    END GeoidModel;


    !! Coordinate systems for geodetic purposes
    !! ****************************************

    STRUCTURE LengthAXIS EXTENDS INTERLIS.AXIS =
      ShortName: TEXT*12;
      Description: TEXT*255;
    PARAMETER
      Unit (EXTENDED): NUMERIC [INTERLIS.LENGTH];
    END LengthAXIS;

    STRUCTURE AngleAXIS EXTENDS INTERLIS.AXIS =
      ShortName: TEXT*12;
      Description: TEXT*255;
    PARAMETER
      Unit (EXTENDED): NUMERIC [INTERLIS.ANGLE];
    END AngleAXIS;

    CLASS GeoCartesian1D EXTENDS INTERLIS.COORDSYSTEM =
      Axis (EXTENDED): LIST {1} OF LengthAXIS;
    END GeoCartesian1D;

    CLASS GeoHeight EXTENDS GeoCartesian1D =
      System: MANDATORY (
        normal,
        orthometric,
        ellipsoidal,
        other);
      ReferenceHeight: MANDATORY -10000.000 .. +10000.000 [INTERLIS.m];
      ReferenceHeightDescr: TEXT*70;
    END GeoHeight;

    ASSOCIATION HeightEllips =
      GeoHeightRef -- {*} GeoHeight;
      EllipsoidRef -- {1} Ellipsoid;
    END HeightEllips;

    ASSOCIATION HeightGravit =
      GeoHeightRef -- {*} GeoHeight;
      GravityRef -- {1} GravityModel;
    END HeightGravit;

    ASSOCIATION HeightGeoid =
      GeoHeightRef -- {*} GeoHeight;
      GeoidRef -- {1} GeoidModel;
    END HeightGeoid;

    CLASS GeoCartesian2D EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {2} OF LengthAXIS;
    END GeoCartesian2D;

    CLASS GeoCartesian3D EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {3} OF LengthAXIS;
    END GeoCartesian3D;

    CLASS GeoEllipsoidal EXTENDS INTERLIS.COORDSYSTEM =
      Definition: TEXT*70;
      Axis (EXTENDED): LIST {2} OF AngleAXIS;
    END GeoEllipsoidal;

    ASSOCIATION EllCSEllips =
      GeoEllipsoidalRef -- {*} GeoEllipsoidal;
      EllipsoidRef -- {1} Ellipsoid;
    END EllCSEllips;


    !! Mappings between coordinate systems
    !! ***********************************

    ASSOCIATION ToGeoEllipsoidal =
      From -- {0..*} GeoCartesian3D;
      To -- {0..*} GeoEllipsoidal;
      ToHeight -- {0..*} GeoHeight;
    MANDATORY CONSTRAINT
      ToHeight -> System == #ellipsoidal;
    MANDATORY CONSTRAINT
      To -> EllipsoidRef -> Name == ToHeight -> EllipsoidRef -> Name;
    END ToGeoEllipsoidal;

    ASSOCIATION ToGeoCartesian3D =
      From2 -- {0..*} GeoEllipsoidal;
      FromHeight-- {0..*} GeoHeight;
      To3 -- {0..*} GeoCartesian3D;
    MANDATORY CONSTRAINT
      FromHeight -> System == #ellipsoidal;
    MANDATORY CONSTRAINT
      From2 -> EllipsoidRef -> Name == FromHeight -> EllipsoidRef -> Name;
    END ToGeoCartesian3D;

    ASSOCIATION BidirectGeoCartesian2D =
      From -- {0..*} GeoCartesian2D;
      To -- {0..*} GeoCartesian2D;
    END BidirectGeoCartesian2D;

    ASSOCIATION BidirectGeoCartesian3D =
      From -- {0..*} GeoCartesian3D;
      To2 -- {0..*} GeoCartesian3D;
      Precision: MANDATORY (
        exact,
        measure_based);
      ShiftAxis1: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      ShiftAxis2: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      ShiftAxis3: MANDATORY -10000.000 .. 10000.000 [INTERLIS.m];
      RotationAxis1: Angle_DMS_90;
      RotationAxis2: Angle_DMS_90;
      RotationAxis3: Angle_DMS_90;
      NewScale: 0.000001 .. 1000000.000000;
    END BidirectGeoCartesian3D;

    ASSOCIATION BidirectGeoEllipsoidal =
      From4 -- {0..*} GeoEllipsoidal;
      To4 -- {0..*} GeoEllipsoidal;
    END BidirectGeoEllipsoidal;

    ASSOCIATION MapProjection (ABSTRACT) =
      From5 -- {0..*} GeoEllipsoidal;
      To5 -- {0..*} GeoCartesian2D;
      FromCo1_FundPt: MANDATORY Angle_DMS_90;
      FromCo2_FundPt: MANDATORY Angle_DMS_90;
      ToCoord1_FundPt: MANDATORY -10000000 .. +10000000 [INTERLIS.m];
      ToCoord2_FundPt: MANDATORY -10000000 .. +10000000 [INTERLIS.m];
    END MapProjection;

    ASSOCIATION TransverseMercator EXTENDS MapProjection =
    END TransverseMercator;

    ASSOCIATION SwissProjection EXTENDS MapProjection =
      IntermFundP1: MANDATORY Angle_DMS_90;
      IntermFundP2: MANDATORY Angle_DMS_90;
    END SwissProjection;

    ASSOCIATION Mercator EXTENDS MapProjection =
    END Mercator;

    ASSOCIATION ObliqueMercator EXTENDS MapProjection =
    END ObliqueMercator;

    ASSOCIATION Lambert EXTENDS MapProjection =
    END Lambert;

    ASSOCIATION Polyconic EXTENDS MapProjection =
    END Polyconic;

    ASSOCIATION Albus EXTENDS MapProjection =
    END Albus;

    ASSOCIATION Azimutal EXTENDS MapProjection =
    END Azimutal;

    ASSOCIATION Stereographic EXTENDS MapProjection =
    END Stereographic;

    ASSOCIATION HeightConversion =
      FromHeight -- {0..*} GeoHeight;
      ToHeight -- {0..*} GeoHeight;
      Definition: TEXT*70;
    END HeightConversion;

  END CoordsysTopic;

END CoordSys.

','2020-10-10 14:55:25.073');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part2_LOCALISATION_20110830.ili','2.3','InternationalCodes_V1 Localisation_V1{ InternationalCodes_V1} LocalisationCH_V1{ InternationalCodes_V1 Localisation_V1} Dictionaries_V1{ InternationalCodes_V1} DictionariesCH_V1{ InternationalCodes_V1 Dictionaries_V1}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-08-30
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART II -- LOCALISATION
   - Package InternationalCodes
   - Packages Localisation, LocalisationCH
   - Packages Dictionaries, DictionariesCH
*/

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL InternationalCodes_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  DOMAIN
    LanguageCode_ISO639_1 = (de,fr,it,rm,en,
      aa,ab,af,am,ar,as,ay,az,ba,be,bg,bh,bi,bn,bo,br,ca,co,cs,cy,da,dz,el,
      eo,es,et,eu,fa,fi,fj,fo,fy,ga,gd,gl,gn,gu,ha,he,hi,hr,hu,hy,ia,id,ie,
      ik,is,iu,ja,jw,ka,kk,kl,km,kn,ko,ks,ku,ky,la,ln,lo,lt,lv,mg,mi,mk,ml,
      mn,mo,mr,ms,mt,my,na,ne,nl,no,oc,om,or,pa,pl,ps,pt,qu,rn,ro,ru,rw,sa,
      sd,sg,sh,si,sk,sl,sm,sn,so,sq,sr,ss,st,su,sv,sw,ta,te,tg,th,ti,tk,tl,
      tn,to,tr,ts,tt,tw,ug,uk,ur,uz,vi,vo,wo,xh,yi,yo,za,zh,zu);

    CountryCode_ISO3166_1 = (CHE,
      ABW,AFG,AGO,AIA,ALA,ALB,AND_,ANT,ARE,ARG,ARM,ASM,ATA,ATF,ATG,AUS,
      AUT,AZE,BDI,BEL,BEN,BFA,BGD,BGR,BHR,BHS,BIH,BLR,BLZ,BMU,BOL,BRA,
      BRB,BRN,BTN,BVT,BWA,CAF,CAN,CCK,CHL,CHN,CIV,CMR,COD,COG,COK,COL,
      COM,CPV,CRI,CUB,CXR,CYM,CYP,CZE,DEU,DJI,DMA,DNK,DOM,DZA,ECU,EGY,
      ERI,ESH,ESP,EST,ETH,FIN,FJI,FLK,FRA,FRO,FSM,GAB,GBR,GEO,GGY,GHA,
      GIB,GIN,GLP,GMB,GNB,GNQ,GRC,GRD,GRL,GTM,GUF,GUM,GUY,HKG,HMD,HND,
      HRV,HTI,HUN,IDN,IMN,IND,IOT,IRL,IRN,IRQ,ISL,ISR,ITA,JAM,JEY,JOR,
      JPN,KAZ,KEN,KGZ,KHM,KIR,KNA,KOR,KWT,LAO,LBN,LBR,LBY,LCA,LIE,LKA,
      LSO,LTU,LUX,LVA,MAC,MAR,MCO,MDA,MDG,MDV,MEX,MHL,MKD,MLI,MLT,MMR,
      MNE,MNG,MNP,MOZ,MRT,MSR,MTQ,MUS,MWI,MYS,MYT,NAM,NCL,NER,NFK,NGA,
      NIC,NIU,NLD,NOR,NPL,NRU,NZL,OMN,PAK,PAN,PCN,PER,PHL,PLW,PNG,POL,
      PRI,PRK,PRT,PRY,PSE,PYF,QAT,REU,ROU,RUS,RWA,SAU,SDN,SEN,SGP,SGS,
      SHN,SJM,SLB,SLE,SLV,SMR,SOM,SPM,SRB,STP,SUR,SVK,SVN,SWE,SWZ,SYC,
      SYR,TCA,TCD,TGO,THA,TJK,TKL,TKM,TLS,TON,TTO,TUN,TUR,TUV,TWN,TZA,
      UGA,UKR,UMI,URY,USA,UZB,VAT,VCT,VEN,VGB,VIR,VNM,VUT,WLF,WSM,YEM,
      ZAF,ZMB,ZWE);

END InternationalCodes_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL Localisation_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;

  STRUCTURE LocalisedText =
    Language: LanguageCode_ISO639_1;
    Text: MANDATORY TEXT;
  END LocalisedText;
  
  STRUCTURE LocalisedMText =
    Language: LanguageCode_ISO639_1;
    Text: MANDATORY MTEXT;
  END LocalisedMText;

  STRUCTURE MultilingualText =
    LocalisedText : BAG {1..*} OF LocalisedText;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualText;  
  
  STRUCTURE MultilingualMText =
    LocalisedText : BAG {1..*} OF LocalisedMText;
    UNIQUE (LOCAL) LocalisedText:Language;
  END MultilingualMText;

END Localisation_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
TYPE MODEL LocalisationCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Localisation_V1;

  STRUCTURE LocalisedText EXTENDS Localisation_V1.LocalisedText =
  MANDATORY CONSTRAINT
    Language == #de OR
    Language == #fr OR
    Language == #it OR
    Language == #rm OR
    Language == #en;
  END LocalisedText;
  
  STRUCTURE LocalisedMText EXTENDS Localisation_V1.LocalisedMText =
  MANDATORY CONSTRAINT
    Language == #de OR
    Language == #fr OR
    Language == #it OR
    Language == #rm OR
    Language == #en;
  END LocalisedMText;

  STRUCTURE MultilingualText EXTENDS Localisation_V1.MultilingualText =
    LocalisedText(EXTENDED) : BAG {1..*} OF LocalisedText;
  END MultilingualText;  
  
  STRUCTURE MultilingualMText EXTENDS Localisation_V1.MultilingualMText =
    LocalisedText(EXTENDED) : BAG {1..*} OF LocalisedMText;
  END MultilingualMText;

END LocalisationCH_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL Dictionaries_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;

  TOPIC Dictionaries (ABSTRACT) =

    STRUCTURE Entry (ABSTRACT) =
      Text: MANDATORY TEXT;
    END Entry;
      
    CLASS Dictionary =
      Language: MANDATORY LanguageCode_ISO639_1;
      Entries: LIST OF Entry;
    END Dictionary;

  END Dictionaries;

END Dictionaries_V1.

!! ########################################################################
!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html
MODEL DictionariesCH_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2011-08-30" =

  IMPORTS UNQUALIFIED InternationalCodes_V1;
  IMPORTS Dictionaries_V1;

  TOPIC Dictionaries (ABSTRACT) EXTENDS Dictionaries_V1.Dictionaries =

    CLASS Dictionary (EXTENDED) =
    MANDATORY CONSTRAINT
      Language == #de OR
      Language == #fr OR
      Language == #it OR
      Language == #rm OR
      Language == #en;
    END Dictionary;

  END Dictionaries;

END DictionariesCH_V1.

!! ########################################################################
','2020-10-10 14:55:25.073');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('SO_AGI_MOpublic_20201009.ili','2.3','SO_AGI_MOpublic_20201009{ GeometryCHLV95_V1 CHAdminCodes_V1 Units}','INTERLIS 2.3;

/** !!------------------------------------------------------------------------------ 
 * !! Version    | wer | Änderung 
 * !!------------------------------------------------------------------------------ 
 * !! 2017-10-03 | sz  | Erstfassung
 * !! 2017-10-10 | sz  | Anpassung nach Review ns
 * !! 2017-10-12 | sz  | Grundstueck(_Proj).Art_txt -> 40 Zeichen
 * !!            | sz  | XMLTime -> XMLDate
 * !!            | sz  | Einzelobjekte_Punkt -> Einzelobjekt_Punkt
 * !!            | sz  | VAlignmet -> VAli
 * !! 2018-02-21 | sz  | Range für verschiedene Aufzähltypen korrigiert.
 * !!            | sz  | Range für Orientierung korrigiert.
 * !! 2018-04-30 | ns  | Gueltigkeit bei Grenzpunkt hinzugefuegt
 * !! 2019-04-24 | sz  | LFP-Koordinate als Text
 * !! 2020-10-09 | sz  | Nur noch eine Geometrie in einer Klasse (wegen Export nach Shapefile)
 * !!============================================================================== 
 * !!@ title="MOpublic-SO (amtliche Vermessung)"
 * !!@ shortDescription="Vereinfachtes Datenmodell (Shapefileniveau) der amtlichen Vermessung."
 */
!!@ technicalContact="mailto:agi@bd.so.ch"
!!@ furtherInformation="http://geo.so.ch/models/AGI/SO_AGI_MOpublic_20201009.uml"
MODEL SO_AGI_MOpublic_20201009 (de)
AT "https://geo.so.ch"
VERSION "2020-10-09"  =
  IMPORTS GeometryCHLV95_V1,Units,CHAdminCodes_V1;

  TOPIC MOpublic =
    OID AS INTERLIS.UUIDOID;

    DOMAIN

      Genauigkeit = 0.0 .. 700.0 [Units.cm];

      Hoehe = -200.000 .. 1600.000 [INTERLIS.M];

      /** In Grad. Einheit, Drehsinn und Nullpunkt an GDI-Software angepasst.
       */
      Orientierung = -270.00 .. 90.00 [Units.Angle_Degree];

    CLASS Bodenbedeckung =
      /** Bodenbedeckungsart (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Eidgenössischer Gebäudeidentifikator
       */
      EGID : 0 .. 999999999;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
    END Bodenbedeckung;

    CLASS BodenbedeckungProj =
      /** Bodenbedeckungsart (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Eidgenössischer Gebäudeidentifikator
       */
      EGID : 0 .. 999999999;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
    END BodenbedeckungProj;

    CLASS EinzelobjektFlaeche =
      /** Einzelobjektart (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Eidgenössischer Gebäudeidentifikator
       */
      EGID : 0 .. 999999999;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
    END EinzelobjektFlaeche;

    CLASS EinzelobjektLinie =
      /** Einzelobjektart (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Line;
    END EinzelobjektLinie;

    CLASS FlurnameBase (ABSTRACT) =
      /** Flurname
       */
      Flurname : MANDATORY TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Name der Gemeinde
       */
      Gemeinde : MANDATORY TEXT*255;
    END FlurnameBase;

    CLASS GebaeudeadresseBase (ABSTRACT) =
      /** Name der Strasse
       */
      Strassenname : TEXT*100;
      /** Hausnummer
       */
      Hausnummer : TEXT*20;
      /** Eidgenössischer Gebäudeidentifikator
       */
      EGID : 0 .. 999999999;
      /** Eidgenössischer Eingangsidentifikator
       */
      EDID : 0 .. 99;
      /** Vierstellige Postleitzahl
       */
      PLZ : MANDATORY 0 .. 9999;
      /** Ortschaftsname
       */
      Ortschaft : MANDATORY TEXT*100;
      /** Status des Gebäudeinganges
       */
      Status : TEXT*20;
      /** Ist Adresse offiziell? ja/nein
       */
      ist_offizielle_bezeichnung : BOOLEAN;
      /** Relative Lage des Gebäudeeinganges
       */
      Hoehenlage : -99 .. 99;
      /** Name des Gebäudes
       */
      Gebaeudename : TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END GebaeudeadresseBase;

    CLASS Gemeindegrenze =
      /** Name der Gemeinde
       */
      Gemeindename : MANDATORY TEXT*100;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END Gemeindegrenze;

    CLASS GemeindegrenzeProj =
      /** Name der Gemeinde
       */
      Gemeindename : MANDATORY TEXT*100;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Line;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END GemeindegrenzeProj;

    CLASS GrundstueckBase (ABSTRACT) =
      /** Nummerierungsbereichidentifikator
       */
      NBIdent : MANDATORY TEXT*12;
      /** Grundbuchnummer
       */
      Nummer : MANDATORY TEXT*15;
      /** Grundstücksart (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Fläche des Grundstückes in m2
       */
      Flaechenmass : MANDATORY 0 .. 9999999999;
      /** Eidgenössischer Grundstücksidentifikator
       */
      EGRID : TEXT*14;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Name des Grundbuchs (= Grundbuchkreis)
       */
      Grundbuch : MANDATORY TEXT*255;
      /** Name der Gemeinde
       */
      Gemeinde : MANDATORY TEXT*255;
    END GrundstueckBase;

    CLASS GrundstueckProjBase (ABSTRACT) =
      /** Nummerierungsbereichidentifikator
       */
      NBIdent : MANDATORY TEXT*12;
      /** Grundbuchnummer
       */
      Nummer : MANDATORY TEXT*15;
      /** Grundstücksart (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Fläche des Grundstückes in m2
       */
      Flaechenmass : MANDATORY 0 .. 9999999999;
      /** Eidgenössischer Grundstücksidentifikator
       */
      EGRID : TEXT*14;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Name des Grundbuchs (= Grundbuchkreis)
       */
      Grundbuch : MANDATORY TEXT*255;
      /** Name der Gemeinde
       */
      Gemeinde : MANDATORY TEXT*255;
    END GrundstueckProjBase;

    CLASS OrtsnameBase (ABSTRACT) =
      /** Ortsname
       */
      Ortsname : MANDATORY TEXT*40;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END OrtsnameBase;

    CLASS Rohrleitung =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Line;
      /** Transportmedium (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Betreiber
       */
      Betreiber : MANDATORY TEXT*40;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END Rohrleitung;

    CLASS Strassenachse =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Line;
      /** Strassenname
       */
      Strassenname : TEXT*100;
      /** Ordnung des Strassenstückes
       */
      Ordnung : MANDATORY 1 .. 9999;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END Strassenachse;

    CLASS EinzelobjektPunkt =
      /** Einzelobjektart (Txt-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Orientierung des Symbols
       */
      Symbolorientierung : MANDATORY Orientierung;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Coord2;
    END EinzelobjektPunkt;

    CLASS FixpunktBase (ABSTRACT) =
      /** Fixpunkttyp (Text-Repräsentation)
       */
      Typ_txt : MANDATORY TEXT*100;
      /** Nummerierungsbereichidentifikator
       */
      NBIdent : MANDATORY TEXT*12;
      /** Bezeichnung des Fixpunktes
       */
      Nummer : TEXT*12;
      /** Höhe
       */
      Hoehe : Hoehe;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Lagegenauigkeit
       */
      Lagegenauigkeit : MANDATORY Genauigkeit;
      /** Höhengenauigkeit
       */
      Hoehengenauigkeit : Genauigkeit;
      /** Punktzeichen (Text-Repräsentation)
       */
      Punktzeichen_txt : MANDATORY TEXT*100;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Koordinate (Text-Repräsentation)
       */
      Koordinate : MANDATORY TEXT*40;
    END FixpunktBase;

    CLASS Flurname
    EXTENDS FlurnameBase =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
    END Flurname;

    /** Positionierungspunkt für Beschriftung
     */
    CLASS FlurnamePos
    EXTENDS FlurnameBase =
      /** Positionierungspunkt für Beschriftung
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** HAlignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
    END FlurnamePos;

    CLASS Gebaeudeadresse
    EXTENDS GebaeudeadresseBase =
      /** Lage des Gebäudeeingangs
       */
      Lage : MANDATORY GeometryCHLV95_V1.Coord2;
    END Gebaeudeadresse;

    CLASS GebaeudeadressePos
    EXTENDS GebaeudeadresseBase =
      /** Positionierungspunkt für Beschriftung der Hausnummer
       */
      Pos : GeometryCHLV95_V1.Coord2;
      /** Orientierung des Beschriftungstextes
       */
      Orientierung : Orientierung;
      /** HAlignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
    END GebaeudeadressePos;

    CLASS Gelaendename =
      /** Geländename
       */
      Gelaendename : MANDATORY TEXT*100;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Positionierungspunkt für Beschriftung
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** HAlignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Name der Gemeinde
       */
      Gemeinde : MANDATORY TEXT*255;
    END Gelaendename;

    CLASS Grenzpunkt =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Lagegenauigkeit
       */
      Lagegenauigkeit : MANDATORY Genauigkeit;
      /** Ist Lagebestimmung zuverlässig? ja/nein
       */
      Lagezuverlaessigkeit : MANDATORY BOOLEAN;
      /** Art des Punktzeichens (Text-Repräsentation)
       */
      Punktzeichen_txt : MANDATORY TEXT*100;
      /** Symbolorientierung
       */
      Symbolorientierung : Orientierung;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Gueltigkeit
       */
      Gueltigkeit : MANDATORY (
        projektiert,
        gueltig
      );
    END Grenzpunkt;

    CLASS Grundstueck
    EXTENDS GrundstueckBase =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
    END Grundstueck;

    CLASS GrundstueckPos
    EXTENDS GrundstueckBase =
      /** Positionierungspunkt für Beschriftung
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** HAlignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
    END GrundstueckPos;

    CLASS GrundstueckProj
    EXTENDS GrundstueckProjBase =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
    END GrundstueckProj;

    CLASS GrundstueckProjPos
    EXTENDS GrundstueckProjBase =
      /** Positionierungspunkt für Beschriftung
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** HAlignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
    END GrundstueckProjPos;

    CLASS HoheitsgrenzpunktBase (ABSTRACT) =
      /** Nummer des Hoheitsgrenzpunktes
       */
      Nummer : TEXT*20;
      /** Punktzeichen (Text-Repräsentation)
       */
      Punktzeichen_txt : MANDATORY TEXT*100;
      /** Schöner Stein? ja/nein
       */
      schoener_Stein : MANDATORY BOOLEAN;
      /** Lagegenauigkeit
       */
      Lagegenauigkeit : MANDATORY Genauigkeit;
      /** Ist Lagebestimmung zuverlässig? ja/nein
       */
      Lagezuverlaessigkeit : MANDATORY BOOLEAN;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END HoheitsgrenzpunktBase;

    CLASS ObjektnamePos =
      /** Name des Objektes
       */
      Objektname : MANDATORY TEXT*100;
      /** Position
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** Halignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** Valignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
      /** Art des Objektnamens, aus Art BB/EO. (Text-Repräsentation)
       */
      Art_txt : MANDATORY TEXT*100;
      /** Herkunft des Objektnames
       */
      Herkunft : MANDATORY (
        EO_Punkt,
        EO_Linie,
        EO_Flaeche,
        BB
      );
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
      /** Status der Geometrie: projektiert/realisiert
       */
      Status : MANDATORY TEXT*20;
    END ObjektnamePos;

    CLASS Ortsname
    EXTENDS OrtsnameBase =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.SurfaceWithOverlaps2mm;
    END Ortsname;

    CLASS OrtsnamePos
    EXTENDS OrtsnameBase =
      /** Positionierungspunkt für Beschriftung
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** HAlignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
    END OrtsnamePos;

    CLASS StrassennamePos =
      /** Strassenname
       */
      Strassenname : MANDATORY TEXT*100;
      /** Positionierungspunkt für Beschriftung
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : MANDATORY Orientierung;
      /** HAlignment
       */
      HAli : MANDATORY INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : MANDATORY INTERLIS.VALIGNMENT;
      /** Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
       */
      BFS_Nr : MANDATORY CHAdminCodes_V1.CHMunicipalityCode;
      /** Importdatum
       */
      Importdatum : MANDATORY INTERLIS.XMLDateTime;
      /** Datum der Nachführung durch Geometer
       */
      Nachfuehrung : INTERLIS.XMLDate;
    END StrassennamePos;

    CLASS Fixpunkt
    EXTENDS FixpunktBase =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Coord2;
    END Fixpunkt;

    CLASS FixpunktPos
    EXTENDS FixpunktBase =
      /** Positionierungspunkt für Beschriftung
       */
      Pos : MANDATORY GeometryCHLV95_V1.Coord2;
      /** Textorientierung
       */
      Orientierung : Orientierung;
      /** HAlignment
       */
      HAli : INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : INTERLIS.VALIGNMENT;
    END FixpunktPos;

    CLASS Hoheitsgrenzpunkt
    EXTENDS HoheitsgrenzpunktBase =
      /** Geometrie
       */
      Geometrie : MANDATORY GeometryCHLV95_V1.Coord2;
    END Hoheitsgrenzpunkt;

    CLASS HoheitsgrenzpunktPos
    EXTENDS HoheitsgrenzpunktBase =
      /** Positionierungspunkt für Beschriftung
       */
      Pos : GeometryCHLV95_V1.Coord2;
      /** HAlignment
       */
      HAli : INTERLIS.HALIGNMENT;
      /** VAlignment
       */
      VAli : INTERLIS.VALIGNMENT;
      /** Symbolorientierung
       */
      Symbolorientierung : Orientierung;
    END HoheitsgrenzpunktPos;

  END MOpublic;

END SO_AGI_MOpublic_20201009.
','2020-10-10 14:55:25.073');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_MODEL (filename,iliversion,modelName,content,importDate) VALUES ('CHBase_Part1_GEOMETRY_20110830.ili','2.3','GeometryCHLV03_V1{ CoordSys Units INTERLIS} GeometryCHLV95_V1{ CoordSys Units INTERLIS}','/* ########################################################################
   CHBASE - BASE MODULES OF THE SWISS FEDERATION FOR MINIMAL GEODATA MODELS
   ======
   BASISMODULE DES BUNDES           MODULES DE BASE DE LA CONFEDERATION
   FÜR MINIMALE GEODATENMODELLE     POUR LES MODELES DE GEODONNEES MINIMAUX
   
   PROVIDER: GKG/KOGIS - GCS/COSIG             CONTACT: models@geo.admin.ch
   PUBLISHED: 2011-0830
   ########################################################################
*/

INTERLIS 2.3;

/* ########################################################################
   ########################################################################
   PART I -- GEOMETRY
   - Package GeometryCHLV03
   - Package GeometryCHLV95
*/

!! ########################################################################

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 57, 58, 65 and 66)
!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 57 and 58)
!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 31, 44 and 50)
!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected

!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL GeometryCHLV03_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS Units;
  IMPORTS CoordSys;

  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic
    OBJECTS OF GeoCartesian2D: CHLV03
    OBJECTS OF GeoHeight: SwissOrthometricAlt;

  DOMAIN
    !!@CRS=EPSG:21781
    Coord2 = COORD
      460000.000 .. 870000.000 [m] {CHLV03[1]},
       45000.000 .. 310000.000 [m] {CHLV03[2]},
      ROTATION 2 -> 1;

    !!@CRS=EPSG:21781
    Coord3 = COORD
      460000.000 .. 870000.000 [m] {CHLV03[1]},
       45000.000 .. 310000.000 [m] {CHLV03[2]},
        -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},
      ROTATION 2 -> 1;

    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;
    DirectedLine EXTENDS Line = DIRECTED POLYLINE;
    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    
    /* minimal overlaps only (2mm) */
    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;
    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;

    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;

    Accuracy = (cm, cm50, m, m10, m50, vague);
    Method = (measured, sketched, calculated);

    STRUCTURE LineStructure = 
      Line: Line;
    END LineStructure;

    STRUCTURE DirectedLineStructure =
      Line: DirectedLine;
    END DirectedLineStructure;

    STRUCTURE MultiLine =
      Lines: BAG {1..*} OF LineStructure;
    END MultiLine;

    STRUCTURE MultiDirectedLine =
      Lines: BAG {1..*} OF DirectedLineStructure;
    END MultiDirectedLine;

    STRUCTURE SurfaceStructure =
      Surface: Surface;
    END SurfaceStructure;

    STRUCTURE MultiSurface =
      Surfaces: BAG {1..*} OF SurfaceStructure;
    END MultiSurface;

END GeometryCHLV03_V1.

!! ########################################################################

!! Version    | Who   | Modification
!!------------------------------------------------------------------------------
!! 2015-02-20 | KOGIS | WITHOUT OVERLAPS added (line 135, 136, 143 and 144)
!! 2015-11-12 | KOGIS | WITHOUT OVERLAPS corrected (line 135 and 136)
!! 2017-11-27 | KOGIS | Meta-Attributes @furtherInformation adapted and @CRS added (line 109, 122 and 128)
!! 2017-12-04 | KOGIS | Meta-Attribute @CRS corrected

!!@technicalContact=models@geo.admin.ch
!!@furtherInformation=https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html
TYPE MODEL GeometryCHLV95_V1 (en)
  AT "http://www.geo.admin.ch" VERSION "2017-12-04" =

  IMPORTS UNQUALIFIED INTERLIS;
  IMPORTS Units;
  IMPORTS CoordSys;

  REFSYSTEM BASKET BCoordSys ~ CoordSys.CoordsysTopic
    OBJECTS OF GeoCartesian2D: CHLV95
    OBJECTS OF GeoHeight: SwissOrthometricAlt;

  DOMAIN
    !!@CRS=EPSG:2056
    Coord2 = COORD
      2460000.000 .. 2870000.000 [m] {CHLV95[1]},
      1045000.000 .. 1310000.000 [m] {CHLV95[2]},
      ROTATION 2 -> 1;

    !!@CRS=EPSG:2056
    Coord3 = COORD
      2460000.000 .. 2870000.000 [m] {CHLV95[1]},
      1045000.000 .. 1310000.000 [m] {CHLV95[2]},
         -200.000 ..   5000.000 [m] {SwissOrthometricAlt[1]},
      ROTATION 2 -> 1;

    Surface = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Area = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.001;
    Line = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord2;
    DirectedLine EXTENDS Line = DIRECTED POLYLINE;
    LineWithAltitude = POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    DirectedLineWithAltitude = DIRECTED POLYLINE WITH (STRAIGHTS, ARCS) VERTEX Coord3;
    
    /* minimal overlaps only (2mm) */
    SurfaceWithOverlaps2mm = SURFACE WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;
    AreaWithOverlaps2mm = AREA WITH (STRAIGHTS, ARCS) VERTEX Coord2 WITHOUT OVERLAPS > 0.002;

    Orientation = 0.00000 .. 359.99999 CIRCULAR [Units.Angle_Degree] <Coord2>;

    Accuracy = (cm, cm50, m, m10, m50, vague);
    Method = (measured, sketched, calculated);

    STRUCTURE LineStructure = 
      Line: Line;
    END LineStructure;

    STRUCTURE DirectedLineStructure =
      Line: DirectedLine;
    END DirectedLineStructure;

    STRUCTURE MultiLine =
      Lines: BAG {1..*} OF LineStructure;
    END MultiLine;

    STRUCTURE MultiDirectedLine =
      Lines: BAG {1..*} OF DirectedLineStructure;
    END MultiDirectedLine;

    STRUCTURE SurfaceStructure =
      Surface: Surface;
    END SurfaceStructure;

    STRUCTURE MultiSurface =
      Surfaces: BAG {1..*} OF SurfaceStructure;
    END MultiSurface;

END GeometryCHLV95_V1.

!! ########################################################################
','2020-10-10 14:55:25.073');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createMetaInfo','True');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.beautifyEnumDispName','underscore');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.arrayTrafo','coalesce');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.nameOptimization','topic');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.localisedTrafo','expand');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.numericCheckConstraints','create');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.sender','ili2pg-4.3.1-23b1f79e8ad644414773bb9bd1a97c8c265c5082');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKey','yes');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.sqlgen.createGeomIndex','True');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsAuthority','EPSG');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.defaultSrsCode','2056');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uuidDefaultValue','uuid_generate_v4()');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.StrokeArcs','enable');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiLineTrafo','coalesce');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.interlis.ili2c.ilidirs','.;http://models.geo.admin.ch');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createForeignKeyIndex','yes');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.jsonTrafo','coalesce');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.createEnumDefs','multiTable');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.uniqueConstraints','create');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.maxSqlNameLength','60');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.inheritanceTrafo','smart1');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.catalogueRefTrafo','coalesce');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiPointTrafo','coalesce');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multiSurfaceTrafo','coalesce');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_SETTINGS (tag,setting) VALUES ('ch.ehi.ili2db.multilingualTrafo','expand');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('DictionariesCH_V1','technicalContact','models@geo.admin.ch');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('SO_AGI_MOpublic_20201009','furtherInformation','http://geo.so.ch/models/AGI/SO_AGI_MOpublic_20201009.uml');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('SO_AGI_MOpublic_20201009','technicalContact','mailto:agi@bd.so.ch');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','furtherInformation','http://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('Dictionaries_V1','technicalContact','models@geo.admin.ch');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','furtherInformation','https://www.geo.admin.ch/internet/geoportal/de/home/topics/geobasedata/models.html');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnits_V1','technicalContact','mailto:models@geo.admin.ch');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','furtherInformation','https://www.geo.admin.ch/de/geoinformation-schweiz/geobasisdaten/geodata-models.html');
INSERT INTO agi_mopublic_pub_export.T_ILI2DB_META_ATTRS (ilielement,attr_name,attr_value) VALUES ('AdministrativeUnitsCH_V1','technicalContact','mailto:models@geo.admin.ch');
