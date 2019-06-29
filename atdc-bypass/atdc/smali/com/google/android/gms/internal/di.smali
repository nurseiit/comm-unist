.class public final Lcom/google/android/gms/internal/di;
.super Ljava/lang/Object;


# instance fields
.field private final zzbLb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/dd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbLc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/dd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbLd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/dd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbLe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/dd;",
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

    iput-object v0, p0, Lcom/google/android/gms/internal/di;->zzbLb:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/di;->zzbLc:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/di;->zzbLd:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/di;->zzbLe:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzDf()Lcom/google/android/gms/internal/dg;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/dg;

    iget-object v1, p0, Lcom/google/android/gms/internal/di;->zzbLb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/di;->zzbLc:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/di;->zzbLd:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/di;->zzbLe:Ljava/util/List;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dg;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/dh;)V

    return-object v6
.end method

.method public final zzc(Lcom/google/android/gms/internal/dd;)Lcom/google/android/gms/internal/di;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/di;->zzbLb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/dd;)Lcom/google/android/gms/internal/di;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/di;->zzbLc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/dd;)Lcom/google/android/gms/internal/di;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/di;->zzbLd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/dd;)Lcom/google/android/gms/internal/di;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/di;->zzbLe:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
