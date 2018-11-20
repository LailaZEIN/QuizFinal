package fr.quiz.DAO;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

@Transactional
public class GenericDAO<T> implements DaoInterfaceQuiz<T> {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public T createOrUpdate(T item) {
		Session session = sessionFactory.getCurrentSession();

		session.persist(item);

		return item;
	}

	@Override
	public void delete(Class<T> clazz, Long id) {

		Session session = sessionFactory.getCurrentSession();
		T item = findById(clazz, id);
		session.remove(item);

	}

	@Override
	public T findById(Class<T> clazz, Long id) {
		Session session = sessionFactory.getCurrentSession();

		return session.find(clazz, id);
	}

	@Override
	public List<T> findAll(Class<T> clazz) {
		Session session = sessionFactory.getCurrentSession();
		TypedQuery<T> query = session.createQuery("SELECT entity FROM " + clazz.getName() + " entity", clazz);

		return query.getResultList();

	}

}
