.class public final Lcom/google/android/gms/internal/do;
.super Ljava/lang/Object;


# instance fields
.field private final mValue:Ljava/lang/Object;

.field private final zzbLh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbLj:Ljava/lang/Integer;

.field private zzbLk:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/do;->zzbLh:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/do;->zzbLk:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/do;->zzbLj:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/android/gms/internal/do;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zzDj()Lcom/google/android/gms/internal/dm;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->zzbLj:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->mValue:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/dm;

    iget-object v2, p0, Lcom/google/android/gms/internal/do;->zzbLj:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/internal/do;->mValue:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/do;->zzbLh:Ljava/util/List;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/do;->zzbLk:Z

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/dm;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/util/List;ZLcom/google/android/gms/internal/dn;)V

    return-object v0
.end method

.method public final zzau(Z)Lcom/google/android/gms/internal/do;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/do;->zzbLk:Z

    return-object p0
.end method

.method public final zzbF(I)Lcom/google/android/gms/internal/do;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/do;->zzbLh:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
