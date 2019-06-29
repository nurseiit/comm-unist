package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.support.v4.media.session.PlaybackStateCompat;
import com.bumptech.glide.load.Key;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.firebase.database.DatabaseException;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class nb implements ui {
    private static final Charset zzayt = Charset.forName(Key.STRING_CHARSET_NAME);
    private final SQLiteDatabase zzbZD;
    private final wl zzbZE;
    private boolean zzbZF;
    private long zzbZG = 0;

    public nb(Context context, qd qdVar, String str) {
        try {
            str = URLEncoder.encode(str, "utf-8");
            this.zzbZE = qdVar.zzgP("Persistence");
            this.zzbZD = zzN(context, str);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static xm zzB(byte[] bArr) {
        try {
            return xp.zza(yr.zzgW(new String(bArr, zzayt)), xd.zzJb());
        } catch (IOException e) {
            String str = "Could not deserialize node: ";
            String valueOf = String.valueOf(new String(bArr, zzayt));
            throw new RuntimeException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), e);
        }
    }

    private final void zzFw() {
        zd.zzb(this.zzbZF, "Transaction expected to already be in progress.");
    }

    private static SQLiteDatabase zzN(Context context, String str) {
        try {
            SQLiteDatabase writableDatabase = new ne(context, str).getWritableDatabase();
            writableDatabase.rawQuery("PRAGMA locking_mode = EXCLUSIVE", null).close();
            writableDatabase.beginTransaction();
            writableDatabase.endTransaction();
            return writableDatabase;
        } catch (SQLiteException e) {
            if (e instanceof SQLiteDatabaseLockedException) {
                throw new DatabaseException("Failed to gain exclusive lock to Firebase Database's offline persistence. This generally means you are using Firebase Database from multiple processes in your app. Keep in mind that multi-process Android apps execute the code in your Application class in all processes, so you may need to avoid initializing FirebaseDatabase in your Application class. If you are intentionally using Firebase Database from multiple processes, you can only enable offline persistence (i.e. call setPersistenceEnabled(true)) in one of them.", e);
            }
            throw e;
        }
    }

    private static byte[] zzQ(List<byte[]> list) {
        int i = 0;
        for (byte[] length : list) {
            i += length.length;
        }
        byte[] bArr = new byte[i];
        i = 0;
        for (byte[] length2 : list) {
            System.arraycopy(length2, 0, bArr, i, length2.length);
            i += length2.length;
        }
        return bArr;
    }

    private static byte[] zzW(Object obj) {
        try {
            return yr.zzak(obj).getBytes(zzayt);
        } catch (IOException e) {
            throw new RuntimeException("Could not serialize leaf node", e);
        }
    }

    private static int zza(qr qrVar, List<String> list, int i) {
        int i2 = i + 1;
        String zzc = zzc(qrVar);
        if (((String) list.get(i)).startsWith(zzc)) {
            while (i2 < list.size() && ((String) list.get(i2)).equals(zza(qrVar, i2 - i))) {
                i2++;
            }
            if (i2 < list.size()) {
                String str = (String) list.get(i2);
                String valueOf = String.valueOf(zzc);
                zzc = String.valueOf(".part-");
                if (str.startsWith(zzc.length() != 0 ? valueOf.concat(zzc) : new String(valueOf))) {
                    throw new IllegalStateException("Run did not finish with all parts");
                }
            }
            return i2 - i;
        }
        throw new IllegalStateException("Extracting split nodes needs to start with path prefix");
    }

    private final int zza(String str, qr qrVar) {
        String zzgC = zzgC(zzc(qrVar));
        return this.zzbZD.delete(str, "path >= ? AND path < ?", new String[]{r7, zzgC});
    }

    private final Cursor zza(qr qrVar, String[] strArr) {
        String zzc = zzc(qrVar);
        String zzgC = zzgC(zzc);
        String[] strArr2 = new String[(qrVar.size() + 3)];
        StringBuilder stringBuilder = new StringBuilder("(");
        qr qrVar2 = qrVar;
        int i = 0;
        while (!qrVar2.isEmpty()) {
            stringBuilder.append("path");
            stringBuilder.append(" = ? OR ");
            strArr2[i] = zzc(qrVar2);
            qrVar2 = qrVar2.zzHe();
            i++;
        }
        stringBuilder.append("path");
        stringBuilder.append(" = ?)");
        strArr2[i] = zzc(qr.zzGZ());
        String valueOf = String.valueOf(stringBuilder.toString());
        String valueOf2 = String.valueOf(" OR (path > ? AND path < ?)");
        String concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        strArr2[qrVar.size() + 1] = zzc;
        strArr2[qrVar.size() + 2] = zzgC;
        return this.zzbZD.query("serverCache", strArr, concat, strArr2, null, null, "path");
    }

    private static String zza(qr qrVar, int i) {
        String valueOf = String.valueOf(zzc(qrVar));
        String valueOf2 = String.valueOf(String.format(".part-%04d", new Object[]{Integer.valueOf(i)}));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    private final void zza(qr qrVar, long j, String str, byte[] bArr) {
        zzFw();
        String[] strArr = new String[1];
        int i = 0;
        strArr[0] = String.valueOf(j);
        this.zzbZD.delete("writes", "id = ?", strArr);
        ContentValues contentValues;
        if (bArr.length >= 262144) {
            List zzd = zzd(bArr, 262144);
            while (i < zzd.size()) {
                contentValues = new ContentValues();
                contentValues.put("id", Long.valueOf(j));
                contentValues.put("path", zzc(qrVar));
                contentValues.put("type", str);
                contentValues.put("part", Integer.valueOf(i));
                contentValues.put("node", (byte[]) zzd.get(i));
                this.zzbZD.insertWithOnConflict("writes", null, contentValues, 5);
                i++;
            }
            return;
        }
        contentValues = new ContentValues();
        contentValues.put("id", Long.valueOf(j));
        contentValues.put("path", zzc(qrVar));
        contentValues.put("type", str);
        contentValues.put("part", null);
        contentValues.put("node", bArr);
        this.zzbZD.insertWithOnConflict("writes", null, contentValues, 5);
    }

    private final void zza(qr qrVar, qr qrVar2, uv<Long> uvVar, uv<Long> uvVar2, uj ujVar, List<za<qr, xm>> list) {
        uv<Long> uvVar3 = uvVar2;
        uj ujVar2 = ujVar;
        if (uvVar.getValue() != null) {
            if (((Integer) ujVar2.zza(Integer.valueOf(0), new nc(this, uvVar3))).intValue() > 0) {
                qr zzh = qrVar.zzh(qrVar2);
                if (this.zzbZE.zzIH()) {
                    this.zzbZE.zzb(String.format("Need to rewrite %d nodes below path %s", new Object[]{Integer.valueOf(r1), zzh}), null, new Object[0]);
                }
                ujVar2.zza(null, new nd(this, uvVar3, list, qrVar2, zzb(zzh)));
            }
            return;
        }
        Iterator it = uvVar.zzHS().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            wp wpVar = (wp) entry.getKey();
            uj zzd = ujVar2.zzd((wp) entry.getKey());
            zza(qrVar, qrVar2.zza(wpVar), (uv) entry.getValue(), uvVar3.zze(wpVar), zzd, list);
        }
    }

    private final void zza(qr qrVar, xm xmVar, boolean z) {
        int i;
        int i2;
        long currentTimeMillis = System.currentTimeMillis();
        if (z) {
            i = 0;
            int i3 = 0;
            for (xl xlVar : xmVar) {
                i3 += zza("serverCache", qrVar.zza(xlVar.zzJk()));
                i += zzc(qrVar.zza(xlVar.zzJk()), xlVar.zzFn());
            }
            i2 = i;
            i = i3;
        } else {
            i = zza("serverCache", qrVar);
            i2 = zzc(qrVar, xmVar);
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Persisted a total of %d rows and deleted %d rows for a set at %s in %dms", new Object[]{Integer.valueOf(i2), Integer.valueOf(i), qrVar.toString(), Long.valueOf(currentTimeMillis2)}), null, new Object[0]);
        }
    }

    private final xm zzb(qr qrVar) {
        long j;
        nb nbVar = this;
        qr qrVar2 = qrVar;
        List arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        long currentTimeMillis = System.currentTimeMillis();
        Cursor zza = nbVar.zza(qrVar2, new String[]{"path", Param.VALUE});
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        long currentTimeMillis3 = System.currentTimeMillis();
        while (zza.moveToNext()) {
            try {
                arrayList.add(zza.getString(0));
                arrayList2.add(zza.getBlob(1));
            } catch (Throwable th) {
                Throwable th2 = th;
                zza.close();
            }
        }
        zza.close();
        long j2 = currentTimeMillis2;
        currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis3;
        long currentTimeMillis4 = System.currentTimeMillis();
        xd zzJb = xd.zzJb();
        HashMap hashMap = new HashMap();
        xm xmVar = zzJb;
        int i = 0;
        int i2 = 0;
        while (i < arrayList2.size()) {
            qr qrVar3;
            Object zzB;
            int i3;
            if (((String) arrayList.get(i)).endsWith(".part-0000")) {
                qr qrVar4;
                String str = (String) arrayList.get(i);
                j = currentTimeMillis2;
                qrVar3 = new qr(str.substring(0, str.length() - 10));
                int zza2 = zza(qrVar3, arrayList, i);
                if (nbVar.zzbZE.zzIH()) {
                    wl wlVar = nbVar.zzbZE;
                    qrVar4 = qrVar3;
                    StringBuilder stringBuilder = new StringBuilder(42);
                    stringBuilder.append("Loading split node with ");
                    stringBuilder.append(zza2);
                    stringBuilder.append(" parts.");
                    wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
                } else {
                    qrVar4 = qrVar3;
                }
                zza2 += i;
                zzB = zzB(zzQ(arrayList2.subList(i, zza2)));
                i = zza2 - 1;
                qrVar3 = qrVar4;
            } else {
                j = currentTimeMillis2;
                zzB = zzB((byte[]) arrayList2.get(i));
                qrVar3 = new qr((String) arrayList.get(i));
            }
            if (qrVar3.zzHf() != null && qrVar3.zzHf().zzIN()) {
                hashMap.put(qrVar3, zzB);
            } else if (qrVar3.zzi(qrVar2)) {
                zd.zzb(i2 ^ 1, "Descendants of path must come after ancestors.");
                xmVar = zzB.zzN(qr.zza(qrVar3, qrVar2));
            } else if (qrVar2.zzi(qrVar3)) {
                xmVar = xmVar.zzl(qr.zza(qrVar2, qrVar3), zzB);
                i3 = 1;
                i2 = 1;
                i += i3;
                currentTimeMillis2 = j;
                nbVar = this;
            } else {
                throw new IllegalStateException(String.format("Loading an unrelated row with path %s for %s", new Object[]{qrVar3, qrVar2}));
            }
            i3 = 1;
            i += i3;
            currentTimeMillis2 = j;
            nbVar = this;
        }
        j = currentTimeMillis2;
        for (Entry entry : hashMap.entrySet()) {
            xmVar = xmVar.zzl(qr.zza(qrVar2, (qr) entry.getKey()), (xm) entry.getValue());
        }
        currentTimeMillis3 = System.currentTimeMillis() - currentTimeMillis4;
        long currentTimeMillis5 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Loaded a total of %d rows for a total of %d nodes at %s in %dms (Query: %dms, Loading: %dms, Serializing: %dms)", new Object[]{Integer.valueOf(arrayList2.size()), Integer.valueOf(yy.zzo(xmVar)), qrVar2, Long.valueOf(currentTimeMillis5), Long.valueOf(j2), Long.valueOf(j), Long.valueOf(currentTimeMillis3)}), null, new Object[0]);
        }
        return xmVar;
    }

    private final int zzc(qr qrVar, xm xmVar) {
        long zzn = yy.zzn(xmVar);
        if (!(xmVar instanceof wr) || zzn <= PlaybackStateCompat.ACTION_PREPARE) {
            zzd(qrVar, xmVar);
            return 1;
        }
        int i = 0;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Node estimated serialized size at path %s of %d bytes exceeds limit of %d bytes. Splitting up.", new Object[]{qrVar, Long.valueOf(zzn), Integer.valueOf(16384)}), null, new Object[0]);
        }
        for (xl xlVar : xmVar) {
            i += zzc(qrVar.zza(xlVar.zzJk()), xlVar.zzFn());
        }
        if (!xmVar.zzIR().isEmpty()) {
            zzd(qrVar.zza(wp.zzIL()), xmVar.zzIR());
            i++;
        }
        zzd(qrVar, xd.zzJb());
        return i + 1;
    }

    private static String zzc(qr qrVar) {
        return qrVar.isEmpty() ? "/" : String.valueOf(qrVar.toString()).concat("/");
    }

    private static List<byte[]> zzd(byte[] bArr, int i) {
        i = ((bArr.length - 1) / 262144) + 1;
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 * 262144;
            int min = Math.min(262144, bArr.length - i3);
            byte[] bArr2 = new byte[min];
            System.arraycopy(bArr, i3, bArr2, 0, min);
            arrayList.add(bArr2);
        }
        return arrayList;
    }

    private final void zzd(qr qrVar, xm xmVar) {
        byte[] zzW = zzW(xmVar.getValue(true));
        ContentValues contentValues;
        if (zzW.length >= 262144) {
            List zzd = zzd(zzW, 262144);
            int i = 0;
            if (this.zzbZE.zzIH()) {
                wl wlVar = this.zzbZE;
                int size = zzd.size();
                StringBuilder stringBuilder = new StringBuilder(45);
                stringBuilder.append("Saving huge leaf node with ");
                stringBuilder.append(size);
                stringBuilder.append(" parts.");
                wlVar.zzb(stringBuilder.toString(), null, new Object[0]);
            }
            while (i < zzd.size()) {
                contentValues = new ContentValues();
                contentValues.put("path", zza(qrVar, i));
                contentValues.put(Param.VALUE, (byte[]) zzd.get(i));
                this.zzbZD.insertWithOnConflict("serverCache", null, contentValues, 5);
                i++;
            }
            return;
        }
        contentValues = new ContentValues();
        contentValues.put("path", zzc(qrVar));
        contentValues.put(Param.VALUE, zzW);
        this.zzbZD.insertWithOnConflict("serverCache", null, contentValues, 5);
    }

    private static String zzgC(String str) {
        str = String.valueOf(str.substring(0, str.length() - 1));
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 1);
        stringBuilder.append(str);
        stringBuilder.append('0');
        return stringBuilder.toString();
    }

    private static String zzj(Collection<Long> collection) {
        StringBuilder stringBuilder = new StringBuilder();
        Object obj = 1;
        for (Long longValue : collection) {
            long longValue2 = longValue.longValue();
            if (obj == null) {
                stringBuilder.append(",");
            }
            obj = null;
            stringBuilder.append(longValue2);
        }
        return stringBuilder.toString();
    }

    public final void beginTransaction() {
        zd.zzb(this.zzbZF ^ 1, "runInTransaction called when an existing transaction is already in progress.");
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb("Starting transaction.", null, new Object[0]);
        }
        this.zzbZD.beginTransaction();
        this.zzbZF = true;
        this.zzbZG = System.currentTimeMillis();
    }

    public final void endTransaction() {
        this.zzbZD.endTransaction();
        this.zzbZF = false;
        long currentTimeMillis = System.currentTimeMillis() - this.zzbZG;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Transaction completed. Elapsed: %dms", new Object[]{Long.valueOf(currentTimeMillis)}), null, new Object[0]);
        }
    }

    public final void setTransactionSuccessful() {
        this.zzbZD.setTransactionSuccessful();
    }

    public final List<tm> zzFs() {
        long j;
        String[] strArr = new String[]{"id", "path", "type", "part", "node"};
        long currentTimeMillis = System.currentTimeMillis();
        Cursor query = this.zzbZD.query("writes", strArr, null, null, null, null, "id, part");
        ArrayList arrayList = new ArrayList();
        while (query.moveToNext()) {
            try {
                byte[] blob;
                Object tmVar;
                j = query.getLong(0);
                qr qrVar = new qr(query.getString(1));
                String string = query.getString(2);
                if (query.isNull(3)) {
                    blob = query.getBlob(4);
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    do {
                        arrayList2.add(query.getBlob(4));
                        if (!query.moveToNext()) {
                            break;
                        }
                    } while (query.getLong(0) == j);
                    query.moveToPrevious();
                    blob = zzQ(arrayList2);
                }
                Object zzgW = yr.zzgW(new String(blob, zzayt));
                if ("o".equals(string)) {
                    tm tmVar2 = new tm(j, qrVar, xp.zza(zzgW, xd.zzJb()), true);
                } else if ("m".equals(string)) {
                    tmVar = new tm(j, qrVar, pz.zzD((Map) zzgW));
                } else {
                    String str = "Got invalid write type: ";
                    string = String.valueOf(string);
                    throw new IllegalStateException(string.length() != 0 ? str.concat(string) : new String(str));
                }
                arrayList.add(tmVar);
            } catch (IOException e) {
                throw new RuntimeException("Failed to load writes", e);
            } catch (Throwable e2) {
                Throwable th = e2;
                query.close();
            }
        }
        j = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Loaded %d writes in %dms", new Object[]{Integer.valueOf(arrayList.size()), Long.valueOf(j)}), null, new Object[0]);
        }
        query.close();
        return arrayList;
    }

    public final long zzFt() {
        Cursor rawQuery = this.zzbZD.rawQuery(String.format("SELECT sum(length(%s) + length(%s)) FROM %s", new Object[]{Param.VALUE, "path", "serverCache"}), null);
        try {
            if (rawQuery.moveToFirst()) {
                long j = rawQuery.getLong(0);
                return j;
            }
            throw new IllegalStateException("Couldn't read database result!");
        } finally {
            rawQuery.close();
        }
    }

    public final List<un> zzFu() {
        String[] strArr = new String[]{"id", "path", "queryParams", "lastUse", "complete", "active"};
        long currentTimeMillis = System.currentTimeMillis();
        Cursor query = this.zzbZD.query("trackedQueries", strArr, null, null, null, null, "id");
        ArrayList arrayList = new ArrayList();
        while (query.moveToNext()) {
            try {
                int i;
                boolean z;
                long j = query.getLong(0);
                vt vtVar = new vt(new qr(query.getString(1)), vq.zzF(yr.zzgV(query.getString(2))));
                long j2 = query.getLong(3);
                if (query.getInt(4) != 0) {
                    i = 5;
                    z = true;
                } else {
                    i = 5;
                    z = false;
                }
                arrayList.add(new un(j, vtVar, j2, z, query.getInt(i) != 0));
            } catch (IOException e) {
                throw new RuntimeException(e);
            } catch (Throwable th) {
                Throwable th2 = th;
                query.close();
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Loaded %d tracked queries in %dms", new Object[]{Integer.valueOf(arrayList.size()), Long.valueOf(currentTimeMillis2)}), null, new Object[0]);
        }
        query.close();
        return arrayList;
    }

    public final void zzFv() {
        zzFw();
        long currentTimeMillis = System.currentTimeMillis();
        int delete = this.zzbZD.delete("writes", null, null);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Deleted %d (all) write(s) in %dms", new Object[]{Integer.valueOf(delete), Long.valueOf(currentTimeMillis2)}), null, new Object[0]);
        }
    }

    public final xm zza(qr qrVar) {
        return zzb(qrVar);
    }

    public final void zza(long j, Set<wp> set) {
        zzFw();
        long currentTimeMillis = System.currentTimeMillis();
        String valueOf = String.valueOf(j);
        this.zzbZD.delete("trackedKeys", "id = ?", new String[]{valueOf});
        for (wp wpVar : set) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Long.valueOf(j));
            contentValues.put("key", wpVar.asString());
            this.zzbZD.insertWithOnConflict("trackedKeys", null, contentValues, 5);
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Set %d tracked query keys for tracked query %d in %dms", new Object[]{Integer.valueOf(set.size()), Long.valueOf(j), Long.valueOf(currentTimeMillis2)}), null, new Object[0]);
        }
    }

    public final void zza(long j, Set<wp> set, Set<wp> set2) {
        zzFw();
        long currentTimeMillis = System.currentTimeMillis();
        String str = "id = ? AND key = ?";
        String valueOf = String.valueOf(j);
        for (wp wpVar : set2) {
            this.zzbZD.delete("trackedKeys", str, new String[]{valueOf, wpVar.asString()});
        }
        for (wp wpVar2 : set) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Long.valueOf(j));
            contentValues.put("key", wpVar2.asString());
            this.zzbZD.insertWithOnConflict("trackedKeys", null, contentValues, 5);
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Updated tracked query keys (%d added, %d removed) for tracked query id %d in %dms", new Object[]{Integer.valueOf(set.size()), Integer.valueOf(set2.size()), Long.valueOf(j), Long.valueOf(currentTimeMillis2)}), null, new Object[0]);
        }
    }

    public final void zza(qr qrVar, pz pzVar) {
        zzFw();
        long currentTimeMillis = System.currentTimeMillis();
        Iterator it = pzVar.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            i += zza("serverCache", qrVar.zzh((qr) entry.getKey()));
            i2 += zzc(qrVar.zzh((qr) entry.getKey()), (xm) entry.getValue());
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Persisted a total of %d rows and deleted %d rows for a merge at %s in %dms", new Object[]{Integer.valueOf(i2), Integer.valueOf(i), qrVar.toString(), Long.valueOf(currentTimeMillis2)}), null, new Object[0]);
        }
    }

    public final void zza(qr qrVar, pz pzVar, long j) {
        zzFw();
        long currentTimeMillis = System.currentTimeMillis();
        qr qrVar2 = qrVar;
        long j2 = j;
        zza(qrVar2, j2, "m", zzW(pzVar.zzaD(true)));
        j = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Persisted user merge in %dms", new Object[]{Long.valueOf(j)}), null, new Object[0]);
        }
    }

    public final void zza(qr qrVar, uj ujVar) {
        qr qrVar2 = qrVar;
        uj ujVar2 = ujVar;
        if (ujVar.zzHN()) {
            int i;
            int i2;
            zzFw();
            long currentTimeMillis = System.currentTimeMillis();
            Cursor zza = zza(qrVar2, new String[]{"rowid", "path"});
            uv uvVar = new uv(null);
            uv uvVar2 = new uv(null);
            while (zza.moveToNext()) {
                wl wlVar;
                String valueOf;
                StringBuilder stringBuilder;
                long j = zza.getLong(0);
                qr qrVar3 = new qr(zza.getString(1));
                String valueOf2;
                if (qrVar2.zzi(qrVar3)) {
                    qr zza2 = qr.zza(qrVar2, qrVar3);
                    if (ujVar2.zzv(zza2)) {
                        uvVar = uvVar.zzb(zza2, Long.valueOf(j));
                    } else if (ujVar2.zzw(zza2)) {
                        uvVar2 = uvVar2.zzb(zza2, Long.valueOf(j));
                    } else {
                        wlVar = this.zzbZE;
                        valueOf = String.valueOf(qrVar);
                        valueOf2 = String.valueOf(qrVar3);
                        stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 88) + String.valueOf(valueOf2).length());
                        stringBuilder.append("We are pruning at ");
                        stringBuilder.append(valueOf);
                        stringBuilder.append(" and have data at ");
                        stringBuilder.append(valueOf2);
                        valueOf = " that isn't marked for pruning or keeping. Ignoring.";
                    }
                } else {
                    wlVar = this.zzbZE;
                    valueOf = String.valueOf(qrVar);
                    valueOf2 = String.valueOf(qrVar3);
                    stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 67) + String.valueOf(valueOf2).length());
                    stringBuilder.append("We are pruning at ");
                    stringBuilder.append(valueOf);
                    stringBuilder.append(" but we have data stored higher up at ");
                    stringBuilder.append(valueOf2);
                    valueOf = ". Ignoring.";
                }
                stringBuilder.append(valueOf);
                wlVar.zze(stringBuilder.toString(), null);
            }
            if (uvVar.isEmpty()) {
                i = 0;
                i2 = 0;
            } else {
                ArrayList arrayList = new ArrayList();
                zza(qrVar2, qr.zzGZ(), uvVar, uvVar2, ujVar2, arrayList);
                Collection values = uvVar.values();
                String valueOf3 = String.valueOf(zzj(values));
                StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf3).length() + 11);
                stringBuilder2.append("rowid IN (");
                stringBuilder2.append(valueOf3);
                stringBuilder2.append(")");
                this.zzbZD.delete("serverCache", stringBuilder2.toString(), null);
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList2.get(i3);
                    i3++;
                    za zaVar = (za) obj;
                    zzc(qrVar2.zzh((qr) zaVar.getFirst()), (xm) zaVar.zzJG());
                }
                i = values.size();
                i2 = arrayList.size();
            }
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (this.zzbZE.zzIH()) {
                this.zzbZE.zzb(String.format("Pruned %d rows with %d nodes resaved in %dms", new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Long.valueOf(currentTimeMillis2)}), null, new Object[0]);
            }
        }
    }

    public final void zza(qr qrVar, xm xmVar) {
        zzFw();
        zza(qrVar, xmVar, false);
    }

    public final void zza(qr qrVar, xm xmVar, long j) {
        zzFw();
        long currentTimeMillis = System.currentTimeMillis();
        qr qrVar2 = qrVar;
        long j2 = j;
        zza(qrVar2, j2, "o", zzW(xmVar.getValue(true)));
        j = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Persisted user overwrite in %dms", new Object[]{Long.valueOf(j)}), null, new Object[0]);
        }
    }

    public final void zza(un unVar) {
        zzFw();
        long currentTimeMillis = System.currentTimeMillis();
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Long.valueOf(unVar.id));
        contentValues.put("path", zzc(unVar.zzcgi.zzFq()));
        contentValues.put("queryParams", unVar.zzcgi.zzIu().zzIr());
        contentValues.put("lastUse", Long.valueOf(unVar.zzcgj));
        contentValues.put("complete", Boolean.valueOf(unVar.complete));
        contentValues.put("active", Boolean.valueOf(unVar.zzbpf));
        this.zzbZD.insertWithOnConflict("trackedQueries", null, contentValues, 5);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Saved new tracked query in %dms", new Object[]{Long.valueOf(currentTimeMillis2)}), null, new Object[0]);
        }
    }

    public final void zzal(long j) {
        zzFw();
        long currentTimeMillis = System.currentTimeMillis();
        int delete = this.zzbZD.delete("writes", "id = ?", new String[]{String.valueOf(j)});
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Deleted %d write(s) with writeId %d in %dms", new Object[]{Integer.valueOf(delete), Long.valueOf(j), Long.valueOf(currentTimeMillis2)}), null, new Object[0]);
        }
    }

    public final void zzam(long j) {
        zzFw();
        String valueOf = String.valueOf(j);
        this.zzbZD.delete("trackedQueries", "id = ?", new String[]{valueOf});
        this.zzbZD.delete("trackedKeys", "id = ?", new String[]{valueOf});
    }

    public final void zzan(long j) {
        zzFw();
        long currentTimeMillis = System.currentTimeMillis();
        ContentValues contentValues = new ContentValues();
        contentValues.put("active", Boolean.valueOf(false));
        contentValues.put("lastUse", Long.valueOf(j));
        this.zzbZD.updateWithOnConflict("trackedQueries", contentValues, "active = 1", new String[0], 5);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Reset active tracked queries in %dms", new Object[]{Long.valueOf(currentTimeMillis2)}), null, new Object[0]);
        }
    }

    public final Set<wp> zzao(long j) {
        return zze(Collections.singleton(Long.valueOf(j)));
    }

    public final void zzb(qr qrVar, xm xmVar) {
        zzFw();
        zza(qrVar, xmVar, true);
    }

    public final Set<wp> zze(Set<Long> set) {
        String[] strArr = new String[]{"key"};
        long currentTimeMillis = System.currentTimeMillis();
        String valueOf = String.valueOf("id IN (");
        String valueOf2 = String.valueOf(zzj(set));
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(valueOf2).length());
        stringBuilder.append(valueOf);
        stringBuilder.append(valueOf2);
        stringBuilder.append(")");
        Cursor query = this.zzbZD.query(true, "trackedKeys", strArr, stringBuilder.toString(), null, null, null, null, null);
        HashSet hashSet = new HashSet();
        while (query.moveToNext()) {
            try {
                hashSet.add(wp.zzgT(query.getString(0)));
            } catch (Throwable th) {
                query.close();
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (this.zzbZE.zzIH()) {
            this.zzbZE.zzb(String.format("Loaded %d tracked queries keys for tracked queries %s in %dms", new Object[]{Integer.valueOf(hashSet.size()), set.toString(), Long.valueOf(currentTimeMillis2)}), null, new Object[0]);
        }
        query.close();
        return hashSet;
    }
}
