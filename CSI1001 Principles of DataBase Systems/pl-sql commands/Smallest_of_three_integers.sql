declare
    num1 number(5);
    num2 number(5);
    num3 number(5);

begin
    num1:=&num1;
    num2:=&num2;
    num3:=&num3;

    if (num1<num2) and (num2<num3) then 
        dbms_output.put_line('The smallest number is : '||num1);
    elsif (num2<num1) and (num2<num3) then
        dbms_output.put_line('The smallest number is : '||num2);
    else 
        dbms_output.put_line('The smallest number is : '||num3);      
    end if;
end;
