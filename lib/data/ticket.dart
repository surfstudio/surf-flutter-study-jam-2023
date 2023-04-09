class Ticket {



  late TypeTicketEnum typeTicketEnum;
  String downloadLink = '';
  late StatusEnum statusTicket;

  /// Получить имя файла из ссылки.
  String getNameTicketFromLink(String fullPath) => fullPath.split('/').last;

  Ticket(this.typeTicketEnum, this.downloadLink, this.statusTicket);
}

///Статус ссылки.
enum StatusEnum {
  ///Есть путь к файлу билета
  linkSaved,

  ///Скачиваем по ссылке
  downloadFromLink,

  ///Файл скачен по ссылке
  downloadedFromLink,
}

enum TypeTicketEnum {
  ///Билеты на самолет
  air,

  ///Билеты на поезд
  train,

  ///Билеты на развлекательные мероприятия
  show,

  ///Билеты котрый нельзя отнести к предыдущим категорям
  other
}
