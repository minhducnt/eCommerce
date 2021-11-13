package Data;

import Model.ShopDelivery;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class shopDeliveryIO {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
    EntityManager em = emf.createEntityManager();
    EntityTransaction transaction = em.getTransaction();

    public void insert (ShopDelivery shopDelivery)
    {
        try {
            transaction.begin();
                em.persist(shopDelivery);
            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
            emf.close();
        }
    }

    public void update (ShopDelivery shopDelivery)
    {
        try {
            transaction.begin();
            em.merge(shopDelivery);

            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
            emf.close();
        }
    }
    public void delete (ShopDelivery shopDelivery)
    {
        try {
            transaction.begin();

            em.remove(shopDelivery);
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
