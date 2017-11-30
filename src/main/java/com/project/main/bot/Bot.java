package com.project.main.bot;

import org.apache.ibatis.annotations.Update;
import org.telegram.telegrambots.api.methods.send.SendMessage;
import org.telegram.telegrambots.bots.TelegramLongPollingBot;
import org.telegram.telegrambots.exceptions.TelegramApiException;

public class Bot extends TelegramLongPollingBot{


   @Override
   public void onUpdateReceived(Update update) {
      System.out.println(update.getMessage().getFrom().getFirstName()+":"+update.getMessage().getText());
      
      
      //SendMessage   
      SendMessage sendMessage=new SendMessage().setChatId(update.getMessage().getChatId());
      sendMessage.setText("Traveller"+update.getMessage().getFrom().getFirstName()+"\n"+update.getMessage().getText());
      System.out.println(update.getMessage().getFrom().getFirstName());//이름
      
      
      try {
         sendMessage(sendMessage);
      }catch(TelegramApiException e) {
         e.printStackTrace();
      }
      
   }

   

   @Override
   public String getBotUsername() {
      // TODO Auto-generated method stub
      return null;
   }
   
   
   @Override
   public String getBotToken() {
      // TODO Auto-generated method stub
      return "447374239:AAFBRFypUQ2lVfXIFCR_6qAvWKdrP9xVs10";
   }

}