DELETE FROM post_comment;
DELETE FROM post;
DELETE FROM product_comment;
DELETE FROM product;
DELETE FROM user;
DELETE FROM recommend;
DELETE FROM kindergarden;
DELETE FROM child_house;

ALTER TABLE user AUTO_INCREMENT = 1;
ALTER TABLE post AUTO_INCREMENT = 1;
ALTER TABLE post_comment AUTO_INCREMENT = 1;
ALTER TABLE product AUTO_INCREMENT = 1;
ALTER TABLE product_comment AUTO_INCREMENT = 1;
ALTER TABLE recommend AUTO_INCREMENT = 1;
ALTER TABLE kindergarden AUTO_INCREMENT = 1;
ALTER TABLE child_house AUTO_INCREMENT = 1;

-- 샘플 사용자
INSERT INTO user(loginId, nickname, name, password, email) VALUES
('1234', '바삭한해물파전', 'hmpj', '$2a$10$K6ipjV2LUKV2ncw3FE9wwe1PEn3lHepog5kKu/vutJ2K9HFLQ/12m', 'hmpj@mail.com'),
('apple1234', '말랑한고구마', '박사과', '$2a$10$6gVaMy7.lbezp8bGRlV2fOArmA3WAk2EHxSKxncnzs28/m3DXPyA2', 'apple@mail.com'),
('melon1234', '맑은아침햇살', '김멜론', '$2a$10$7LTnvLaczZbEL0gabgqgfezQPr.xOtTab2NAF/Yt4FrvTSi0Y29Xa', 'melon@mail.com'),
('cherry1234', '마라탕먹고싶다', '이체리', '$2a$10$53OEi/JukSMPr3z5RQBFH.z0TCYSUDPtxf1/8caRyRVdDNdHA9QHi', 'cherry@mail.com')
;

INSERT INTO user_authority (authName) VALUES
('MEMBER'), 
('ADMIN')
;

INSERT INTO user_authorities (userId, authorityId) VALUES
(1, 2),
(2, 1),
(3, 1),
(4, 1)
;


INSERT INTO user_img(sourceName , fileName , userId) VALUES
('양파쿵야.jpg', '양파쿵야.jpg', 2),
('핑구1.jpg', '핑구1.jpg', 3),
('핑구2.jpg', '핑구2.jpg', 4)
;

INSERT INTO product(productName, region, price, content, viewCnt, userId) VALUES
('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 11,  4),
('패딩 강', '용산구', 20000, '패딩 팔아요~ ', 12, 2),
('장난감', '서초구', 0, '장난감 나눔해요~ ', 13, 3),
('아기 조끼용', '강남구', 10000, '아기 조끼 팔아요~ ', 14, 4),
('장갑', '용산구', 0, '장갑 나뭄해요~ ', 13, 2),
('손수건', '서초구', 2000, '손수건 팔아요~ ', 6, 3),
('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 7,  4),
('패딩', '용산구', 20000, '패딩 팔아요~ ', 8, 2),
('장난감', '서초구', 0, '장난감 나눔해요~ ', 6, 3),
('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 8, 4),
('장갑', '용산구', 0, '장갑 나뭄해요~ ', 11, 2),
('손수건', '서초구', 2000, '손수건 팔아요~ ', 12, 3),
('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 13,  4),
('패딩', '용산구', 20000, '패딩 팔아요~ ', 12, 2),
('장난감', '서초구', 0, '장난감 나눔해요~ ', 11, 3),
('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 6, 4),
('장갑', '용산구', 0, '장갑 나뭄해요~ ', 8, 2),
('손수건', '서초구', 2000, '손수건 팔아요~ ', 9, 3),
('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 8,  4),
('패딩', '용산구', 20000, '패딩 팔아요~ ', 14, 2),
('장난감', '서초구', 0, '장난감 나눔해요~ ', 15, 3),
('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 6, 2),
('장갑', '용산구', 0, '장갑 나뭄해요~ ', 5, 2),
('손수건', '서초구', 2000, '손수건 팔아요~ ', 8, 3),
('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 10,  2),
('패딩', '용산구', 20000, '패딩 팔아요~ ', 12, 2),
('장난감', '서초구', 0, '장난감 나눔해요~ ', 13, 3),
('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 7, 2),
('장갑', '용산구', 0, '장갑 나뭄해요~ ', 15, 2),
('손수건', '서초구', 2000, '손수건 팔아요~ ', 6, 3),
('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 14,  3),
('패딩', '용산구', 20000, '패딩 팔아요~ ', 12, 2),
('장난감', '서초구', 0, '장난감 나눔해요~ ', 13, 3),
('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 7, 3),
('장갑', '용산구', 0, '장갑 나뭄해요~ ', 5, 2),
('손수건', '서초구', 2000, '손수건 팔아요~ ', 6, 3),
('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 9,  2),
('패딩', '용산구', 20000, '패딩 팔아요~ ', 6, 2),
('장난감', '서초구', 0, '장난감 나눔해요~ ', 8, 3),
('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 7, 2),
('장갑', '용산구', 0, '장갑 나뭄해요~ ', 13, 2),
('손수건', '서초구', 2000, '손수건 팔아요~ ', 12, 3),
('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 12,  2),
('패딩', '용산구', 20000, '패딩 팔아요~ ', 8, 2),
('장난감', '서초구', 0, '장난감 나눔해요~ ', 7, 3),
('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 9, 2),
('장갑', '용산구', 0, '장갑 나뭄해요~ ', 10, 2),
('손수건', '서초구', 2000, '손수건 팔아요~ ', 6, 3),
('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 11,  2),
('패딩', '용산구', 20000, '패딩 팔아요~ ', 7, 2),
('장난감', '서초구', 0, '장난감 나눔해요~ ', 8, 3),
('아기 조끼', '강남구', 10000, '아기 조끼 팔아요~ ', 14, 2),
('장갑', '용산구', 0, '장갑 나뭄해요~ ', 5, 2),
('손수건', '서초구', 2000, '손수건 팔아요~ ', 6, 3)
;

-- 샘플 상품 글
-- INSERT INTO product(productName, region, price, content, viewCnt, userId) VALUES
-- ('아기 신발', '강남구', 5000, '아기 신발 팔아요~ ', 11,  1),
-- ('패딩 강', '용산구', 20000, '패딩 팔아요~ ', 12, 2),
-- ('장난감', '서초구', 0, '장난감 나눔해요~ ', 13, 3),
-- ('아기 조끼용', '강남구', 10000, '아기 조끼 팔아요~ ', 14, 1),
-- ('장갑', '용산구', 0, '장갑 나뭄해요~ ', 13, 2)
-- ;

-- 샘플 상품 댓글
INSERT INTO product_comment(content, userId, productId) VALUES
('말랑한고구마가 1번 글에 댓글 작성', 4, 1),
('말랑한고구마가 2번 글에 댓글 작성', 4, 2),
('말랑한고구마가 3번 글에 댓글 작성', 4, 3),
('말랑한고구마가 4번 글에 댓글 작성', 4, 4),
('말랑한고구마가 5번 글에 댓글 작성', 4, 5),
('맑은아침햇살이 1번 글에 댓글 작성', 2, 1),
('맑은아침햇살이 2번 글에 댓글 작성', 2, 2),
('맑은아침햇살이 3번 글에 댓글 작성', 2, 3),
('맑은아침햇살이 4번 글에 댓글 작성', 2, 4),
('맑은아침햇살이 5번 글에 댓글 작성', 2, 5),
('마라탕먹고싶다가 1번 글에 댓글 작성', 3, 1),
('마라탕먹고싶다가 2번 글에 댓글 작성', 3, 2),
('마라탕먹고싶다가 3번 글에 댓글 작성', 3, 3),
('마라탕먹고싶다가 4번 글에 댓글 작성', 3, 4),
('마라탕먹고싶다가 5번 글에 댓글 작성', 3, 5)
;

-- 샘플 커뮤니티 글 
-- INSERT INTO post(title, content, viewCnt, recommendCnt, userId) VALUES
-- ('안녕', '아기신발', 11, 4, 1),
-- ('질문', '패딩', 12, 6, 2),
-- ('안녕하세요', '장난감', 13, 2, 3),
-- ('반갑습니다', '아기조끼', 14, 4, 1),
-- ('메롱', '메론', 13, 6, 2),
-- ('안녕', '아기신발', 11, 8, 1),
-- ('질문', '패딩', 12, 7, 2),
-- ('안녕하세요', '장난감', 13, 3, 3),
-- ('반갑습니다', '아기조끼', 14, 10, 1),
-- ('메롱', '메론', 13, 6, 2),
-- ('안녕', '아기신발', 11, 8, 1),
-- ('질문', '패딩', 12, 9, 2),
-- ('안녕하세요', '장난감', 13, 11, 3),
-- ('반갑습니다', '아기조끼', 14, 12, 1),
-- ('메롱', '메론', 13, 15, 2),
-- ('안녕', '아기신발', 11, 12, 1),
-- ('질문', '패딩', 12, 7, 2),
-- ('안녕하세요', '장난감', 13, 14, 3),
-- ('반갑습니다', '아기조끼', 14, 5, 1),
-- ('메롱', '메론', 13, 7, 2),
-- ('안녕', '아기신발', 11, 5, 1),
-- ('질문', '패딩', 12, 3, 2),
-- ('안녕하세요', '장난감', 13, 8, 3),
-- ('반갑습니다', '아기조끼', 14, 3, 1),
-- ('메롱', '메론', 13, 6, 2),
-- ('안녕', '아기신발', 11, 12, 1),
-- ('질문', '패딩', 12, 14, 2),
-- ('안녕하세요', '장난감', 13, 7, 3),
-- ('반갑습니다', '아기조끼', 14, 4, 1),
-- ('메롱', '메론', 13, 8, 2),
-- ('안녕', '아기신발', 11, 15,  1),
-- ('질문', '패딩', 12, 9, 2),
-- ('안녕하세요', '장난감', 13, 5, 3)
;

-- 샘플 커뮤니티 글 
INSERT INTO post(title, content, viewCnt, userId) VALUES
('안녕', '아기신발', 11, 4),
('질문', '패딩', 12, 2),
('안녕하세요', '장난감', 13, 3),
('반갑습니다', '아기조끼', 14, 4),
('메롱', '메론', 13, 2),
('안녕', '아기신발', 11, 4),
('질문', '패딩', 12, 2),
('안녕하세요', '장난감', 13, 3),
('반갑습니다', '아기조끼', 14, 4),
('메롱', '메론', 13, 2),
('안녕', '아기신발', 11, 4),
('질문', '패딩', 12, 2),
('안녕하세요', '장난감', 13, 3),
('반갑습니다', '아기조끼', 14, 4),
('메롱', '메론', 13, 2),
('안녕', '아기신발', 11, 4),
('질문', '패딩', 12, 2),
('안녕하세요', '장난감', 13, 3),
('반갑습니다', '아기조끼', 14, 4),
('메롱', '메론', 13, 2),
('안녕', '아기신발', 11, 4),
('질문', '패딩', 12, 2),
('안녕하세요', '장난감', 13, 3),
('반갑습니다', '아기조끼', 14, 4),
('메롱', '메론', 13, 2),
('안녕', '아기신발', 11, 4),
('질문', '패딩', 12, 2),
('안녕하세요', '장난감', 13, 3),
('반갑습니다', '아기조끼', 14, 1),
('메롱', '메론', 13, 2),
('안녕', '아기신발', 11, 1),
('질문', '패딩', 12, 2),
('안녕하세요', '장난감', 13, 3)
;

-- 샘플 커뮤니티 글 
-- INSERT INTO post(title, content, viewCnt, recommendCnt, userId) VALUES
-- ('안녕', '아기신발', 11, 4, 1),
-- ('질문', '패딩', 12, 6, 2),
-- ('안녕하세요', '장난감', 13, 3, 3),
-- ('반갑습니다', '아기조끼', 14, 7, 1),
-- ('메롱', '메론', 13, 9, 2)
-- ;

-- 샘플 커뮤니티 댓글 
INSERT INTO post_comment(content, userId, postId) VALUES
('말랑한고구마가 1번 글에 댓글 작성', 1, 1),
('말랑한고구마가 2번 글에 댓글 작성', 1, 2),
('말랑한고구마가 3번 글에 댓글 작성', 1, 3),
('말랑한고구마가 4번 글에 댓글 작성', 1, 4),
('말랑한고구마가 5번 글에 댓글 작성', 1, 5),
('맑은아침햇살이 1번 글에 댓글 작성', 2, 1),
('맑은아침햇살이 2번 글에 댓글 작성', 2, 2),
('맑은아침햇살이 3번 글에 댓글 작성', 2, 3),
('맑은아침햇살이 4번 글에 댓글 작성', 2, 4),
('맑은아침햇살이 5번 글에 댓글 작성', 2, 5),
('마라탕먹고싶다가 1번 글에 댓글 작성', 3, 1),
('마라탕먹고싶다가 2번 글에 댓글 작성', 3, 2),
('마라탕먹고싶다가 3번 글에 댓글 작성', 3, 3),
('마라탕먹고싶다가 4번 글에 댓글 작성', 3, 4),
('마라탕먹고싶다가 5번 글에 댓글 작성', 3, 5)
;

-- 추천
-- INSERT INTO recommend(userId, postId) VALUES
-- (1, 1),
-- (1, 2),
-- (2, 2),
-- (3, 2),
-- (1, 3),
-- (3, 3)
-- ;




