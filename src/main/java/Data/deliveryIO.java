package Data;

import Model.Delivery;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class deliveryIO {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("dhs");
    EntityManager em = emf.createEntityManager();
    EntityTransaction transaction = em.getTransaction();

    public void insert (Delivery delivery)
    {
        try {
            transaction.begin();
            em.persist(delivery);
            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
            emf.close();
        }
    }

    public void update (Delivery delivery)
    {
        try {
            transaction.begin();

            em.merge(delivery);
            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
            emf.close();
        }
    }
    public void delete (Delivery delivery)
    {
        try {
            transaction.begin();
            em.remove(delivery);

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
