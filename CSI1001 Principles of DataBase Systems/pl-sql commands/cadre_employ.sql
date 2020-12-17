declare
    pay  number(10);
begin
    pay:=&pay;
    if (pay=25000) then 
        dbms_output.put_line('Senior Professor');
    elsif (pay=20000) then 
        dbms_output.put_line('Professor');
    elsif (pay=15000) then 
        dbms_output.put_line('Assistant Professor');
    end if;
end;
/