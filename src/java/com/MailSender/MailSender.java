/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MailSender;

import com.sun.mail.smtp.SMTPTransport;
import java.security.Security;
import java.util.Date;
import javax.ejb.Stateless;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.Properties;
import javax.ejb.Stateless;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 *
 *
 * @author AHMED 50070
 */

@Stateless
public class MailSender {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    public void sendEmail(String from, String username, String passord, String to, String message) {

        try {
            Properties prop = System.getProperties();
            
            prop.put("mail.smtp.host", "smtm.gmail.com"); // send to gmail accounts
            
            prop.put("mail.smtp.auth", "true");
            prop.put("mail.smtp.port", "465");
            prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            prop.put("mail.smtp.socketFactory.port", "465");
            prop.put("mail.smtp.socketFactory.fallback", "false");
            
            prop.put("mail.smtps.quitwait", "false");
            
            Session mailSession = Session.getDefaultInstance(prop, null);
            
            mailSession.setDebug(true);
            
            Message mailMsg = new MimeMessage(mailSession);
            
            
            mailMsg.setFrom(new InternetAddress(from));
            mailMsg.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            mailMsg.setContent(message,"text/html");
            
            
            SMTPTransport trans =  (SMTPTransport) mailSession.getTransport("smtp");
            
            trans.connect("smtp.gmail.com", username, passord);
            trans.sendMessage(mailMsg,mailMsg.getAllRecipients());
            trans.close();
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    
    }
    public  void SendEmail(final String username, final String password, String recipientEmail, String ccEmail, String title, String message) throws AddressException, MessagingException {
        Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
        final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

        // Get a Properties object
        Properties props = System.getProperties();
        props.setProperty("mail.smtps.host", "smtp.gmail.com");
        props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
        props.setProperty("mail.smtp.socketFactory.fallback", "false");
        props.setProperty("mail.smtp.port", "465");
        props.setProperty("mail.smtp.socketFactory.port", "465");
        props.setProperty("mail.smtps.auth", "true");

        props.put("mail.smtps.quitwait", "false");

        Session session = Session.getInstance(props, null);

        // -- Create a new message --
        final MimeMessage msg = new MimeMessage(session);

        // -- Set the FROM and TO fields --
        msg.setFrom(new InternetAddress(username + "@gmail.com"));
        msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail, false));

        if (ccEmail.length() > 0) {
            msg.setRecipients(Message.RecipientType.CC, InternetAddress.parse(ccEmail, false));
        }

        msg.setSubject(title);
        msg.setText(message, "utf-8");
        msg.setSentDate(new Date());

        SMTPTransport t = (SMTPTransport)session.getTransport("smtps");

    }
    
}
