package Data;

import Model.Address;

import javax.persistence.*;
import java.util.List;

public class addressIO {
    public static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dhs");


    public static void insert (Address address)
    {EntityManager em = emf.createEntityManager();
        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        try {

            em.persist(address);
            transaction.commit();
        }catch (Exception e){
            transaction.rollback();
        } finally
        {
            em.close();
        }
    }

    public void update (Address address)
    {EntityManager em = emf.createEntityManager();
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();

            em.merge(address);
            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
        }
    }
    public void delete (Address address)
    {EntityManager em = emf.createEntityManager();
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();

            em.remove(address);
            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
        }
    }
    public static List selectUserAdress (long ID)
    {
        EntityManager em = emf.createEntityManager();
        try {
            List acc = em.createQuery("SELECT p.username as username, g.streetName as streetName" +
                    ",g.district as district ,g.city as city , g.phone as phone  FROM Account p ," +
                    " UserAddress n , Address g WHERE p.id = n.userAccountById AND " +
                    "g.id = n.userAddressById AND  p.id =?1").setParameter(1,ID).getResultList();
            return acc;

        } catch (Exception e)
        {
            System.out.println(e);
            return null;
        }finally {
            em.close();
        }
    }
}
