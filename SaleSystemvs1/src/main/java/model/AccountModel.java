package model;

import org.hibernate.Session;
import org.mindrot.jbcrypt.BCrypt;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import entitis.Account;
import entitis.Employee;
import entitis.InformationUser;

public class AccountModel {
	private SessionFactory factory = HibernateUtil.getSessionFactory();

	public Account Login(String user, String pass) {

		Session session = null;
		Transaction transaction = null;

		Account accountEn = new Account();

		try {
			session = factory.openSession();
			transaction = session.beginTransaction();
			Account accounts = (Account) session.createQuery("from Account where username = :user")
					.setParameter("user", user).getSingleResult();
			if (accounts.getUsername() != null && BCrypt.checkpw(pass, accounts.getPassword().trim())) {
				return accounts;
			}

			transaction.commit();
		} catch (Exception e) {

			if (transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}

		return null;
	}

	public boolean Check_Status(String user) {

		Session session = null;
		Transaction transaction = null;
		boolean rus = false;

		try {
			session = factory.openSession();
			transaction = session.beginTransaction();

			InformationUser informationUser = (InformationUser) session
					.createQuery("from InformationUser where username = :user").setParameter("user", user)
					.getSingleResult();
			if (informationUser.getId() != null) {
				rus = informationUser.isStatus();
			} else {

				Employee employee = (Employee) session.createQuery("from Employee where username = :user")
						.setParameter("user", user).getSingleResult();
				rus = employee.isStatus();
			}

			transaction.commit();
		} catch (Exception e) {

			if (transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.close();
		}

		return rus;
	}

}
