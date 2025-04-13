program StudentRecord;

type
  anketa = record
    fio: string;
    birth: string;
    kurs: 1..5;
  end;

var
  student: anketa;

begin
  student.fio := 'Иванов Иван Иванович';
  student.birth := '01.01.2000';
  student.kurs := 3;

  writeln('Анкетные данные студента:');
  writeln('Ф.И.О.: ', student.fio);
  writeln('Дата рождения: ', student.birth);
  writeln('Курс: ', student.kurs);
end.