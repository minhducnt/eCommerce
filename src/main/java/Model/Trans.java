package Model;

import javax.persistence.*;

@Entity
public class Trans {
    @Id
    private long id;
    private Long accountId;
    private Long orderId;

    @ManyToOne
    private Account AccountId;

    @ManyToOne
    private OrderDetail OrderId;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Long getAccountId() {
        return accountId;
    }

    public void setAccountId(Long accountId) {
        this.accountId = accountId;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Trans trans = (Trans) o;

        if (id != trans.id) return false;
        if (accountId != null ? !accountId.equals(trans.accountId) : trans.accountId != null) return false;
        return orderId != null ? orderId.equals(trans.orderId) : trans.orderId == null;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (accountId != null ? accountId.hashCode() : 0);
        result = 31 * result + (orderId != null ? orderId.hashCode() : 0);
        return result;
    }

    public Account getAccountByAccountId() {
        return AccountId;
    }

    public void setAccountByAccountId(Account accountByAccountId) {
        this.AccountId = accountByAccountId;
    }

    public OrderDetail getOrderDetailByOrderId() {
        return OrderId;
    }

    public void setOrderDetailByOrderId(OrderDetail orderDetailByOrderId) {
        this.OrderId = orderDetailByOrderId;
    }
}
