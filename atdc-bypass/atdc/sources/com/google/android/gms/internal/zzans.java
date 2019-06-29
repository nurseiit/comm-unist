package com.google.android.gms.internal;

import com.google.firebase.appindexing.Indexable;

public final class zzans {
    public static zzant<String> zzahA;
    private static zzant<Integer> zzahB = zzant.zza("analytics.max_hits_per_request.k", 20, 20);
    public static zzant<Integer> zzahC = zzant.zza("analytics.max_hit_length.k", 8192, 8192);
    public static zzant<Integer> zzahD = zzant.zza("analytics.max_post_length.k", 8192, 8192);
    public static zzant<Integer> zzahE = zzant.zza("analytics.max_batch_post_length", 8192, 8192);
    public static zzant<String> zzahF;
    public static zzant<Integer> zzahG = zzant.zza("analytics.batch_retry_interval.seconds.k", 3600, 3600);
    private static zzant<Long> zzahH = zzant.zza("analytics.service_monitor_interval", 86400000, 86400000);
    public static zzant<Integer> zzahI = zzant.zza("analytics.http_connection.connect_timeout_millis", 60000, 60000);
    public static zzant<Integer> zzahJ = zzant.zza("analytics.http_connection.read_timeout_millis", 61000, 61000);
    public static zzant<Long> zzahK = zzant.zza("analytics.campaigns.time_limit", 86400000, 86400000);
    private static zzant<String> zzahL;
    private static zzant<Integer> zzahM = zzant.zza("analytics.first_party_experiment_variant", 0, 0);
    public static zzant<Boolean> zzahN = zzant.zza("analytics.test.disable_receiver", false, false);
    public static zzant<Long> zzahO = zzant.zza("analytics.service_client.idle_disconnect_millis", 10000, 10000);
    public static zzant<Long> zzahP = zzant.zza("analytics.service_client.connect_timeout_millis", 5000, 5000);
    private static zzant<Long> zzahQ = zzant.zza("analytics.service_client.second_connect_delay_millis", 5000, 5000);
    private static zzant<Long> zzahR = zzant.zza("analytics.service_client.unexpected_reconnect_millis", 60000, 60000);
    public static zzant<Long> zzahS = zzant.zza("analytics.service_client.reconnect_throttle_millis", 1800000, 1800000);
    public static zzant<Long> zzahT = zzant.zza("analytics.monitoring.sample_period_millis", 86400000, 86400000);
    public static zzant<Long> zzahU = zzant.zza("analytics.initialization_warning_threshold", 5000, 5000);
    private static zzant<Boolean> zzahe = zzant.zza("analytics.service_enabled", false, false);
    public static zzant<Boolean> zzahf = zzant.zza("analytics.service_client_enabled", true, true);
    public static zzant<String> zzahg = zzant.zzc("analytics.log_tag", "GAv4", "GAv4-SVC");
    private static zzant<Long> zzahh = zzant.zza("analytics.max_tokens", 60, 60);
    private static zzant<Float> zzahi = zzant.zza("analytics.tokens_per_sec", 0.5f, 0.5f);
    public static zzant<Integer> zzahj = zzant.zza("analytics.max_stored_hits", 2000, (int) Indexable.MAX_STRING_LENGTH);
    private static zzant<Integer> zzahk = zzant.zza("analytics.max_stored_hits_per_app", 2000, 2000);
    public static zzant<Integer> zzahl = zzant.zza("analytics.max_stored_properties_per_app", 100, 100);
    public static zzant<Long> zzahm = zzant.zza("analytics.local_dispatch_millis", 1800000, 120000);
    public static zzant<Long> zzahn = zzant.zza("analytics.initial_local_dispatch_millis", 5000, 5000);
    private static zzant<Long> zzaho = zzant.zza("analytics.min_local_dispatch_millis", 120000, 120000);
    private static zzant<Long> zzahp = zzant.zza("analytics.max_local_dispatch_millis", 7200000, 7200000);
    public static zzant<Long> zzahq = zzant.zza("analytics.dispatch_alarm_millis", 7200000, 7200000);
    public static zzant<Long> zzahr = zzant.zza("analytics.max_dispatch_alarm_millis", 32400000, 32400000);
    public static zzant<Integer> zzahs = zzant.zza("analytics.max_hits_per_dispatch", 20, 20);
    public static zzant<Integer> zzaht = zzant.zza("analytics.max_hits_per_batch", 20, 20);
    public static zzant<String> zzahu;
    public static zzant<String> zzahv;
    public static zzant<String> zzahw;
    public static zzant<String> zzahx;
    public static zzant<Integer> zzahy = zzant.zza("analytics.max_get_length", 2036, 2036);
    public static zzant<String> zzahz = zzant.zzc("analytics.batching_strategy.k", zzana.BATCH_BY_COUNT.name(), zzana.BATCH_BY_COUNT.name());

    static {
        String str = "http://www.google-analytics.com";
        zzahu = zzant.zzc("analytics.insecure_host", str, str);
        str = "https://ssl.google-analytics.com";
        zzahv = zzant.zzc("analytics.secure_host", str, str);
        str = "/collect";
        zzahw = zzant.zzc("analytics.simple_endpoint", str, str);
        str = "/batch";
        zzahx = zzant.zzc("analytics.batching_endpoint", str, str);
        str = zzang.GZIP.name();
        zzahA = zzant.zzc("analytics.compression_strategy.k", str, str);
        String str2 = "404,502";
        zzahF = zzant.zzc("analytics.fallback_responses.k", str2, str2);
        String str3 = "";
        zzahL = zzant.zzc("analytics.first_party_experiment_id", str3, str3);
    }
}
