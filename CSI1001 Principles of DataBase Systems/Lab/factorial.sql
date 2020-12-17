declare
    input number(5);
    i number(5);
    fact number(20);

begin
    num:=&num;
    fact:=1
        for i in 1..n
        loop
            fact:=fact*i;
        end loop;
        dbms_output.put_line('Factorial of a give number : '||fact);
end;



select * from amazon;

declare
    regno number(30);
    name varchar2(30);
begin 
    regno:=&regno;
    name :=&name;
    dbms_output.put_line('Register number is '||regno);
    dbms_output.put_line('Name is '||name);
end;

declare
    radius number(30);
    area number(20);
begin
    radius:=&radius;
    area:=3.14*radius*radius;
    dbms_output.put_line('The area of the circle is '||area);
end;



declare
    principle number(30);
    years number(30);
    rinterest number(20);
    sinterest number(20);
begin
    principle:=&principle;
    years:=&years;
    rinterest:=&rinterest;
    sinterest:=(principle*years*rinterest)/100;
    dbms_output.put_line('Simple interest is '||sinterest);
end;

declare
    char varchar2(10);
begin
    char:=&char;
    if (char='a') or (char='A') or (char='e') or (char='E') or (char='i') 
    or (char='I') or (char='o') or (char='O') or (char='u') or (char='U') then
         dbms_output.put_line(char||'is a vowel');
    else 
         dbms_output.put_line(char||'is not a vowel');
    end if;
end;


declare
    num number;
begin
    num:=&num;
    if mod(num,2)=0 then 
       dbms_output.put_line(num||''||' is even number');
    else
       dbms_output.put_line(num||''||' is odd number');
    end if;
end;


declare
     num1 number(10);
     num2 number(10);
     num3 number(10);
begin
     num1:=&num1;
     num2:=&num2;
     num3:=&num3;

     if (num1>num2) and (num1>num3) then
       dbms_output.put_line(num1||''||' is greater');
     elsif(num2>num3) then 
       dbms_output.put_line(num2||''||' is greater');
     else
       dbms_output.put_line(num3||''||' is greater');
     end if;
end;

declare
     num number(3);
begin
     dbms_output.put_line('Even numbers are ');
     for num in 1..40 loop
       if mod(num,2)=0 then
         dbms_output.put_line(num);
       end if;
     dbms_output.new_line;
     end loop;
end;

declare
    num number(3);
    i number(20);
    fact number:=1;
begin
    num:=&num;
    for i in 1..num loop
        fact:=fact*i;
    end loop;
    dbms_output.put_line('Factorial is '||fact);
end;



declare
  num number;
  num1 number:= 0;
  num2 number:= 1;
  num3 number;
begin
     num:=&num;
     dbms_output.put_line(num1);
     dbms_output.put_line(num2);
     for i in 3..num loop
        num3 := num1 + num2;
        dbms_output.put_line(num3);
        num1:=num2;
        num2:=num3;
     end loop;
end;
    
declare
   num number;
   reverse number:=0;
begin
   num:=&num;
   while (num>0) loop
      reverse:=reverse*10+mod(num,10);
      num:=trunc(num/10);
   end loop;
   dbms_output.put_line('The Reverse is'||' : '||reverse);
end;
















    




