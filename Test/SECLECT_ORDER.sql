-- 01.Hiển thị toàn bộ nội dung của bảng Architect
SELECT * FROM sql_qlct.architect;
-- 02.Hiển thị danh sách gồm họ tên và giới tính của kiến trúc sư
SELECT name, sex FROM sql_qlct.architect;
-- 03.Hiển thị những năm sinh có thể có của các kiến trúc sư không có năm trung nhau
SELECT DISTINCT birthday FROM sql_qlct.architect;
-- 04.Hiển thị danh sách các kiến trúc sư ( họ tên và năm sinh ) (giá trị năm sinh dần )
SELECT name, birthday FROM sql_qlct.architect ORDER BY birthday DESC;
-- 05.Hiển thị danh sách các công trình có chi phí từ thấp đến cao
--    Nếu 2 công trình có chi phí bàng nhau sẽ sắp xếp theo tên thành phố
SELECT name, cost, city FROM sql_qlct.building ORDER BY cost ASC, city DESC;

