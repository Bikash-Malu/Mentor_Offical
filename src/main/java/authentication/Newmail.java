package authentication;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class Newmail {

//	public static void main(String[]args) {
//		System.out.print("Hello Sandeep");
//		String message="Hello ,Dear ,This message for Registration Purpose only";
//		String subject ="MetorOffical :Confirmation";
//		String to="bikashmalu1@gmail.com";
//		String from="sandeepkumar090304@gmail.com";
//		
//		sendMail(message,subject,to,from);
//	}
	
	//This method is responsible for message
	public static void sendMail(String message, String subject, String to, String from) {
		// TODO Auto-generated method stub
		
		//variable for Gmail Host
		String host="smtp.gmail.com";
		//Get the System Properties 
		Properties pr=System.getProperties();
		System.out.print("Properties : "+pr);
		
		//Setting imp information for propeties object 
		//host set
		pr.put("mail.smtp.host",host);
		pr.put("mail.smtp.port","465");
		pr.put("mail.smtp.ssl.enable","true");
		pr.put("mail.smtp.auth","true"); 
		
		//to get the Session object 
		
		Session session=Session.getInstance(pr,new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication("sandeepkumar090304@gmail.com","iqxclcgfxpfphbls");
			}
			
			
		});
		session.setDebug(true);
		// Step -2 Compose the Message [text,Multimedia]
		
		MimeMessage MM=new MimeMessage(session);
		try {
			MM.setFrom(from);
			//Adding recipent
			MM.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			//Add to SUbject
			MM.setSubject(subject);
			// Add to Text in message
			MM.setText(message);
			
			//The Send the Message 
			Transport.send(MM);
			System.out.println("Send Successfully....................");
			
			
			
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		
		
	}

}
	