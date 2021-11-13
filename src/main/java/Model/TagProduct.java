package Model;

import javax.persistence.*;

@Entity
public class TagProduct {
    @Id
    private long id;
    private Long productId;
    private Long tagId;

    @ManyToOne
    private Product ProductId;

    @ManyToOne
    private Tag TagId;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    public Long getTagId() {
        return tagId;
    }

    public void setTagId(Long tagId) {
        this.tagId = tagId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TagProduct that = (TagProduct) o;

        if (id != that.id) return false;
        if (productId != null ? !productId.equals(that.productId) : that.productId != null) return false;
        if (tagId != null ? !tagId.equals(that.tagId) : that.tagId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (productId != null ? productId.hashCode() : 0);
        result = 31 * result + (tagId != null ? tagId.hashCode() : 0);
        return result;
    }

    public Product getProductByProductId() {
        return ProductId;
    }

    public void setProductByProductId(Product productByProductId) {
        this.ProductId = productByProductId;
    }

    public Tag getTagByTagId() {
        return TagId;
    }

    public void setTagByTagId(Tag tagByTagId) {
        this.TagId = tagByTagId;
    }
}
