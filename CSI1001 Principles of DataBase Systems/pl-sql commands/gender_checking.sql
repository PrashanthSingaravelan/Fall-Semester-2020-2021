declare 
    gender1 varchar2(30);
begin
    gender1:=&gender1;

    if (gender1='f') or (gender1='F') or (gender1='female') 
        or (gender1='Female') or (gender1='FEMALE') then
        dbms_output.put_line('Gender is Female');
    elsif (gender1='m') or (gender1='M') or (gender1='male') 
        or (gender1='Male') or (gender1='MALE') then
        dbms_output.put_line('Gender is Male');	
    else 
        dbms_output.put_line('Gender is not matching');
    end if;
end;

