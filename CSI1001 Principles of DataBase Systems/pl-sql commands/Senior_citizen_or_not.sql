declare 
    age number(10);
begin
    age:=&age;
    if ((age>=1) and (age<=120)) then
      if (age>=60) then
        dbms_output.put_line('The person comes under Senior Citizen');
      elsif (age<60) then
        dbms_output.put_line('The person will not come under Senior');
      end if;
    else
        dbms_output.put_line('Age is not valid');
    end if;
end;
/