.class final Lcom/google/android/gms/tagmanager/zzej;
.super Lcom/google/android/gms/tagmanager/zzbr;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final zzbFN:Ljava/lang/String;

.field private static final zzbFO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbf;->zzdL:Lcom/google/android/gms/internal/zzbf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbf;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzej;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzbg;->zzip:Lcom/google/android/gms/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzej;->zzbFN:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzbg;->zzin:Lcom/google/android/gms/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzej;->zzbFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzej;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbr;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzAE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzo(Ljava/util/Map;)Lcom/google/android/gms/internal/zzbr;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbr;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzej;->zzbFN:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbr;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzej;->zzbFO:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbr;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgk;->zzCh()Lcom/google/android/gms/internal/zzbr;

    move-result-object v1

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgk;->zzCh()Lcom/google/android/gms/internal/zzbr;

    move-result-object v1

    if-eq p1, v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgk;->zzc(Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/tagmanager/zzgj;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgk;->zzc(Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/tagmanager/zzgj;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgk;->zzCf()Lcom/google/android/gms/tagmanager/zzgj;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgk;->zzCf()Lcom/google/android/gms/tagmanager/zzgj;

    move-result-object v1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzgj;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzgj;->doubleValue()D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-double/2addr v2, v0

    mul-double v4, v4, v2

    add-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgk;->zzI(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbr;

    move-result-object p1

    return-object p1
.end method
