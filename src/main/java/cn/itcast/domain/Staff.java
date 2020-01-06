package cn.itcast.domain;

import java.io.Serializable;

public class Staff implements Serializable {

    private String Sno;
    private String Sname;
    private String Ssex;
    private String Sage;
    private String Sedu;
    private String Stel;
    private String Semail;
    private String Sposition;
    private String Dno;

    public String getSno() {
        return Sno;
    }

    public void setSno(String sno) {
        Sno = sno;
    }

    public String getSname() {
        return Sname;
    }

    public void setSname(String sname) {
        Sname = sname;
    }

    public String getSsex() {
        return Ssex;
    }

    public void setSsex(String ssex) {
        Ssex = ssex;
    }

    public String getSage() {
        return Sage;
    }

    public void setSage(String sage) {
        Sage = sage;
    }

    public String getSedu() {
        return Sedu;
    }

    public void setSedu(String sedu) {
        Sedu = sedu;
    }

    public String getStel() {
        return Stel;
    }

    public void setStel(String stel) {
        Stel = stel;
    }

    public String getSemail() {
        return Semail;
    }

    public void setSemail(String semail) {
        Semail = semail;
    }

    public String getSposition() {
        return Sposition;
    }

    public void setSposition(String sposition) {
        Sposition = sposition;
    }

    public String getDno() {
        return Dno;
    }

    public void setDno(String dno) {
        Dno = dno;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "Sno='" + Sno + '\'' +
                ", Sname='" + Sname + '\'' +
                ", Ssex='" + Ssex + '\'' +
                ", Sage='" + Sage + '\'' +
                ", Sedu='" + Sedu + '\'' +
                ", Stel='" + Stel + '\'' +
                ", Semail='" + Semail + '\'' +
                ", Sposition='" + Sposition + '\'' +
                ", Dno='" + Dno + '\'' +
                '}';
    }
}
