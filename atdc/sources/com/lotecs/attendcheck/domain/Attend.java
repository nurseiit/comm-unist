package com.lotecs.attendcheck.domain;

public class Attend {
    private String camp;
    private String psco;
    private String sjco;
    private String yyse;

    public String getYyse() {
        return this.yyse;
    }

    public void setYyse(String str) {
        this.yyse = str;
    }

    public String getCamp() {
        return this.camp;
    }

    public void setCamp(String str) {
        this.camp = str;
    }

    public String getPsco() {
        return this.psco;
    }

    public void setPsco(String str) {
        this.psco = str;
    }

    public String getSjco() {
        return this.sjco;
    }

    public void setSjco(String str) {
        this.sjco = str;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Attend{yyse='");
        stringBuilder.append(this.yyse);
        stringBuilder.append('\'');
        stringBuilder.append(", camp='");
        stringBuilder.append(this.camp);
        stringBuilder.append('\'');
        stringBuilder.append(", psco='");
        stringBuilder.append(this.psco);
        stringBuilder.append('\'');
        stringBuilder.append(", sjco='");
        stringBuilder.append(this.sjco);
        stringBuilder.append('\'');
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
