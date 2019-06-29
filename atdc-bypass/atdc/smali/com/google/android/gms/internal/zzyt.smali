.class final Lcom/google/android/gms/internal/zzyt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzajl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzajl<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/zznp;",
        ">;",
        "Lcom/google/android/gms/internal/zznn;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzRL:Ljava/lang/String;

.field private synthetic zzRM:Ljava/lang/Integer;

.field private synthetic zzRN:Ljava/lang/Integer;

.field private synthetic zzRO:I

.field private synthetic zzRP:I

.field private synthetic zzRQ:I

.field private synthetic zzRR:I

.field private synthetic zzRS:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyn;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIIIZ)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyt;->zzRL:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyt;->zzRM:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzyt;->zzRN:Ljava/lang/Integer;

    iput p5, p0, Lcom/google/android/gms/internal/zzyt;->zzRO:I

    iput p6, p0, Lcom/google/android/gms/internal/zzyt;->zzRP:I

    iput p7, p0, Lcom/google/android/gms/internal/zzyt;->zzRQ:I

    iput p8, p0, Lcom/google/android/gms/internal/zzyt;->zzRR:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzyt;->zzRS:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzl(Ljava/util/List;)Lcom/google/android/gms/internal/zznn;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zznp;",
            ">;)",
            "Lcom/google/android/gms/internal/zznn;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zznn;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyt;->zzRL:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzyn;->zzk(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzyt;->zzRM:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzyt;->zzRN:Ljava/lang/Integer;

    iget p1, p0, Lcom/google/android/gms/internal/zzyt;->zzRO:I

    if-lez p1, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/zzyt;->zzRO:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v7, p1

    goto :goto_0

    :cond_1
    move-object v7, v0

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/zzyt;->zzRP:I

    iget v2, p0, Lcom/google/android/gms/internal/zzyt;->zzRQ:I

    add-int v8, p1, v2

    iget v9, p0, Lcom/google/android/gms/internal/zzyt;->zzRR:I

    iget-boolean v10, p0, Lcom/google/android/gms/internal/zzyt;->zzRS:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/zznn;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v1, "Could not get attribution icon"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzyt;->zzl(Ljava/util/List;)Lcom/google/android/gms/internal/zznn;

    move-result-object p1

    return-object p1
.end method
