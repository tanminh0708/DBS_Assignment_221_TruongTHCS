CREATE TABLE GiaoVien (
CCCD          CHAR(12)    PRIMARY KEY,
HO_VA_TENLOT  VARCHAR(15) NOT NULL, 
TEN           VARCHAR(15) NOT NULL, 
Bdate         DATE, 
Address       VARCHAR(30) NOT NULL, 
Sex           VARCHAR(5), 
PhoneNumber   VARCHAR(10), 
Username      VARCHAR(50) NOT NULL, 
Pass          VARCHAR(50) NOT NULL, 
MonGiangDay   VARCHAR(10)
);  

CREATE TABLE GiamThi (
GT_CCCD       CHAR(12)    PRIMARY KEY,
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

CREATE TABLE NamHoc(
NamHoc        varchar(12) PRIMARY KEY
);

CREATE TABLE KhoiLop (
KhoiLop       char(1) PRIMARY KEY
);

CREATE TABLE ToBoMon (
TenBoMon        varchar(12) PRIMARY KEY, 
CCCD_TBM        CHAR(12),
TBM_StartDate   DATE, 
  CONSTRAINT fk_TruongBoMon FOREIGN KEY (CCCD_TBM)
        REFERENCES GiaoVienGiangDay(GVGD_CCCD)
        ON DELETE set null deferrable
);

CREATE TABLE MonHoc (
TenMonHoc     varchar(12) PRIMARY KEY, 
TenBoMon      varchar(12), 
  CONSTRAINT fk_MonHoc_Thuoc_BoMon FOREIGN KEY (TenBoMon)
        REFERENCES ToBoMon(TenBoMon)
        ON DELETE SET NULL
);

CREATE TABLE Phong (
MASOPHONG       VARCHAR(10) PRIMARY KEY, 
ChucNang        varchar(10), 
CCCD_CBQL       CHAR(12),
  CONSTRAINT fk_Phong_Do_Ai_Quan_ly FOREIGN KEY (CCCD_CBQL)
        REFERENCES GiamThi(GT_CCCD)
        ON DELETE SET NULL DEFERRABLE
);
CREATE TABLE HocKy(
TenHocKy      varchar(12), 
TenNamHoc     varchar(12), 
PRIMARY KEY (TenHocKy, TenNamHoc), 
  CONSTRAINT HocKy_Thuoc_NamHoc FOREIGN KEY (TenNamHoc)
        REFERENCES NamHoc(NamHoc)
        ON DELETE CASCADE
);

CREATE TABLE HocTap (
TenMonHoc     varchar(12), 
TenKhoiLop    char(1), 
PRIMARY KEY (TenMonHoc, TenKhoiLop), 
  CONSTRAINT HocTap_KhoiLop FOREIGN KEY (TenKhoiLop)
        REFERENCES KhoiLop(KhoiLop)
        ON DELETE CASCADE, 
  CONSTRAINT HocTap_MonHoc FOREIGN KEY (TenMonHoc)
        REFERENCES MonHoc(TenMonHoc)
        ON DELETE CASCADE
);

CREATE TABLE HocSinh (
MSHS          VARCHAR(10)	  PRIMARY KEY, 
HO_VA_TENLOT  VARCHAR(15) NOT NULL, 
TEN           VARCHAR(15) NOT NULL, 
Bdate         DATE, 
Address       VARCHAR(30),
Sex           VARCHAR(5),  
Username      VARCHAR(50) NOT NULL, 
Pass          VARCHAR(50) NOT NULL
);

CREATE TABLE Lop (
TenLop        VARCHAR(5), 
NamHoc        varchar(10), 
PRIMARY KEY (TenLop, NamHoc), 
GVCN_CCCD     CHAR(12), 
SoPhong       varchar(8), 
KhoiLop       char(1), 
  CONSTRAINT fk_Lop_NamHoc FOREIGN KEY (NamHoc)
        REFERENCES NamHoc(NamHoc)
         ON DELETE CASCADE, 
  CONSTRAINT fk_Lop_GVCN FOREIGN KEY (GVCN_CCCD)
        REFERENCES GiaoVienGiangDay(GVGD_CCCD)
         ON DELETE CASCADE
); 

CREATE TABLE Phanlop (
MSHS       VARCHAR(10),
TenLop     VARCHAR(5), 
NamHoc     VARCHAR(10),
PRIMARY KEY(MSHS, TenLop, NamHoc),
    CONSTRAINT fk_Lop_HocSinh FOREIGN KEY (MSHS)
        REFERENCES HocSinh(MSHS)
        ON DELETE CASCADE, 
    CONSTRAINT fk_HS_LopHoc_NamHoc FOREIGN KEY (TenLop, NamHoc)
        REFERENCES Lop(TenLop, NamHoc)
        ON DELETE SET NULL DEFERRABLE
); 

CREATE TABLE KiemTra (
MSHS       VARCHAR(10), 
MonHoc     varchar(12), 
HocKy      varchar(12),
NamHoc     varchar(12), 
PRIMARY KEY (MSHS, MonHoc, HocKy, NamHoc), 
KT_Mieng      FLOAT,
KT_15phut     FLOAT, 
KT_1tiet      FLOAT, 
KT_CuoiKi     FLOAT, 
  CONSTRAINT KiemTra_HocSinh FOREIGN KEY (MSHS)
        REFERENCES HocSinh(MSHS)
        ON DELETE CASCADE, 
  CONSTRAINT KiemTra_MonHoc FOREIGN KEY (MonHoc)
        REFERENCES MonHoc(TenMonHoc)
        ON DELETE CASCADE, 
  CONSTRAINT KiemTra_HocKy_NamHoc FOREIGN KEY (HocKy, NamHoc)
        REFERENCES HocKy(TenHocKy, TenNamHoc)
        ON DELETE CASCADE
);

CREATE TABLE GiangDay (
GV_CCCD       CHAR(12), 
TenMonHoc     varchar(12), 
TenLopDay     varchar(12), 
TenNamHoc     varchar(12), 
PRIMARY KEY (TenMonHoc, TenLopDay, TenNamHoc), 
  CONSTRAINT GiangDay_GiaoVien FOREIGN KEY (GV_CCCD)
        REFERENCES GiaoVienGiangDay(GVGD_CCCD)
        ON DELETE CASCADE, 
  CONSTRAINT GiangDay_MonHoc FOREIGN KEY (TenMonHoc)
        REFERENCES MonHoc(TenMonHoc)
        ON DELETE CASCADE, 
  CONSTRAINT GiangDay_LopDay_NamHoc FOREIGN KEY (TenLopDay, TenNamHoc)
        REFERENCES Lop(TenLop, NamHoc)
        ON DELETE CASCADE
);         
CREATE TABLE PhuHuynh (
MSHS          VARCHAR(10), 
HO_VA_TENLOT  VARCHAR(15) NOT NULL, 
TEN           VARCHAR(15) NOT NULL, 
PRIMARY KEY (MSHS, HO_VA_TENLOT, TEN),
QuanHe        VARCHAR(10),
PhoneNumber   VARCHAR(10), 
TenLop        VARCHAR(5), 
Bdate         DATE, 
Sex           VARCHAR(5),
  CONSTRAINT fk_PhuHuynh_HS FOREIGN KEY (MSHS)
        REFERENCES HocSinh(MSHS)
        ON DELETE SET NULL DEFERRABLE
); 
-----------------------------------
ALTER TABLE GiaoVien
	ADD CONSTRAINT fk_GV_day_mon_gi FOREIGN KEY (MonGiangDay) 
				REFERENCES MonHoc(TenMonHoc) 
				ON DELETE SET NULL DEFERRABLE;
