package stackjava.com.accessgoogle.common;

public class GooglePojo {
    private String id;
    private String email;
    private boolean verified_email;
    private String name;
    private String given_name;
    private String family_name;
    private String link;
    private String picture;

    public String getPicture() {
        return  picture;
    }
    public Object getId() {
        return  id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }
}
