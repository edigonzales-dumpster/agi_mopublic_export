DELETE FROM 
    agi_mopublic_pub_export.mopublic_fixpunkt
;

INSERT INTO agi_mopublic_pub_export.mopublic_fixpunkt
    (
        geometrie,
        typ_txt,
        nbident,
        nummer,
        hoehe,
        bfs_nr,
        lagegenauigkeit,
        hoehengenauigkeit,
        punktzeichen_txt,
        importdatum,
        nachfuehrung,
        koordinate
    )
    SELECT
        geometrie,
        typ_txt,
        nbident,
        nummer,
        hoehe,
        bfs_nr,
        lagegenauigkeit,
        hoehengenauigkeit,
        punktzeichen_txt,
        importdatum,
        nachfuehrung,
        koordinate
    FROM 
        agi_mopublic_pub.mopublic_fixpunkt
    WHERE
        bfs_nr = ${gem_bfs}
;