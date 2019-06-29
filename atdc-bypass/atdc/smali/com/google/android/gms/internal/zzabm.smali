.class public final Lcom/google/android/gms/internal/zzabm;
.super Lcom/google/android/gms/internal/zzaan;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field private static zzUx:Lcom/google/android/gms/internal/zzabm;

.field private static final zzuF:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzLG:Lcom/google/android/gms/ads/internal/js/zzl;

.field private final zzUy:Lcom/google/android/gms/internal/zzabl;

.field private final zzUz:Lcom/google/android/gms/internal/zzmb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzabm;->zzuF:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbO()Lcom/google/android/gms/internal/zztt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaje;

    const v2, 0xa827b0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v2, v3}, Lcom/google/android/gms/internal/zzaje;-><init>(IIZ)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zztt;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;)Lcom/google/android/gms/internal/zztu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztu;->zzff()Lcom/google/android/gms/ads/internal/js/zzl;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzabm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;Lcom/google/android/gms/ads/internal/js/zzl;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;Lcom/google/android/gms/ads/internal/js/zzl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaan;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabm;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabm;->zzUy:Lcom/google/android/gms/internal/zzabl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabm;->zzUz:Lcom/google/android/gms/internal/zzmb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzabm;->zzLG:Lcom/google/android/gms/ads/internal/js/zzl;

    return-void
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/js/zzl;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/internal/zzaai;
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    const-string v1, "Starting ad request from service using: AFMA_getAd"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    new-instance v12, Lcom/google/android/gms/internal/zznb;

    sget-object v1, Lcom/google/android/gms/internal/zzmo;->zzCQ:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "load_ad"

    iget-object v3, v11, Lcom/google/android/gms/internal/zzaae;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v3, v3, Lcom/google/android/gms/internal/zziv;->zzAs:Ljava/lang/String;

    invoke-direct {v12, v1, v2, v3}, Lcom/google/android/gms/internal/zznb;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iget v1, v11, Lcom/google/android/gms/internal/zzaae;->versionCode:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    iget-wide v1, v11, Lcom/google/android/gms/internal/zzaae;->zzSP:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v1, v11, Lcom/google/android/gms/internal/zzaae;->zzSP:J

    invoke-virtual {v12, v1, v2}, Lcom/google/android/gms/internal/zznb;->zzc(J)Lcom/google/android/gms/internal/zzmz;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "cts"

    aput-object v3, v2, v14

    invoke-virtual {v12, v1, v2}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v12}, Lcom/google/android/gms/internal/zznb;->zzdS()Lcom/google/android/gms/internal/zzmz;

    move-result-object v15

    iget-object v1, v10, Lcom/google/android/gms/internal/zzabl;->zzUv:Lcom/google/android/gms/internal/zzxd;

    invoke-interface {v1, v9}, Lcom/google/android/gms/internal/zzxd;->zzj(Landroid/content/Context;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v1

    iget-object v2, v10, Lcom/google/android/gms/internal/zzabl;->zzUu:Lcom/google/android/gms/internal/zzacm;

    invoke-interface {v2, v9}, Lcom/google/android/gms/internal/zzacm;->zzo(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/internal/zzabl;->zzUp:Lcom/google/android/gms/internal/zzafa;

    iget-object v4, v11, Lcom/google/android/gms/internal/zzaae;->zzSA:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/zzafa;->zzaD(Ljava/lang/String;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v3

    iget-object v4, v10, Lcom/google/android/gms/internal/zzabl;->zzUw:Lcom/google/android/gms/internal/zzafe;

    invoke-interface {v4, v11}, Lcom/google/android/gms/internal/zzafe;->zze(Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbI()Lcom/google/android/gms/internal/zzacd;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/zzacd;->zzn(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/zzajh;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/google/android/gms/internal/zzajh;-><init>(Ljava/lang/Object;)V

    iget-object v7, v11, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    const-string v13, "_ad"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    iget-boolean v13, v11, Lcom/google/android/gms/internal/zzaae;->zzSV:Z

    if-eqz v13, :cond_2

    if-nez v7, :cond_2

    iget-object v6, v10, Lcom/google/android/gms/internal/zzabl;->zzUs:Lcom/google/android/gms/internal/zztx;

    iget-object v7, v11, Lcom/google/android/gms/internal/zzaae;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/zztx;->zza(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v6

    :cond_2
    new-instance v7, Lcom/google/android/gms/internal/zzajh;

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/zzajh;-><init>(Ljava/lang/Object;)V

    sget-object v13, Lcom/google/android/gms/internal/zzmo;->zzDM:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v7, v10, Lcom/google/android/gms/internal/zzabl;->zzUw:Lcom/google/android/gms/internal/zzafe;

    invoke-interface {v7, v9}, Lcom/google/android/gms/internal/zzafe;->zzz(Landroid/content/Context;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v7

    :cond_3
    iget v13, v11, Lcom/google/android/gms/internal/zzaae;->versionCode:I

    const/4 v14, 0x4

    if-lt v13, v14, :cond_4

    iget-object v13, v11, Lcom/google/android/gms/internal/zzaae;->zzSG:Landroid/os/Bundle;

    if-eqz v13, :cond_4

    iget-object v13, v11, Lcom/google/android/gms/internal/zzaae;->zzSG:Landroid/os/Bundle;

    goto :goto_1

    :cond_4
    move-object v13, v8

    :goto_1
    sget-object v14, Lcom/google/android/gms/internal/zzmo;->zzDg:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v8

    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v14, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v9, v8, v14}, Lcom/google/android/gms/internal/zzagz;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "connectivity"

    invoke-virtual {v9, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v8, "Device is offline."

    invoke-static {v8}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    :cond_5
    iget v8, v11, Lcom/google/android/gms/internal/zzaae;->versionCode:I

    const/4 v14, 0x7

    if-lt v8, v14, :cond_6

    iget-object v8, v11, Lcom/google/android/gms/internal/zzaae;->zzSM:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    new-instance v14, Lcom/google/android/gms/internal/zzabu;

    move-object/from16 v16, v12

    iget-object v12, v11, Lcom/google/android/gms/internal/zzaae;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v14, v8, v12}, Lcom/google/android/gms/internal/zzabu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v11, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    if-eqz v12, :cond_7

    iget-object v12, v11, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v14

    const-string v14, "_ad"

    invoke-virtual {v12, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-static {v9, v11, v12}, Lcom/google/android/gms/internal/zzabt;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaae;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaai;

    move-result-object v1

    return-object v1

    :cond_7
    move-object/from16 v17, v14

    :cond_8
    iget-object v12, v10, Lcom/google/android/gms/internal/zzabl;->zzUq:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v12, v11}, Lcom/google/android/gms/internal/zzmd;->zza(Lcom/google/android/gms/internal/zzaae;)Ljava/util/List;

    move-result-object v12

    sget-object v14, Lcom/google/android/gms/internal/zzmo;->zzGb:Lcom/google/android/gms/internal/zzme;

    move-object/from16 v18, v15

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v19, v8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v9, 0x0

    invoke-static {v1, v9, v14, v15, v8}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    sget-object v8, Lcom/google/android/gms/internal/zzmo;->zzEF:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v9, v14, v15, v8}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzacn;

    sget-object v8, Lcom/google/android/gms/internal/zzmo;->zzFK:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v6, v9, v14, v15, v8}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Location;

    sget-object v8, Lcom/google/android/gms/internal/zzmo;->zzDN:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v7, v9, v14, v15, v8}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-static {v4, v9}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/google/android/gms/internal/zzaji;->zza(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzacb;

    if-nez v3, :cond_9

    const-string v1, "Error fetching device info. This is not recoverable."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    return-object v1

    :cond_9
    new-instance v5, Lcom/google/android/gms/internal/zzabk;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzabk;-><init>()V

    iput-object v11, v5, Lcom/google/android/gms/internal/zzabk;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iput-object v3, v5, Lcom/google/android/gms/internal/zzabk;->zzUk:Lcom/google/android/gms/internal/zzacb;

    iput-object v2, v5, Lcom/google/android/gms/internal/zzabk;->zzUh:Lcom/google/android/gms/internal/zzacn;

    iput-object v6, v5, Lcom/google/android/gms/internal/zzabk;->zzzV:Landroid/location/Location;

    iput-object v1, v5, Lcom/google/android/gms/internal/zzabk;->zzUg:Landroid/os/Bundle;

    iput-object v4, v5, Lcom/google/android/gms/internal/zzabk;->zzSB:Ljava/lang/String;

    iput-object v7, v5, Lcom/google/android/gms/internal/zzabk;->zzqi:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v12, :cond_a

    iget-object v1, v5, Lcom/google/android/gms/internal/zzabk;->zzSN:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_a
    iput-object v12, v5, Lcom/google/android/gms/internal/zzabk;->zzSN:Ljava/util/List;

    iput-object v13, v5, Lcom/google/android/gms/internal/zzabk;->zzSG:Landroid/os/Bundle;

    iput-object v8, v5, Lcom/google/android/gms/internal/zzabk;->zzUi:Ljava/lang/String;

    iget-object v1, v10, Lcom/google/android/gms/internal/zzabl;->zzUo:Lcom/google/android/gms/internal/zzic;

    move-object v12, v9

    move-object/from16 v9, p0

    invoke-interface {v1, v9}, Lcom/google/android/gms/internal/zzic;->zzf(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v5, Lcom/google/android/gms/internal/zzabk;->zzUl:Lorg/json/JSONObject;

    iget-boolean v1, v10, Lcom/google/android/gms/internal/zzabl;->zzUm:Z

    iput-boolean v1, v5, Lcom/google/android/gms/internal/zzabk;->zzUm:Z

    invoke-static {v9, v5}, Lcom/google/android/gms/internal/zzabt;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzabk;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_b

    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    return-object v1

    :cond_b
    iget v2, v11, Lcom/google/android/gms/internal/zzaae;->versionCode:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_c

    :try_start_0
    const-string v2, "request_id"

    move-object/from16 v3, v19

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "arc"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    move-object/from16 v13, v16

    move-object/from16 v14, v18

    invoke-virtual {v13, v14, v2}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zznb;->zzdS()Lcom/google/android/gms/internal/zzmz;

    move-result-object v6

    sget-object v1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v15, Lcom/google/android/gms/internal/zzabn;

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, v17

    move-object v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzabn;-><init>(Lcom/google/android/gms/ads/internal/js/zzl;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmz;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v15, v17

    :try_start_1
    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzabu;->zzgG()Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/zzaca;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_d

    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v2, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzabq;

    invoke-direct {v3, v10, v9, v15, v11}, Lcom/google/android/gms/internal/zzabq;-><init>(Lcom/google/android/gms/internal/zzabl;Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaae;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :cond_d
    :try_start_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzaca;->getErrorCode()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzaca;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v2, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzabq;

    invoke-direct {v3, v10, v9, v15, v11}, Lcom/google/android/gms/internal/zzabq;-><init>(Lcom/google/android/gms/internal/zzabl;Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaae;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :cond_e
    :try_start_4
    invoke-virtual {v13}, Lcom/google/android/gms/internal/zznb;->zzdW()Lcom/google/android/gms/internal/zzmz;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zznb;->zzdW()Lcom/google/android/gms/internal/zzmz;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "rur"

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v13, v1, v3}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    :cond_f
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzaca;->zzgL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzaca;->zzgL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v11, v1}, Lcom/google/android/gms/internal/zzabt;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaae;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaai;

    move-result-object v1

    move-object v12, v1

    :cond_10
    if-nez v12, :cond_11

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzaca;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v11, Lcom/google/android/gms/internal/zzaae;->zzvT:Lcom/google/android/gms/internal/zzaje;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzaca;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object v1, v11

    move-object v2, v9

    move-object v5, v8

    move-object v7, v13

    move-object v8, v10

    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/internal/zzabm;->zza(Lcom/google/android/gms/internal/zzaae;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaca;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzabl;)Lcom/google/android/gms/internal/zzaai;

    move-result-object v12

    :cond_11
    if-nez v12, :cond_12

    new-instance v12, Lcom/google/android/gms/internal/zzaai;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    :cond_12
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "tts"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v13, v14, v1}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zznb;->zzdU()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/google/android/gms/internal/zzaai;->zzTB:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzabq;

    invoke-direct {v2, v10, v9, v15, v11}, Lcom/google/android/gms/internal/zzabq;-><init>(Lcom/google/android/gms/internal/zzabl;Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaae;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v12

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_1
    :try_start_5
    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object v2, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzabq;

    invoke-direct {v3, v10, v9, v15, v11}, Lcom/google/android/gms/internal/zzabq;-><init>(Lcom/google/android/gms/internal/zzabl;Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaae;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :goto_3
    sget-object v2, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzabq;

    invoke-direct {v3, v10, v9, v15, v11}, Lcom/google/android/gms/internal/zzabq;-><init>(Lcom/google/android/gms/internal/zzabl;Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaae;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzaae;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaca;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzabl;)Lcom/google/android/gms/internal/zzaai;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    if-eqz v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/zznb;->zzdS()Lcom/google/android/gms/internal/zzmz;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    :try_start_0
    new-instance v5, Lcom/google/android/gms/internal/zzaby;

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzaca;->zzgI()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/google/android/gms/internal/zzaby;-><init>(Lcom/google/android/gms/internal/zzaae;Ljava/lang/String;)V

    const-string v6, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_1
    invoke-static {v6}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    new-instance v6, Ljava/net/URL;

    move-object/from16 v7, p3

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    move-result-object v12

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual {v12, v13, v14, v9, v11}, Lcom/google/android/gms/internal/zzagz;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzaca;->zzgK()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "x-afma-drt-cookie"

    move-object/from16 v15, p4

    invoke-virtual {v11, v12, v15}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object/from16 v15, p4

    :goto_3
    iget-object v12, v1, Lcom/google/android/gms/internal/zzaae;->zzSW:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string v3, "Sending webview cookie in ad request header."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    const-string v3, "Cookie"

    invoke-virtual {v11, v3, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v3, 0x1

    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzaca;->zzgJ()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v11, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzaca;->zzgJ()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v3, v9

    invoke-virtual {v11, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3, v9}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v3}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_4
    :goto_5
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    const/16 v9, 0xc8

    const/16 v12, 0x12c

    if-lt v1, v9, :cond_6

    if-ge v1, v12, :cond_6

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-static {v9}, Lcom/google/android/gms/internal/zzagz;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v9}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v6, v3, v10, v1}, Lcom/google/android/gms/internal/zzabm;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v5, v6, v3, v10}, Lcom/google/android/gms/internal/zzaby;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "ufe"

    const/4 v6, 0x0

    aput-object v3, v1, v6

    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    :cond_5
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/zzaby;->zze(J)Lcom/google/android/gms/internal/zzaai;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    return-object v1

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v9, 0x0

    :goto_6
    :try_start_9
    invoke-static {v9}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_6
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static {v6, v3, v9, v1}, Lcom/google/android/gms/internal/zzabm;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    if-lt v1, v12, :cond_9

    const/16 v6, 0x190

    if-ge v1, v6, :cond_9

    const-string v1, "Location"

    invoke-virtual {v11, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v1, "No location header to follow redirect."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    return-object v1

    :cond_7
    :try_start_b
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    add-int/2addr v10, v1

    sget-object v1, Lcom/google/android/gms/internal/zzmo;->zzGG:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v10, v1, :cond_8

    const-string v1, "Too many redirects."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    return-object v1

    :cond_8
    :try_start_d
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/zzaby;->zzh(Ljava/util/Map;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    move-object/from16 v1, p0

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v2, 0x2e

    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received error HTTP response code: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_4
    move-exception v0

    move-object v1, v0

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "Error while connecting to ad server: "

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    return-object v1
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;)Lcom/google/android/gms/internal/zzabm;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzabm;->zzuF:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzabm;->zzUx:Lcom/google/android/gms/internal/zzabm;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzmo;->initialize(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/internal/zzabm;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzabm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;)V

    sput-object v1, Lcom/google/android/gms/internal/zzabm;->zzUx:Lcom/google/android/gms/internal/zzabm;

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/zzabm;->zzUx:Lcom/google/android/gms/internal/zzabm;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzz(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Http Response: {\n  URL:\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n  Headers:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "      "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "  Body:"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 p0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const v0, 0x186a0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge p0, p1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit16 v0, p0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    move p0, v0

    goto :goto_2

    :cond_3
    const-string p0, "    null"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    :cond_4
    const/16 p0, 0x22

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "  Response Code:\n    "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaae;Lcom/google/android/gms/internal/zzaap;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabm;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzaae;->zzvT:Lcom/google/android/gms/internal/zzaje;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzafk;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;)V

    new-instance v0, Lcom/google/android/gms/internal/zzabr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzabr;-><init>(Lcom/google/android/gms/internal/zzabm;Lcom/google/android/gms/internal/zzaae;Lcom/google/android/gms/internal/zzaap;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagt;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzajm;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbP()Lcom/google/android/gms/internal/zzaio;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaio;->zzie()Landroid/os/Looper;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbP()Lcom/google/android/gms/internal/zzaio;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaio;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/zzabs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzabs;-><init>(Lcom/google/android/gms/internal/zzabm;Ljava/util/concurrent/Future;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzaas;)V
    .locals 0

    const-string p1, "Nonagon code path entered in octagon"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/internal/zzaai;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabm;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabm;->zzLG:Lcom/google/android/gms/ads/internal/js/zzl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabm;->zzUz:Lcom/google/android/gms/internal/zzmb;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzabm;->zzUy:Lcom/google/android/gms/internal/zzabl;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzabm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/js/zzl;Lcom/google/android/gms/internal/zzmb;Lcom/google/android/gms/internal/zzabl;Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/internal/zzaai;

    move-result-object p1

    return-object p1
.end method
