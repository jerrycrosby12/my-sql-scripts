-- Create database
create database UNLV_Parking_System;

-- Use the database that was just created
use UNLV_Parking_System;


-- DROP database UNLV_Parking_System;

-- Create USER table, add attributes
create table USER(
	user_id char(10) primary key, 
	full_name varchar(50) not null, 
	affiliation varchar(20) not null, 
	login_cred varchar(25) not null
    );


-- START OF USER DATA 
-- Insert 50 sample USER records 

INSERT INTO USER (user_id, full_name, affiliation, login_cred) VALUES
('U000000001', 'Alice Johnson', 'student', 'alicej_01'),
('U000000002', 'Bob Smith', 'staff', 'bob_smith92'),
('U000000003', 'Cathy Nguyen', 'faculty', 'cathyn_13'),
('U000000004', 'David Lee', 'student', 'davidl_22'),
('U000000005', 'Ella Martinez', 'alumni', 'ellam_al'),
('U000000006', 'Frank Zhao', 'faculty', 'fzhao_fac'),
('U000000007', 'Grace Kim', 'staff', 'gracek22'),
('U000000008', 'Henry Ford', 'guest', 'hford_g'),
('U000000009', 'Isabel Ruiz', 'student', 'isabelr_s'),
('U000000010', 'Jack Brown', 'staff', 'jackb_st'),

('U000000011', 'Karen Davis', 'alumni', 'karend_al'),
('U000000012', 'Liam Wilson', 'student', 'liamw_stu'),
('U000000013', 'Mona Patel', 'faculty', 'mona_fac'),
('U000000014', 'Nina Brooks', 'staff', 'ninab_sf'),
('U000000015', 'Oscar Hall', 'student', 'oscarh_u'),
('U000000016', 'Paul Green', 'faculty', 'paulg_fac'),
('U000000017', 'Queen Thomas', 'guest', 'queen_g'),
('U000000018', 'Randy White', 'student', 'rwhite_s'),
('U000000019', 'Sara Black', 'staff', 'sarab_sf'),
('U000000020', 'Tom Allen', 'faculty', 'tom_fac'),

('U000000021', 'Uma Nelson', 'student', 'uma_nelson'),
('U000000022', 'Victor Chang', 'alumni', 'vchang_al'),
('U000000023', 'Wendy Scott', 'staff', 'wendy_sc'),
('U000000024', 'Xavier Reed', 'guest', 'xreed_g'),
('U000000025', 'Yara Gomez', 'faculty', 'yara_fac'),
('U000000026', 'Zane Carter', 'student', 'zcarter_st'),
('U000000027', 'Amy Rivera', 'staff', 'amy_riv'),
('U000000028', 'Brian Stone', 'student', 'bstone_stu'),
('U000000029', 'Chloe Adams', 'faculty', 'chloea_fac'),
('U000000030', 'Derek Liu', 'alumni', 'dliu_al'),

('U000000031', 'Eva Simmons', 'student', 'evasim_s'),
('U000000032', 'Felix Moore', 'staff', 'felixm_sf'),
('U000000033', 'Gina Flores', 'guest', 'gflores_g'),
('U000000034', 'Hank Miller', 'faculty', 'hankm_fac'),
('U000000035', 'Ivy Bennett', 'student', 'ivyb_s'),
('U000000036', 'Jake Barnes', 'alumni', 'jakeb_al'),
('U000000037', 'Kelly Wu', 'staff', 'kellyw_st'),
('U000000038', 'Leo Grant', 'faculty', 'leog_fac'),
('U000000039', 'Maya Cook', 'student', 'mayac_st'),
('U000000040', 'Noah Price', 'staff', 'noahp_sf'),

('U000000041', 'Olivia Reed', 'student', 'oreed_s'),
('U000000042', 'Peter Young', 'alumni', 'petery_al'),
('U000000043', 'Quinn Hughes', 'faculty', 'quinnh_fac'),
('U000000044', 'Rosa Sanders', 'guest', 'rosas_g'),
('U000000045', 'Steve Powell', 'staff', 'spowell_sf'),
('U000000046', 'Tina Barnes', 'student', 'tinab_s'),
('U000000047', 'Ursula King', 'faculty', 'uking_fac'),
('U000000048', 'Vince Cole', 'student', 'vcole_s'),
('U000000049', 'Wanda Shaw', 'staff', 'wshaw_sf'),
('U000000050', 'Xena Harper', 'alumni', 'xharper_al');

-- END USER DATA


-- Create USER_CONTACT table, add attributes 
create table USER_CONTACT(
	user_id char(10), 
	contact varchar(50),
	constraint PK_USERContact primary key (user_id, contact),
	constraint FK_UserContact_User foreign key (user_id) references USER(user_id)
	);


-- START OF USER_CONTACT DATA
-- Insert 50 sample USER_CONTACT records

INSERT INTO USER_CONTACT (user_id, contact) VALUES
('U000000001', 'alice.johnson@unlv.edu'),
('U000000002', 'bob.smith@unlv.edu'),
('U000000003', 'cathy.nguyen@unlv.edu'),
('U000000004', '702-555-1004'),
('U000000005', 'ella.martinez@alumni.unlv.edu'),
('U000000006', 'frank.zhao@unlv.edu'),
('U000000007', '702-555-1007'),
('U000000008', 'henry.ford@gmail.com'),
('U000000009', '702-555-1009'),
('U000000010', 'jack.brown@unlv.edu'),

('U000000011', '702-555-1011'),
('U000000012', 'liam.wilson@unlv.edu'),
('U000000013', 'mona.patel@unlv.edu'),
('U000000014', 'ninab@unlv.edu'),
('U000000015', '702-555-1015'),
('U000000016', 'paul.green@unlv.edu'),
('U000000017', 'queen.thomas@gmail.com'),
('U000000018', '702-555-1018'),
('U000000019', 'sarab@unlv.edu'),
('U000000020', 'tom.allen@unlv.edu'),

('U000000021', 'uma.nelson@unlv.edu'),
('U000000022', 'victor.chang@alumni.unlv.edu'),
('U000000023', 'wendy.scott@unlv.edu'),
('U000000024', 'xreed@gmail.com'),
('U000000025', 'yara.gomez@unlv.edu'),
('U000000026', '702-555-1026'),
('U000000027', 'amy.rivera@unlv.edu'),
('U000000028', '702-555-1028'),
('U000000029', 'chloe.adams@unlv.edu'),
('U000000030', 'derek.liu@alumni.unlv.edu'),

('U000000031', 'eva.simmons@unlv.edu'),
('U000000032', 'felix.moore@unlv.edu'),
('U000000033', 'gina.flores@gmail.com'),
('U000000034', 'hank.miller@unlv.edu'),
('U000000035', '702-555-1035'),
('U000000036', 'jake.barnes@alumni.unlv.edu'),
('U000000037', 'kelly.wu@unlv.edu'),
('U000000038', 'leo.grant@unlv.edu'),
('U000000039', 'maya.cook@unlv.edu'),
('U000000040', 'noah.price@unlv.edu'),

('U000000041', 'olivia.reed@unlv.edu'),
('U000000042', 'peter.young@alumni.unlv.edu'),
('U000000043', 'quinn.hughes@unlv.edu'),
('U000000044', 'rosa.sanders@gmail.com'),
('U000000045', 'steve.powell@unlv.edu'),
('U000000046', '702-555-1046'),
('U000000047', 'ursula.king@unlv.edu'),
('U000000048', 'vince.cole@unlv.edu'),
('U000000049', 'wanda.shaw@unlv.edu'),
('U000000050', 'xena.harper@alumni.unlv.edu');

-- END USER_CONTACT DATA


-- Create CITATION table, add attributes 
create table CITATION(
	citation_id char(12) primary key,
	citation_date date, 
	violation_code char(5) not null,
	amount decimal (10,2),
	status char(10),
	VIN char(10) references VEHICLE(VIN),
	appeal_id char(15) references APPEAL(appeal_id)
    );


-- START OF CITATION DATA
-- Insert 50 sample CITATION records 

INSERT INTO CITATION (citation_id, citation_date, violation_code, amount, status, VIN) VALUES
('CIT000000001', '2024-01-05', 'SPD01', 150.00, 'PAID', 'VIN0000010'),
('CIT000000002', '2024-02-15', 'PKG02', 75.50, 'UNPAID', 'VIN0000001'),
('CIT000000003', '2024-03-12', 'RLT03', 120.00, 'PAID', 'VIN0000002'),
('CIT000000004', '2024-04-01', 'SPD01', 180.00, 'UNPAID', 'VIN0000003'),
('CIT000000005', '2024-01-25', 'STP04', 90.00, 'CONTESTED', 'VIN0000004'),
('CIT000000006', '2024-03-19', 'PKG02', 60.00, 'PAID', 'VIN0000005'),
('CIT000000007', '2024-02-10', 'SPD01', 200.00, 'PAID', 'VIN0000006'),
('CIT000000008', '2024-01-30', 'RLT03', 135.00, 'UNPAID', 'VIN0000007'),
('CIT000000009', '2024-03-08', 'PKG02', 55.00, 'PAID', 'VIN0000008'),
('CIT000000010', '2024-04-04', 'STP04', 110.00, 'UNPAID', 'VIN0000009'),

('CIT000000011', '2024-01-14', 'SPD01', 150.00, 'PAID', 'VIN0000010'),
('CIT000000012', '2024-02-23', 'RLT03', 120.00, 'PAID', 'VIN0000001'),
('CIT000000013', '2024-03-15', 'PKG02', 65.00, 'CONTESTED', 'VIN0000002'),
('CIT000000014', '2024-04-10', 'SPD01', 175.00, 'UNPAID', 'VIN0000003'),
('CIT000000015', '2024-01-20', 'STP04', 95.00, 'PAID', 'VIN0000004'),
('CIT000000016', '2024-02-28', 'PKG02', 80.00, 'PAID', 'VIN0000005'),
('CIT000000017', '2024-03-18', 'SPD01', 210.00, 'UNPAID', 'VIN0000006'),
('CIT000000018', '2024-04-02', 'RLT03', 100.00, 'PAID', 'VIN0000007'),
('CIT000000019', '2024-01-29', 'PKG02', 70.00, 'CONTESTED', 'VIN0000008'),
('CIT000000020', '2024-03-05', 'STP04', 115.00, 'UNPAID', 'VIN0000009'),

('CIT000000021', '2024-01-10', 'SPD01', 160.00, 'PAID', 'VIN0000010'),
('CIT000000022', '2024-02-20', 'RLT03', 130.00, 'UNPAID', 'VIN0000001'),
('CIT000000023', '2024-03-20', 'PKG02', 60.00, 'PAID', 'VIN0000002'),
('CIT000000024', '2024-04-07', 'SPD01', 170.00, 'CONTESTED', 'VIN0000003'),
('CIT000000025', '2024-01-18', 'STP04', 85.00, 'PAID', 'VIN0000004'),
('CIT000000026', '2024-03-10', 'PKG02', 75.00, 'UNPAID', 'VIN0000005'),
('CIT000000027', '2024-02-08', 'SPD01', 195.00, 'PAID', 'VIN0000006'),
('CIT000000028', '2024-01-27', 'RLT03', 140.00, 'UNPAID', 'VIN0000007'),
('CIT000000029', '2024-03-02', 'PKG02', 68.00, 'PAID', 'VIN0000008'),
('CIT000000030', '2024-04-05', 'STP04', 100.00, 'CONTESTED', 'VIN0000009'),

('CIT000000031', '2024-01-09', 'SPD01', 145.00, 'PAID', 'VIN0000010'),
('CIT000000032', '2024-02-12', 'RLT03', 125.00, 'UNPAID', 'VIN0000001'),
('CIT000000033', '2024-03-11', 'PKG02', 66.00, 'CONTESTED', 'VIN0000002'),
('CIT000000034', '2024-04-09', 'SPD01', 165.00, 'PAID', 'VIN0000003'),
('CIT000000035', '2024-01-21', 'STP04', 105.00, 'PAID', 'VIN0000004'),
('CIT000000036', '2024-02-25', 'PKG02', 82.00, 'UNPAID', 'VIN0000005'),
('CIT000000037', '2024-03-13', 'SPD01', 205.00, 'PAID', 'VIN0000006'),
('CIT000000038', '2024-04-03', 'RLT03', 98.00, 'UNPAID', 'VIN0000007'),
('CIT000000039', '2024-01-26', 'PKG02', 72.00, 'CONTESTED', 'VIN0000008'),
('CIT000000040', '2024-03-04', 'STP04', 108.00, 'UNPAID', 'VIN0000009'),

('CIT000000041', '2024-01-07', 'SPD01', 155.00, 'PAID', 'VIN0000010'),
('CIT000000042', '2024-02-22', 'RLT03', 118.00, 'PAID', 'VIN0000001'),
('CIT000000043', '2024-03-14', 'PKG02', 63.00, 'UNPAID', 'VIN0000002'),
('CIT000000044', '2024-04-06', 'SPD01', 185.00, 'CONTESTED', 'VIN0000003'),
('CIT000000045', '2024-01-23', 'STP04', 92.00, 'PAID', 'VIN0000004'),
('CIT000000046', '2024-02-26', 'PKG02', 77.00, 'UNPAID', 'VIN0000005'),
('CIT000000047', '2024-03-17', 'SPD01', 190.00, 'PAID', 'VIN0000006'),
('CIT000000048', '2024-04-08', 'RLT03', 102.00, 'UNPAID', 'VIN0000007'),
('CIT000000049', '2024-01-28', 'PKG02', 69.00, 'PAID', 'VIN0000008'),
('CIT000000050', '2024-03-06', 'STP04', 112.00, 'CONTESTED', 'VIN0000009');

-- END CITATION DATA


-- Create APPEAL table, add attributes 
create table APPEAL(
	appeal_id char(15) primary key, 
	date_submitted date,
	reason varchar(300) not null,
	outcome varchar(100) not null, 
	resolved_date date
    );


-- START OF APPEAL DATA
-- Insert 50 sample APPEAL records 

INSERT INTO APPEAL (appeal_id, date_submitted, reason, outcome, resolved_date) VALUES
('APL00000000001', '2024-01-05', 'Medical emergency during citation.', 'Appeal approved', '2024-01-12'),
('APL00000000002', '2024-01-08', 'Meter was malfunctioning.', 'Appeal denied', '2024-01-15'),
('APL00000000003', '2024-01-10', 'Incorrect license plate cited.', 'Citation dismissed', '2024-01-18'),
('APL00000000004', '2024-01-12', 'Was not parked in restricted zone.', 'Appeal approved', '2024-01-20'),
('APL00000000005', '2024-01-14', 'Vehicle was stolen at the time.', 'Citation dismissed', '2024-01-21'),
('APL00000000006', '2024-01-17', 'Emergency stop for health reasons.', 'Appeal denied', '2024-01-24'),
('APL00000000007', '2024-01-18', 'Confusing signage led to error.', 'Appeal approved', '2024-01-26'),
('APL00000000008', '2024-01-20', 'Incorrect time on citation.', 'Citation amended', '2024-01-29'),
('APL00000000009', '2024-01-22', 'Appealing due to valid handicap permit.', 'Appeal approved', '2024-01-30'),
('APL00000000010', '2024-01-25', 'Officer wrote wrong vehicle info.', 'Citation dismissed', '2024-02-01'),

('APL00000000011', '2024-02-01', 'Attending urgent family emergency.', 'Appeal denied', '2024-02-08'),
('APL00000000012', '2024-02-02', 'App malfunctioned when paying.', 'Citation amended', '2024-02-09'),
('APL00000000013', '2024-02-03', 'Had to stop briefly for delivery.', 'Appeal denied', '2024-02-10'),
('APL00000000014', '2024-02-04', 'Overpayment made already.', 'Appeal approved', '2024-02-11'),
('APL00000000015', '2024-02-05', 'No clear notice of permit requirement.', 'Appeal denied', '2024-02-12'),
('APL00000000016', '2024-02-06', 'Road signs were blocked by tree.', 'Citation dismissed', '2024-02-13'),
('APL00000000017', '2024-02-07', 'First-time offender, asking for leniency.', 'Reduced fine', '2024-02-14'),
('APL00000000018', '2024-02-08', 'Snow obscured parking lines.', 'Appeal denied', '2024-02-15'),
('APL00000000019', '2024-02-09', 'Misread parking hours.', 'Appeal approved', '2024-02-16'),
('APL00000000020', '2024-02-10', 'Broken tail light cited as moving violation.', 'Citation downgraded', '2024-02-17'),

('APL00000000021', '2024-02-11', 'Mistaken identity of vehicle.', 'Citation dismissed', '2024-02-18'),
('APL00000000022', '2024-02-12', 'Delayed mail notification.', 'Appeal approved', '2024-02-19'),
('APL00000000023', '2024-02-13', 'Vehicle broke down temporarily.', 'Appeal denied', '2024-02-20'),
('APL00000000024', '2024-02-14', 'Towed without proper notice.', 'Appeal approved', '2024-02-21'),
('APL00000000025', '2024-02-15', 'University permit was valid.', 'Appeal approved', '2024-02-22'),
('APL00000000026', '2024-02-16', 'Construction zone was unclear.', 'Citation dismissed', '2024-02-23'),
('APL00000000027', '2024-02-17', 'System error during payment.', 'Appeal approved', '2024-02-24'),
('APL00000000028', '2024-02-18', 'Received citation in error.', 'Citation voided', '2024-02-25'),
('APL00000000029', '2024-02-19', 'Short stop for injured passenger.', 'Appeal denied', '2024-02-26'),
('APL00000000030', '2024-02-20', 'Photo evidence submitted.', 'Citation upheld', '2024-02-27'),

('APL00000000031', '2024-02-21', 'Permit zone changed recently.', 'Appeal denied', '2024-02-28'),
('APL00000000032', '2024-02-22', 'Appeal filed within 48 hours.', 'Citation dismissed', '2024-02-29'),
('APL00000000033', '2024-02-23', 'Ticket left on wrong windshield.', 'Appeal approved', '2024-03-01'),
('APL00000000034', '2024-02-24', 'Witness account supports driver.', 'Appeal approved', '2024-03-02'),
('APL00000000035', '2024-02-25', 'Unmarked curb painted after ticket.', 'Citation dismissed', '2024-03-03'),
('APL00000000036', '2024-02-26', 'Zone not marked on weekends.', 'Appeal denied', '2024-03-04'),
('APL00000000037', '2024-02-27', 'Officer did not observe full stop.', 'Citation upheld', '2024-03-05'),
('APL00000000038', '2024-02-28', 'Unavoidable hazard in road.', 'Citation reduced', '2024-03-06'),
('APL00000000039', '2024-02-29', 'Duplicate citation received.', 'Citation voided', '2024-03-07'),
('APL00000000040', '2024-03-01', 'Driver unaware of campus closure.', 'Appeal denied', '2024-03-08'),

('APL00000000041', '2024-03-02', 'GPS gave wrong entrance route.', 'Citation upheld', '2024-03-09'),
('APL00000000042', '2024-03-03', 'Attending disability support office.', 'Appeal approved', '2024-03-10'),
('APL00000000043', '2024-03-04', 'Citation applied to expired record.', 'Citation amended', '2024-03-11'),
('APL00000000044', '2024-03-05', 'Officer entered wrong citation time.', 'Citation voided', '2024-03-12'),
('APL00000000045', '2024-03-06', 'Submitted valid parking proof.', 'Appeal approved', '2024-03-13'),
('APL00000000046', '2024-03-07', 'No signs for restricted area.', 'Citation dismissed', '2024-03-14'),
('APL00000000047', '2024-03-08', 'Driver unaware of speed trap.', 'Appeal denied', '2024-03-15'),
('APL00000000048', '2024-03-09', 'Mistake in citation photo.', 'Citation voided', '2024-03-16'),
('APL00000000049', '2024-03-10', 'Officer feedback acknowledged.', 'Citation reduced', '2024-03-17'),
('APL00000000050', '2024-03-11', 'Submitted within 24hr appeal limit.', 'Appeal approved', '2024-03-18');

-- END APPEAL DATA


-- Create VEHICLE table, add attributes 
create table VEHICLE(
	VIN char(17) primary key,
	lic_plate varchar(8) not null,
	year char(4) not null, 
	make varchar(20) not null,
	model varchar(20) not null, 
	color varchar(20) not null, 
	user_id char(10) references USER(user_id),
	permit_id char(8) references PERMIT(permit_id)
    );


-- START OF VEHICLE DATA
-- Insert 50 sample VEHICLE records 

INSERT INTO VEHICLE (VIN, lic_plate, year, make, model, color, user_id, permit_id) VALUES
('1HGCM82633A00001', 'ABC123', '2018', 'Toyota', 'Camry', 'Blue', 'U000000001', 'PRMT0001'),
('1HGCM82633A00002', 'XYZ789', '2019', 'Honda', 'Civic', 'Red', 'U000000002', 'PRMT0002'),
('1HGCM82633A00003', 'LMN456', '2017', 'Ford', 'Fusion', 'Black', 'U000000003', 'PRMT0003'),
('1HGCM82633A00004', 'JKL321', '2020', 'Chevrolet', 'Malibu', 'White', 'U000000004', 'PRMT0004'),
('1HGCM82633A00005', 'QWE987', '2021', 'Nissan', 'Altima', 'Gray', 'U000000005', 'PRMT0005'),
('1HGCM82633A00006', 'RTY654', '2016', 'Hyundai', 'Sonata', 'Silver', 'U000000006', 'PRMT0006'),
('1HGCM82633A00007', 'UIO210', '2015', 'Kia', 'Optima', 'Blue', 'U000000007', 'PRMT0007'),
('1HGCM82633A00008', 'PAS432', '2018', 'Subaru', 'Legacy', 'Green', 'U000000008', 'PRMT0008'),
('1HGCM82633A00009', 'GHJ876', '2019', 'Mazda', '6', 'Red', 'U000000009', 'PRMT0009'),
('1HGCM82633A00010', 'BNM543', '2020', 'Volkswagen', 'Jetta', 'Black', 'U000000010', 'PRMT0010'),

('1HGCM82633A00011', 'ZXC987', '2017', 'Audi', 'A4', 'White', 'U000000011', 'PRMT0011'),
('1HGCM82633A00012', 'VBN321', '2018', 'BMW', '328i', 'Gray', 'U000000012', 'PRMT0012'),
('1HGCM82633A00013', 'TYU654', '2019', 'Mercedes', 'C300', 'Silver', 'U000000013', 'PRMT0013'),
('1HGCM82633A00014', 'HJK432', '2021', 'Tesla', 'Model 3', 'Red', 'U000000014', 'PRMT0014'),
('1HGCM82633A00015', 'QAZ210', '2016', 'Acura', 'TLX', 'Blue', 'U000000015', 'PRMT0015'),
('1HGCM82633A00016', 'WSX876', '2017', 'Lexus', 'ES350', 'Black', 'U000000016', 'PRMT0016'),
('1HGCM82633A00017', 'EDC543', '2018', 'Infiniti', 'Q50', 'White', 'U000000017', 'PRMT0017'),
('1HGCM82633A00018', 'RFV987', '2019', 'Volvo', 'S60', 'Gray', 'U000000018', 'PRMT0018'),
('1HGCM82633A00019', 'TGB321', '2020', 'Jaguar', 'XE', 'Silver', 'U000000019', 'PRMT0019'),
('1HGCM82633A00020', 'YHN654', '2021', 'AlfaRomeo', 'Giulia', 'Red', 'U000000020', 'PRMT0020'),

('1HGCM82633A00021', 'UJM432', '2017', 'Toyota', 'Corolla', 'Blue', 'U000000021', 'PRMT0021'),
('1HGCM82633A00022', 'IKL987', '2018', 'Honda', 'Accord', 'Black', 'U000000022', 'PRMT0022'),
('1HGCM82633A00023', 'OLP543', '2019', 'Ford', 'Focus', 'White', 'U000000023', 'PRMT0023'),
('1HGCM82633A00024', 'MNB876', '2020', 'Chevrolet', 'Impala', 'Gray', 'U000000024', 'PRMT0024'),
('1HGCM82633A00025', 'VFR210', '2021', 'Nissan', 'Maxima', 'Silver', 'U000000025', 'PRMT0025'),
('1HGCM82633A00026', 'CDE432', '2016', 'Hyundai', 'Elantra', 'Red', 'U000000026', 'PRMT0026'),
('1HGCM82633A00027', 'XSW987', '2017', 'Kia', 'Forte', 'Black', 'U000000027', 'PRMT0027'),
('1HGCM82633A00028', 'ZAQ543', '2018', 'Subaru', 'Impreza', 'White', 'U000000028', 'PRMT0028'),
('1HGCM82633A00029', 'PLM876', '2019', 'Mazda', '3', 'Gray', 'U000000029', 'PRMT0029'),
('1HGCM82633A00030', 'OKN321', '2020', 'VW', 'Passat', 'Silver', 'U000000030', 'PRMT0030'),

('1HGCM82633A00031', 'IJU654', '2017', 'Audi', 'A3', 'Red', 'U000000031', 'PRMT0031'),
('1HGCM82633A00032', 'HYG432', '2018', 'BMW', '230i', 'Blue', 'U000000032', 'PRMT0032'),
('1HGCM82633A00033', 'TFV987', '2019', 'Mercedes', 'CLA250', 'Black', 'U000000033', 'PRMT0033'),
('1HGCM82633A00034', 'RDC543', '2021', 'Tesla', 'Model Y', 'White', 'U000000034', 'PRMT0034'),
('1HGCM82633A00035', 'EDX210', '2016', 'Acura', 'ILX', 'Gray', 'U000000035', 'PRMT0035'),
('1HGCM82633A00036', 'WSA876', '2017', 'Lexus', 'IS300', 'Silver', 'U000000036', 'PRMT0036'),
('1HGCM82633A00037', 'QAZ543', '2018', 'Infiniti', 'Q60', 'Red', 'U000000037', 'PRMT0037'),
('1HGCM82633A00038', 'XSW987', '2019', 'Volvo', 'S90', 'Black', 'U000000038', 'PRMT0038'),
('1HGCM82633A00039', 'CDE432', '2020', 'Jaguar', 'XF', 'White', 'U000000039', 'PRMT0039'),
('1HGCM82633A00040', 'VFR876', '2021', 'AlfaRomeo', 'Stelvio', 'Gray', 'U000000040', 'PRMT0040'),

('1HGCM82633A00041', 'BNM210', '2018', 'Toyota', 'Avalon', 'Silver', 'U000000041', 'PRMT0041'),
('1HGCM82633A00042', 'ZXC654', '2019', 'Honda', 'Insight', 'Red', 'U000000042', 'PRMT0042'),
('1HGCM82633A00043', 'VBN432', '2020', 'Ford', 'Escape', 'Blue', 'U000000043', 'PRMT0043'),
('1HGCM82633A00044', 'TYU987', '2021', 'Chevrolet', 'Equinox', 'Black', 'U000000044', 'PRMT0044'),
('1HGCM82633A00045', 'HJK543', '2017', 'Nissan', 'Rogue', 'White', 'U000000045', 'PRMT0045'),
('1HGCM82633A00046', 'QAZ876', '2018', 'Hyundai', 'Tucson', 'Gray', 'U000000046', 'PRMT0046'),
('1HGCM82633A00047', 'WSX210', '2019', 'Kia', 'Sportage', 'Silver', 'U000000047', 'PRMT0047'),
('1HGCM82633A00048', 'EDC654', '2020', 'Subaru', 'Forester', 'Red', 'U000000048', 'PRMT0048'),
('1HGCM82633A00049', 'RFV432', '2021', 'Mazda', 'CX-5', 'Black', 'U000000049', 'PRMT0049'),
('1HGCM82633A00050', 'TGB987', '2016', 'VW', 'Tiguan', 'White', 'U000000050', 'PRMT0050');

-- END VEHICLE DATA


-- Create PERMIT table, add attributes  
create table PERMIT(
	permit_id char(8) primary key,
	type varchar(20) not null, 
	start_date date,
	end_date date, 
	status char(10),
	fee decimal(10,2)
    );


-- START OF PERMIT DATA
-- Insert 50 sample PERMIT records 

INSERT INTO PERMIT (permit_id, type, start_date, end_date, status, fee) VALUES
('PRMT0001', 'Student', '2024-01-01', '2024-12-31', 'ACTIVE', 250.00),
('PRMT0002', 'Faculty', '2024-01-05', '2024-12-31', 'ACTIVE', 300.00),
('PRMT0003', 'Staff', '2024-01-10', '2024-12-31', 'ACTIVE', 275.00),
('PRMT0004', 'Visitor', '2024-02-01', '2024-02-28', 'EXPIRED', 50.00),
('PRMT0005', 'Alumni', '2024-02-05', '2025-02-04', 'ACTIVE', 200.00),
('PRMT0006', 'Student', '2024-02-10', '2025-02-09', 'ACTIVE', 250.00),
('PRMT0007', 'Faculty', '2024-02-15', '2025-02-14', 'ACTIVE', 300.00),
('PRMT0008', 'Staff', '2024-02-20', '2025-02-19', 'ACTIVE', 275.00),
('PRMT0009', 'Visitor', '2024-03-01', '2024-03-31', 'EXPIRED', 50.00),
('PRMT0010', 'Alumni', '2024-03-05', '2025-03-04', 'ACTIVE', 200.00),

('PRMT0011', 'Student', '2024-03-10', '2025-03-09', 'ACTIVE', 250.00),
('PRMT0012', 'Faculty', '2024-03-15', '2025-03-14', 'ACTIVE', 300.00),
('PRMT0013', 'Staff', '2024-03-20', '2025-03-19', 'ACTIVE', 275.00),
('PRMT0014', 'Visitor', '2024-04-01', '2024-04-30', 'EXPIRED', 50.00),
('PRMT0015', 'Alumni', '2024-04-05', '2025-04-04', 'ACTIVE', 200.00),
('PRMT0016', 'Student', '2024-04-10', '2025-04-09', 'ACTIVE', 250.00),
('PRMT0017', 'Faculty', '2024-04-15', '2025-04-14', 'ACTIVE', 300.00),
('PRMT0018', 'Staff', '2024-04-20', '2025-04-19', 'ACTIVE', 275.00),
('PRMT0019', 'Visitor', '2024-05-01', '2024-05-31', 'EXPIRED', 50.00),
('PRMT0020', 'Alumni', '2024-05-05', '2025-05-04', 'ACTIVE', 200.00),

('PRMT0021', 'Student', '2024-05-10', '2025-05-09', 'ACTIVE', 250.00),
('PRMT0022', 'Faculty', '2024-05-15', '2025-05-14', 'ACTIVE', 300.00),
('PRMT0023', 'Staff', '2024-05-20', '2025-05-19', 'ACTIVE', 275.00),
('PRMT0024', 'Visitor', '2024-06-01', '2024-06-30', 'EXPIRED', 50.00),
('PRMT0025', 'Alumni', '2024-06-05', '2025-06-04', 'ACTIVE', 200.00),
('PRMT0026', 'Student', '2024-06-10', '2025-06-09', 'ACTIVE', 250.00),
('PRMT0027', 'Faculty', '2024-06-15', '2025-06-14', 'ACTIVE', 300.00),
('PRMT0028', 'Staff', '2024-06-20', '2025-06-19', 'ACTIVE', 275.00),
('PRMT0029', 'Visitor', '2024-07-01', '2024-07-31', 'EXPIRED', 50.00),
('PRMT0030', 'Alumni', '2024-07-05', '2025-07-04', 'ACTIVE', 200.00),

('PRMT0031', 'Student', '2024-07-10', '2025-07-09', 'ACTIVE', 250.00),
('PRMT0032', 'Faculty', '2024-07-15', '2025-07-14', 'ACTIVE', 300.00),
('PRMT0033', 'Staff', '2024-07-20', '2025-07-19', 'ACTIVE', 275.00),
('PRMT0034', 'Visitor', '2024-08-01', '2024-08-31', 'EXPIRED', 50.00),
('PRMT0035', 'Alumni', '2024-08-05', '2025-08-04', 'ACTIVE', 200.00),
('PRMT0036', 'Student', '2024-08-10', '2025-08-09', 'ACTIVE', 250.00),
('PRMT0037', 'Faculty', '2024-08-15', '2025-08-14', 'ACTIVE', 300.00),
('PRMT0038', 'Staff', '2024-08-20', '2025-08-19', 'ACTIVE', 275.00),
('PRMT0039', 'Visitor', '2024-09-01', '2024-09-30', 'EXPIRED', 50.00),
('PRMT0040', 'Alumni', '2024-09-05', '2025-09-04', 'ACTIVE', 200.00),

('PRMT0041', 'Student', '2024-09-10', '2025-09-09', 'ACTIVE', 250.00),
('PRMT0042', 'Faculty', '2024-09-15', '2025-09-14', 'ACTIVE', 300.00),
('PRMT0043', 'Staff', '2024-09-20', '2025-09-19', 'ACTIVE', 275.00),
('PRMT0044', 'Visitor', '2024-10-01', '2024-10-31', 'EXPIRED', 50.00),
('PRMT0045', 'Alumni', '2024-10-05', '2025-10-04', 'ACTIVE', 200.00),
('PRMT0046', 'Student', '2024-10-10', '2025-10-09', 'ACTIVE', 250.00),
('PRMT0047', 'Faculty', '2024-10-15', '2025-10-14', 'ACTIVE', 300.00),
('PRMT0048', 'Staff', '2024-10-20', '2025-10-19', 'ACTIVE', 275.00),
('PRMT0049', 'Visitor', '2024-11-01', '2024-11-30', 'EXPIRED', 50.00),
('PRMT0050', 'Alumni', '2024-11-05', '2025-11-04', 'ACTIVE', 200.00);

-- END PERMIT DATA


-- Create LPR_SCAN table, add attributes  
create table LPR_SCAN(
	scan_id char(10) primary key, 
	timestamp date, 
	lic_plate varchar(8) not null,
	location varchar(20) not null,
	permit_id char(8) references PERMIT(permit_id)
    );


-- START OF LPR_SCAN DATA
-- Insert 50 sample LPR_SCAN records 

INSERT INTO LPR_SCAN (scan_id, timestamp, lic_plate, location) VALUES
('SCAN00001', '2024-01-01', 'ABC123', 'Lot A'),
('SCAN00002', '2024-01-02', 'XYZ789', 'Lot B'),
('SCAN00003', '2024-01-03', 'LMN456', 'Lot C'),
('SCAN00004', '2024-01-04', 'JKL321', 'Garage 1'),
('SCAN00005', '2024-01-05', 'QWE987', 'Garage 2'),
('SCAN00006', '2024-01-06', 'RTY654', 'Lot D'),
('SCAN00007', '2024-01-07', 'UIO210', 'Lot A'),
('SCAN00008', '2024-01-08', 'PAS432', 'Lot B'),
('SCAN00009', '2024-01-09', 'GHJ876', 'Lot C'),
('SCAN00010', '2024-01-10', 'BNM543', 'Garage 1'),

('SCAN00011', '2024-01-11', 'ZXC987', 'Garage 2'),
('SCAN00012', '2024-01-12', 'VBN321', 'Lot D'),
('SCAN00013', '2024-01-13', 'TYU654', 'Lot A'),
('SCAN00014', '2024-01-14', 'HJK432', 'Lot B'),
('SCAN00015', '2024-01-15', 'QAZ210', 'Lot C'),
('SCAN00016', '2024-01-16', 'WSX876', 'Garage 1'),
('SCAN00017', '2024-01-17', 'EDC543', 'Garage 2'),
('SCAN00018', '2024-01-18', 'RFV987', 'Lot D'),
('SCAN00019', '2024-01-19', 'TGB321', 'Lot A'),
('SCAN00020', '2024-01-20', 'YHN654', 'Lot B'),

('SCAN00021', '2024-01-21', 'UJM432', 'Lot C'),
('SCAN00022', '2024-01-22', 'IKL987', 'Garage 1'),
('SCAN00023', '2024-01-23', 'OLP543', 'Garage 2'),
('SCAN00024', '2024-01-24', 'MNB876', 'Lot D'),
('SCAN00025', '2024-01-25', 'VFR210', 'Lot A'),
('SCAN00026', '2024-01-26', 'CDE432', 'Lot B'),
('SCAN00027', '2024-01-27', 'XSW987', 'Lot C'),
('SCAN00028', '2024-01-28', 'ZAQ543', 'Garage 1'),
('SCAN00029', '2024-01-29', 'PLM876', 'Garage 2'),
('SCAN00030', '2024-01-30', 'OKN321', 'Lot D'),

('SCAN00031', '2024-01-31', 'IJU654', 'Lot A'),
('SCAN00032', '2024-02-01', 'HYG432', 'Lot B'),
('SCAN00033', '2024-02-02', 'TFV987', 'Lot C'),
('SCAN00034', '2024-02-03', 'RDC543', 'Garage 1'),
('SCAN00035', '2024-02-04', 'EDX210', 'Garage 2'),
('SCAN00036', '2024-02-05', 'WSA876', 'Lot D'),
('SCAN00037', '2024-02-06', 'QAZ543', 'Lot A'),
('SCAN00038', '2024-02-07', 'XSW987', 'Lot B'),
('SCAN00039', '2024-02-08', 'CDE432', 'Lot C'),
('SCAN00040', '2024-02-09', 'VFR876', 'Garage 1'),

('SCAN00041', '2024-02-10', 'BNM210', 'Garage 2'),
('SCAN00042', '2024-02-11', 'ZXC654', 'Lot D'),
('SCAN00043', '2024-02-12', 'VBN432', 'Lot A'),
('SCAN00044', '2024-02-13', 'TYU987', 'Lot B'),
('SCAN00045', '2024-02-14', 'HJK543', 'Lot C'),
('SCAN00046', '2024-02-15', 'QAZ876', 'Garage 1'),
('SCAN00047', '2024-02-16', 'WSX210', 'Garage 2'),
('SCAN00048', '2024-02-17', 'EDC654', 'Lot D'),
('SCAN00049', '2024-02-18', 'RFV432', 'Lot A'),
('SCAN00050', '2024-02-19', 'TGB987', 'Lot B');

-- END LPR_SCAN DATA



-- *******************************
-- DELETE AND UPDATE QUERIES 
-- 2 PER TABLE AND FOREIGN KEY CHANGE


-- Removed previous foreign key     
ALTER TABLE USER_CONTACT 
DROP FOREIGN KEY FK_UserContact_User;

-- Re-create the foreign key constraint and set the delete behavior 
ALTER TABLE USER_CONTACT 
ADD constraint FK_UserContact_User foreign key (user_id) references USER(user_id) ON DELETE CASCADE; 


-- Executed delete command 
DELETE FROM USER 
WHERE user_id = 'U000000050';

-- Update user U000000001 from student to alumni 
UPDATE USER 
SET affiliation = 'alumni' 
WHERE user_id = 'U000000001';


-- Executed delete command on user_contact table
DELETE FROM USER_CONTACT 
WHERE user_id = 'U000000049';

-- Update user U000000001 from student to alumni 
UPDATE USER_CONTACT 
SET contact = 'alice.johnson01@unlv.edu' 
WHERE user_id = 'U000000001';


-- Delete command on citation table
DELETE FROM CITATION 
WHERE citation_id = 'CIT000000050';

-- Update command on citation table 
UPDATE CITATION 
SET status = 'PAID'
WHERE citation_id = 'CIT000000002';


-- Delete command on appeal table 
DELETE FROM APPEAL
WHERE appeal_id = 'APL00000000050';

-- Update command on appeal table  
UPDATE APPEAL 
SET outcome = 'Appeal approved'
WHERE appeal_id = 'APL00000000002';


-- Delete command on vehicle table 
DELETE FROM VEHICLE 
WHERE VIN = '1HGCM82633A00050';

-- Update command on vehicle table  
UPDATE VEHICLE 
SET color = 'Green'
WHERE VIN = '1HGCM82633A00001';


-- Delete command on permit table 
DELETE FROM PERMIT 
WHERE permit_id = 'PRMT0050';

-- Update command on permit table  
UPDATE PERMIT 
SET status = 'Expired'
WHERE permit_id = 'PRMT0001';


-- Delete command on LPR SCAN table 
DELETE FROM LPR_SCAN 
WHERE scan_id = 'SCAN00050';

-- Update command on LRN SCAN table  
UPDATE LPR_SCAN 
SET location = 'Lot B'
WHERE scan_id = 'SCAN00001';



-- *******************************
-- QUERIES COMMANDS 
-- BASIC QUERIES AND OPERATORS
-- JOIN TABLES 
-- AGG FUNC AND GROUPING
-- SUBQUERIES 


-- Find all unpaid citations 
SELECT citation_id, violation_code, citation_date, status
FROM citation
WHERE status = 'Unpaid';

-- Retrieve all citations between two specific dates 
SELECT citation_id, citation_date
FROM citation
WHERE citation_date BETWEEN '2024-04-01' AND '2024-04-30'
ORDER BY citation_date ASC;

-- Find permits that cost above $250
SELECT permit_id, type, status, fee
FROM Permit
WHERE fee > 250;

-- List all appeals that were denied
SELECT Appeal_id, date_submitted, reason, outcome
FROM appeal
WHERE outcome LIKE 'Appeal denied';

-- Retrieve all citations with an amount less than $90
SELECT citation_id, violation_code, status, amount
FROM citation
WHERE amount < 90;

-- List all users with their assigned permit
SELECT u.user_id, u.full_name, p.permit_id, p.status
FROM user u
INNER JOIN vehicle v ON u.user_id = v.user_id
INNER JOIN permit p ON v.permit_id = p.permit_id
WHERE status = 'active';

-- List vehicles that have been scanned
SELECT ls.scan_id, ls.timestamp, ls.lic_plate, v.VIN
FROM lpr_scan ls 
LEFT JOIN vehicle v ON ls.lic_plate = v.lic_plate;

-- List the connection between the vehicle type and a staff user
SELECT u.full_name, u.affiliation, v.make, v.model, v.year
FROM vehicle v
INNER JOIN user u ON u.user_id = v.user_id
WHERE u.affiliation = 'staff';

-- Find the users with contact information if available 
SELECT DISTINCT u.user_id, u.full_name, u.affiliation, uc.contact
FROM user u
LEFT JOIN user_contact uc ON u.user_id = uc.user_id
WHERE uc.contact LIKE '%702%';

-- Total incurred per violation code
SELECT violation_code, SUM(amount) AS "Total Incurred"
FROM Citation
GROUP by violation_code;

-- List total of fees per permit amount 
SELECT Fee, COUNT(*) AS "Total_Permit Per Fee"
FROM permit
GROUP BY fee;

-- List maximum number of days open of appeals between days 8-14
SELECT appeal_id, MAX(resolved_date - date_submitted) AS Max_Duration
FROM appeal
GROUP by appeal_id
HAVING MAX(resolved_date - date_submitted) BETWEEN 8 AND 14
ORDER BY Max_Duration DESC;

-- List VIN who had the highest citation amount 
SELECT citation_id, violation_code, VIN, amount AS "Total Amount" 
FROM citation
WHERE amount = (
SELECT MAX(amount) FROM citation
);

-- Total of usage per parking lot 
SELECT location, COUNT(*) AS Usage_Count
FROM lpr_scan
GROUP BY location 
ORDER BY usage_count DESC;

-- Find the permit types with the longest duration between start and end date
SELECT type, 
MAX(end_date-start_date) AS Max_Duration
FROM permit
GROUP by type
ORDER BY Max_Duration DESC;

-- Find appeals with subquery where reasons have 'incorrect or info' related to appeal
SELECT appeal_id, reason, outcome
FROM appeal
WHERE appeal_id IN (
    SELECT appeal_id
    FROM appeal
    WHERE reason LIKE '%incorrect%'
    OR reason LIKE '%info%'
);

-- List the contacts that have mill or smith in it
SELECT user_id, contact
FROM user_contact
WHERE contact LIKE '%mill%' 
OR contact LIKE '%smith%';