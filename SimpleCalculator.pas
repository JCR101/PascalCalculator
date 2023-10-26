program SimpleCalculator;
uses crt;
var
  num1, num2, result: real;
  choice: char;
  validChoice: boolean;
  code: integer;
  input: string;
begin
  clrscr;
  writeln('Welcome to Simple Calculator');
  
  repeat
    write('Enter the first number: ');
    readln(input);
    Val(input, num1, code);
    if code <> 0 then writeln('Invalid number. Please enter a valid number.');
  until code = 0;

  repeat
    write('Enter the second number: ');
    readln(input);
    Val(input, num2, code);
    if code <> 0 then writeln('Invalid number. Please enter a valid number.');
  until code = 0;

  validChoice := False;
  while not validChoice do
  begin
    writeln('Choose an operation:');
    writeln('A: Addition');
    writeln('B: Subtraction');
    writeln('C: Multiplication');
    writeln('D: Division');
    readln(choice);

    case choice of
      'A','a':
        begin
          result := num1 + num2;
          validChoice := True;
        end;
      'B','b':
        begin
          result := num1 - num2;
          validChoice := True;
        end;
      'C','c':
        begin
          result := num1 * num2;
          validChoice := True;
        end;
      'D','d':
        begin
          if num2 = 0 then
            writeln('Cannot divide by zero. Please choose another operation.')
          else
          begin
            result := num1 / num2;
            validChoice := True;
          end;
        end;
    else
      writeln('Invalid choice. Please enter A, B, C, or D.');
    end;
  end;

  writeln('Result: ', result:0:2);
  readln;
end.