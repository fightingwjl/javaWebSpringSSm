package cn.itcast.domain;

import java.io.Serializable;

public class Login implements Serializable {


    private String Sno;
    private String password;
    private boolean admin1;


    public String getSno() {
        return Sno;
    }

    public void setSno(String sno) {
        Sno = sno;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public boolean isAdmin1() {
        return admin1;
    }

    public void setAdmin1(boolean admin1) {
        this.admin1 = admin1;
    }

    @Override
    public String toString() {
        return "Login{" +
                "Sno='" + Sno + '\'' +
                ", password='" + password + '\'' +
                ", admin1=" + admin1 +
                '}';
    }
}
