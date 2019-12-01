ALTER TABLE tbl_degree convert to charset utf8;
ALTER TABLE tbl_rule convert to charset utf8;
ALTER TABLE tbl_track convert to charset utf8;
ALTER TABLE tbl_track_subject convert to charset utf8;
ALTER TABLE tbl_subject convert to charset utf8;
ALTER TABLE tbl_univ convert to charset utf8;

INSERT INTO tbl_univ(univNo, univTitle) VALUES (1000, "소프트웨어융합대학");
INSERT INTO tbl_univ(univNo, univTitle) VALUES (1000, "무인기융합트랙");

INSERT INTO tbl_track(trackNo, trackTitle, univId) VALUES (2000, "HCI&비쥬얼컴퓨팅", 1);
INSERT INTO tbl_track(trackNo, trackTitle, univId) VALUES (2001, "멀티미디어", 1);
INSERT INTO tbl_track(trackNo, trackTitle, univId) VALUES (2002, "사물인터넷", 1);
INSERT INTO tbl_track(trackNo, trackTitle, univId) VALUES (2003, "시스템응용", 1);
INSERT INTO tbl_track(trackNo, trackTitle, univId) VALUES (2004, "인공지능", 1);
INSERT INTO tbl_track(trackNo, trackTitle, univId) VALUES (2005, "가상현실", 1);
INSERT INTO tbl_track(trackNo, trackTitle, univId) VALUES (2006, "정보보호", 1);
INSERT INTO tbl_track(trackNo, trackTitle, univId) VALUES (2007, "데이터사이언스", 1);
INSERT INTO tbl_track(trackNo, trackTitle, univId) VALUES (2008, "SW교육", 1);
INSERT INTO tbl_track(trackNo, trackTitle, univId) VALUES (2009, "사이버국방", 1);
INSERT INTO tbl_track(trackNo, trackTitle, univId) VALUES (2009, "무인기 1", 2);
INSERT INTO tbl_track(trackNo, trackTitle, univId) VALUES (2009, "무인기 2", 2);


INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3001, "시험 과목 1");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3002, "시험 과목 2");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3003, "시험 과목 3");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3004, "시험 과목 4");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3005, "시험 과목 5");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3006, "시험 과목 6");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3007, "시험 과목 7");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3008, "시험 과목 8");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3009, "시험 과목 9");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3010, "시험 과목 10");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3011, "시험 과목 11");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3012, "시험 과목 12");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3013, "시험 과목 13");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3014, "시험 과목 14");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3015, "시험 과목 15");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3016, "시험 과목 16");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3017, "시험 과목 17");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3018, "시험 과목 18");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3019, "시험 과목 19");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3020, "시험 과목 20");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3021, "시험 과목 21");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3022, "시험 과목 22");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3023, "시험 과목 23");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3024, "시험 과목 24");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3025, "시험 과목 25");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3026, "시험 과목 26");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3027, "시험 과목 27");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3028, "시험 과목 28");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3029, "시험 과목 29");
INSERT INTO tbl_subject(subjectCredit, subjectNo, subjectTitle) VALUES (3, 3030, "시험 과목 30");

INSERT INTO tbl_degree(degreeTitle) VALUES ("학사");
INSERT INTO tbl_degree(degreeTitle) VALUES ("석사");
INSERT INTO tbl_degree(degreeTitle) VALUES ("박사");
INSERT INTO tbl_degree(degreeTitle) VALUES ("학석사");
INSERT INTO tbl_degree(degreeTitle) VALUES ("석박사");

INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (1, 1, 1);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (1, 2, 1);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (1, 3, 1);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 4, 1);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 5, 1);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 6, 1);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 7, 1);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 8, 1);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 9, 1);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 10, 1);

INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (1, 11, 2);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (1, 12, 2);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (1, 13, 2);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 14, 2);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 15, 2);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 16, 2);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 17, 2);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 18, 2);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 19, 2);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 20, 2);

INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (1, 21, 3);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (1, 22, 3);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (1, 23, 3);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 24, 3);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 25, 3);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 26, 3);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 27, 3);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 28, 3);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 29, 3);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 30, 3);

INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (1, 21, 11);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (1, 22, 11);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 23, 11);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 24, 11);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (2, 25, 11);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (3, 26, 11);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (3, 27, 11);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (3, 28, 11);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (4, 29, 11);
INSERT INTO tbl_track_subject(subjectType, subjectId, trackId) VALUES (4, 30, 11);

INSERT INTO tbl_rule(basicCredit, appliedCredit, industryCredit, degreeId, trackId) VALUES (9,18,0,1,1);
INSERT INTO tbl_rule(basicCredit, appliedCredit, industryCredit, degreeId, trackId) VALUES (9,18,0,1,2);
INSERT INTO tbl_rule(basicCredit, appliedCredit, industryCredit, degreeId, trackId) VALUES (9,18,0,1,3);
INSERT INTO tbl_rule(basicCredit, appliedCredit, industryCredit, degreeId, trackId) VALUES (9,18,0,1,4);
INSERT INTO tbl_rule(basicCredit, appliedCredit, industryCredit, degreeId, trackId) VALUES (9,18,0,1,5);
INSERT INTO tbl_rule(basicCredit, appliedCredit, industryCredit, degreeId, trackId) VALUES (9,18,0,1,6);
INSERT INTO tbl_rule(basicCredit, appliedCredit, industryCredit, degreeId, trackId) VALUES (9,18,0,1,7);
INSERT INTO tbl_rule(basicCredit, appliedCredit, industryCredit, degreeId, trackId) VALUES (9,18,0,1,8);
INSERT INTO tbl_rule(basicCredit, appliedCredit, industryCredit, degreeId, trackId) VALUES (9,18,0,1,9);
INSERT INTO tbl_rule(basicCredit, appliedCredit, industryCredit, degreeId, trackId) VALUES (24,0,0,1,10);
INSERT INTO tbl_rule(basicCredit, appliedCredit, expertCredit, industryCredit, degreeId, trackId) VALUES (24,18,21,36,1,11);
INSERT INTO tbl_rule(basicCredit, appliedCredit, expertCredit, industryCredit, degreeId, trackId) VALUES (4,8,1,6,2,11);

