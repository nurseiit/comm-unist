.class public final Lcom/google/android/gms/internal/zzamm;
.super Ljava/lang/Object;


# instance fields
.field private final zzHa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzafd:Ljava/lang/String;

.field private final zzagc:J

.field private final zzagd:Ljava/lang/String;

.field private final zzage:Z

.field private zzagf:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzamm;->zzagc:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzamm;->zzafd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzamm;->zzagd:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzamm;->zzage:Z

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzamm;->zzagf:J

    if-eqz p8, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzamm;->zzHa:Ljava/util/Map;

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public final zzdV()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzHa:Ljava/util/Map;

    return-object v0
.end method

.method public final zzjX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzafd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzkK()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagc:J

    return-wide v0
.end method

.method public final zzkL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzkM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamm;->zzage:Z

    return v0
.end method

.method public final zzkN()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagf:J

    return-wide v0
.end method

.method public final zzm(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzamm;->zzagf:J

    return-void
.end method
