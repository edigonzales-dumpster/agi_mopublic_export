# agi_mopublic_export

```
java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar \
--dbschema agi_mopublic_pub --models SO_AGI_MOpublic_20190424 \
--defaultSrsCode 2056 --createGeomIdx --createFk --createFkIdx --createUnique --createEnumTabs --beautifyEnumDispName --createMetaInfo --createNumChecks --nameByTopic --strokeArcs \
--createscript agi_mopublic_pub.sql 
```

```
java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar \
--dbhost localhost --dbport 54322 --dbdatabase pub --dbusr admin --dbpwd admin \
--dbschema agi_mopublic_pub --models SO_AGI_MOpublic_20190424 \
--disableValidation --import /home/stefan/Downloads/ch.so.agi_mopublic_xtf/ch.so.agi_mopublic_2020-09-08.xtf 
```

```
java -jar /usr/local/ili2pg-4.3.1/ili2pg.jar \
--dbschema agi_mopublic_pub_export --models SO_AGI_MOpublic_20201009 \
--defaultSrsCode 2056 --createGeomIdx --createFk --createFkIdx --createUnique --createEnumTabs --beautifyEnumDispName --createMetaInfo --createNumChecks --nameByTopic --strokeArcs \
--modeldir ".;http://models.geo.admin.ch" \
--createscript agi_mopublic_pub_export.sql 
```

```
export ORG_GRADLE_PROJECT_dbUriEdit=jdbc:postgresql://edit-db/edit
export ORG_GRADLE_PROJECT_dbUserEdit=admin
export ORG_GRADLE_PROJECT_dbPwdEdit=admin
export ORG_GRADLE_PROJECT_dbUriPub=jdbc:postgresql://pub-db/pub
export ORG_GRADLE_PROJECT_dbUserPub=admin
export ORG_GRADLE_PROJECT_dbPwdPub=admin

export ORG_GRADLE_PROJECT_dbUriEdit=jdbc:postgresql://localhost:54321/edit
export ORG_GRADLE_PROJECT_dbUserEdit=admin
export ORG_GRADLE_PROJECT_dbPwdEdit=admin
export ORG_GRADLE_PROJECT_dbUriPub=jdbc:postgresql://localhost:54322/pub
export ORG_GRADLE_PROJECT_dbUserPub=admin
export ORG_GRADLE_PROJECT_dbPwdPub=admin

export ORG_GRADLE_PROJECT_dbUriEdit=jdbc:postgresql://localhost:54321/edit
export ORG_GRADLE_PROJECT_dbUserEdit=gretl
export ORG_GRADLE_PROJECT_dbPwdEdit=gretl
export ORG_GRADLE_PROJECT_dbUriPub=jdbc:postgresql://localhost:54322/pub
export ORG_GRADLE_PROJECT_dbUserPub=gretl
export ORG_GRADLE_PROJECT_dbPwdPub=gretl


export ORG_GRADLE_PROJECT_awsAccessKeyAgi=XXXXXXXXXXX
export ORG_GRADLE_PROJECT_awsSecretAccessKeyAgi=XXXXXXXXXXX
export ORG_GRADLE_PROJECT_gretlEnvironment=dev
```

./start-gretl.sh --docker-image sogis/gretl-runtime:latest --docker-network gretljobs-agi_mopublic_pub_export_default --job-directory $PWD agi_mopublic_pub_export tasks --all