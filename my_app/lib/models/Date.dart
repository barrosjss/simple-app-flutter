class Date {
  String? id;
  String? todoText;
  bool isDone;

  Date({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<Date> dateList() {
    return [
      Date(id: '01', todoText: 'Bad bunny - [10-Marzo]'),
      Date(id: '02', todoText: 'Arcángel - [21-Abril]'),
      Date(
        id: '03',
        todoText: 'Ferxxo - [24-Mayo]',
      ),
      Date(
        id: '04',
        todoText: 'YoungMiko - [31-Agosto]',
      ),
    ];
  }
}
