package Model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.Objects;

@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String content;
    private Timestamp createdAt;
    private String decription;
    private double price;
    private short quality;
    private Short status;
    private String title;
    private Timestamp updatedAt;
    private String image;

    @OneToMany(mappedBy = "productByProductId")
    private Collection<CartItem> cartItemsById;
    @OneToMany(mappedBy = "productByProductId")
    private Collection<CategoryProduct> categoryProductsById;
    @OneToMany(mappedBy = "productByProductId")
    private Collection<OrderItem> orderItemsById;
    @ManyToOne
    private Shop shopByShopId;
    @OneToMany(targetEntity=Review.class, mappedBy = "productByProductId",cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    private Collection<Review> reviewsById;
    @OneToMany( mappedBy = "productByProductId")
    private Collection<TagProduct> tagProductsById;

    public Product(String productimage, String productcontent, String productDecription, Short productQuality, long productprice, String productName, Short productstatus, Shop s, Timestamp createAt) {
    this.image = productimage;
    this.createdAt = createAt;
    this.decription = productDecription;
    this.title = productName;
    this.status = productstatus;
    this.quality = productQuality;
    this.price = productprice;
    this.shopByShopId = s;
    this.content = productcontent;
    }

    public Product() {

    }

    public void setId(long id) {
        this.id = id;
    }
    public long getId() {
        return this.id;
    }

    @Basic
    @Column(name = "content")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Basic
    @Column(name = "createdAt")
    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    @Basic
    @Column(name = "decription")
    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }

    @Basic
    @Column(name = "price")
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Basic
    @Column(name = "quality")
    public short getQuality() {
        return quality;
    }

    public void setQuality(short quality) {
        this.quality = quality;
    }

    @Basic
    @Column(name = "status")
    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    @Basic
    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "updatedAt")
    public Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Basic
    @Column(name = "image")
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return id == product.id && Double.compare(product.price, price) == 0 && quality == product.quality && Objects.equals(content, product.content) && Objects.equals(createdAt, product.createdAt) && Objects.equals(decription, product.decription) && Objects.equals(status, product.status) && Objects.equals(title, product.title) && Objects.equals(updatedAt, product.updatedAt) && Objects.equals(image, product.image);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, content, createdAt, decription, price, quality, status, title, updatedAt, image);
    }

    public Shop getShopByShopId() {
        return shopByShopId;
    }
}
