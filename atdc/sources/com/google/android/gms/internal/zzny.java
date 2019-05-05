package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import java.lang.ref.WeakReference;
import java.util.Map;

public interface zzny {
    Context getContext();

    View zza(OnClickListener onClickListener, boolean z);

    void zza(View view, zznw zznw);

    void zza(View view, String str, Bundle bundle, Map<String, WeakReference<View>> map, View view2);

    void zza(View view, Map<String, WeakReference<View>> map);

    void zza(View view, Map<String, WeakReference<View>> map, Bundle bundle, View view2);

    void zzb(View view, Map<String, WeakReference<View>> map);

    void zzc(Bundle bundle);

    void zzc(View view, Map<String, WeakReference<View>> map);

    void zzd(MotionEvent motionEvent);

    boolean zzd(Bundle bundle);

    void zze(Bundle bundle);

    boolean zzep();

    void zzet();

    View zzeu();

    void zzev();

    void zzg(View view);
}
