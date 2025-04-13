program StudentsTable;

type
  anketa = record
    fio: string;
    birth: string;
    kurs: 1..5;
  end;

const
  N = 3;

var
  students: array[1..N] of anketa;
  i: integer;

begin
  students[1].fio := 'Иванов Иван Иванович';
  students[1].birth := '15.05.2001';
  students[1].kurs := 3;

  students[2].fio := 'Петрова Анна Сергеевна';
  students[2].birth := '22.11.2000';
  students[2].kurs := 4;

  students[3].fio := 'Сидоров Алексей Дмитриевич';
  students[3].birth := '03.09.2002';
  students[3].kurs := 2;

  writeln('':4, 'Ф.И.О.':30, 'Дата рождения':15, 'Курс':5);
  writeln('--------------------------------------------------');

  for i := 1 to N do
  begin
    write(i:3, '. ', students[i].fio:30);
    write(students[i].birth:15);
    writeln(students[i].kurs:5);
  end;
end.