program ToysFile;

type
  toy = record
    name: string[50];
    price: real;
    age: string[20];
  end;

const
  N = 4;
  Filename = 'toys.dat';

var
  toys, toys_from_file: array[1..N] of toy;
  f: file of toy;
  i: integer;

begin
  with toys[1] do
  begin
    name := 'Конструктор LEGO';
    price := 2499.99;
    age := '6-12 лет';
  end;

  with toys[2] do
  begin
    name := 'Кукла Barbie';
    price := 899.50;
    age := '3-8 лет';
  end;

  with toys[3] do
  begin
    name := 'Набор доктора';
    price := 599.00;
    age := '4-10 лет';
  end;

  with toys[4] do
  begin
    name := 'Железная дорога';
    price := 3499.00;
    age := '5-14 лет';
  end;

  Assign(f, Filename);
  Rewrite(f);
  for i := 1 to N do
    write(f, toys[i]);
  Close(f);
  writeln('Данные успешно записаны в файл ', Filename);

  Assign(f, Filename);
  Reset(f);
  for i := 1 to N do
    read(f, toys_from_file[i]);
  Close(f);
  writeln('Данные успешно считаны из файла ', Filename);
  writeln;

  writeln('Список игрушек из файла:');
  writeln('№':3, 'Название игрушки':25, 'Цена':10, 'Возраст':15);
  writeln('--------------------------------------------------');

  for i := 1 to N do
  begin
    write(i:3, '. ', toys_from_file[i].name:23);
    write(toys_from_file[i].price:10:2, ' руб.');
    writeln(toys_from_file[i].age:15);
  end;
end.