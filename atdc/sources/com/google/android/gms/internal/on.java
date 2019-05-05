package com.google.android.gms.internal;

import java.util.List;
import java.util.Map;

public interface on {
    void initialize();

    void interrupt(String str);

    boolean isInterrupted(String str);

    void purgeOutstandingWrites();

    void refreshAuthToken();

    void resume(String str);

    void shutdown();

    void zza(List<String> list, pf pfVar);

    void zza(List<String> list, Object obj, pf pfVar);

    void zza(List<String> list, Object obj, String str, pf pfVar);

    void zza(List<String> list, Map<String, Object> map);

    void zza(List<String> list, Map<String, Object> map, om omVar, Long l, pf pfVar);

    void zza(List<String> list, Map<String, Object> map, pf pfVar);

    void zzb(List<String> list, Object obj, pf pfVar);

    void zzb(List<String> list, Map<String, Object> map, pf pfVar);

    void zzgH(String str);
}
