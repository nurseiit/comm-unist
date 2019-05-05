package com.google.android.gms.drive.widget;

import android.content.Context;
import android.database.CursorIndexOutOfBoundsException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.google.android.gms.common.data.DataBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class DataBufferAdapter<T> extends BaseAdapter {
    private final Context mContext;
    private final LayoutInflater mInflater;
    private final int zzaSm;
    private int zzaSn;
    private final int zzaSo;
    private final List<DataBuffer<T>> zzaSp;
    private boolean zzaSq;

    public DataBufferAdapter(Context context, int i) {
        this(context, i, 0, new ArrayList());
    }

    public DataBufferAdapter(Context context, int i, int i2) {
        this(context, i, i2, new ArrayList());
    }

    public DataBufferAdapter(Context context, int i, int i2, List<DataBuffer<T>> list) {
        this.zzaSq = true;
        this.mContext = context;
        this.zzaSn = i;
        this.zzaSm = i;
        this.zzaSo = i2;
        this.zzaSp = list;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public DataBufferAdapter(Context context, int i, int i2, DataBuffer<T>... dataBufferArr) {
        this(context, i, i2, Arrays.asList(dataBufferArr));
    }

    public DataBufferAdapter(Context context, int i, List<DataBuffer<T>> list) {
        this(context, i, 0, (List) list);
    }

    public DataBufferAdapter(Context context, int i, DataBuffer<T>... dataBufferArr) {
        this(context, i, 0, Arrays.asList(dataBufferArr));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find immediate dominator for block B:13:0x002c in {1, 5, 6, 9, 11, 12, 16} preds:[]
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.computeDominators(BlockProcessor.java:242)
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.visit(BlockProcessor.java:42)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:32)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
        */
    private final android.view.View zza(int r2, android.view.View r3, android.view.ViewGroup r4, int r5) {
        /*
        r1 = this;
        if (r3 != 0) goto L_0x0009;
        r3 = r1.mInflater;
        r0 = 0;
        r3 = r3.inflate(r5, r4, r0);
        r4 = r1.zzaSo;	 Catch:{ ClassCastException -> 0x002d }
        if (r4 != 0) goto L_0x0011;	 Catch:{ ClassCastException -> 0x002d }
        r4 = r3;	 Catch:{ ClassCastException -> 0x002d }
        r4 = (android.widget.TextView) r4;	 Catch:{ ClassCastException -> 0x002d }
        goto L_0x0019;	 Catch:{ ClassCastException -> 0x002d }
        r4 = r1.zzaSo;	 Catch:{ ClassCastException -> 0x002d }
        r4 = r3.findViewById(r4);	 Catch:{ ClassCastException -> 0x002d }
        r4 = (android.widget.TextView) r4;	 Catch:{ ClassCastException -> 0x002d }
        r2 = r1.getItem(r2);
        r5 = r2 instanceof java.lang.CharSequence;
        if (r5 == 0) goto L_0x0027;
        r2 = (java.lang.CharSequence) r2;
        r4.setText(r2);
        return r3;
        r2 = r2.toString();
        goto L_0x0023;
        return r3;
        r2 = move-exception;
        r3 = "DataBufferAdapter";
        r4 = "You must supply a resource ID for a TextView";
        com.google.android.gms.internal.zzbng.zza(r3, r2, r4);
        r3 = new java.lang.IllegalStateException;
        r4 = "DataBufferAdapter requires the resource ID to be a TextView";
        r3.<init>(r4, r2);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.drive.widget.DataBufferAdapter.zza(int, android.view.View, android.view.ViewGroup, int):android.view.View");
    }

    public void append(DataBuffer<T> dataBuffer) {
        this.zzaSp.add(dataBuffer);
        if (this.zzaSq) {
            notifyDataSetChanged();
        }
    }

    public void clear() {
        for (DataBuffer release : this.zzaSp) {
            release.release();
        }
        this.zzaSp.clear();
        if (this.zzaSq) {
            notifyDataSetChanged();
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getCount() {
        int i = 0;
        for (DataBuffer count : this.zzaSp) {
            i += count.getCount();
        }
        return i;
    }

    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return zza(i, view, viewGroup, this.zzaSn);
    }

    public T getItem(int i) throws CursorIndexOutOfBoundsException {
        int i2 = i;
        for (DataBuffer dataBuffer : this.zzaSp) {
            int count = dataBuffer.getCount();
            if (count <= i2) {
                i2 -= count;
            } else {
                try {
                    return dataBuffer.get(i2);
                } catch (CursorIndexOutOfBoundsException unused) {
                    throw new CursorIndexOutOfBoundsException(i, getCount());
                }
            }
        }
        throw new CursorIndexOutOfBoundsException(i, getCount());
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        return zza(i, view, viewGroup, this.zzaSm);
    }

    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.zzaSq = true;
    }

    public void setDropDownViewResource(int i) {
        this.zzaSn = i;
    }

    public void setNotifyOnChange(boolean z) {
        this.zzaSq = z;
    }
}
