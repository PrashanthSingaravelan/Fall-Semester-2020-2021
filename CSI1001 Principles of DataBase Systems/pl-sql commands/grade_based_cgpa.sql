declare 
    cgpa number(10);
begin
    cgpa:=&cgpa;
    if (cgpa>=9 and cgpa<=9.5) then 
        dbms_output.put_line('S-grade');
    elsif (cgpa>=8 and cgpa<9) then
        dbms_output.put_line('A-grade');
    elsif (cgpa>=7 and cgpa<8) then 
        dbms_output.put_line('B-grade');
    end if;
end;
/