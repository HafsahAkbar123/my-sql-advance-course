SELECT
    ps.PatientId
    ,ps.AdmittedDate
    ,ps.Hospital
    , ps.Tariff
    , (select sum(sub.tariff) FROM PatientStay sub where sub.PatientId <= ps.PatientId and sub.PatientId = ps.PatientId) as CumulativeTariff
    , (select count(*) FROM PatientStay sub where sub.PatientId <= ps.PatientId and sub.Hospital = ps.Hospital) as PatientIndex
FROM
    PatientStay ps
ORDER BY ps.Hospital, ps.PatientId


--select sum(tariff) FROM PatientStay