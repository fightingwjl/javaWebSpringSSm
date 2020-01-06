package cn.itcast.domain;

import java.io.Serializable;

public class Check1 implements Serializable {

    private String Sno;
    private Integer Cregular;
    private Integer Cabsence;
    private Integer Ctardy;

    public String getSno() {
        return Sno;
    }

    public void setSno(String sno) {
        Sno = sno;
    }

    public Integer getCregular() {
        return Cregular;
    }

    public void setCregular(Integer cregular) {
        Cregular = cregular;
    }

    public Integer getCabsence() {
        return Cabsence;
    }

    public void setCabsence(Integer cabsence) {
        Cabsence = cabsence;
    }

    public Integer getCtardy() {
        return Ctardy;
    }

    public void setCtardy(Integer ctardy) {
        Ctardy = ctardy;
    }

    @Override
    public String toString() {
        return "Check1{" +
                "Sno='" + Sno + '\'' +
                ", Cregular=" + Cregular +
                ", Cabsence=" + Cabsence +
                ", Ctardy=" + Ctardy +
                '}';
    }
}
