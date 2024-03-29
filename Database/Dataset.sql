--------------------HOC SINH
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY';
INSERT INTO HOCSINH VALUES('2858','NGUYEN DUC','DUNG','11-11-2011','QUAN 1','NAM');
INSERT INTO HOCSINH VALUES('7747','HOANG','PHU','01-07-2011','QUAN 1','NAM');
INSERT INTO HOCSINH VALUES('5843','NGUYEN NGOC','ANH','02-07-2010','QUAN 2','NU');
INSERT INTO HOCSINH VALUES('1347','DANG DANG','KHANH','04-07-2010','QUAN 3','NAM');
INSERT INTO HOCSINH VALUES('8212','VO THANH','HUNG','10-10-2010','QUAN 2 ','NAM');
INSERT INTO HOCSINH VALUES('3169','BUI KHANH','LINH','03-07-2009','QUAN 3','NU');
INSERT INTO HOCSINH VALUES('2039','LE THANH','VAN','09-09-2009','QUAN 3','NU');
INSERT INTO HOCSINH VALUES('2317','BUI LAM','TIEN','05-07-2008','QUAN 10','NAM');
INSERT INTO HOCSINH VALUES('2218','PHAM THANH','HIEN','08-08-2008','QUAN 2','NU');
--------------------PHU HUYNH
INSERT INTO PHUHUYNH VALUES('7747','NGUYEN VAN','HIEP','CHA', '0934443768', '14-03-1985','NAM');
INSERT INTO PHUHUYNH VALUES('5843','NGUYEN VAN','HIEP','CHA','0934443768', '14-03-1985','NAM');
INSERT INTO PHUHUYNH VALUES('3169','PHAM THANH','HIEN','ME','0936453468', '03-07-1985','NU');
INSERT INTO PHUHUYNH VALUES('1347','DANG TRAN','KHANH','CHA','0937913468', '04-07-1980','NAM');
INSERT INTO PHUHUYNH VALUES('2317','VO MINH','TRIET','CHA','0938923468','05-07-1977','NAM');
INSERT INTO PHUHUYNH VALUES('2858','NGUYEN LAP','QUAN','CHA','0939113468','11-11-1978','NAM');
INSERT INTO PHUHUYNH VALUES('8212','NGUYEN MINH','ANH','ME','0931343368','08-08-1981','NU');
INSERT INTO PHUHUYNH VALUES('2039','TRAN NHU','YEN','DI','0932463468','09-09-1979','NU');
INSERT INTO PHUHUYNH VALUES('2218','NGUYEN MINH','ANH','ME','0931343368','08-08-1981','NU');
------------------MON HOC
INSERT INTO MONHOC VALUES('TOAN',''); 
INSERT INTO MONHOC VALUES('VAT LY',''); 
INSERT INTO MONHOC VALUES('HOA HOC',''); 
INSERT INTO MONHOC VALUES('SINH HOC',''); 
INSERT INTO MONHOC VALUES('LICH SU',''); 
INSERT INTO MONHOC VALUES('DIA LY',''); 
INSERT INTO MONHOC VALUES('GDCD',''); 
INSERT INTO MONHOC VALUES('TIENG ANH',''); 
INSERT INTO MONHOC VALUES('TIN HOC',''); 
INSERT INTO MONHOC VALUES('CONG NGHE',''); 
INSERT INTO MONHOC VALUES('NGU VAN',''); 
INSERT INTO MONHOC VALUES('GDTC','');
INSERT INTO MONHOC VALUES('AM NHAC','');
INSERT INTO MONHOC VALUES('MY THUAT','');

--------------------GIAO VIEN
INSERT INTO GIAOVIEN VALUES('492','PHAN TRONG','NHAN','01-07-1987','QUAN 2','NAM','0523817030','VAT LY');
INSERT INTO GIAOVIEN VALUES('954','LE THI BAO','THU','01-07-1985','QUAN 3','NU','0303741279', 'TIENG ANH');
INSERT INTO GIAOVIEN VALUES('453','VO THI NGOC','CHAU','01-07-1982','QUAN 1','NU','0523279030','HOA HOC');
INSERT INTO GIAOVIEN VALUES('544','NGUYEN TIEN','THINH','01-07-1990','QUAN 3','NAM','0523741030','TOAN');
INSERT INTO GIAOVIEN VALUES('955','LE THI','HAU','01-07-1977','QUAN 2','NU','0325523030', 'TOAN');
INSERT INTO GIAOVIEN VALUES('391','HOANG','GIANG','01-07-1992','QUAN 1','NU','0352817523', 'LICH SU');
INSERT INTO GIAOVIEN VALUES('535','NGUYEN','PHU','01-07-1988','QUAN 3','NAM','0969817768','DIA LY');
INSERT INTO GIAOVIEN VALUES('502','TRAN','TAM','01-06-1987','QUAN 1','NU','0333817768', 'SINH HOC');
INSERT INTO GIAOVIEN VALUES('321','VO THAI','TOAN','01-08-1987','QUAN 2','NAM','0125817768','TIN HOC');
INSERT INTO GIAOVIEN VALUES('436','VO TAN','THONG','01-06-1970','QUAN 1','NAM','0123217768', '');
INSERT INTO GIAOVIEN VALUES('295','BUI HOAI','THANG','01-08-1972','QUAN 3','NAM','0923457768', '');
INSERT INTO GIAOVIEN VALUES('102','TRAN MINH','HOAI','15-08-1982','QUAN 3','NAM','0924457768', '');
INSERT INTO GIAOVIEN VALUES('147','TRAN CHI','CONG','05-11-1984','QUAN 3','NAM','0925457768', '');
INSERT INTO GIAOVIEN VALUES('148','TRAN NGOC BAO','DUY','12-03-1989','QUAN 3','NAM','0925457768', 'TOAN');
INSERT INTO GIAOVIEN VALUES('345', 'HOANG THI BICH','THUY','11-11-1989','QUAN 10','NU','0923456699', 'CONG NGHE');
INSERT INTO GIAOVIEN VALUES('111', 'NGO THI','LE','10-12-1985','QUAN 11','NU','0923451239', 'NGU VAN');


-------------------GIAO VIEN GIANG DAY
INSERT INTO GIAOVIENGIANGDAY VALUES('492'); 
INSERT INTO GIAOVIENGIANGDAY VALUES('954'); 
INSERT INTO GIAOVIENGIANGDAY VALUES('453'); 
INSERT INTO GIAOVIENGIANGDAY VALUES('544'); 
INSERT INTO GIAOVIENGIANGDAY VALUES('955');
INSERT INTO GIAOVIENGIANGDAY VALUES('391'); 
INSERT INTO GIAOVIENGIANGDAY VALUES('535'); 
INSERT INTO GIAOVIENGIANGDAY VALUES('502'); 
INSERT INTO GIAOVIENGIANGDAY VALUES('321');
INSERT INTO GIAOVIENGIANGDAY VALUES('148'); 
INSERT INTO GIAOVIENGIANGDAY VALUES('345'); 
INSERT INTO GIAOVIENGIANGDAY VALUES('111'); 
--------------------giam thi
INSERT INTO GIAMTHI VALUES('436'); 
INSERT INTO GIAMTHI VALUES('295'); 
INSERT INTO GIAMTHI VALUES('102'); 
INSERT INTO GIAMTHI VALUES('147'); 

------------------TEN BO MON
INSERT INTO TOBOMON VALUES('TOAN','544', '27-09-2022'); 
INSERT INTO TOBOMON VALUES('TU NHIEN','492', '17-06-2019'); 
INSERT INTO TOBOMON VALUES('XA HOI','391', '01-12-2020');
INSERT INTO TOBOMON VALUES('NGOAI NGU','955','12-05-2019'); 
INSERT INTO TOBOMON VALUES('VAN THE MI','345','12-05-2019'); 
INSERT INTO TOBOMON VALUES('VAN','111','17-06-2019'); 

-------------------NAM HOC
INSERT INTO NAMHOC VALUES('2019-2020');
INSERT INTO NAMHOC VALUES('2020-2021');
INSERT INTO NAMHOC VALUES('2021-2022');
INSERT INTO NAMHOC VALUES('2022-2023');
--------------------KHOI LOP
INSERT INTO KHOILOP VALUES('6');
INSERT INTO KHOILOP VALUES('7');
INSERT INTO KHOILOP VALUES('8');
INSERT INTO KHOILOP VALUES('9');
-------------------HOC KY
INSERT INTO HOCKY VALUES('HK1', '2019-2020');
INSERT INTO HOCKY VALUES('HK2', '2019-2020');
INSERT INTO HOCKY VALUES('HK1', '2020-2021');
INSERT INTO HOCKY VALUES('HK2', '2020-2021');
INSERT INTO HOCKY VALUES('HK1', '2021-2022');
INSERT INTO HOCKY VALUES('HK2', '2021-2022');
INSERT INTO HOCKY VALUES('HK1', '2022-2023');
INSERT INTO HOCKY VALUES('HK2', '2022-2023');
----------------HOC TAP
INSERT INTO HOCTAP VALUES('TOAN','9'); 
INSERT INTO HOCTAP VALUES('VAT LY','9'); 
INSERT INTO HOCTAP VALUES('HOA HOC','9'); 
INSERT INTO HOCTAP VALUES('SINH HOC','9'); 
INSERT INTO HOCTAP VALUES('LICH SU','9'); 
INSERT INTO HOCTAP VALUES('DIA LY','9'); 
INSERT INTO HOCTAP VALUES('GDCD','9'); 
INSERT INTO HOCTAP VALUES('TIENG ANH','9'); 
INSERT INTO HOCTAP VALUES('TIN HOC','9'); 
INSERT INTO HOCTAP VALUES('CONG NGHE','9');
INSERT INTO HOCTAP VALUES('NGU VAN','9');
INSERT INTO HOCTAP VALUES('GDTC','9');
INSERT INTO HOCTAP VALUES('AM NHAC','9');
INSERT INTO HOCTAP VALUES('MY THUAT','9');

INSERT INTO HOCTAP VALUES('TOAN','8'); 
INSERT INTO HOCTAP VALUES('VAT LY','8'); 
INSERT INTO HOCTAP VALUES('HOA HOC','8'); 
INSERT INTO HOCTAP VALUES('SINH HOC','8'); 
INSERT INTO HOCTAP VALUES('LICH SU','8'); 
INSERT INTO HOCTAP VALUES('DIA LY','8'); 
INSERT INTO HOCTAP VALUES('GDCD','8'); 
INSERT INTO HOCTAP VALUES('TIENG ANH','8'); 
INSERT INTO HOCTAP VALUES('TIN HOC','8'); 
INSERT INTO HOCTAP VALUES('CONG NGHE','8');
INSERT INTO HOCTAP VALUES('NGU VAN','8');
INSERT INTO HOCTAP VALUES('GDTC','8');
INSERT INTO HOCTAP VALUES('AM NHAC','8');
INSERT INTO HOCTAP VALUES('MY THUAT','8');

INSERT INTO HOCTAP VALUES('TOAN','7'); 
INSERT INTO HOCTAP VALUES('VAT LY','7'); 
INSERT INTO HOCTAP VALUES('SINH HOC','7'); 
INSERT INTO HOCTAP VALUES('LICH SU','7'); 
INSERT INTO HOCTAP VALUES('DIA LY','7'); 
INSERT INTO HOCTAP VALUES('GDCD','7'); 
INSERT INTO HOCTAP VALUES('TIENG ANH','7'); 
INSERT INTO HOCTAP VALUES('TIN HOC','7'); 
INSERT INTO HOCTAP VALUES('CONG NGHE','7');
INSERT INTO HOCTAP VALUES('NGU VAN','7');
INSERT INTO HOCTAP VALUES('GDTC','7');
INSERT INTO HOCTAP VALUES('AM NHAC','7');
INSERT INTO HOCTAP VALUES('MY THUAT','7');

INSERT INTO HOCTAP VALUES('TOAN','6'); 
INSERT INTO HOCTAP VALUES('VAT LY','6'); 
INSERT INTO HOCTAP VALUES('SINH HOC','6'); 
INSERT INTO HOCTAP VALUES('LICH SU','6'); 
INSERT INTO HOCTAP VALUES('DIA LY','6'); 
INSERT INTO HOCTAP VALUES('GDCD','6'); 
INSERT INTO HOCTAP VALUES('TIENG ANH','6'); 
INSERT INTO HOCTAP VALUES('TIN HOC','6');
INSERT INTO HOCTAP VALUES('CONG NGHE','6');
INSERT INTO HOCTAP VALUES('NGU VAN','6');
INSERT INTO HOCTAP VALUES('GDTC','6');
INSERT INTO HOCTAP VALUES('AM NHAC','6');
INSERT INTO HOCTAP VALUES('MY THUAT','6');
----------------PHONG
INSERT INTO PHONG VALUES('101-L1','DAYHOC','436');
INSERT INTO PHONG VALUES('102-L1','DAYHOC','436');
INSERT INTO PHONG VALUES('103-L1','DAYHOC','436');
INSERT INTO PHONG VALUES('104-L1','DAYHOC','436');
INSERT INTO PHONG VALUES('105-L1','DAYHOC','436');
INSERT INTO PHONG VALUES('106-L1','DAYHOC','436');

INSERT INTO PHONG VALUES('107-L1','PHONG_NGHI_GV','295');
INSERT INTO PHONG VALUES('108-L1','PHONG_GIAMTHI','295');
INSERT INTO PHONG VALUES('109-L1','HOI_TRUONG','295');
INSERT INTO PHONG VALUES('110-L1','PHONG_HIEU_TRUONG','295');
INSERT INTO PHONG VALUES('111-L1','PHONG_PHO_HIEU_TRUONG_1','295');
INSERT INTO PHONG VALUES('112-L1','THINGHIEM','295');
INSERT INTO PHONG VALUES('113-L1','THINGHIEM','295');
INSERT INTO PHONG VALUES('114-L1','THINGHIEM','295');
INSERT INTO PHONG VALUES('115-L1','THINGHIEM','295');

INSERT INTO PHONG VALUES('201-L2','DAYHOC','102');
INSERT INTO PHONG VALUES('202-L2','DAYHOC','102');
INSERT INTO PHONG VALUES('203-L2','DAYHOC','102');
INSERT INTO PHONG VALUES('204-L2','DAYHOC','102');
INSERT INTO PHONG VALUES('205-L2','PHONG_NGHI_GV','102');
INSERT INTO PHONG VALUES('206-L2','PHONG_TIN_HOC_1','102');
INSERT INTO PHONG VALUES('207-L2','PHONG_TIN_HOC_2','102');
INSERT INTO PHONG VALUES('208-L2','PHONG_DOAN','102');
INSERT INTO PHONG VALUES('209-L2','THU VIEN','102');

INSERT INTO PHONG VALUES('301-L3','DAYHOC','147');
INSERT INTO PHONG VALUES('302-L3','DAYHOC','147');
INSERT INTO PHONG VALUES('303-L3','DAYHOC','147');
INSERT INTO PHONG VALUES('304-L3','DAYHOC','147');
INSERT INTO PHONG VALUES('305-L3','PHONG_NGHI_GV','147');
----------------LOP
INSERT INTO LOP VALUES('6A1','2021-2022','453','101-L1','6'); 
INSERT INTO LOP VALUES('7A1','2021-2022','535','201-L2','7'); 
INSERT INTO LOP VALUES('8A1','2021-2022','321','204-L2','8'); 
INSERT INTO LOP VALUES('9A1','2021-2022','955','301-L3','9'); 
-----------------GIANG DAY
INSERT INTO GIANGDAY VALUES('544', '6A1','2021-2022'); 
INSERT INTO GIANGDAY VALUES('492', '6A1','2021-2022');
INSERT INTO GIANGDAY VALUES('391', '6A1','2021-2022');
INSERT INTO GIANGDAY VALUES('535', '6A1','2021-2022');
INSERT INTO GIANGDAY VALUES('955', '6A1','2021-2022');
INSERT INTO GIANGDAY VALUES('345', '6A1','2021-2022');
INSERT INTO GIANGDAY VALUES('502', '6A1','2021-2022');
INSERT INTO GIANGDAY VALUES('321', '6A1','2021-2022');

INSERT INTO GIANGDAY VALUES('544', '7A1','2021-2022'); 
INSERT INTO GIANGDAY VALUES('492', '7A1','2021-2022');
INSERT INTO GIANGDAY VALUES('391', '7A1','2021-2022');
INSERT INTO GIANGDAY VALUES('535', '7A1','2021-2022');
INSERT INTO GIANGDAY VALUES('955', '7A1','2021-2022');
INSERT INTO GIANGDAY VALUES('345', '7A1','2021-2022');
INSERT INTO GIANGDAY VALUES('502', '7A1','2021-2022');
INSERT INTO GIANGDAY VALUES('321', '7A1','2021-2022');

INSERT INTO GIANGDAY VALUES('544', '8A1','2021-2022'); 
INSERT INTO GIANGDAY VALUES('492', '8A1','2021-2022');
INSERT INTO GIANGDAY VALUES('391', '8A1','2021-2022');
INSERT INTO GIANGDAY VALUES('535', '8A1','2021-2022');
INSERT INTO GIANGDAY VALUES('955', '8A1','2021-2022');
INSERT INTO GIANGDAY VALUES('345', '8A1','2021-2022');
INSERT INTO GIANGDAY VALUES('502', '8A1','2021-2022');
INSERT INTO GIANGDAY VALUES('321', '8A1','2021-2022');
INSERT INTO GIANGDAY VALUES('453', '8A1','2021-2022');


INSERT INTO GIANGDAY VALUES('544', '9A1','2021-2022'); 
INSERT INTO GIANGDAY VALUES('492', '9A1','2021-2022');
INSERT INTO GIANGDAY VALUES('391', '9A1','2021-2022');
INSERT INTO GIANGDAY VALUES('535', '9A1','2021-2022');
INSERT INTO GIANGDAY VALUES('955', '9A1','2021-2022');
INSERT INTO GIANGDAY VALUES('345', '9A1','2021-2022');
INSERT INTO GIANGDAY VALUES('502', '9A1','2021-2022');
INSERT INTO GIANGDAY VALUES('321', '9A1','2021-2022');
INSERT INTO GIANGDAY VALUES('453', '9A1','2021-2022');
-----------------PHAN LOP 
INSERT INTO PHANLOP VALUES('2858','6A1','2021-2022');
INSERT INTO PHANLOP VALUES('7747','6A1','2021-2022');
INSERT INTO PHANLOP VALUES('5843','7A1','2021-2022');
INSERT INTO PHANLOP VALUES('1347','7A1','2021-2022');
INSERT INTO PHANLOP VALUES('8212','7A1','2021-2022');
INSERT INTO PHANLOP VALUES('3169','8A1','2021-2022');
INSERT INTO PHANLOP VALUES('2039','8A1','2021-2022');
INSERT INTO PHANLOP VALUES('2317','9A1','2021-2022');
INSERT INTO PHANLOP VALUES('2218','9A1','2021-2022');
----------------KIEM TRA
INSERT INTO KIEMTRA VALUES('2858','TOAN','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('7747','TOAN','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('5843','TOAN','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('1347','TOAN','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('8212','TOAN','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('3169','TOAN','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2039','TOAN','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2317','TOAN','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2218','TOAN','HK1','2021-2022',8,10,8.5,8);

INSERT INTO KIEMTRA VALUES('2858','VAT LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('7747','VAT LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('5843','VAT LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('1347','VAT LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('8212','VAT LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('3169','VAT LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2039','VAT LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2317','VAT LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2218','VAT LY','HK1','2021-2022',8,10,8.5,8);

INSERT INTO KIEMTRA VALUES('3169','HOA HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2039','HOA HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2317','HOA HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2218','HOA HOC','HK1','2021-2022',8,10,8.5,8);

INSERT INTO KIEMTRA VALUES('2858','SINH HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('7747','SINH HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('5843','SINH HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('1347','SINH HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('8212','SINH HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('3169','SINH HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2039','SINH HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2317','SINH HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2218','SINH HOC','HK1','2021-2022',8,10,8.5,8);

INSERT INTO KIEMTRA VALUES('2858','LICH SU','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('7747','LICH SU','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('5843','LICH SU','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('1347','LICH SU','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('8212','LICH SU','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('3169','LICH SU','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2039','LICH SU','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2317','LICH SU','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2218','LICH SU','HK1','2021-2022',8,10,8.5,8);

INSERT INTO KIEMTRA VALUES('2858','DIA LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('7747','DIA LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('5843','DIA LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('1347','DIA LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('8212','DIA LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('3169','DIA LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2039','DIA LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2317','DIA LY','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2218','DIA LY','HK1','2021-2022',8,10,8.5,8);

INSERT INTO KIEMTRA VALUES('2858','GDCD','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('7747','GDCD','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('5843','GDCD','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('1347','GDCD','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('8212','GDCD','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('3169','GDCD','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2039','GDCD','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2317','GDCD','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2218','GDCD','HK1','2021-2022',8,10,8.5,8);

INSERT INTO KIEMTRA VALUES('2858','TIN HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('7747','TIN HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('5843','TIN HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('1347','TIN HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('8212','TIN HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('3169','TIN HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2039','TIN HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2317','TIN HOC','HK1','2021-2022',8,10,8.5,8);
INSERT INTO KIEMTRA VALUES('2218','TIN HOC','HK1','2021-2022',8,10,8.5,8);

UPDATE MONHOC SET TENBOMON = 'TOAN' WHERE TENMONHOC = 'TOAN';
UPDATE MONHOC SET TENBOMON = 'TU NHIEN' WHERE TENMONHOC = 'VAT LY';
UPDATE MONHOC SET TENBOMON = 'TU NHIEN' WHERE TENMONHOC = 'HOA HOC';
UPDATE MONHOC SET TENBOMON = 'TU NHIEN' WHERE TENMONHOC = 'SINH HOC';
UPDATE MONHOC SET TENBOMON = 'TU NHIEN' WHERE TENMONHOC = 'TIN HOC';
UPDATE MONHOC SET TENBOMON = 'XA HOI' WHERE TENMONHOC = 'LICH SU';
UPDATE MONHOC SET TENBOMON = 'XA HOI' WHERE TENMONHOC = 'DIA LY';
UPDATE MONHOC SET TENBOMON = 'XA HOI' WHERE TENMONHOC = 'GDCD';
UPDATE MONHOC SET TENBOMON = 'NGOAI NGU' WHERE TENMONHOC = 'TIENG ANH';
UPDATE MONHOC SET TENBOMON = 'VAN THE MI' WHERE TENMONHOC = 'CONG NGHE';
UPDATE MONHOC SET TENBOMON = 'VAN THE MI' WHERE TENMONHOC = 'AM NHAC';
UPDATE MONHOC SET TENBOMON = 'VAN THE MI' WHERE TENMONHOC = 'MY THUAT';
UPDATE MONHOC SET TENBOMON = 'VAN THE MI' WHERE TENMONHOC = 'GDTC';
UPDATE MONHOC SET TENBOMON = 'VAN' WHERE TENMONHOC = 'NGU VAN';

INSERT INTO TAIKHOAN VALUES('GIAOVIEN','ABCD1234');
INSERT INTO TAIKHOAN VALUES('HOCSINH','ABCD1234');