.class final Lcom/google/android/gms/tagmanager/zzbp;
.super Lcom/google/android/gms/tagmanager/zzbr;


# static fields
.field private static final ID:Ljava/lang/String;


# instance fields
.field private final zzbDy:Lcom/google/android/gms/tagmanager/zzfc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbf;->zzdD:Lcom/google/android/gms/internal/zzbf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbf;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbp;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzfc;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbp;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbr;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbp;->zzbDy:Lcom/google/android/gms/tagmanager/zzfc;

    return-void
.end method


# virtual methods
.method public final zzAE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzo(Ljava/util/Map;)Lcom/google/android/gms/internal/zzbr;
    .locals 0
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

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzbp;->zzbDy:Lcom/google/android/gms/tagmanager/zzfc;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzfc;->zzBK()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgk;->zzCh()Lcom/google/android/gms/internal/zzbr;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgk;->zzI(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbr;

    move-result-object p1

    return-object p1
.end method
