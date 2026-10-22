create table health_care(
Patient_Id	varchar(80),
Patient_Admission Date,
Patient_Admission_Time Time,
Merged	varchar(80),
Patient_Gender	varchar(80),
Patient_Age	int,
Patient_Race varchar(80),
Department_Referral	varchar(80),
Patient_Admission_Flag	varchar(80),
Patient_Satisfaction_Score	int,
Patient_Waittime int
);

select * from health_care;
--update Patient_Satisfaction_Score-- 
update health_care
set Patient_Satisfaction_Score = (select avg(Patient_Satisfaction_Score) from health_care where Patient_Satisfaction_Score is not null)
where Patient_Satisfaction_Score is null

--update Patient_Gender -- 
update health_care
set Patient_Gender = 'Female'
where Patient_Gender='Femaleemale'

--update Department_Referral -- 
update health_care
set Department_Referral	 = 'Direct walk-in'
where Department_Referral='None'