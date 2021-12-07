package Model;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class CartItem {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private short quality;
    private double price;
    private double discount;
    private int amount;
    private String content;
    @ManyToOne
    private Cart cartByCartId;

    @ManyToOne
    private Product productByProductId;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public short getQuality() {
        return quality;
    }

    public void setQuality(short quality) {
        this.quality = quality;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    public void setpriceproduct(int amount)
    {
        this.price = this.productByProductId.getPrice()*amount;
    }
    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
      //this.price = amount
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

        CartItem cartItem = (CartItem) o;

        if (id != cartItem.id) return false;
        if (quality != cartItem.quality) return false;
        if (Double.compare(cartItem.price, price) != 0) return false;
        if (Double.compare(cartItem.discount, discount) != 0) return false;
        if (amount != cartItem.amount) return false;
        return Objects.equals(content, cartItem.content);
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = (int) (id ^ (id >>> 32));
        result = 31 * result + (int) quality;
        temp = Double.doubleToLongBits(price);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(discount);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + amount;
        result = 31 * result + (content != null ? content.hashCode() : 0);
        return result;
    }
    public double sumPrice(){
        return  amount * productByProductId.getPrice();
    }
    public void setProductByProductId(Product productByProductId) {
        this.productByProductId = productByProductId;
    }
    public Product getProducts() {
        return productByProductId;
    }

    public void setCartByCartId(Cart cartByCartId) {
        this.cartByCartId = cartByCartId;
    }

    public Cart getCartByCartId() {
        return cartByCartId;
    }
}
