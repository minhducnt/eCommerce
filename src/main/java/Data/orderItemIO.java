package Data;

import Model.OrderItem;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class orderItemIO {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("dhs");
    EntityManager em = emf.createEntityManager();
    EntityTransaction transaction = em.getTransaction();

    public void insert (OrderItem orderItem)
    {
        try {
            transaction.begin();
            em.persist(orderItem);
            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
            emf.close();
        }
    }

    public void update (OrderItem orderItem)
    {
        try {
            transaction.begin();

            em.merge(orderItem);
            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
            emf.close();
        }
    }
    public void delete (OrderItem orderItem)
    {
        try {
            transaction.begin();

            em.remove(orderItem);
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
