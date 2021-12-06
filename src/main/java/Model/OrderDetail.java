package Model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.Objects;

@Entity
public class OrderDetail {
    @Id
    private long id;
    private int phone;
    private String streetName;
    private String city;
    private String district;
    private String delivery;
    private Timestamp createdAt;
    private double shipPrice;
    private double totalPrice;
    private String note;

    @OneToMany(mappedBy = "orderDetailByOrderId")
    private Collection<OrderItem> orderItemsById;

    @OneToMany(mappedBy = "orderDetailByOrderId")
    private Collection<Trans> transById;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderDetail that = (OrderDetail) o;
        return id == that.id && phone == that.phone && Double.compare(that.shipPrice, shipPrice) == 0 &&
                Double.compare(that.totalPrice, totalPrice) == 0 && Objects.equals(streetName, that.streetName) &&
                Objects.equals(city, that.city) && Objects.equals(district, that.district) &&
                Objects.equals(delivery, that.delivery) && Objects.equals(createdAt, that.createdAt) &&
                Objects.equals(note, that.note);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, phone, streetName, city, district, delivery, createdAt, shipPrice, totalPrice, note);
    }

    public Collection<Trans> getTransById() {
        return transById;
    }

    public void setTransById(Collection<Trans> transById) {
        this.transById = transById;
    }
}
