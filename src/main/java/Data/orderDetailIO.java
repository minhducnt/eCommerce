package Data;

import Model.OrderDetail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.util.List;

public class orderDetailIO {
    public static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dhs");


    public void insert (OrderDetail orderDetail)
    {
        EntityManager em = emf.createEntityManager();
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            em.persist(orderDetail);
            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
            emf.close();
        }
    }

    public void update (OrderDetail orderDetail)
    {
        EntityManager em = emf.createEntityManager();
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();

            em.merge(orderDetail);
            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
            emf.close();
        }
    }
    public void delete (OrderDetail orderDetail)
    {
        EntityManager em = emf.createEntityManager();
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();

            em.remove(orderDetail);
            transaction.commit();
        } finally {
            if (transaction.isActive()){
                transaction.rollback();
            }
            em.close();
            emf.close();
        }
    }
    public static List<?> selectOrderList (long ID)
    {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("SELECT p.id as MaDonHang, " +
                    "p.createdAt as NgayMua, g.title as TenSanPham ," +
                    "p.totalPrice as TongTien, p.phone," +
                    "n.amount " +
                    "FROM OrderDetail p , Account ac, OrderItem  n , Product g, Shop s\n" +
                    "WHERE n.orderDetailByOrderId.id = p.id " +
                    "AND g.id=n.productByProductId.id" +
                    " and g.shopByShopId.id = s.id AND  ac.id = ?1").setParameter(1,ID).getResultList();

        } catch (Exception e)
        {
            System.out.println(e.getMessage());
            return null;
        }finally {
            em.close();
        }
    }
    public static List<?> selectOrderListforSeller (long ID)
    {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("SELECT p.id as MaDonHang, p.createdAt as NgayMua, g.title as TenSanPham , " +
                    "p.totalPrice as TongTien,l.states as TrangThai, p.createdAt, p.phone," +
                    "n.amount   FROM OrderDetail p , Account ac, OrderItem  n , Product g,Trans l, Shop s" +
                    " WHERE n.orderDetailByOrderId.id = p.id " +
                    "AND g.id=n.productByProductId.id AND ac.id = l.accountByAccountId.id " +
                    " AND s.accountByAccountId.id = ac.id and g.shopByShopId.id = s.id AND  ac.id = ?1").setParameter(1,ID).getResultList();

        } catch (Exception e)
        {
            System.out.println(e.getMessage());
            return null;
        }finally {
            em.close();
        }
    }
    public static List<?> selectOrderListforSellerforSearch (long ID, String ordername)
    {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("SELECT p.id as MaDonHang, p.createdAt as NgayMua, g.title as TenSanPham ,\n" +
                    "p.totalPrice as TongTien,l.states as TrangThai, p.createdAt, p.phone,\n" +
                    "n.amount  " +
                    "FROM OrderDetail p , Account ac, OrderItem  n , Product g,Trans l, Shop s\n" +
                    "WHERE n.orderDetailByOrderId.id = p.id \n" +
                    "AND g.id=n.productByProductId.id AND ac.id = l.accountByAccountId.id \n" +
                    " AND s.accountByAccountId.id = ac.id and g.shopByShopId.id = s.id AND  ac.id = ?1 and g.title like ?2").setParameter(1,ID).setParameter(2,"%"+ordername+"%").getResultList();

        } catch (Exception e)
        {
            System.out.println(e.getMessage());
            return null;
        }finally {
            em.close();
        }
    }
}
