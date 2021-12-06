package Model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.Objects;

@Entity
public class Shop {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    @Basic
    private String shopname;
    private String streetName;
    private String city;
    private String district;
    private int bankId;
    private long numberProduct;
    private short status;
    private Timestamp lastUpdate;

    @OneToMany(mappedBy = "shopByShopId")
    private Collection<Product> productsById;
    @ManyToOne
    private Account accountByAccountId;
    @OneToMany(mappedBy = "shopByShopId")
    private Collection<ShopDelivery> shopDeliveriesById;

    public Shop(String shopCity, String shopStreet, String shopDistrict, String shopName, long numberProduct, Account acc, Timestamp lastupdate, int bank) {
        this.city = shopCity;
        this.streetName = shopStreet;
        this.district = shopDistrict;
        this.shopname = shopName;
        this.numberProduct = numberProduct;
        this.accountByAccountId = acc;
        this.lastUpdate = lastupdate;
        this.bankId = bank;
    }

    public Shop() {

    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public int getBankId() {
        return bankId;
    }

    public void setBankId(int bankId) {
        this.bankId = bankId;
    }

    public long getNumberProduct() {
        return numberProduct;
    }

    public void setNumberProduct(long numberProduct) {
        this.numberProduct = numberProduct;
    }

    public short getStatus() {
        return status;
    }

    public void setStatus(short status) {
        this.status = status;
    }

    public Timestamp getLastUpdate() {
        return lastUpdate;
    }

    public void setLastUpdate(Timestamp lastUpdate) {
        this.lastUpdate = lastUpdate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Shop shop = (Shop) o;

        if (id != shop.id) return false;
        if (bankId != shop.bankId) return false;
        if (numberProduct != shop.numberProduct) return false;
        if (status != shop.status) return false;
        if (!Objects.equals(streetName, shop.streetName)) return false;
        if (!Objects.equals(city, shop.city)) return false;
        if (!Objects.equals(district, shop.district)) return false;
        return Objects.equals(lastUpdate, shop.lastUpdate);
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (streetName != null ? streetName.hashCode() : 0);
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (district != null ? district.hashCode() : 0);
        result = 31 * result + bankId;
        result = 31 * result + (int) (numberProduct ^ (numberProduct >>> 32));
        result = 31 * result + (int) status;
        result = 31 * result + (lastUpdate != null ? lastUpdate.hashCode() : 0);
        return result;
    }

    public Collection<Product> getProductsById() {
        return productsById;
    }
    public void setProductsById(Collection<Product> productsById) {
        this.productsById = productsById;
    }

    public Account getAccountByAccountId() {
        return accountByAccountId;
    }
    public void setAccountByAccountId(Account accountByAccountId) {
        this.accountByAccountId = accountByAccountId;
    }

    public Collection<ShopDelivery> getShopDeliveriesById() {
        return shopDeliveriesById;
    }
    public void setShopDeliveriesById(Collection<ShopDelivery> shopDeliveriesById) {
        this.shopDeliveriesById = shopDeliveriesById;
    }



    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }
}
