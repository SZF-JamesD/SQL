UPDATE qualglobal 
SET 
    bezeichnung = CASE
        WHEN qid = 2 THEN 'Second Level Helpdesk'
        WHEN qid = 3 THEN 'First Level Helpdesk'
        ELSE bezeichnung
    END,
    kuerzel = CASE
        WHEN qid = 3 THEN 'FLH'
        ELSE kuerzel
    END
WHERE
    qid IN (2 , 3);
SELECT qid, bezeichnung, kuerzel FROM qualglobal WHERE qid IN (2, 3);
