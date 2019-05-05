package com.google.android.gms.nearby;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.internal.zzckc;
import com.google.android.gms.internal.zzcke;
import com.google.android.gms.internal.zzclm;
import com.google.android.gms.nearby.connection.Connections;
import com.google.android.gms.nearby.messages.Messages;
import com.google.android.gms.nearby.messages.MessagesOptions;
import com.google.android.gms.nearby.messages.internal.zzak;
import com.google.android.gms.nearby.messages.internal.zzaw;
import com.google.android.gms.nearby.messages.zzd;

public final class Nearby {
    public static final Api<NoOptions> CONNECTIONS_API = new Api("Nearby.CONNECTIONS_API", zzclm.zzajS, zzclm.zzajR);
    public static final Connections Connections = new zzclm();
    public static final Api<MessagesOptions> MESSAGES_API = new Api("Nearby.MESSAGES_API", zzak.zzajS, zzak.zzajR);
    public static final Messages Messages = zzak.zzbzi;
    private static zzd zzbwi = new zzaw();
    private static Api<NoOptions> zzbwj = new Api("Nearby.BOOTSTRAP_API", zzcke.zzajS, zzcke.zzajR);
    private static zzckc zzbwk = new zzcke();

    private Nearby() {
    }
}
