import 'package:openchat_client/src/features/contacts/chat_demo/models/chat_message.dart';

class ChatMessageImageModel extends ChatMessage {
  
  double progress = 0;                 

  ChatMessageImageModel({     
    required super.ffiModel, 
    required super.contentObj,       
  });

}