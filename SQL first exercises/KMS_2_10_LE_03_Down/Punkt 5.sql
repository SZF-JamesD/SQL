UPDATE qualglobal
SET kuerzel = 'DBE'
WHERE (kuerzel = 'DAT' AND qid <> 0);

SELECT * FROM qualglobal WHERE kuerzel = 'DBE';