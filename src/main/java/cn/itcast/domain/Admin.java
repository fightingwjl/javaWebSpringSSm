package cn.itcast.domain;

import java.io.Serializable;

public class Admin implements Serializable {

    private String Sno;
    private String Aname;
    private String Asex;
    private String Aage;
    private String Atel;
    private String Aemail;
    private String SuperAdmin;

    public String getSno() {
        return Sno;
    }

    public void setSno(String sno) {
        Sno = sno;
    }

    public String getAname() {
        return Aname;
    }

    public void setAname(String aname) {
        Aname = aname;
    }

    public String getAsex() {
        return Asex;
    }

    public void setAsex(String asex) {
        Asex = asex;
    }

    public String getAage() {
        return Aage;
    }

    public void setAage(String aage) {
        Aage = aage;
    }

    public String getAtel() {
        return Atel;
    }

    public void setAtel(String atel) {
        Atel = atel;
    }

    public String getAemail() {
        return Aemail;
    }

    public void setAemail(String aemail) {
        Aemail = aemail;
    }

    public String getSuperAdmin() {
        return SuperAdmin;
    }

    public void setSuperAdmin(String superAdmin) {
        SuperAdmin = superAdmin;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "Sno='" + Sno + '\'' +
                ", Aname='" + Aname + '\'' +
                ", Asex='" + Asex + '\'' +
                ", Aage='" + Aage + '\'' +
                ", Atel='" + Atel + '\'' +
                ", Aemail='" + Aemail + '\'' +
                ", SuperAdmin='" + SuperAdmin + '\'' +
                '}';
    }
}
