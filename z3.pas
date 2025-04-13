program ToysShop;

type
  toy = record
    name: string;
    price: real;
    age: string;
  end;

const
  N = 4;

var
  toys: array[1..N] of toy;
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

  writeln('№':3, 'Название игрушки':25, 'Цена':10, 'Возраст':15);
  writeln('--------------------------------------------------');

  for i := 1 to N do
  begin
    write(i:3, '. ', toys[i].name:23);
    write(toys[i].price:10:2, ' руб.');
    writeln(toys[i].age:15);
  end;
end.