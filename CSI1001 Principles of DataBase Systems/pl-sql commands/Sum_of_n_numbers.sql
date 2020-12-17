declare 
    num1 number(10);
    sum1 number(10):=0;
begin
    num1:=&num1;
    while(num1>0) loop
      sum1:= sum1+mod(num1,10);
      num1:= trunc(num1/10);
    end loop;
    dbms_output.put_line('The sum is : '||sum1);
end;
/