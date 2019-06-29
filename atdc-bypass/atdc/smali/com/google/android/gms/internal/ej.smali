.class public final Lcom/google/android/gms/internal/ej;
.super Ljava/lang/Object;


# instance fields
.field private zzbGv:Lcom/google/android/gms/internal/zzbr;

.field private final zzbKZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ej;->zzbKZ:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/eh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ej;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzDy()Lcom/google/android/gms/internal/ei;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ei;

    iget-object v1, p0, Lcom/google/android/gms/internal/ej;->zzbKZ:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/ej;->zzbGv:Lcom/google/android/gms/internal/zzbr;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ei;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzbr;Lcom/google/android/gms/internal/eh;)V

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/internal/ej;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ej;->zzbKZ:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzl(Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/internal/ej;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ej;->zzbGv:Lcom/google/android/gms/internal/zzbr;

    return-object p0
.end method
