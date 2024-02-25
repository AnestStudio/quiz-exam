DROP TRIGGER IF EXISTS after_delete_question;

CREATE TRIGGER after_delete_question
AFTER DELETE ON home_examquestion FOR EACH ROW
BEGIN

    UPDATE home_exam
	SET question_count = (SELECT COUNT(question_id)
								FROM home_examquestion
								WHERE exam_id = OLD.exam_id)
	WHERE exam_id = OLD.exam_id;

END;