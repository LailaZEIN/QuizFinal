package fr.quiz.DAO;

import java.util.List;

public interface DaoInterfaceQuiz <T> {
	
	T findById(Class<T> clazz, Long id);
	T createOrUpdate(T item);
	void delete(Class<T> clazz, Long Id);
	List<T> findAll(Class<T> clazz);
}
