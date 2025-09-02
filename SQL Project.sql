use dummy;
select* from employee_records_cleaned_sql_project;
select * from employee_records_cleaned_sql_project where Age>40;
select * from employee_records_cleaned_sql_project where Gender="Male" or "M";
select count(Gender) as count_of_Men from employee_records_cleaned_sql_project where Gender="Male" or "M";
select * from employee_records_cleaned_sql_project where Gender="Female" or "F";
select count(Gender) as count_of_Female from employee_records_cleaned_sql_project where Gender="Female" or "F";
select count(City) as Count_Of_Person,City as count_of_Members_Based_on_Specific_City from employee_records_cleaned_sql_project where State="Hawaii" or City="Lake paul";
select count(City) as Count_Of_Person,City as count_of_Members_Based_on_Specific_City from employee_records_cleaned_sql_project where State="Mississippi" and City="Lake paul" and Country="Africa";
select count(City),City as count_of_Members_Based_on_Specific_City from employee_records_cleaned_sql_project group by City;
select count(State),City as count_of_Members_Based_on_Specific_State from employee_records_cleaned_sql_project group by State;
select count(EmployeeID) as Count_of_Employees,ProjectsHandled as Based_on_Projects_Handled from employee_records_cleaned_sql_project group by ProjectsHandled;
select Department,count(Department) as Projects_Handled from employee_records_cleaned_sql_project where ProjectsHandled<3 and ProjectsHandled>1 group by Department;
select *  from employee_records_cleaned_sql_project order by Salary desc limit 5;
select Department,max(Salary) as Maximum_Salary from employee_records_cleaned_sql_project group by Department;
select max(Salary),min(Salary),Department from employee_records_cleaned_sql_project where department="IT";
select Department,max(Salary),min(Salary) from employee_records_cleaned_sql_project group by department;
select * from employee_records_cleaned_sql_project order by Salary desc limit 10; 
select * from employee_records_cleaned_sql_project where Department=(select Department from employee_records_cleaned_sql_project where FirstName="vaughn");
select * from employee_records_cleaned_sql_project where Department=(select Department from employee_records_cleaned_sql_project where EmployeeID=8);
select count(*) from employee_records_cleaned_sql_project where Department=(select Department from employee_records_cleaned_sql_project where EmployeeID=8);
select BonusPercent,Department from employee_records_cleaned_sql_project where BonusPercent>(select max(BonusPercent) from employee_records_cleaned_sql_project where Department="Marketing");
select BonusPercent from employee_records_cleaned_sql_project where Department="Marketing";

delimiter $$
create procedure getemp()
begin 
	select * from employee_records_cleaned_sql_project;
end $$ 
delimiter ;

call getemp()
