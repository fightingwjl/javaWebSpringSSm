package cn.itcast.domain;

import java.io.Serializable;

public class Wage implements Serializable {

    private String Sno;
    private double Wbasic;
    private double Wpenalty;
    private double Wactual;

    public String getSno() {
        return Sno;
    }

    public void setSno(String sno) {
        Sno = sno;
    }

    public double getWbasic() {
        return Wbasic;
    }

    public void setWbasic(double wbasic) {
        Wbasic = wbasic;
    }

    public double getWpenalty() {
        return Wpenalty;
    }

    public void setWpenalty(double wpenalty) {
        Wpenalty = wpenalty;
    }

    public double getWactual() {
        return Wactual;
    }

    public void setWactual(double wactual) {
        Wactual = wactual;
    }


    @Override
    public String toString() {
        return "Wage{" +
                "Sno='" + Sno + '\'' +
                ", Wbasic=" + Wbasic +
                ", Wpenalty=" + Wpenalty +
                ", Wactual=" + Wactual +
                '}';
    }


}
