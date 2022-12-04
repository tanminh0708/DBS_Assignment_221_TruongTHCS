CREATE TABLE GiaoVien (
CCCD          CHAR(12)    PRIMARY KEY,
HO_VA_TENLOT  VARCHAR(15) NOT NULL, 
TEN           VARCHAR(15) NOT NULL, 
Bdate         DATE, 
Address       VARCHAR(30) NOT NULL, 
Sex           CHAR(1), 
PhoneNumber   VARCHAR(10), 
Username      VARCHAR(50) NOT NULL, 
Pass          VARCHAR(50) NOT NULL, 
MonGiangDay   VARCHAR(10), 
	CONSTRAINT fk_GV_day_mon_gi FOREIGN KEY (MonGiangDay) 
				REFERENCES MonHoc(TenMonHoc) 
				ON DELETE SET NULL DEFERRABLE
);  

CREATE TABLE GiamThi (
GT_CCCD     CHAR(12)    PRIMARY KEY,
  CONSTRAINT fk_GiamThi_CCCD FOREIGN KEY (GT_CCCD)
          REFERENCES GiaoVien(CCCD)
          ON DELETE CASCADE
); 

CREATE TABLE GiaoVienGiangDay (
GVGD_CCCD   CHAR(12)    PRIMARY KEY,
  CONSTRAINT fk_GVGD_CCCD FOREIGN KEY (GVGD_CCCD)
        REFERENCES GiaoVien(CCCD)
        ON DELETE CASCADE
); 
CREATE TABLE Lop (
MSHS          VARCHAR(12), 
TenLop        VARCHAR(12), 
PRIMARY KEY (MSHS,TenLop), 
NamHoc        varchar(12), 
GVCN_CCCD     number, 
SoPhong       varchar(8), 
KhoiLop       char(1), 
  CONSTRAINT fk_Lop_HocSinh FOREIGN KEY (MSHS)
        REFERENCES HocSinh(MSHS)
        ON DELETE CASCADE, 
  CONSTRAINT fk_Lop_NamHoc FOREIGN KEY (NamHoc)
        REFERENCES NamHoc(TenNamHoc)
         ON DELETE CASCADE, 
  CONSTRAINT fk_Lop_GVCN FOREIGN KEY (GVCN_CCCD)
        REFERENCES GiaoVienGiangDay(GVGD_CCCD)
         ON DELETE SET NULL DEFERRABLE
); 
CREATE TABLE HocSinh (
MSHS          VARCHAR(12) PRIMARY KEY, 
HO_VA_TENLOT  VARCHAR(15) NOT NULL, 
TEN           VARCHAR(15) NOT NULL, 
Bdate         DATE, 
Address       VARCHAR(30),
Sex           VARCHAR(5),  
Username      VARCHAR(50) NOT NULL, 
Pass          VARCHAR(50) NOT NULL,
TenLop        VARCHAR(5), 
NamHoc        Varchar(12), 
  CONSTRAINT fk_HS_LopHoc FOREIGN KEY (TenLop)
        REFERENCES Lop(TenLopHoc)
        ON DELETE SET NULL DEFERRABLE, 
  CONSTRAINT fk_HS_NamHoc FOREIGN KEY (NamHoc)
        REFERENCES NamHoc(TenNamHoc)
        ON DELETE CASCADE
);
CREATE TABLE PhuHuynh (
MSHS          VARCHAR(12) PRIMARY KEY, 
HO_VA_TENLOT  VARCHAR(15) NOT NULL, 
TEN           VARCHAR(15) NOT NULL, 
PRIMARY KEY (MSHS, HO_VA_TENLOT, TEN),
QuanHe        VARCHAR(10),
PhoneNumber   VARCHAR(10), 
TenLop        VARCHAR(5), 
NamHoc        VARCHAR(12), 
Bdate         DATE, 
Sex           char(1),
  CONSTRAINT fk_PhuHuynh_HS FOREIGN KEY (MSHS)
        REFERENCES HocSinh(MSHS)
        ON DELETE SET NULL DEFERRABLE, 
  CONSTRAINT fk_PhuHuynh_LopHoc FOREIGN KEY (TenLop)
        REFERENCES LopHoc(TenLopHoc)
        ON DELETE SET NULL DEFERRABLE, 
  CONSTRAINT fk_PhuHuynh_NamHoc FOREIGN KEY (NamHoc)
        REFERENCES NamHoc(TenNamHoc)
        ON DELETE SET NULL DEFERRABLE
); 

CREATE TABLE MonHoc (
TenMonHoc     varchar(12) PRIMARY KEY, 
TenBoMon      varchar(12), 
  CONSTRAINT fk_MonHoc_Thuoc_BoMon FOREIGN KEY (TenBoMon)
        REFERENCES ToBoMon(TenBoMon)
        ON DELETE SET NULL DEFERRABLE
); 
CREATE TABLE Phong (
MASOPHONG       VARCHAR(10) PRIMARY KEY, 
ChucNang        varchar(20), 
CCCD_CBQL       number,
  CONSTRAINT fk_Phong_Do_Ai_Quan_ly FOREIGN KEY (CCCD_CBQL)
        REFERENCES GiamThi(GT_CCCD)
        ON DELETE SET NULL DEFERRABLE
);
CREATE TABLE ToBoMon (
TenBoMon        varchar(12), 
CCCD_TBM        number,
TBM_StartDate   DATE, 
  CONSTRAINT fk_TruongBoMon FOREIGN KEY (CCCD_TBM)
        REFERENCES GVGD(GVGD_CCCD)
        ON DELETE SET NULL DEFERRABLE
);
CREATE TABLE NamHoc(
NamHoc        varchar(12) PRIMARY KEY
);
CREATE TABLE KhoiLop (
KhoiLop       char(1) PRIMARY KEY
);
CREATE TABLE HocKy(
TenHocKy      varchar(12), 
TenNamHoc     varchar(12), 
PRIMARY KEY (TenHocKy, TenNamHoc)
);
CREATE TABLE HocTap (
TenMonHoc     varchar(12), 
TenKhoiLop    varchar(12), 
PRIMARY KEY (TenHocKy, TenKhoiLop), 
  CONSTRAINT HocTap_MonHoc FOREIGN KEY (TenMonHoc)
        REFERENCES MonHoc(TenMonHoc)
        ON DELETE SET NULL DEFERRABLE, 
  CONSTRAINT HocTap_KhoiLop FOREIGN KEY (TenKhoiLop)
        REFERENCES KhoiLop(TenKhoiLop)
        ON DELETE SET NULL DEFERRABLE
); 
CREATE TABLE KiemTra (
MSHS          number , 
TenMon        varchar(12), 
TenHocKy      varchar(12),
TenNamHoc     varchar(12), 
PRIMARY KEY (MSHS, TenMon, TenHocKy, TenNamHoc), 
KT_Mieng      FLOAT         NOT NULL,
KT_15phut     FLOAT         NOT NULL, 
KT_1tiet      FLOAT         NOT NULL, 
KT_CuoiKi     FLOAT         NOT NULL, 
  CONSTRAINT KiemTra_HocSinh FOREIGN KEY (MSHS)
        REFERENCES HocSinh(MSHS)
        ON DELETE SET NULL DEFERRABLE, 
  CONSTRAINT KiemTra_MonHoc FOREIGN KEY (TenMonHoc)
        REFERENCES MonHoc(TenMonHoc)
        ON DELETE SET NULL DEFERRABLE, 
  CONSTRAINT KiemTra_HocKy FOREIGN KEY (TenMonHoc)
        REFERENCES MonHoc(TenMonHoc)
        ON DELETE SET NULL DEFERRABLE, 
  CONSTRAINT KiemTra_NamHoc FOREIGN KEY (TenMonHoc)
        REFERENCES MonHoc(TenMonHoc)
        ON DELETE SET NULL DEFERRABLE
);

CREATE TABLE GiangDay (
GV_CCCD       number, 
TenMonHoc     varchar(12), 
TenLopDay     varchar(12), 
TenNamHoc     varchar(12), 
PRIMARY KEY (TenMonHoc, TenLopDay, TenNamHoc), 
  CONSTRAINT GiangDay_GiaoVien FOREIGN KEY (GV_CCCD)
        REFERENCES GVGD(GVGD_CCCD)
        ON DELETE SET NULL DEFERRABLE, 
  CONSTRAINT GiangDay_MonHoc FOREIGN KEY (TenMonHoc)
        REFERENCES MonHoc(TenMonHoc)
        ON DELETE SET NULL DEFERRABLE, 
  CONSTRAINT GiangDay_LopDay FOREIGN KEY (TenLopHoc)
        REFERENCES LopHoc(TenLopHoc)
        ON DELETE SET NULL DEFERRABLE, 
  CONSTRAINT GiangDay_NamHoc FOREIGN KEY (TenNamHoc)
        REFERENCES NamHoc(TenNamHoc)
        ON DELETE SET NULL DEFERRABLE
)
