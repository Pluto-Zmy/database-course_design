CREATE DATABASE TD_LTE_New
ON PRIMARY
( 
	NAME = TD_LTE_m,--���ļ�
	FILENAME = 'E:\sql server management studio\TD_LTE_m.mdf',
	SIZE = 800,
	MAXSIZE = 1000,
	FILEGROWTH = 40 
),
filegroup TD_LTE_G1
( 
	NAME = TD_LTE_n1,--���ļ�
	FILENAME = 'D:\sql server management studio\TD_LTE_n1.ndf',
	SIZE = 800,
	MAXSIZE = 1000,
	FILEGROWTH = 40
),
(
	name = TD_LTE_n2,  --���ļ�2
	filename = 'E:\sql server management studio\TD_LTE_n2.ndf',
	size=1MB,
	maxsize=40MB,
	filegrowth=2MB
),
(
	name = TD_LTE_n3,  --���ļ�3
	filename = 'F:\sql server management studio\TD_LTE_n3.ndf',
	size=1MB,
	maxsize=40MB,
	filegrowth=2MB
)
LOG ON            ---��־�ļ�
(
	name = 'TD_LTE_log',
	filename = 'D:\sql server management studio\TD_LTE_log.ldf',
	size=1MB,
	maxsize=10MB,
	filegrowth=1MB
); 
