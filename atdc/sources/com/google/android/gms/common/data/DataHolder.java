package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzc;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

@KeepName
public final class DataHolder extends com.google.android.gms.common.internal.safeparcel.zza implements Closeable {
    public static final Creator<DataHolder> CREATOR = new zzf();
    private static final zza zzaFI = new zze(new String[0], null);
    private boolean mClosed;
    private final String[] zzaFB;
    private Bundle zzaFC;
    private final CursorWindow[] zzaFD;
    private final Bundle zzaFE;
    private int[] zzaFF;
    int zzaFG;
    private boolean zzaFH;
    private int zzaku;
    private final int zzaxu;

    public static class zza {
        private final String[] zzaFB;
        private final ArrayList<HashMap<String, Object>> zzaFJ;
        private final String zzaFK;
        private final HashMap<Object, Integer> zzaFL;
        private boolean zzaFM;
        private String zzaFN;

        private zza(String[] strArr, String str) {
            this.zzaFB = (String[]) zzbo.zzu(strArr);
            this.zzaFJ = new ArrayList();
            this.zzaFK = str;
            this.zzaFL = new HashMap();
            this.zzaFM = false;
            this.zzaFN = null;
        }

        /* synthetic */ zza(String[] strArr, String str, zze zze) {
            this(strArr, null);
        }

        public zza zza(ContentValues contentValues) {
            zzc.zzr(contentValues);
            HashMap hashMap = new HashMap(contentValues.size());
            for (Entry entry : contentValues.valueSet()) {
                hashMap.put((String) entry.getKey(), entry.getValue());
            }
            return zza(hashMap);
        }

        /* JADX WARNING: Removed duplicated region for block: B:11:0x0039  */
        /* JADX WARNING: Removed duplicated region for block: B:10:0x0033  */
        public com.google.android.gms.common.data.DataHolder.zza zza(java.util.HashMap<java.lang.String, java.lang.Object> r5) {
            /*
            r4 = this;
            com.google.android.gms.common.internal.zzc.zzr(r5);
            r0 = r4.zzaFK;
            r1 = -1;
            if (r0 != 0) goto L_0x000a;
        L_0x0008:
            r0 = -1;
            goto L_0x0031;
        L_0x000a:
            r0 = r4.zzaFK;
            r0 = r5.get(r0);
            if (r0 != 0) goto L_0x0013;
        L_0x0012:
            goto L_0x0008;
        L_0x0013:
            r2 = r4.zzaFL;
            r2 = r2.get(r0);
            r2 = (java.lang.Integer) r2;
            if (r2 != 0) goto L_0x002d;
        L_0x001d:
            r2 = r4.zzaFL;
            r3 = r4.zzaFJ;
            r3 = r3.size();
            r3 = java.lang.Integer.valueOf(r3);
            r2.put(r0, r3);
            goto L_0x0008;
        L_0x002d:
            r0 = r2.intValue();
        L_0x0031:
            if (r0 != r1) goto L_0x0039;
        L_0x0033:
            r0 = r4.zzaFJ;
            r0.add(r5);
            goto L_0x0043;
        L_0x0039:
            r1 = r4.zzaFJ;
            r1.remove(r0);
            r1 = r4.zzaFJ;
            r1.add(r0, r5);
        L_0x0043:
            r5 = 0;
            r4.zzaFM = r5;
            return r4;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.data.DataHolder$zza.zza(java.util.HashMap):com.google.android.gms.common.data.DataHolder$zza");
        }

        public final DataHolder zzav(int i) {
            return new DataHolder(this, 0, null, null);
        }
    }

    public static class zzb extends RuntimeException {
        public zzb(String str) {
            super(str);
        }
    }

    DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.mClosed = false;
        this.zzaFH = true;
        this.zzaku = i;
        this.zzaFB = strArr;
        this.zzaFD = cursorWindowArr;
        this.zzaxu = i2;
        this.zzaFE = bundle;
    }

    private DataHolder(zza zza, int i, Bundle bundle) {
        this(zza.zzaFB, zza(zza, -1), i, null);
    }

    private DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.mClosed = false;
        this.zzaFH = true;
        this.zzaku = 1;
        this.zzaFB = (String[]) zzbo.zzu(strArr);
        this.zzaFD = (CursorWindow[]) zzbo.zzu(cursorWindowArr);
        this.zzaxu = i;
        this.zzaFE = bundle;
        zzqR();
    }

    public static zza zza(String[] strArr) {
        return new zza(strArr, null, null);
    }

    private static CursorWindow[] zza(zza zza, int i) {
        int i2 = 0;
        if (zza.zzaFB.length == 0) {
            return new CursorWindow[0];
        }
        ArrayList zzb = zza.zzaFJ;
        int size = zzb.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cursorWindow);
        cursorWindow.setNumColumns(zza.zzaFB.length);
        CursorWindow cursorWindow2 = cursorWindow;
        int i3 = 0;
        Object obj = null;
        while (i3 < size) {
            try {
                if (!cursorWindow2.allocRow()) {
                    StringBuilder stringBuilder = new StringBuilder(72);
                    stringBuilder.append("Allocating additional cursor window for large data set (row ");
                    stringBuilder.append(i3);
                    stringBuilder.append(")");
                    Log.d("DataHolder", stringBuilder.toString());
                    cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i3);
                    cursorWindow2.setNumColumns(zza.zzaFB.length);
                    arrayList.add(cursorWindow2);
                    if (!cursorWindow2.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList.remove(cursorWindow2);
                        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
                    }
                }
                Map map = (Map) zzb.get(i3);
                boolean z = true;
                for (int i4 = 0; i4 < zza.zzaFB.length && z; i4++) {
                    Object obj2 = zza.zzaFB[i4];
                    Object obj3 = map.get(obj2);
                    if (obj3 == null) {
                        z = cursorWindow2.putNull(i3, i4);
                    } else if (obj3 instanceof String) {
                        z = cursorWindow2.putString((String) obj3, i3, i4);
                    } else {
                        long longValue;
                        if (obj3 instanceof Long) {
                            longValue = ((Long) obj3).longValue();
                        } else if (obj3 instanceof Integer) {
                            z = cursorWindow2.putLong((long) ((Integer) obj3).intValue(), i3, i4);
                        } else if (obj3 instanceof Boolean) {
                            longValue = ((Boolean) obj3).booleanValue() ? 1 : 0;
                        } else if (obj3 instanceof byte[]) {
                            z = cursorWindow2.putBlob((byte[]) obj3, i3, i4);
                        } else if (obj3 instanceof Double) {
                            z = cursorWindow2.putDouble(((Double) obj3).doubleValue(), i3, i4);
                        } else if (obj3 instanceof Float) {
                            z = cursorWindow2.putDouble((double) ((Float) obj3).floatValue(), i3, i4);
                        } else {
                            String valueOf = String.valueOf(obj3);
                            StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(obj2).length() + 32) + String.valueOf(valueOf).length());
                            stringBuilder2.append("Unsupported object for column ");
                            stringBuilder2.append(obj2);
                            stringBuilder2.append(": ");
                            stringBuilder2.append(valueOf);
                            throw new IllegalArgumentException(stringBuilder2.toString());
                        }
                        z = cursorWindow2.putLong(longValue, i3, i4);
                    }
                }
                if (z) {
                    obj = null;
                } else if (obj != null) {
                    throw new zzb("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                } else {
                    StringBuilder stringBuilder3 = new StringBuilder(74);
                    stringBuilder3.append("Couldn't populate window data for row ");
                    stringBuilder3.append(i3);
                    stringBuilder3.append(" - allocating new window.");
                    Log.d("DataHolder", stringBuilder3.toString());
                    cursorWindow2.freeLastRow();
                    cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i3);
                    cursorWindow2.setNumColumns(zza.zzaFB.length);
                    arrayList.add(cursorWindow2);
                    i3--;
                    obj = 1;
                }
                i3++;
            } catch (RuntimeException e) {
                i = arrayList.size();
                while (i2 < i) {
                    ((CursorWindow) arrayList.get(i2)).close();
                    i2++;
                }
                throw e;
            }
        }
        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
    }

    public static DataHolder zzau(int i) {
        return new DataHolder(zzaFI, i, null);
    }

    private final void zzh(String str, int i) {
        if (this.zzaFC == null || !this.zzaFC.containsKey(str)) {
            String str2 = "No such column: ";
            str = String.valueOf(str);
            throw new IllegalArgumentException(str.length() != 0 ? str2.concat(str) : new String(str2));
        } else if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        } else if (i < 0 || i >= this.zzaFG) {
            throw new CursorIndexOutOfBoundsException(i, this.zzaFG);
        }
    }

    public final void close() {
        synchronized (this) {
            if (!this.mClosed) {
                this.mClosed = true;
                for (CursorWindow close : this.zzaFD) {
                    close.close();
                }
            }
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void finalize() throws Throwable {
        try {
            if (this.zzaFH && this.zzaFD.length > 0 && !isClosed()) {
                close();
                String valueOf = String.valueOf(toString());
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 178);
                stringBuilder.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                stringBuilder.append(valueOf);
                stringBuilder.append(")");
                Log.e("DataBuffer", stringBuilder.toString());
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
        }
    }

    public final int getCount() {
        return this.zzaFG;
    }

    public final int getStatusCode() {
        return this.zzaxu;
    }

    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.mClosed;
        }
        return z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaFB, false);
        zzd.zza(parcel, 2, this.zzaFD, i, false);
        zzd.zzc(parcel, 3, this.zzaxu);
        zzd.zza(parcel, 4, this.zzaFE, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }

    public final void zza(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        zzh(str, i);
        this.zzaFD[i2].copyStringToBuffer(i, this.zzaFC.getInt(str), charArrayBuffer);
    }

    public final int zzat(int i) {
        int i2 = 0;
        boolean z = i >= 0 && i < this.zzaFG;
        zzbo.zzae(z);
        while (i2 < this.zzaFF.length) {
            if (i < this.zzaFF[i2]) {
                i2--;
                break;
            }
            i2++;
        }
        return i2 == this.zzaFF.length ? i2 - 1 : i2;
    }

    public final long zzb(String str, int i, int i2) {
        zzh(str, i);
        return this.zzaFD[i2].getLong(i, this.zzaFC.getInt(str));
    }

    public final int zzc(String str, int i, int i2) {
        zzh(str, i);
        return this.zzaFD[i2].getInt(i, this.zzaFC.getInt(str));
    }

    public final boolean zzcv(String str) {
        return this.zzaFC.containsKey(str);
    }

    public final String zzd(String str, int i, int i2) {
        zzh(str, i);
        return this.zzaFD[i2].getString(i, this.zzaFC.getInt(str));
    }

    public final boolean zze(String str, int i, int i2) {
        zzh(str, i);
        return Long.valueOf(this.zzaFD[i2].getLong(i, this.zzaFC.getInt(str))).longValue() == 1;
    }

    public final float zzf(String str, int i, int i2) {
        zzh(str, i);
        return this.zzaFD[i2].getFloat(i, this.zzaFC.getInt(str));
    }

    public final byte[] zzg(String str, int i, int i2) {
        zzh(str, i);
        return this.zzaFD[i2].getBlob(i, this.zzaFC.getInt(str));
    }

    public final boolean zzh(String str, int i, int i2) {
        zzh(str, i);
        return this.zzaFD[i2].isNull(i, this.zzaFC.getInt(str));
    }

    public final Bundle zzqN() {
        return this.zzaFE;
    }

    public final void zzqR() {
        int i;
        this.zzaFC = new Bundle();
        for (i = 0; i < this.zzaFB.length; i++) {
            this.zzaFC.putInt(this.zzaFB[i], i);
        }
        this.zzaFF = new int[this.zzaFD.length];
        i = 0;
        for (int i2 = 0; i2 < this.zzaFD.length; i2++) {
            this.zzaFF[i2] = i;
            i += this.zzaFD[i2].getNumRows() - (i - this.zzaFD[i2].getStartPosition());
        }
        this.zzaFG = i;
    }
}
