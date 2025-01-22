SELECT * FROM participants;
SELECT * FROM speakers;
SELECT * FROM topics;
SELECT * FROM participant_topic;
-- testing foreign key rules
-- INSERT INTO topics (title, speakerID) VALUES ('Invalid Topic, 9999');

-- testing email uniqueness
/*INSERT INTO participants (name, email, organization) 
VALUES ('Test User', 'john@example.com', 'Test Org');*/

-- test timestamps
/*UPDATE participants SET name = 'John New' WHERE participantID = 1;
SELECT * FROM participants WHERE participantID = 1;*/

-- test the linked stuffs
INSERT INTO participant_topic (participantID, topicsID) 
VALUES (1, 1), (1, 2), (2, 1);

SELECT p.name, t.topics
from participants p 
JOIN participant_topic pt ON p.participantID = pt.participantID
JOIN topics T ON pt.topicsID = t.topicsID;

