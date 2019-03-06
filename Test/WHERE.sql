-- 07.Hiển thị tất cả thông tin của kiến trúc sư " le thanh tung "
SELECT * FROM sql_qlct.architect
WHERE name = "le thanh tung";

-- 08.Hiển thị tên,năm sinh các công nhân có chuyên môn hàn hoặc điện
SELECT name, birthday, skill FROM sql_qlct.worker
WHERE skill = "han" OR skill = "dien";

-- 09.Hiển thị tên các công nhân có chuyên môn hàn hoặc điện và sinh lớn hơn năm 1984
SELECT name, birthday, skill FROM sql_qlct.worker
WHERE (skill = "han" OR skill = "dien") AND (birthday > 1948);

-- 10. Hiển thị những công nhân bắt đầu vào nghề khi dưới 20 tuổi
SELECT * FROM worker
WHERE birthday + 20 > year;

-- 11.Hiển thị những công nhân có năm sinh 1945, 1940, 1948

-- C1
SELECT * FROM worker
WHERE birthday = 1945 OR birthday = 1940 OR birthday = 1948;

-- C2
SELECT * FROM worker
WHERE birthday IN (1945,1940,1948);

-- #Hiển thị những công nhân có năm sinh khác 1945, 1940, 1948
SELECT * FROM worker
WHERE birthday NOT IN (1945,1940,1948);

-- Tìm những công trình có chi phí đầu tư từ 200 - 500 triệu

-- C1
SELECT * FROM building
WHERE cost >= 200 AND cost <= 500;

-- C2 có thể thêm NOT 
SELECT * FROM building
WHERE cost BETWEEN 200 AND 500;

-- 13.Tìm những kiến trúc sư có họ là Nguyễn - có thể thêm NOT
SELECT * FROM architect
WHERE name LIKE "nguyen%";

-- 14.Tìm những kiến trúc sư có họ lót là anh  - có thể thêm NOT
SELECT * FROM architect
WHERE name LIKE "%anh%";

-- 15.Tìm những kiến trúc sư có tên bắt đầu th và 3 kí tự  - có thể thêm NOT
SELECT * FROM architect
WHERE name LIKE "%th_";

-- 16.Tìm chủ thầu ko có phone - có thể thay IS bằng 
SELECT * FROM contractor
WHERE phone IS NULL ;

SELECT * FROM contractor
WHERE phone IS NOT NULL ;

