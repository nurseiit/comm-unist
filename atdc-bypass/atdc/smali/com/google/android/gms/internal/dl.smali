.class public final Lcom/google/android/gms/internal/dl;
.super Ljava/lang/Object;


# instance fields
.field private zzaxs:Ljava/lang/String;

.field private zzbLf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcxn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dl;->zzbLf:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzDh()Lcom/google/android/gms/internal/dj;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/dj;

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->zzaxs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/dl;->zzbLf:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/dj;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/dk;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcxn;)Lcom/google/android/gms/internal/dl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dl;->zzbLf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzfX(Ljava/lang/String;)Lcom/google/android/gms/internal/dl;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dl;->zzaxs:Ljava/lang/String;

    return-object p0
.end method
