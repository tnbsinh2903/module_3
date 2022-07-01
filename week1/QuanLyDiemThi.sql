create database QuanLyDiemThi;
use QuanLyDiemThi;
CREATE TABLE HocSinh (
    MaHS INT NOT NULL PRIMARY KEY,
    NgaySinh DATE NOT NULL,
    Lop VARCHAR(20) NOT NULL,
    GT VARCHAR(20)
);
CREATE TABLE MonHoc (
    MaMH INT NOT NULL PRIMARY KEY,
    TenMH VARCHAR(20),
    MaGV INT,
    FOREIGN KEY (MaGV)REFERENCES GiaoVien (MaGv)
);
CREATE TABLE BangDiem (
    MaHS INT NOT NULL,
    MaMH INT NOT NULL,
    DiemThi INT,
    NgayKT DATE,
    PRIMARY KEY (MaHS , MaMH),
    FOREIGN KEY (MaHS)REFERENCES HocSinh (MaHS),
    FOREIGN KEY (MaMH)REFERENCES MonHoc (MaMH)
);
CREATE TABLE GiaoVien (
    MaGV INT NOT NULL PRIMARY KEY,
    TenGV VARCHAR(20),
    SDT VARCHAR(10)
);
alter table MonHoc add MaGV varchar(20);
alter table MonHoc add constraint fk_MaGV foreign key (MaGV) references GiaoVien(MaGV); ;

                        
                        