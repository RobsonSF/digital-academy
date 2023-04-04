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

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_Id) VALUES ('1', TIMESTAMP WITH TIME ZONE '2023-01-01T20:10:11.1234Z', TIMESTAMP WITH TIME ZONE '2023-02-11T21:22:11.1234Z', 1);
