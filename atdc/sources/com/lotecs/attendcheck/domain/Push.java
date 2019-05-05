package com.lotecs.attendcheck.domain;

import java.io.Serializable;

public class Push implements Serializable {
    private static final long serialVersionUID = -5762102278202739442L;
    private String data;
    private String device;
    private String flag;
    private String idno;
    private String tag;
    private String type;

    public Push(String str, String str2, String str3) {
        this.data = str;
        this.type = str2;
        this.tag = str3;
    }

    public String getData() {
        return this.data;
    }

    public void setData(String str) {
        this.data = str;
    }

    public String getIdno() {
        return this.idno;
    }

    public void setIdno(String str) {
        this.idno = str;
    }

    public String getDevice() {
        return this.device;
    }

    public void setDevice(String str) {
        this.device = str;
    }

    public String getFlag() {
        return this.flag;
    }

    public void setFlag(String str) {
        this.flag = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getTag() {
        return this.tag;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Push{data='");
        stringBuilder.append(this.data);
        stringBuilder.append('\'');
        stringBuilder.append(", idno='");
        stringBuilder.append(this.idno);
        stringBuilder.append('\'');
        stringBuilder.append(", device='");
        stringBuilder.append(this.device);
        stringBuilder.append('\'');
        stringBuilder.append(", flag='");
        stringBuilder.append(this.flag);
        stringBuilder.append('\'');
        stringBuilder.append(", type='");
        stringBuilder.append(this.type);
        stringBuilder.append('\'');
        stringBuilder.append(", tag='");
        stringBuilder.append(this.tag);
        stringBuilder.append('\'');
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
