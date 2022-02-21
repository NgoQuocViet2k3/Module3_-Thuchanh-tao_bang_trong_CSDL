create database QuanLyDiemThi;
use QuanLyDiemThi;
create table Hocsinh(
MaHS varchar(50),
TenHS varchar(50),
NgaySinh datetime,
Lop varchar(20),
GT varchar(20)
);

create table MonHoc(
MaMH varchar(20) primary key,
TenMH varchar(50)
);
create table GiaoVien(
MaGV varchar(20) primary key,
TenGV varchar(20),
SDT varchar(10)
);
alter table Monhoc add MaGV varchar(20);
alter table Monhoc add constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV);