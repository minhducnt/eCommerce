package Model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.Date;

@Entity
public class Cart {
    @Id
    private long id;
    private String sessionId;
    private String tokenId;
    private Short status;
    private Long accountId;
    private int phone;
    private String streetName;
    private String city;
    private String district;
    private String delivery;
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedAt;
    private String content;
    @ManyToOne
    private Account accountByAccountId;
//    @OneToMany
//    private ArrayList<CartItem> cartItemsById;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private Collection<CartItem>  listCartItem;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getSessionId() {
        return sessionId;
    }

    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
    }

    public String getTokenId() {
        return tokenId;
    }

    public void setTokenId(String tokenId) {
        this.tokenId = tokenId;
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    public Long getAccountId() {
        return accountId;
    }

    public void setAccountId(Long accountId) {
        this.accountId = accountId;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getDelivery() {
        return delivery;
    }

    public void setDelivery(String delivery) {
        this.delivery = delivery;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Cart cart = (Cart) o;

        if (id != cart.id) return false;
        if (phone != cart.phone) return false;
        if (sessionId != null ? !sessionId.equals(cart.sessionId) : cart.sessionId != null) return false;
        if (tokenId != null ? !tokenId.equals(cart.tokenId) : cart.tokenId != null) return false;
        if (status != null ? !status.equals(cart.status) : cart.status != null) return false;
        if (accountId != null ? !accountId.equals(cart.accountId) : cart.accountId != null) return false;
        if (streetName != null ? !streetName.equals(cart.streetName) : cart.streetName != null) return false;
        if (city != null ? !city.equals(cart.city) : cart.city != null) return false;
        if (district != null ? !district.equals(cart.district) : cart.district != null) return false;
        if (delivery != null ? !delivery.equals(cart.delivery) : cart.delivery != null) return false;
        if (createdAt != null ? !createdAt.equals(cart.createdAt) : cart.createdAt != null) return false;
        if (updatedAt != null ? !updatedAt.equals(cart.updatedAt) : cart.updatedAt != null) return false;
        return content != null ? content.equals(cart.content) : cart.content == null;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (sessionId != null ? sessionId.hashCode() : 0);
        result = 31 * result + (tokenId != null ? tokenId.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + (accountId != null ? accountId.hashCode() : 0);
        result = 31 * result + phone;
        result = 31 * result + (streetName != null ? streetName.hashCode() : 0);
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (district != null ? district.hashCode() : 0);
        result = 31 * result + (delivery != null ? delivery.hashCode() : 0);
        result = 31 * result + (createdAt != null ? createdAt.hashCode() : 0);
        result = 31 * result + (updatedAt != null ? updatedAt.hashCode() : 0);
        result = 31 * result + (content != null ? content.hashCode() : 0);
        return result;
    }

    public Account getAccountByAccountId() {
        return accountByAccountId;
    }

    public void setAccountByAccountId(Account accountByAccountId) {
        this.accountByAccountId = accountByAccountId;
    }

//    public Collection<CartItem> getCartItemsById() {
//        return cartItemsById;
//    }
//    public int getCount() {
//        return cartItemsById.size();
//    }
//    public void addItem(CartItem item) {
//       long code = item.getProductId();
//        int amount = item.getAmount();
//        for (int i = 0; i < cartItemsById.size(); i++) {
//            CartItem lineItem = cartItemsById.get(i);
//            if (lineItem.getProductId().equals(code)) {
//                lineItem.setAmount(amount);
//                return;
//            }
//        }
//        cartItemsById.add(item);
//    }
//
//    public void removeItem(CartItem item) {
//        long code = item.getProductId();
//        for (int i = 0; i < cartItemsById.size(); i++) {
//            CartItem lineItem = cartItemsById.get(i);
//            if (lineItem.getProductId().equals(code)) {
//                cartItemsById.remove(i);
//                return;
//            }
//        }
//    }
//    public void setCartItemsById(ArrayList<CartItem> cartItemsById) {
//        this.cartItemsById = cartItemsById;
//    }
}
