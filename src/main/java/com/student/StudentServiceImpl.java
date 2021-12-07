package com.student;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;




@Repository
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Student> findAll() {
		Session session = this.sessionFactory.openSession();
		List<Student> list = session.createQuery("from Student").list();
		session.close();
		return list;
		
		
	}

	@Override
	public Student findById(int theId) {
		Session session = this.sessionFactory.openSession();
		Student student = session.get(Student.class, theId);
		session.close();
		return student;
		
	}

	@Override
	public void save(Student student) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(student);
		tx.commit();
		session.close();
	}

	@Override
	public void deleteById(int theId) {
		Session session = this.sessionFactory.openSession();
		Student student = findById(theId);
		if(student!=null)
		{
			Transaction tx= session.beginTransaction();
			session.delete(student);
			tx.commit();
		}
		session.close();
		
		
	}

	
}
