package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

@zzzn
public final class zzhg {
    private final int zzyX;
    private final int zzyY;
    private final int zzyZ;
    private final zzhf zzza = new zzhk();

    public zzhg(int i) {
        this.zzyY = i;
        this.zzyX = 6;
        this.zzyZ = 0;
    }

    private final String zzz(String str) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return "";
        }
        zzhi zzhi = new zzhi();
        PriorityQueue priorityQueue = new PriorityQueue(this.zzyY, new zzhh(this));
        for (String zzd : split) {
            String[] zzd2 = zzhj.zzd(zzd, false);
            if (zzd2.length != 0) {
                zzhm.zza(zzd2, this.zzyY, this.zzyX, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzhi.write(this.zzza.zzy(((zzhn) it.next()).zzze));
            } catch (IOException e) {
                zzajc.zzb("Error while writing hash to byteStream", e);
            }
        }
        return zzhi.toString();
    }

    public final String zza(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            stringBuffer.append(((String) obj).toLowerCase(Locale.US));
            stringBuffer.append(10);
        }
        return zzz(stringBuffer.toString());
    }
}
