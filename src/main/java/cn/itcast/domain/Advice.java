package cn.itcast.domain;

import java.io.Serializable;

public class Advice implements Serializable {
    public String advice1;
    public  String Sno;

    public String getSno() {
        return Sno;
    }

    public void setSno(String sno) {
        Sno = sno;
    }

    public String getAdvice1() {
        return advice1;
    }

    public void setAdvice1(String advice1) {
        this.advice1 = advice1;
    }

    @Override
    public String toString() {
        return "Advice{" +
                "advice1='" + advice1 + '\'' +
                ", Sno='" + Sno + '\'' +
                '}';
    }
}
