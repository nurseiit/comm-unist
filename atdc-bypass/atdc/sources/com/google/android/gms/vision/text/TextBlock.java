package com.google.android.gms.vision.text;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.SparseArray;
import com.google.android.gms.internal.fe;
import com.google.android.gms.internal.fk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;

public class TextBlock implements Text {
    private Point[] cornerPoints;
    private fk[] zzbNQ;
    private List<Line> zzbNR;
    private String zzbNS;
    private Rect zzbNT;

    TextBlock(SparseArray<fk> sparseArray) {
        this.zzbNQ = new fk[sparseArray.size()];
        for (int i = 0; i < this.zzbNQ.length; i++) {
            this.zzbNQ[i] = (fk) sparseArray.valueAt(i);
        }
    }

    private static Point[] zza(int i, int i2, int i3, int i4, fe feVar) {
        int i5 = feVar.left;
        int i6 = feVar.top;
        double sin = Math.sin(Math.toRadians((double) feVar.zzbNW));
        double cos = Math.cos(Math.toRadians((double) feVar.zzbNW));
        r6 = new Point[4];
        int i7 = 0;
        r6[0] = new Point(i, i2);
        r6[1] = new Point(i3, i2);
        r6[2] = new Point(i3, i4);
        r6[3] = new Point(i, i4);
        while (i7 < 4) {
            i2 = (int) ((((double) r6[i7].x) * sin) + (((double) r6[i7].y) * cos));
            r6[i7].x = (int) ((((double) r6[i7].x) * cos) - (((double) r6[i7].y) * sin));
            r6[i7].y = i2;
            r6[i7].offset(i5, i6);
            i7++;
        }
        return r6;
    }

    public Rect getBoundingBox() {
        if (this.zzbNT == null) {
            this.zzbNT = zzc.zza((Text) this);
        }
        return this.zzbNT;
    }

    public List<? extends Text> getComponents() {
        int i = 0;
        if (this.zzbNQ.length == 0) {
            return new ArrayList(0);
        }
        if (this.zzbNR == null) {
            this.zzbNR = new ArrayList(this.zzbNQ.length);
            fk[] fkVarArr = this.zzbNQ;
            int length = fkVarArr.length;
            while (i < length) {
                this.zzbNR.add(new Line(fkVarArr[i]));
                i++;
            }
        }
        return this.zzbNR;
    }

    public Point[] getCornerPoints() {
        if (this.cornerPoints == null) {
            Point[] pointArr;
            int i = 0;
            if (this.zzbNQ.length == 0) {
                pointArr = new Point[0];
            } else {
                int i2;
                int i3 = Integer.MAX_VALUE;
                int i4 = 0;
                int i5 = Integer.MAX_VALUE;
                int i6 = Integer.MIN_VALUE;
                int i7 = Integer.MIN_VALUE;
                while (i4 < this.zzbNQ.length) {
                    fe feVar = this.zzbNQ[i4].zzbNY;
                    fe feVar2 = this.zzbNQ[i].zzbNY;
                    int i8 = -feVar2.left;
                    int i9 = -feVar2.top;
                    double sin = Math.sin(Math.toRadians((double) feVar2.zzbNW));
                    double cos = Math.cos(Math.toRadians((double) feVar2.zzbNW));
                    Point[] pointArr2 = new Point[4];
                    i2 = i3;
                    pointArr2[0] = new Point(feVar.left, feVar.top);
                    pointArr2[0].offset(i8, i9);
                    i = (int) ((((double) pointArr2[0].x) * cos) + (((double) pointArr2[0].y) * sin));
                    int i10 = (int) ((((double) (-pointArr2[0].x)) * sin) + (((double) pointArr2[0].y) * cos));
                    pointArr2[0].x = i;
                    pointArr2[0].y = i10;
                    pointArr2[1] = new Point(feVar.width + i, i10);
                    pointArr2[2] = new Point(feVar.width + i, feVar.height + i10);
                    pointArr2[3] = new Point(i, i10 + feVar.height);
                    i3 = i2;
                    for (i = 0; i < 4; i++) {
                        Point point = pointArr2[i];
                        i3 = Math.min(i3, point.x);
                        i6 = Math.max(i6, point.x);
                        i5 = Math.min(i5, point.y);
                        i7 = Math.max(i7, point.y);
                    }
                    i4++;
                    i = 0;
                }
                i2 = i3;
                pointArr = zza(i3, i5, i6, i7, this.zzbNQ[0].zzbNY);
            }
            this.cornerPoints = pointArr;
        }
        return this.cornerPoints;
    }

    public String getLanguage() {
        if (this.zzbNS != null) {
            return this.zzbNS;
        }
        HashMap hashMap = new HashMap();
        for (fk fkVar : this.zzbNQ) {
            hashMap.put(fkVar.zzbNS, Integer.valueOf((hashMap.containsKey(fkVar.zzbNS) ? ((Integer) hashMap.get(fkVar.zzbNS)).intValue() : 0) + 1));
        }
        this.zzbNS = (String) ((Entry) Collections.max(hashMap.entrySet(), new zza(this))).getKey();
        if (this.zzbNS == null || this.zzbNS.isEmpty()) {
            this.zzbNS = "und";
        }
        return this.zzbNS;
    }

    public String getValue() {
        if (this.zzbNQ.length == 0) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder(this.zzbNQ[0].zzbOb);
        for (int i = 1; i < this.zzbNQ.length; i++) {
            stringBuilder.append("\n");
            stringBuilder.append(this.zzbNQ[i].zzbOb);
        }
        return stringBuilder.toString();
    }
}
