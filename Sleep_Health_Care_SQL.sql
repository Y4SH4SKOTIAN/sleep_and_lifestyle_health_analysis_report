create database health_care ;
use health_care ;


select * from health_care ;


alter table health_care
rename column `ï»¿Person ID` to person_id,
rename column `Gender` to gender,
rename column `Age` to age,
rename column `Occupation` to occupation,
rename column `Sleep Duration` to sleep_duration,
rename column `Quality of Sleep` to quality_of_sleep,
rename column `Physical Activity Level` to physical_activity_level,
rename column `Stress Level` to stress_level,
rename column `BMI Category` to bmi_category,
rename column `Heart Rate` to heart_rate,
rename column `Daily Steps` to daily_steps,
rename column `Sleep Disorder` to sleep_disorder
;

-- How Many Total Records are in the dataset ?
select count(*) as total_records from health_care ;

-- How many people have each sleep disorder ?
select count(*) as total, sleep_disorder from health_care group by sleep_disorder ;

-- Average sleep duration by sleep disorder
select sleep_disorder, round(AVG(sleep_duration),2) as Avg_sleep_duration from health_care group by sleep_disorder ;

-- Average stress level by sleep disorder
select sleep_disorder, round(avg(stress_level),2) as avg_stress_level from health_care group by sleep_disorder ;

-- Average sleep duration by age_group
select age_group, round(avg(sleep_duration),2) as avg_sleep_duration from health_care group by age_group ;

-- Number of users by BMI category
select count(*) as users, bmi_category from health_care group by bmi_category ;

-- Which age group has highest stress category counts?
select age_group, Count(*)as highest_count from health_care group by age_group order by  highest_count desc ;

-- Average heart rate by sleep disorder
select sleep_disorder, round(avg(heart_rate),2) as avg_heart_rate from health_care  group by sleep_disorder ;

-- Which BP category has most people?
select count(*) as total , bp_category from health_care group by bp_category ;

-- Average daily steps by sleep disorder
select round(avg(daily_steps),2) as avg_daily_steps, sleep_disorder from health_care 
group by sleep_disorder order by avg_daily_steps desc ;

-- Stress category by BP category (very medical)
select bp_category, stress_category ,count(*) as total from health_care
 group by stress_category, bp_category order by bp_category;
 
-- Who sleeps the most by occupation
select  round(avg(sleep_duration),2)as avg_sleep, occupation from health_care 
group by occupation order by avg_sleep desc ;














