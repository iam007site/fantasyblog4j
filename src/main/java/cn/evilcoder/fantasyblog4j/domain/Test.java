package cn.evilcoder.fantasyblog4j.domain;

/**
 * User: Huangshanqi
 * Date: 2016/4/7
 * Time: 10:27
 */
public class Test {
    private long id;
    private String username;
    private String password;

    public Test() {
    }

    public Test(long id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
