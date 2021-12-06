package Model;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;
import java.util.Objects;

@Entity
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private Short status;
    private int phone;
    private String streetName;
    private String city;
    private String district;
    private String delivery;
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedAt;
    private String content;

    @ManyToOne
    private Account accountByAccountId;
    @OneToMany(mappedBy = "cartByCartId")
    private Collection<CartItem> cartItemsById;

    public int getCount() {
        return cartItemsById.size();
    }
    public void addItem(CartItem item) {
       long code = item.getProducts().getId();
        int amount = item.getAmount();
        for (int i = 0; i < cartItemsById.size(); i++) {
            CartItem cartItem = (CartItem) cartItemsById.toArray()[i];
            if (cartItem.getProducts().getId()==code) {
                cartItem.setAmount(amount);
                return;
            }
        }
        cartItemsById.add(item);
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
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

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
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
        if (!Objects.equals(status, cart.status)) return false;
        if (!Objects.equals(streetName, cart.streetName)) return false;
        if (!Objects.equals(city, cart.city)) return false;
        if (!Objects.equals(district, cart.district)) return false;
        if (!Objects.equals(delivery, cart.delivery)) return false;
        if (!Objects.equals(updatedAt, cart.updatedAt)) return false;
        return Objects.equals(content, cart.content);
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + phone;
        result = 31 * result + (streetName != null ? streetName.hashCode() : 0);
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (district != null ? district.hashCode() : 0);
        result = 31 * result + (delivery != null ? delivery.hashCode() : 0);
        result = 31 * result + (updatedAt != null ? updatedAt.hashCode() : 0);
        result = 31 * result + (content != null ? content.hashCode() : 0);
        return result;
    }

    public Collection<CartItem> getCartItemsById() {
        return cartItemsById;
    }

    public void setCartItemsById(Collection<CartItem> cartItemsById) {
        this.cartItemsById = cartItemsById;
    }

    public void setAccountByAccountId(Account accountByAccountId) {
        this.accountByAccountId = accountByAccountId;
    }

    public Account getAccountByAccountId(long id) {
        return accountByAccountId;
    }
}
