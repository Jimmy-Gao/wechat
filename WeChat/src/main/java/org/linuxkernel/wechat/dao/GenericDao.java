package org.linuxkernel.wechat.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

@SuppressWarnings("unchecked")
public class GenericDao<T extends Serializable> {
   private static final Logger logger = LoggerFactory.getLogger(GenericDao.class);

   @Autowired(required = true)
   private SessionFactory sessionFactory;
   private Class<T> persistentClass;

   public GenericDao() {
      this.persistentClass = (Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[0];
      logger.info(persistentClass.getName());
   }

   public void create(T entity) {
      Session session = this.sessionFactory.getCurrentSession();
      session.persist(entity);
      logger.info("Saved successfully, Details=" + entity);
   }

   public T findById(int id) {
      Session session = this.sessionFactory.getCurrentSession();
      T entity = (T) session.get(persistentClass, new Integer(id));
      return entity;
   }

   public void delete(T entity) {
      Session session = this.sessionFactory.getCurrentSession();
      session.delete(entity);

   }

   public void deleteByHQL(String HQL, Object[] params) {
      Session session = this.sessionFactory.getCurrentSession();
      Query query = session.createQuery("delete " + persistentClass.getName() + " " + HQL);
      for (int i = 0; i < params.length; i++) {
         query.setParameter(i, params[i]);
      }
      query.executeUpdate();
   }

   public void update(T entity) {
      Session session = this.sessionFactory.getCurrentSession();
      session.update(entity);
   }

   public void updateByHQL(String HQL, Object[] params) {
      Session session = this.sessionFactory.getCurrentSession();
      Query query = session.createQuery("update " + persistentClass.getName() + " " + HQL);
      for (int i = 0; i < params.length; i++) {
         query.setParameter(i, params[i]);
      }
      query.executeUpdate();
   }

   public List<T> findAll() {
      Session session = this.sessionFactory.getCurrentSession();
      return session.createQuery("from " + persistentClass.getName()).list();
   }

   public T queryByHQL(String HQL, Object[] params) {
      Session session = this.sessionFactory.getCurrentSession();
      Query query = session.createQuery("from " + persistentClass.getName() + " " + HQL);
      for (int i = 0; i < params.length; i++) {
         query.setParameter(i, params[i]);
      }
      return (T) query.uniqueResult();
   }

   public List<T> findByHQL(String HQL, Object[] params) {
      Session session = this.sessionFactory.getCurrentSession();
      Query query = session.createQuery("from " + persistentClass.getName() + " " + HQL);
      for (int i = 0; i < params.length; i++) {
         query.setParameter(i, params[i]);
      }
      return query.list();
   }

   public Object queryBySQL(String SQL, Object[] params) {
      Session session = this.sessionFactory.getCurrentSession();
      Query query = session.createSQLQuery(SQL);
      for (int i = 0; i < params.length; i++) {
         query.setParameter(i, params[i]);
      }
      return query.list();
   }

   public void updateBySQL(String SQL, Object[] params) {
      Session session = this.sessionFactory.getCurrentSession();
      Query query = session.createSQLQuery(SQL);
      for (int i = 0; i < params.length; i++) {
         query.setParameter(i, params[i]);
      }
      query.executeUpdate();
   }
   /*
    * 
      public PageBean findByPage(final String HQL, final Object[] params,
            final int currentPage, final int pageSize) {

         return this.getHibernateTemplate().execute(
               new HibernateCallback<PageBean>() {
                  @Override
                  public PageBean doInHibernate(Session session)
                        throws HibernateException, SQLException {
                     PageBean pageBean = new PageBean();
                     Query query = session.createQuery(HQL);
                     for (int i = 0; i < params.length; i++) {
                        query.setParameter(i, params[i]);
                     }
                     query.setFirstResult((currentPage - 1) * pageSize);
                     query.setMaxResults(pageSize);
                     pageBean.setData(query.list());

                     query =
                           session.createQuery("select count(*)"
                                 + HQL.substring(HQL.toLowerCase().indexOf("from")));
                     for (int i = 0; i < params.length; i++) {
                        query.setParameter(i, params[i]);
                     }
                     pageBean.setTotalRows(Integer.parseInt(query.uniqueResult()
                           .toString()));
                     pageBean.setCurrentPage(currentPage);
                     pageBean.setPageSize(pageSize);

                     return pageBean;
                  }
               });
      }
   */
}
