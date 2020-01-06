package cn.itcast.domain;

import java.io.Serializable;

public class Depart implements Serializable {

    private String Dno;
    private String Dname;
    private String Sno;

    public String getSname() {
        return Sname;
    }

    public void setSname(String sname) {
        Sname = sname;
    }

    private String Sname;

    public String getDno() {
        return Dno;
    }

    public void setDno(String dno) {
        Dno = dno;
    }

    public String getDname() {
        return Dname;
    }

    public void setDname(String dname) {
        Dname = dname;
    }

    public String getSno() {
        return Sno;
    }

    public void setSno(String sno) {
        Sno = sno;
    }

    @Override
    public String toString() {
        return "Depart{" +
                "Dno='" + Dno + '\'' +
                ", Dname='" + Dname + '\'' +
                ", Sno='" + Sno + '\'' +
                ", Sname='" + Sname + '\'' +
                '}';
    }
}
