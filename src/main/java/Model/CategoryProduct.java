package Model;

import javax.persistence.*;

@Entity
public class CategoryProduct {
    @Id
    private long id;

    @ManyToOne
    private Product productByProductId;

    @ManyToOne
    private Category categoryByCategoryId;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CategoryProduct that = (CategoryProduct) o;

        return  id != that.id;
    }

    @Override
    public int hashCode() {
        return (int) (id ^ (id >>> 32));
    }
}
