import 'package:beauty_clinic/data/messages_data.dart';
import 'package:beauty_clinic/models/message.dart';
import 'package:flutter/material.dart';

class MessagesList extends StatefulWidget {
  @override
  _MessagesListState createState() => _MessagesListState();
}

class _MessagesListState extends State<MessagesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
      itemCount: messages.length,
      itemBuilder: (_, index) => MessageCard(message: messages[index]),
    );
  }
}

class MessageCard extends StatelessWidget {
  final Message message;

  const MessageCard({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);
    final Size sizeScreen = data.size;
    final circularRadius = data.size.width * 0.03;
    final TextStyle authorTextStyle =
        TextStyle(color: Colors.black, fontSize: sizeScreen.width * 0.055);

    final TextStyle questionTextStyle = TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: sizeScreen.width * 0.04);
    final TextStyle messageTextStyle =
        TextStyle(color: Colors.grey[700], fontSize: sizeScreen.width * 0.035);

    return Container(
      height: sizeScreen.height * 0.19,
      margin:
          const EdgeInsets.only(top: 7.0, left: 15.0, right: 15.0, bottom: 7.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              Colors.grey[100],
              Colors.white,
              Colors.grey[100],
            ]),
        borderRadius: BorderRadius.circular(circularRadius),
        border: Border.all(color: Colors.grey[300]),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            offset: Offset(0.0, 2.0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15.0),
            child: Text(
              message.autor,
              style: authorTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0, left: 15.0, right: 15),
            child: Tooltip(
              message: message.mensagem,
              child: Text(
                message.mensagem,
                style: messageTextStyle,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                softWrap: true,
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 15.0, bottom: 5.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Gostaria de confirmar?',
                  style: questionTextStyle,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(1.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.clear,
                            color: Colors.white,
                            size: data.size.width * 0.06,
                          ),
                          margin: const EdgeInsets.only(right: 3.0),
                        ),
                        onTap: () => print('Tap Cancel'),
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(1.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: data.size.width * 0.06,
                          ),
                          margin: const EdgeInsets.only(left: 3.0),
                        ),
                        onTap: () => print('Confirm button'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
