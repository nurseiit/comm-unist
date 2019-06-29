package com.google.android.gms.internal;

import android.graphics.PointF;
import java.util.ArrayList;

public final class ib {
    private static final hz zzbUC = new hz();
    private static final hy zzbUD = new hy();
    private ArrayList<if> zzaLj = new ArrayList();

    private static void zza(PointF[] pointFArr, hx hxVar, boolean z, ArrayList<PointF> arrayList, ArrayList<Float> arrayList2, float f, PointF pointF) {
        PointF[] pointFArr2 = pointFArr;
        hx hxVar2 = hxVar;
        ArrayList<PointF> arrayList3 = arrayList;
        ArrayList<Float> arrayList4 = arrayList2;
        ic icVar = new ic(null, 1.0f, hxVar2.zza(1.0f, pointFArr2, new PointF()));
        ic icVar2 = new ic(icVar, 0.0f, hxVar2.zza(0.0f, pointFArr2, new PointF()));
        int i = 1;
        float[] fArr = new float[1];
        boolean z2 = z;
        ic icVar3 = icVar2;
        while (icVar != null) {
            float[] fArr2;
            ic icVar4 = icVar;
            boolean z3 = z2;
            while (true) {
                ic icVar5;
                PointF pointF2 = new PointF();
                PointF pointF3 = pointF2;
                ic icVar6 = icVar4;
                ic icVar7 = icVar3;
                fArr2 = fArr;
                boolean zza = zza(pointFArr2, hxVar2, icVar3.zzbUF, icVar3.zzbUG, icVar4.zzbUF, icVar4.zzbUG, fArr, pointF3, f);
                if (zza || !z3) {
                    icVar5 = icVar7;
                } else {
                    float[] fArr3 = new float[i];
                    ic icVar8 = icVar7;
                    PointF[] pointFArr3 = pointFArr2;
                    hx hxVar3 = hxVar2;
                    icVar5 = icVar8;
                    zza = zza(pointFArr3, hxVar3, icVar8.zzbUF, icVar8.zzbUG, fArr2[0], pointF3, fArr3, new PointF(), f);
                    if (zza) {
                        z3 = false;
                    }
                }
                if (zza) {
                    ic icVar9 = new ic(icVar6, fArr2[0], pointF3);
                    icVar5.zzbUE = icVar9;
                    icVar4 = icVar9;
                } else {
                    icVar4 = icVar6;
                }
                if (!zza) {
                    break;
                }
                icVar3 = icVar5;
                fArr = fArr2;
                i = 1;
            }
            icVar = icVar4.zzbUE;
            icVar3 = icVar4;
            z2 = z3;
            fArr = fArr2;
            i = 1;
        }
        if (arrayList.isEmpty()) {
            arrayList3.add(new PointF(0.0f, 0.0f));
            arrayList4.add(Float.valueOf(0.0f));
            pointF.set(0.0f, 0.0f);
        }
        PointF pointF4 = (PointF) arrayList3.get(arrayList.size() - 1);
        float floatValue = ((Float) arrayList4.get(arrayList2.size() - 1)).floatValue();
        while (icVar2 != null) {
            arrayList3.add(icVar2.zzbUG);
            floatValue += PointF.length(icVar2.zzbUG.x - pointF4.x, icVar2.zzbUG.y - pointF4.y);
            arrayList4.add(Float.valueOf(floatValue));
            pointF4 = icVar2.zzbUG;
            icVar2 = icVar2.zzbUE;
        }
    }

    private static boolean zza(PointF[] pointFArr, hx hxVar, float f, PointF pointF, float f2, PointF pointF2, float[] fArr, PointF pointF3, float f3) {
        fArr[0] = (f2 + f) / 2.0f;
        f2 = (pointF2.x + pointF.x) / 2.0f;
        float f4 = (pointF2.y + pointF.y) / 2.0f;
        hxVar.zza(fArr[0], pointFArr, pointF3);
        float f5 = pointF3.x - f2;
        float f6 = pointF3.y - f4;
        return (f5 * f5) + (f6 * f6) > f3;
    }

    public final void cubicTo(float f, float f2, float f3, float f4, float f5, float f6) {
        this.zzaLj.add(new id(f, 0.0f, f3, 1.0f, 1.0f, 1.0f, false));
    }

    public final void moveTo(float f, float f2) {
        this.zzaLj.add(new ie(0.0f, 0.0f, false));
    }

    /* Access modifiers changed, original: final */
    public final float[] zzf(float f) {
        int size = this.zzaLj.size();
        int i = size + 1;
        ArrayList arrayList = new ArrayList(i);
        ArrayList arrayList2 = new ArrayList(i);
        PointF pointF = new PointF();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            ((if) this.zzaLj.get(i3)).zza(arrayList, arrayList2, 4.0000004E-6f, pointF);
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new PointF(0.0f, 0.0f));
            arrayList2.add(Float.valueOf(0.0f));
        }
        f = ((Float) arrayList2.get(arrayList2.size() - 1)).floatValue();
        if (f == 0.0f) {
            arrayList.add((PointF) arrayList.get(arrayList.size() - 1));
            arrayList2.add(Float.valueOf(1.0f));
            f = 1.0f;
        }
        i = arrayList.size();
        float[] fArr = new float[(i * 3)];
        int i4 = 0;
        while (i2 < i) {
            PointF pointF2 = (PointF) arrayList.get(i2);
            int i5 = i4 + 1;
            fArr[i4] = ((Float) arrayList2.get(i2)).floatValue() / f;
            i4 = i5 + 1;
            fArr[i5] = pointF2.x;
            i5 = i4 + 1;
            fArr[i4] = pointF2.y;
            i2++;
            i4 = i5;
        }
        return fArr;
    }
}
