INSERT INTO tb_user (name, email, password) VALUES ('Robson', 'rbs@rbs.com', '123456');
INSERT INTO tb_user (name, email, password) VALUES ('Luana', 'luana@luana.com', '654321');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@maria.com', '654321');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);


INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Course JAVA', 'https://www.seobility.net/es/wiki/images/e/e9/Html-caracteres-especiales.png', 'https://images.pexels.com/photos/1591061/pexels-photo-1591061.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_Id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2022-10-10T20:10:11.1234Z', TIMESTAMP WITH TIME ZONE '2022-12-11T13:10:11.1234Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_Id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2023-01-01T10:10:10.1234Z', TIMESTAMP WITH TIME ZONE '2023-02-11T21:22:11.1234Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Course JAVA', 'Zero to hero', 1, 'https://images.pexels.com/photos/1591061/pexels-photo-1591061.jpeg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'take your doubts', 2, 'https://images.pexels.com/photos/1591061/pexels-photo-1591061.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 2, 2);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives to you', 3, 'https://images.pexels.com/photos/1591061/pexels-photo-1591061.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 3, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter One', 'Start DEV', 1, 'https://images.pexels.com/photos/1591061/pexels-photo-1591061.jpeg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter Two', 'Zero to hero', 2, 'https://images.pexels.com/photos/1591061/pexels-photo-1591061.jpeg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter Three', 'Master', 3, 'https://images.pexels.com/photos/1591061/pexels-photo-1591061.jpeg', 1, 2);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('New section open', TIMESTAMP WITH TIME ZONE '2022-12-11T13:10:11.1234Z',  false, '/notification', 1);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2022-12-11T13:10:11.1234Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2022-12-11T13:10:11.1234Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Lesson 01', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material support: Lesson 01', 'https://www.youtube.com/watch?v=EbFA4RQrc0w');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Lesson 02', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Material support: Lesson 02', 'https://www.youtube.com/watch?v=EbFA4RQrc0w');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Lesson 03', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Material support: Lesson 03', 'https://www.youtube.com/watch?v=EbFA4RQrc0w');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Task 01', 4, 1);
INSERT INTO tb_task (id, description,  question_Count, approval_count, weight, due_Date) VALUES (4, 'Tasks Lesson 01', 10, 6, 1.0, TIMESTAMP WITH TIME ZONE '2022-12-11T13:10:11.1234Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (3, 1, 1);
