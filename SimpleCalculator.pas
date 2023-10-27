program SimpleCalculator;
uses crt, Math;
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
    writeln('E: Exponent (First number to the power of the second number)');
    writeln('F: Root (Square root of the first number, second number times)');
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
      'E','e':
        begin
          result := Power(num1, num2);
          validChoice := True;
        end;
      'F','f':
        begin
          if num1 < 0 then
            writeln('Cannot calculate the square root of a negative number.')
          else
          begin
            result := Power(num1, 1 / num2);
            validChoice := True;
          end;
        end;
    else
      writeln('Invalid choice. Please enter A, B, C, D, E, or F.');
    end;
  end;

  writeln('Result: ', result:0:2);
  readln;
end.