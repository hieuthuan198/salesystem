package model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


import entitis.Employee;

public class AdminModel {
	SessionFactory factory = HibernateUtil.getSessionFactory();

	// lay tat ca san phaam
	public List<Employee> getAll() {
		List<Employee> listEmployee = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = factory.openSession();
			transaction = session.getTransaction();
			listEmployee = session.createQuery("from Employee").getResultList();

			transaction.commit();
		} catch (Exception e) {

			if (transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}

		return listEmployee;
	}
	public List<Employee> getEmByStt(boolean stt) {
		List<Employee> listEmployee = null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = factory.openSession();
			transaction = session.beginTransaction();
			listEmployee = session.createQuery("from Employee where status =:stt")
					.setParameter("stt", stt)
					.getResultList();

			transaction.commit();
		} catch (Exception e) {

			if (transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}

		return listEmployee;
	}
	public Employee getById(String id) {
		Employee employee =null;
		Session session = null;
		Transaction transaction = null;
		try {
			session = factory.openSession();
			transaction = session.getTransaction();
			employee = (Employee) session.createQuery("from Employee where id =:id")
					.setParameter("id", id)
					.getSingleResult();

			transaction.commit();
		} catch (Exception e) {

			if (transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}

		return employee;
	}

}
