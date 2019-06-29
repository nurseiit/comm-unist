package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.TimeUnit;

public final class mq {
    private static zzbzu<Integer> zzbYA = zzbzu.zzb(0, "crash:frame_depth", 60);
    private static zzbzu<Integer> zzbYB = zzbzu.zzb(0, "crash:receiver_delay", 100);
    private static zzbzu<Integer> zzbYC = zzbzu.zzb(0, "crash:thread_idle_timeout", 10);
    public static final zzbzu<Boolean> zzbYp = zzbzu.zzb(0, "crash:enabled", Boolean.valueOf(true));
    private static zzbzu<String> zzbYq = new zzbzz(0, "crash:gateway_url", "https://mobilecrashreporting.googleapis.com/v1/crashes:batchCreate?key=");
    private static zzbzu<Integer> zzbYr = zzbzu.zzb(0, "crash:log_buffer_capacity", 100);
    private static zzbzu<Integer> zzbYs = zzbzu.zzb(0, "crash:log_buffer_max_total_size", 32768);
    private static zzbzu<Integer> zzbYt = zzbzu.zzb(0, "crash:crash_backlog_capacity", 5);
    private static zzbzu<Long> zzbYu = zzbzu.zzb(0, "crash:crash_backlog_max_age", 604800000);
    private static zzbzu<Long> zzbYv = zzbzu.zzb(0, "crash:starting_backoff", TimeUnit.SECONDS.toMillis(1));
    private static zzbzu<Long> zzbYw = zzbzu.zzb(0, "crash:backoff_limit", TimeUnit.MINUTES.toMillis(60));
    private static zzbzu<Integer> zzbYx = zzbzu.zzb(0, "crash:retry_num_attempts", 12);
    private static zzbzu<Integer> zzbYy = zzbzu.zzb(0, "crash:batch_size", 5);
    private static zzbzu<Long> zzbYz = zzbzu.zzb(0, "crash:batch_throttle", TimeUnit.MINUTES.toMillis(5));

    public static final void initialize(Context context) {
        zzcaf.zzub();
        zzcaf.zzuc().initialize(context);
    }
}
