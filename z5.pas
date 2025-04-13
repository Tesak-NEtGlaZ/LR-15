program YearEnding;

var
  number: integer;
  ending: string;

begin
  write('Введите количество лет: ');
  readln(number);

  if (number mod 100 >= 11) and (number mod 100 <= 14) then
    ending := 'лет'
  else
    case number mod 10 of
      1: ending := 'год';
      2..4: ending := 'года';
    else
      ending := 'лет';
    end;

  writeln(number, ' ', ending);
end.