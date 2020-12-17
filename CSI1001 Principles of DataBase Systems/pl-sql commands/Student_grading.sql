declare 
    marks number(10);
begin
    marks:=&marks;
    if marks>=90 then 
        dbms_output.put_line('S-grade');
    elsif marks>=80 and marks<90 then
        dbms_output.put_line('A-grade');
    elsif marks>=70 and marks<80 then 
        dbms_output.put_line('B-grade');
    end if;
end;
/