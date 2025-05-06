
SELECT
    ps.PatientId
    ,ps.AdmittedDate
    ,ps.Hospital
    , ps.Tariff
    , '???' as CumulativeTariff
FROM
    PatientStay ps
ORDER BY ps.PatientId
