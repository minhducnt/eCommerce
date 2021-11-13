package Data;

import Model.CategoryProduct;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class categoryProductIO {
    public static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
    public static final EntityManager em = emf.createEntityManager();
    public static final EntityTransaction transaction = em.getTransaction();

    public void insert (CategoryProduct categoryProduct)
    {
        try {
            transaction.begin();
            em.persist(categoryProduct);
            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
            emf.close();
        }
    }

    public void update (CategoryProduct categoryProduct)
    {
        try {
            transaction.begin();

            em.merge(categoryProduct);
            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
            emf.close();
        }
    }
    public void delete (CategoryProduct categoryProduct)
    {
        try {
            transaction.begin();

            em.remove(categoryProduct);
            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
            emf.close();
        }
    }
}
