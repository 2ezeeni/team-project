package com.shoppingmall.command.customer;

import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shoppingmall.common.Gmail;
import com.shoppingmall.common.PathNRedirect;
import com.shoppingmall.common.SHA256;

public class M_CustomerEmailAuthenticationCommand implements M_CustomerCommand {

	@Override
	public PathNRedirect execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String host = "http://localhost:9090/ShoppingMall/";
		String from = "관리자 gmail입력"; // 관리자 gmail입력
		String to = request.getParameter("m_customer_email");;
		String subject = "시험용 인증메일";
		String key = new SHA256().getSHA256(to);
		String content = "다음 링크를 클릭하여 이메일 인증을 합니다" +
		"<a href=\"" +host + "m_customer/emailCheckAction.jsp?key="+key+"&m_customer_email="+to+"\">이메일 인증하기</a>";
		HttpSession session = request.getSession();
		session.setAttribute("key", key);
		Properties p = new Properties();
		p.put("mail.smtp.user", from);
		// 관리자의 메일주소가 naver일 경우
		// p.put("mail.smtp.host", "smtp.naver.com");
		// p.put("mail.smtp.port", "465");
		// p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.host", "smtp.googlemail.com");
		p.put("mail.smtp.port", "587");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "587");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
		
		try {
			Authenticator auth = new Gmail();
			Session ses = Session.getInstance(p, auth);
			ses.setDebug(true);
			MimeMessage msg = new MimeMessage(ses);
			msg.setSubject(subject);
			Address fromAddr = new InternetAddress(from);
			msg.setFrom(fromAddr);
			Address toAddr = new InternetAddress(to);
			msg.addRecipient(Message.RecipientType.TO, toAddr);
			msg.setContent(content, "text/html;charset=UTF8");
			Transport.send(msg);
		} catch (Exception e) {
			e.printStackTrace();
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('오류가 발생했습니다.');");
			out.println("history.back();");
			out.println("</script>");
		}
		
		PathNRedirect pathNRedirect = new PathNRedirect();
		pathNRedirect.setPath("m_customer/emailAuthenResult.jsp");
		pathNRedirect.setRedirect(false);
		return pathNRedirect;
	}

}
