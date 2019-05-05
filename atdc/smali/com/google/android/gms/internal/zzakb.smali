.class public Lcom/google/android/gms/internal/zzakb;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field private static final zzabn:[Ljava/lang/String;

.field private static final zzabo:[Ljava/lang/String;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzIT:Lcom/google/android/gms/internal/zzqk;

.field private zzJC:Lcom/google/android/gms/internal/zzrm;

.field private zzJE:Lcom/google/android/gms/ads/internal/zzw;

.field private zzJF:Lcom/google/android/gms/internal/zzwk;

.field protected zzJH:Lcom/google/android/gms/internal/zzaka;

.field private zzNH:Lcom/google/android/gms/internal/zzwv;

.field private final zzabA:Lcom/google/android/gms/internal/zzwt;

.field private zzabB:Lcom/google/android/gms/internal/zzakj;

.field private zzabC:Z

.field private zzabD:Z

.field private zzabE:Z

.field private zzabF:I

.field private zzabG:Landroid/view/View$OnAttachStateChangeListener;

.field private final zzabp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzrd;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

.field private zzabr:Lcom/google/android/gms/internal/zzakf;

.field private zzabs:Lcom/google/android/gms/internal/zzakg;

.field private zzabt:Lcom/google/android/gms/internal/zzakh;

.field private zzabu:Z

.field private zzabv:Z

.field private zzabw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzabx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private zzaby:Z

.field private zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

.field protected zztr:Lcom/google/android/gms/internal/zzaet;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzwI:Z

.field private zzzL:Lcom/google/android/gms/internal/zzim;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HOST_LOOKUP"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "UNSUPPORTED_AUTH_SCHEME"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "AUTHENTICATION"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "PROXY_AUTHENTICATION"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "CONNECT"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "IO"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "TIMEOUT"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "REDIRECT_LOOP"

    const/16 v9, 0x8

    aput-object v1, v0, v9

    const-string v1, "UNSUPPORTED_SCHEME"

    const/16 v9, 0x9

    aput-object v1, v0, v9

    const-string v1, "FAILED_SSL_HANDSHAKE"

    const/16 v9, 0xa

    aput-object v1, v0, v9

    const-string v1, "BAD_URL"

    const/16 v9, 0xb

    aput-object v1, v0, v9

    const-string v1, "FILE"

    const/16 v9, 0xc

    aput-object v1, v0, v9

    const-string v1, "FILE_NOT_FOUND"

    const/16 v9, 0xd

    aput-object v1, v0, v9

    const-string v1, "TOO_MANY_REQUESTS"

    const/16 v9, 0xe

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/android/gms/internal/zzakb;->zzabn:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "NOT_YET_VALID"

    aput-object v1, v0, v2

    const-string v1, "EXPIRED"

    aput-object v1, v0, v3

    const-string v1, "ID_MISMATCH"

    aput-object v1, v0, v4

    const-string v1, "UNTRUSTED"

    aput-object v1, v0, v5

    const-string v1, "DATE_INVALID"

    aput-object v1, v0, v6

    const-string v1, "INVALID"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/zzakb;->zzabo:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzaka;Z)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzwt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->zzit()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzlz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzlz;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzwt;-><init>(Lcom/google/android/gms/internal/zzaka;Landroid/content/Context;Lcom/google/android/gms/internal/zzlz;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzakb;-><init>(Lcom/google/android/gms/internal/zzaka;ZLcom/google/android/gms/internal/zzwt;Lcom/google/android/gms/internal/zzwk;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzaka;ZLcom/google/android/gms/internal/zzwt;Lcom/google/android/gms/internal/zzwk;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzakb;->zzabp:Ljava/util/HashMap;

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzakb;->zzabu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzakb;->zzwI:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzakb;->zzabA:Lcom/google/android/gms/internal/zzwt;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzJF:Lcom/google/android/gms/internal/zzwk;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzakb;)Lcom/google/android/gms/internal/zzakh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzakb;->zzabt:Lcom/google/android/gms/internal/zzakh;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzakb;Lcom/google/android/gms/internal/zzakh;)Lcom/google/android/gms/internal/zzakh;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzabt:Lcom/google/android/gms/internal/zzakh;

    return-object p1
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/zzaet;I)V
    .locals 2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzaet;->zzgZ()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzaet;->zzk(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzaet;->zzgZ()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzakc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzakc;-><init>(Lcom/google/android/gms/internal/zzakb;Landroid/view/View;Lcom/google/android/gms/internal/zzaet;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJF:Lcom/google/android/gms/internal/zzwk;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJF:Lcom/google/android/gms/internal/zzwk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzwk;->zzfC()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbx()Lcom/google/android/gms/ads/internal/overlay/zzu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v2, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzu;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zztr:Lcom/google/android/gms/internal/zzaet;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPd:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPd:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->url:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zztr:Lcom/google/android/gms/internal/zzaet;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzaet;->zzaA(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzakb;Landroid/view/View;Lcom/google/android/gms/internal/zzaet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzakb;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzaet;I)V

    return-void
.end method

.method private final zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzEw:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "err"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "host"

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    move-result-object v1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzaka;->zziz()Lcom/google/android/gms/internal/zzaje;

    move-result-object p2

    iget-object v3, p2, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    const-string v4, "gmob-apps"

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzagz;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private final zzi(Landroid/net/Uri;)V
    .locals 6

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabp:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagz;->zzg(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzafr;->zzz(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Received GMSG: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "  "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzrd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/internal/zzrd;->zza(Lcom/google/android/gms/internal/zzaka;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "No GMSG handler found for GMSG: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    return-void
.end method

.method private final zziU()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabG:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabG:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final zziZ()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabr:Lcom/google/android/gms/internal/zzakf;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabD:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabF:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabE:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabr:Lcom/google/android/gms/internal/zzakf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzakb;->zzabE:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzakf;->zza(Lcom/google/android/gms/internal/zzaka;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabr:Lcom/google/android/gms/internal/zzakf;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziK()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string p1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "gmsg"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "mobileads.google.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzakb;->zzi(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/zzakb;->zzabC:Z

    if-eqz p2, :cond_0

    const-string p2, "Blank page loaded, 1..."

    invoke-static {p2}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzaka;->zziB()V

    monitor-exit p1

    return-void

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzakb;->zzabD:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzabs:Lcom/google/android/gms/internal/zzakg;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzabs:Lcom/google/android/gms/internal/zzakg;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzakg;->zzj(Lcom/google/android/gms/internal/zzaka;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzabs:Lcom/google/android/gms/internal/zzakg;

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakb;->zziZ()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-gez p2, :cond_0

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/zzakb;->zzabn:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzakb;->zzabn:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http_err"

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/google/android/gms/internal/zzakb;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzakb;->zzabo:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzakb;->zzabo:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssl_err"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/zzahe;->zza(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzakb;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public final reset()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zztr:Lcom/google/android/gms/internal/zzaet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zztr:Lcom/google/android/gms/internal/zzaet;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaet;->zzhb()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zztr:Lcom/google/android/gms/internal/zzaet;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakb;->zziU()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzakb;->zzabp:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzzL:Lcom/google/android/gms/internal/zzim;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabr:Lcom/google/android/gms/internal/zzakf;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabs:Lcom/google/android/gms/internal/zzakg;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzIT:Lcom/google/android/gms/internal/zzqk;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzakb;->zzabu:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzakb;->zzwI:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzakb;->zzabv:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzakb;->zzaby:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabt:Lcom/google/android/gms/internal/zzakh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakb;->zzJF:Lcom/google/android/gms/internal/zzwk;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakb;->zzJF:Lcom/google/android/gms/internal/zzwk;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzwk;->zzk(Z)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJF:Lcom/google/android/gms/internal/zzwk;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzaez;->zzb(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->zziz()Lcom/google/android/gms/internal/zzaje;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/google/android/gms/internal/zzagz;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "encoding"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzia;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/zzia;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbE()Lcom/google/android/gms/internal/zzhs;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzhs;->zza(Lcom/google/android/gms/internal/zzia;)Lcom/google/android/gms/internal/zzhx;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzhx;->zzcY()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzhx;->zzcZ()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_3
    return-object p1

    :catch_0
    move-exception p2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    const-string v1, "AdWebViewClient.shouldInterceptRequest"

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/zzafk;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0xde

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11

    const-string v0, "AdWebView shouldOverrideUrlLoading: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzakb;->zzi(Landroid/net/Uri;)V

    return v2

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabu:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzzL:Lcom/google/android/gms/internal/zzim;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzDo:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzzL:Lcom/google/android/gms/internal/zzim;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzim;->onAdClicked()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zztr:Lcom/google/android/gms/internal/zzaet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zztr:Lcom/google/android/gms/internal/zzaet;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzaet;->zzaA(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzzL:Lcom/google/android/gms/internal/zzim;

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_b

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->zziy()Lcom/google/android/gms/internal/zzcu;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcu;->zzc(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzcv; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_4

    :catch_0
    const-string p1, "Unable to append parameter to URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzJE:Lcom/google/android/gms/ads/internal/zzw;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzJE:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzw;->zzaR()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzJE:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzw;->zzt(Ljava/lang/String;)V

    return v2

    :cond_a
    :goto_5
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    return v2

    :cond_b
    const-string p1, "AdWebView unable to handle URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_c
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_6
    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return v2
.end method

.method public final zzE(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzakb;->zzabu:Z

    return-void
.end method

.method public final zza(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabA:Lcom/google/android/gms/internal/zzwt;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzwt;->zzc(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJF:Lcom/google/android/gms/internal/zzwk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJF:Lcom/google/android/gms/internal/zzwk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzwk;->zza(IIZ)V

    :cond_0
    return-void
.end method

.method public final zza(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabv:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->zziJ()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzabw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakb;->zzabx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziA()Z

    move-result v0

    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->zzam()Lcom/google/android/gms/internal/zziv;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zziv;->zzAt:Z

    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzakb;->zzzL:Lcom/google/android/gms/internal/zzim;

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    move-object v4, v0

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/zzakb;->zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziz()Lcom/google/android/gms/internal/zzaje;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/ads/internal/overlay/zzag;Lcom/google/android/gms/internal/zzaje;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzakf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzabr:Lcom/google/android/gms/internal/zzakf;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzakg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzabs:Lcom/google/android/gms/internal/zzakg;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzakh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzabt:Lcom/google/android/gms/internal/zzakh;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzakj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzabB:Lcom/google/android/gms/internal/zzakj;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/internal/zzqk;Lcom/google/android/gms/ads/internal/overlay/zzag;ZLcom/google/android/gms/internal/zzrm;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwv;Lcom/google/android/gms/internal/zzaet;)V
    .locals 2
    .param p6    # Lcom/google/android/gms/internal/zzrm;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/gms/internal/zzaet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p7, :cond_0

    new-instance p7, Lcom/google/android/gms/ads/internal/zzw;

    invoke-direct {p7, p9}, Lcom/google/android/gms/ads/internal/zzw;-><init>(Lcom/google/android/gms/internal/zzaet;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzwk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-direct {v0, v1, p8}, Lcom/google/android/gms/internal/zzwk;-><init>(Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/internal/zzwv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJF:Lcom/google/android/gms/internal/zzwk;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzakb;->zztr:Lcom/google/android/gms/internal/zzaet;

    const-string p9, "/appEvent"

    new-instance v0, Lcom/google/android/gms/internal/zzqj;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzqj;-><init>(Lcom/google/android/gms/internal/zzqk;)V

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/backButton"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJe:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/refresh"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJf:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/canOpenURLs"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzIV:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/canOpenIntents"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzIW:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/click"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzIX:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/close"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzIY:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/customClose"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzIZ:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/instrument"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJk:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/delayPageLoaded"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJm:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/delayPageClosed"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJn:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/getLocationInfo"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJo:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/httpTrack"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJa:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/log"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJb:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/mraid"

    new-instance v0, Lcom/google/android/gms/internal/zzrp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJF:Lcom/google/android/gms/internal/zzwk;

    invoke-direct {v0, p7, v1}, Lcom/google/android/gms/internal/zzrp;-><init>(Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwk;)V

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/mraidLoaded"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabA:Lcom/google/android/gms/internal/zzwt;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/open"

    new-instance v0, Lcom/google/android/gms/internal/zzrq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJF:Lcom/google/android/gms/internal/zzwk;

    invoke-direct {v0, p7, v1}, Lcom/google/android/gms/internal/zzrq;-><init>(Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwk;)V

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/precache"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJj:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/touch"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJd:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/video"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJg:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p9, "/videoMeta"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJh:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object p9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p9, v0}, Lcom/google/android/gms/internal/zzaew;->zzp(Landroid/content/Context;)Z

    move-result p9

    if-eqz p9, :cond_1

    const-string p9, "/logScionEvent"

    sget-object v0, Lcom/google/android/gms/internal/zzqn;->zzJi:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :cond_1
    if-eqz p6, :cond_2

    const-string p9, "/setInterstitialProperties"

    new-instance v0, Lcom/google/android/gms/internal/zzrl;

    invoke-direct {v0, p6}, Lcom/google/android/gms/internal/zzrl;-><init>(Lcom/google/android/gms/internal/zzrm;)V

    invoke-virtual {p0, p9, v0}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/zzakb;->zzzL:Lcom/google/android/gms/internal/zzim;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakb;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzakb;->zzIT:Lcom/google/android/gms/internal/zzqk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzakb;->zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzakb;->zzJE:Lcom/google/android/gms/ads/internal/zzw;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzakb;->zzNH:Lcom/google/android/gms/internal/zzwv;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzakb;->zzJC:Lcom/google/android/gms/internal/zzrm;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzakb;->zzabu:Z

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabp:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakb;->zzabp:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(ZI)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziA()Z

    move-result v0

    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zzam()Lcom/google/android/gms/internal/zziv;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zziv;->zzAt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzzL:Lcom/google/android/gms/internal/zzim;

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzakb;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzakb;->zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziz()Lcom/google/android/gms/internal/zzaje;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/ads/internal/overlay/zzag;Lcom/google/android/gms/internal/zzaka;ZILcom/google/android/gms/internal/zzaje;)V

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziA()Z

    move-result v0

    new-instance v11, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->zzam()Lcom/google/android/gms/internal/zziv;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zziv;->zzAt:Z

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzakb;->zzzL:Lcom/google/android/gms/internal/zzim;

    :goto_0
    if-eqz v0, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzaki;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzakb;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzaki;-><init>(Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/ads/internal/overlay/zzw;)V

    move-object v3, v0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzakb;->zzIT:Lcom/google/android/gms/internal/zzqk;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzakb;->zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziz()Lcom/google/android/gms/internal/zzaje;

    move-result-object v10

    move-object v1, v11

    move v7, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/internal/zzqk;Lcom/google/android/gms/ads/internal/overlay/zzag;Lcom/google/android/gms/internal/zzaka;ZILjava/lang/String;Lcom/google/android/gms/internal/zzaje;)V

    invoke-direct {p0, v11}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->zziA()Z

    move-result v1

    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzaka;->zzam()Lcom/google/android/gms/internal/zziv;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zziv;->zzAt:Z

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/zzakb;->zzzL:Lcom/google/android/gms/internal/zzim;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzaki;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzakb;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/zzaki;-><init>(Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/ads/internal/overlay/zzw;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/zzakb;->zzIT:Lcom/google/android/gms/internal/zzqk;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzakb;->zzabz:Lcom/google/android/gms/ads/internal/overlay/zzag;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->zziz()Lcom/google/android/gms/internal/zzaje;

    move-result-object v12

    move-object v2, v13

    move v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/internal/zzqk;Lcom/google/android/gms/ads/internal/overlay/zzag;Lcom/google/android/gms/internal/zzaka;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaje;)V

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzb(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJF:Lcom/google/android/gms/internal/zzwk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJF:Lcom/google/android/gms/internal/zzwk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzwk;->zzb(II)V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabp:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzcn()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzakb;->zzwI:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzfL()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabu:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzakb;->zzwI:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    new-instance v1, Lcom/google/android/gms/internal/zzake;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzake;-><init>(Lcom/google/android/gms/internal/zzakb;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagz;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziO()Lcom/google/android/gms/ads/internal/zzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJE:Lcom/google/android/gms/ads/internal/zzw;

    return-object v0
.end method

.method public final zziP()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabv:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziQ()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziR()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziS()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzakb;->zzaby:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziT()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Loading blank page in WebView, 2..."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabC:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    const-string v2, "about:blank"

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzaka;->zzaU(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zziV()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zztr:Lcom/google/android/gms/internal/zzaet;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/zzakb;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzaet;I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakb;->zziU()V

    new-instance v1, Lcom/google/android/gms/internal/zzakd;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzakd;-><init>(Lcom/google/android/gms/internal/zzakb;Lcom/google/android/gms/internal/zzaet;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabG:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakb;->zzabG:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final zziW()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzakb;->zzaby:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabF:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabF:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakb;->zziZ()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zziX()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabF:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabF:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakb;->zziZ()V

    return-void
.end method

.method public final zziY()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabE:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzakb;->zziZ()V

    return-void
.end method

.method public final zzja()Lcom/google/android/gms/internal/zzakj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakb;->zzabB:Lcom/google/android/gms/internal/zzakj;

    return-object v0
.end method
