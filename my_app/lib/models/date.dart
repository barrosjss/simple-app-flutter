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
      Date(id: '01', todoText: 'Maria - [04 - Abril]', isDone: true),
      Date(id: '02', todoText: 'Mildred - [05 - Abril]', isDone: true),
      Date(
        id: '03',
        todoText: 'Michael - [21-Abril]',
      ),
      Date(
        id: '04',
        todoText: 'Lerma - [01-Abril]',
      ),
      Date(
        id: '05',
        todoText: 'Antonio - [02-Abril]',
      ),
      Date(
        id: '06',
        todoText: 'Dana - [03-Abril]',
      ),
    ];
  }
}
