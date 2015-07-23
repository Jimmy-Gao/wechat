package com.backkey.util;

import java.io.Writer;

import com.backkey.bean.Article;
import com.backkey.bean.MessageBean;
import com.backkey.bean.User;
import com.backkey.bean.message.ImageMessage;
import com.backkey.bean.message.Message;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.core.util.QuickWriter;
import com.thoughtworks.xstream.io.HierarchicalStreamWriter;
import com.thoughtworks.xstream.io.xml.PrettyPrintWriter;
import com.thoughtworks.xstream.io.xml.XppDriver;

public class ParseUtil {
    public static String messageToXml(Message message) {
        xstream.alias("xml", message.getClass());
        return xstream.toXML(message);
    }

    public static String ImageMessageToXml(ImageMessage imageMessage) {
        xstream.alias("xml", imageMessage.getClass());
        xstream.alias("item", new Article().getClass());
        return xstream.toXML(imageMessage);
    }

    private static XStream xstream = new XStream(new XppDriver() {
        public HierarchicalStreamWriter createWriter(Writer out) {
            return new PrettyPrintWriter(out) {
                boolean cdata = true;

                public void startNode(String name, Class clazz) {
                    super.startNode(name, clazz);
                }

                protected void writeText(QuickWriter writer, String text) {
                    if (cdata) {
                        writer.write("<![CDATA[");
                        writer.write(text);
                        writer.write("]]>");
                    } else {
                        writer.write(text);
                    }
                }
            };
        }
    });

    public static User parseMessageBean2User(MessageBean message) {

        return new User(message.getFromUserName(), message.getEvent(),
                message.getCreateTime());

    }

}
