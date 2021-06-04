package edu.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.persistence.Query;


public abstract class AbstractEntityDao<T>{
	private Class<T> entityClass;
	
	public AbstractEntityDao(Class <T> cls ) {
		this.entityClass =  cls;
	}
	
	public void insert(T entity) {
		EntityManager em = JpaUtils.getEntityManager();
		
		EntityTransaction trans = em.getTransaction();
		
		try {
			trans.begin();
			em.persist(entity);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		}finally {
			em.close();
		}
	}
	
	public void update(T entity) {
		EntityManager em = JpaUtils.getEntityManager();
		
		EntityTransaction trans = em.getTransaction();
		
		try {
			trans.begin();
			em.merge(entity);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		}finally {
			em.close();
		}
	}
	public void delete(Object id) {
		EntityManager em = JpaUtils.getEntityManager();
		
		EntityTransaction trans = em.getTransaction();
		
		try {
			trans.begin();
			T entity = em.find(entityClass, id);
			
			em.remove(entity);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		}finally {
			em.close();
		}
	}
	
	public T findById(Object id) {
		EntityManager em = JpaUtils.getEntityManager();
		
			T entity = em.find(entityClass, id);
			
			return entity;
	}
	public List<T> findAll() {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
			
			cq.select(cq.from(entityClass));
			return em.createQuery(cq).getResultList();
		} finally {
			em.close();
		}
	}
	public Long count() {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
			
			Root<T> rt = cq.from(entityClass);
			cq.select(em.getCriteriaBuilder().count(rt));
			Query q =  em.createQuery(cq);
			return (Long) q.getSingleResult();
		} finally{
			em.close();
		}
	}
	
	public List<T> findAll(boolean all, int firtResult, int maxResult) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
			cq.select(cq.from(entityClass));
			Query q = em.createQuery(cq);
			if(!all) {
				q.setFirstResult(firtResult);
				q.setMaxResults(maxResult);
			}
			
			return em.createQuery(cq).getResultList();
		} finally {
			em.close();
		}
	}
}
