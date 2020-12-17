declare 
    age number(10);
begin
    age:=&age;
    if ((age>=1) and (age<=120)) then
      if (age>=18) then
        dbms_output.put_line('The person is major');
      elsif (age<18) then
        dbms_output.put_line('The person is minor');
      end if;
    else
        dbms_output.put_line('Age is not valid');
    end if;
end;
/