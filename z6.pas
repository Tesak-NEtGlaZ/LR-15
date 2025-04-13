program CheckString;

type 
  t_chs = set of Char;
const
  lett: t_chs = ['a'..'z','A'..'Z','_'];
  num: t_chs = ['0'..'9'];
var
  str: string;
  i: byte;
  flag: boolean;

begin
  write('Введите строку для проверки: ');
  readln(str);

  flag := true;

  if (length(str) = 0) or not (str[1] in lett) then
    flag := false
  else
    for i := 2 to length(str) do
      if not ((str[i] in lett) or (str[i] in num)) then
      begin
        flag := false;
        break;
      end;

  if flag then
    writeln('Строка корректна')
  else
    writeln('Строка содержит недопустимые символы');
end.