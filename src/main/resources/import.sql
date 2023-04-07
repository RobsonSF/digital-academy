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

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('First feedbacks lesson: please review', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Second feedback: please review', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Third feedback: please review', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/RobsonSF/digital-academy', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Topic title 1', 'Topic body 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Topic title 2', 'Topic body 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Topic title 3', 'Topic body 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Topic title 4', 'Topic body 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Topic title 5', 'Topic body 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Topic title 6', 'Topic body 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Try rerun', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Its Ok, tanks!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);
