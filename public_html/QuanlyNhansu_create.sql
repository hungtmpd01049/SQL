-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:18:07.395




-- tables
-- Table TNhanvien
CREATE TABLE TNhanvien (
    MaNV varchar(150)    NOT NULL ,
    TenNV varchar(150)    NOT NULL ,
    NgaySinh varchar(150)    NOT NULL ,
    Email varchar(150)    NOT NULL ,
    MucLuong varchar(150)    NOT NULL ,
    MaPhong varchar(150)    NOT NULL ,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (MaNV)
);

-- Table TPhongBan
CREATE TABLE TPhongBan (
    MaPhong varchar(150)    NOT NULL ,
    TenPhong varchar(150)    NOT NULL ,
    CONSTRAINT TPhongBan_pk PRIMARY KEY (MaPhong)
);





-- foreign keys
-- Reference:  client_order (table: TPhongBan)


ALTER TABLE TPhongBan ADD CONSTRAINT client_order FOREIGN KEY client_order (MaPhong)
    REFERENCES TNhanvien (MaNV);



-- End of file.

