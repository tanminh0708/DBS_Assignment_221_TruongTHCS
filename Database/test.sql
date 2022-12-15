ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY';

EXECUTE INSERT_STUDENT('2219','PHAM THANH','THUY','NU','08-08-2007','QUAN 7');
EXECUTE INSERT_STUDENT('2000','NGUYEN GIA','HUY','NAM','28-02-2007','QUAN 1');
EXECUTE INSERT_STUDENT('2000','TRAN','NAM','NAM','08-11-2007','QUAN 3');
EXECUTE INSERT_STUDENT('2111','TRAN TRONG','BINH','NA','12-11-2004','QUAN 1');
EXECUTE INSERT_STUDENT('2111','TRAN TRONG','BINH','NAM','12-11-2004','QUAN 1');
EXECUTE INSERT_STUDENT('2111','TRAN TRO123NG','BINH','NAM','12-11-2010','QUAN 1');
EXECUTE INSERT_STUDENT('2111','TRAN TRONG','*BINH','NAM','12-11-2010','QUAN 1');
EXECUTE INSERT_STUDENT('21av11','TRAN TRONG','BINH','NAM','12-11-2010','QUAN 1');

EXECUTE INSERT_TEACHER('495','PHAN DUC','HY','NAM','11-11-2001','QUAN 1','0523817030','VAT LY');
EXECUTE INSERT_TEACHER('495','PHAN DUC','HY','NAM','11-11-2001','QUAN 1','0523817030','VAT LY');
EXECUTE INSERT_TEACHER('4*95','PHAN DUC','HY','NAM','11-11-2001','QUAN 1','0523817030','VAT LY');
EXECUTE INSERT_TEACHER('495','PH45AN DUC','HY','NAM','11-11-2001','QUAN 1','0523817030','VAT LY');
EXECUTE INSERT_TEACHER('495','PHAN DUC','H%6Y','NAM','11-11-2001','QUAN 1','0523817030','VAT LY');
EXECUTE INSERT_TEACHER('495','PHAN DUC','HY','N','11-11-2001','QUAN 1','0523817030','VAT LY');
EXECUTE INSERT_TEACHER('495','PHAN DUC','HY','NAM','11-11-2009','QUAN 1','0523817030','VAT LY');
EXECUTE INSERT_TEACHER('496','PHAN DUC','HY','NAM','11-11-2001','QUAN 1','0523817030','VAT LY1');

UPDATE HOCSINH SET MSHS = '7747' WHERE MSHS = '2858';
UPDATE HOCSINH SET HO_VA_TENLOT = 'NGUYENDUC 123' WHERE MSHS = '2858';
UPDATE HOCSINH SET TEN = '@A' WHERE MSHS = '2858';
UPDATE HOCSINH SET SEX = 'NA' WHERE MSHS = '2858';
UPDATE HOCSINH SET BDATE = '01-01-1999' WHERE MSHS = '2858';




EXECUTE CAPNHATDIEM('2858','AM NHAC','HK1','2021-2022',8.8,10,8.5,8);
EXECUTE CAPNHATDIEM('2858','NGU VAN','HK1','2021-2022',9,10,8.5,8);
SELECT * FROM KIEMTRA WHERE MSHS = '2858';

EXECUTE CAPNHATDIEM('2858','AM NHAC','HK1','2021-2022',11,10,8.5,8);
EXECUTE CAPNHATDIEM('2858','MY THUAT','HK1','2021-2022',8.8,11,8.5,8);