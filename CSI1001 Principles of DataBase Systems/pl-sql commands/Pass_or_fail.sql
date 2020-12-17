declare 
    marks number(10);
begin
    marks:=&marks;
    if marks>=50 then 
        dbms_output.put_line('The student is pass');
    else 
        dbms_output.put_line('The student is fail');
    end if;
end;