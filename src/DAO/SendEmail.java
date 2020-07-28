package DAO;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {
	
	
	public void sendMail(String email, String subject, String content, String fromEmail,String fromPassword,Object otp) {

		Properties properties = new java.util.Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		Session mailSession = Session.getInstance(properties);

		try {
			MimeMessage message = new MimeMessage(mailSession);

			message.setContent(content+otp, "text/html");
			message.setSubject(subject);

			InternetAddress sender = new InternetAddress(fromEmail, "SPCC");
			InternetAddress receiver = new InternetAddress(email);
			message.setFrom(sender);
			message.setRecipient(Message.RecipientType.TO, receiver);
			message.saveChanges();

			Transport transport = mailSession.getTransport("smtp");
			transport.connect("smtp.gmail.com", 587, fromEmail, fromPassword);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}


}
