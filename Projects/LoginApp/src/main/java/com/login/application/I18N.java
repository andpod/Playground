package com.login.application;

import java.util.*;
import java.util.ResourceBundle;

/**
 * Created by andpod on 1/5/2016.
 */
public class I18N {

    public static String internationalize(String message,String... args){

        ResourceBundle messages;
        Locale locale =null;
        String language = new String(args[0]);
        String country = new String(args[1]);

        switch(args.length){
            case 0:
                locale = new Locale("en","US");
                break;

            case 1:
                locale = new Locale(language);
                break;

            case 2:
                locale = new Locale(language,country);
                break;
        }

        messages = ResourceBundle.getBundle("MessagesBundle", locale);
        return messages.getString(message);
    }
}
