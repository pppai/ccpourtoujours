package domain;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;

@Entity
public class User {
    @Id
    @GeneratedValue
    private int id;
    @Column(nullable = false)
    private String account;
    @Column(nullable = false)
    private String password;
    @Column(nullable = false)
    private String name;
    @Column(nullable = false)
    private int sex;
    @Column(nullable = false)
    private int visable;
    @Column(nullable = true)
    private String phone;
    @Column(nullable = true)
    private String idCard;
    @Column(nullable = true)
    private String eMail;
    @Column(nullable = true)
    private String remark;
    @Column(nullable = true)
    private String createTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public int getVisable() {
        return visable;
    }

    public void setVisable(int visable) {
        this.visable = visable;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}
