package com.test.server;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.test.session.HibernateSessionFactory;
import com.test.session.HibernateUtil;

public class SaveServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		PrintWriter pw = resp.getWriter();
		pw.println("<h1>hello world!!!!</h1>");
		pw.close();
		
		Session session3 = HibernateSessionFactory.getSession();
		session3.beginTransaction();
		Student student3=(Student)session3.get(Student.class,9);
		System.out.println(student3.getSchool());
		session3.getTransaction().commit();
		/*Session session=null;

		
		try {
			 session = HibernateSessionFactory.getSession();
			
			session.beginTransaction();
			
			Student student = new Student();
			
			student.setId(111);
			student.setName("job");
			student.setSchool("TIM");
			student.setSex("na");
			session.save(student);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally{
			HibernateSessionFactory.closeSession();
		}*/
	}

}
