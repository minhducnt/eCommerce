package Model;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class UserAddress {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private long userAccountById;
    private long userAddressById;

    public UserAddress(long accountId, long addressId) {
        this.userAccountById = accountId;
        this.userAddressById = addressId;
    }

    public UserAddress() {

    }


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
        UserAddress that = (UserAddress) o;
        return id == that.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    public long getAddressId() {
        return userAddressById;
    }

    public void setAddressId(long addressId) {
        this.userAddressById = addressId;
    }

    public long getAccountId() {
        return userAccountById;
    }

    public void setAccountId(long accountId) {
        this.userAccountById = accountId;
    }
}
