import 'package:beauty_clinic/models/message.dart';

final List<Message> messages = [
  new Message(0, 'Mensagem oculta [1]','Eloi', 'This is automaticly message', 'P', DateTime.now(), false, 0),
  new Message(0, 'Mensagem oculta [2]','Allan', 'This is automaticly message', 'P', DateTime.now(), true, 0),
  new Message(0, 'Mensagem oculta [3]','Pedro', 'This is automaticly message', 'T', DateTime.now(), false, 0),
  new Message(0, 'Mensagem oculta [4]','Sandro', 'This is automaticly message', 'P', DateTime.now(), true, 0),
  new Message(0, 'Mensagem oculta [5]','Carlos', 'This is automaticly message '
      'button now we can put more informations in this field, in order to test if when'
      'we have a lot of lines in the same message, the card will expanded or will pressent'
      'a message about layout problems', 'C', DateTime.now(), false, 0),
];