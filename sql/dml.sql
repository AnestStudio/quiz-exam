INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$390000$9qZMLuV3bvoPwnHki6jgCO$K6eXBoM+Z7B4jLNLvmN2q6h/vpCFq54o/pmhI82k08Y=', '2024-02-22 10:24:06.686720', 1, 'admin', 'Tuấn', 'Anh', 'admin@gmail.com', 1, 1, '2024-02-22 10:01:20.000000');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (2, 'pbkdf2_sha256$390000$64zzQ0UAm9EWnXPtCXr2Np$xgttUxGOZbQB7Q+GhX0JBTJdD4cRQT5OqfPzhDlJuZg=', '2024-02-22 13:00:57.742028', 0, 'user01', 'Tuấn Anh', 'Đinh', 'anhdt@gmail.com', 0, 1, '2024-02-22 10:04:16.000000');


INSERT INTO home_subject (subject_id, subject_code, subject_name) VALUES (1, 'CSI104', 'Introduction to Computer Science');
INSERT INTO home_subject (subject_id, subject_code, subject_name) VALUES (2, 'DTA301', 'Data Analytics');
INSERT INTO home_subject (subject_id, subject_code, subject_name) VALUES (3, 'PRM392', 'Mobile Programming');
INSERT INTO home_subject (subject_id, subject_code, subject_name) VALUES (4, 'SAP341', 'SAP Application Development with ABAP');
INSERT INTO home_subject (subject_id, subject_code, subject_name) VALUES (5, 'SWD392', 'SW Architecture and Design');
INSERT INTO home_subject (subject_id, subject_code, subject_name) VALUES (6, 'SWR302', 'Software Requirement');
INSERT INTO home_subject (subject_id, subject_code, subject_name) VALUES (7, 'SWT301', 'Software Testing');
INSERT INTO home_subject (subject_id, subject_code, subject_name) VALUES (8, 'WDU203', 'UI/UX Design');


INSERT INTO home_usersubject (id, subject_id, user_id) VALUES (1, 1, 2);
INSERT INTO home_usersubject (id, subject_id, user_id) VALUES (2, 2, 2);
INSERT INTO home_usersubject (id, subject_id, user_id) VALUES (3, 3, 2);


INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (1, 'What is the capital of France?', '{"a": "Paris", "b": "London", "c": "Berlin", "d": "Madrid"}', '["a"]', 0.50, 'Chapter 1', 1, 'DSCF1720.JPG', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (2, 'Who wrote "Romeo and Juliet"?', '{"a": "William Shakespeare", "b": "Charles Dickens", "c": "Jane Austen", "d": "Leo Tolstoy"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (3, 'What is the chemical symbol for water?', '{"a": "H2O", "b": "CO2", "c": "O2", "d": "N2"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (4, 'What year did the Titanic sink?', '{"a": "1912", "b": "1914", "c": "1908", "d": "1920"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (5, 'What is the powerhouse of the cell?', '{"a": "Mitochondria", "b": "Ribosome", "c": "Nucleus", "d": "Endoplasmic reticulum"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (6, 'Who painted the Mona Lisa?', '{"a": "Leonardo da Vinci", "b": "Pablo Picasso", "c": "Vincent van Gogh", "d": "Michelangelo"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (7, 'What is the largest planet in our solar system?', '{"a": "Jupiter", "b": "Saturn", "c": "Neptune", "d": "Mars"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (8, 'What is the currency of Japan?', '{"a": "Yen", "b": "Dollar", "c": "Euro", "d": "Pound"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (9, 'Which of the following is a programming language?', '{"a": "Python", "b": "Microsoft Excel", "c": "Adobe Photoshop", "d": "Google Chrome"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (10, 'Who was the first female Prime Minister of the United Kingdom?', '{"a": "Margaret Thatcher", "b": "Angela Merkel", "c": "Theresa May", "d": "Jacinda Ardern"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (11, 'What is the capital of Italy?', '{"a": "Rome", "b": "Paris", "c": "Madrid", "d": "Berlin"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (12, 'Who wrote "The Great Gatsby"?', '{"a": "F. Scott Fitzgerald", "b": "Ernest Hemingway", "c": "John Steinbeck", "d": "Mark Twain"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (13, 'What is the chemical symbol for gold?', '{"a": "Au", "b": "Ag", "c": "Fe", "d": "Hg"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (14, 'What year did World War II end?', '{"a": "1945", "b": "1918", "c": "1939", "d": "1943"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (15, 'What is the largest mammal?', '{"a": "Blue whale", "b": "Elephant", "c": "Giraffe", "d": "Hippopotamus"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (16, 'What is the currency of Australia?', '{"a": "Australian Dollar", "b": "Euro", "c": "Yen", "d": "Pound Sterling"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (17, 'What is the chemical symbol for carbon dioxide?', '{"a": "CO2", "b": "H2O", "c": "O2", "d": "N2"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (18, 'Who painted the Starry Night?', '{"a": "Vincent van Gogh", "b": "Pablo Picasso", "c": "Leonardo da Vinci", "d": "Claude Monet"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (19, 'What is the largest moon in the solar system?', '{"a": "Ganymede", "b": "Titan", "c": "Europa", "d": "Callisto"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (20, 'What is the capital of Spain?', '{"a": "Madrid", "b": "Rome", "c": "Berlin", "d": "Paris"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (21, 'What is the capital of India?', '{"a": "New Delhi", "b": "Mumbai", "c": "Kolkata", "d": "Chennai"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (22, 'Who wrote "To Kill a Mockingbird"?', '{"a": "Harper Lee", "b": "F. Scott Fitzgerald", "c": "Ernest Hemingway", "d": "Mark Twain"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (23, 'What is the chemical symbol for iron?', '{"a": "Fe", "b": "Au", "c": "Ag", "d": "Hg"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (24, 'What year did the Berlin Wall fall?', '{"a": "1989", "b": "1991", "c": "1987", "d": "1993"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (25, 'What is the largest bird?', '{"a": "Ostrich", "b": "Eagle", "c": "Condor", "d": "Emu"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (26, 'What is the currency of China?', '{"a": "Renminbi", "b": "Yen", "c": "Dollar", "d": "Won"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (27, 'Who invented the telephone?', '{"a": "Alexander Graham Bell", "b": "Thomas Edison", "c": "Nikola Tesla", "d": "Albert Einstein"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (28, 'What is the chemical symbol for sodium?', '{"a": "Na", "b": "K", "c": "Cl", "d": "H"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (29, 'Who wrote "The Catcher in the Rye"?', '{"a": "J.D. Salinger", "b": "Mark Twain", "c": "F. Scott Fitzgerald", "d": "Ernest Hemingway"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (30, 'What is the largest desert in the world?', '{"a": "Sahara Desert", "b": "Arabian Desert", "c": "Gobi Desert", "d": "Kalahari Desert"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (31, 'What is the largest fish in the world?', '{"a": "Whale Shark", "b": "Blue Whale", "c": "Giant Squid", "d": "Manta Ray"}', '["a"]', 0.50, 'Chapter 4', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (32, 'What is the currency of Canada?', '{"a": "Canadian Dollar", "b": "Euro", "c": "Yen", "d": "Pound Sterling"}', '["a"]', 0.50, 'Chapter 4', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (33, 'Who was the first woman to win a Nobel Prize?', '{"a": "Marie Curie", "b": "Rosalind Franklin", "c": "Dorothy Hodgkin", "d": "Irene Joliot-Curie"}', '["a"]', 0.50, 'Chapter 4', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (34, 'What is the chemical symbol for mercury?', '{"a": "Hg", "b": "Au", "c": "Ag", "d": "Fe"}', '["a"]', 0.50, 'Chapter 4', 1, 'no_image', 1);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (35, 'Who wrote "Pride and Prejudice"?', '{"a": "Jane Austen", "b": "Emily Brontë", "c": "Charlotte Brontë", "d": "Virginia Woolf"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 2);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (36, 'What is the longest river in the world?', '{"a": "Nile", "b": "Amazon", "c": "Yangtze", "d": "Mississippi"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 2);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (37, 'What is the capital of Russia?', '{"a": "Moscow", "b": "Saint Petersburg", "c": "Novosibirsk", "d": "Yekaterinburg"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 2);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (38, 'What is the capital of Mexico?', '{"a": "Mexico City", "b": "Cancún", "c": "Guadalajara", "d": "Monterrey"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 2);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (39, 'Who discovered gravity?', '{"a": "Isaac Newton", "b": "Albert Einstein", "c": "Galileo Galilei", "d": "Stephen Hawking"}', '["a"]', 0.50, 'Chapter 1', 1, 'no_image', 2);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (40, 'What is the chemical symbol for silver?', '{"a": "Ag", "b": "Au", "c": "Fe", "d": "Hg"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 2);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (41, 'What year did the American Civil War end?', '{"a": "1865", "b": "1876", "c": "1859", "d": "1881"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 2);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (42, 'What is the largest reptile?', '{"a": "Saltwater Crocodile", "b": "Anaconda", "c": "Komodo Dragon", "d": "Leatherback Sea Turtle"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 2);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (43, 'What is the currency of Germany?', '{"a": "Euro", "b": "Deutsche Mark", "c": "Pound Sterling", "d": "Yen"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 2);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (44, 'Who was the first person to step on the moon?', '{"a": "Neil Armstrong", "b": "Buzz Aldrin", "c": "Yuri Gagarin", "d": "Michael Collins"}', '["a"]', 0.50, 'Chapter 2', 1, 'no_image', 2);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (45, 'What is the chemical symbol for helium?', '{"a": "He", "b": "H", "c": "O", "d": "N"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 2);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (46, 'Who wrote "1984"?', '{"a": "George Orwell", "b": "Aldous Huxley", "c": "Ray Bradbury", "d": "J.R.R. Tolkien"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 2);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (47, 'What is the highest mountain in the world?', '{"a": "Mount Everest", "b": "K2", "c": "Kangchenjunga", "d": "Lhotse"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 2);
INSERT INTO home_question (question_id, question, answer_list, answer, mark, unit, mix_choices, image, subject_id) VALUES (48, 'What is the capital of South Africa?', '{"a": "Pretoria", "b": "Cape Town", "c": "Bloemfontein", "d": "Johannesburg"}', '["a"]', 0.50, 'Chapter 3', 1, 'no_image', 2);
