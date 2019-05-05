.class public final Lcom/google/android/gms/internal/ww;
.super Ljava/lang/Object;


# instance fields
.field private final zzcao:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/qr;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/qr;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of posts need to be n-1 for n hashes in CompoundHash"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ww;->zzcao:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ww;->zzcap:Ljava/util/List;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/wy;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/xm;->zzIQ()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/xh;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/wy;->zza(Lcom/google/android/gms/internal/wy;Lcom/google/android/gms/internal/xh;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t calculate hash on empty node!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/wr;

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Expected children node, but got: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p0, Lcom/google/android/gms/internal/wr;

    new-instance v0, Lcom/google/android/gms/internal/wx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/wx;-><init>(Lcom/google/android/gms/internal/wy;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/wr;->zza(Lcom/google/android/gms/internal/wu;Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/wy;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ww;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/wy;)V

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/ww;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/wz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/wz;-><init>(Lcom/google/android/gms/internal/xm;)V

    invoke-interface {p0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ww;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ww;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/wy;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/wy;-><init>(Lcom/google/android/gms/internal/xa;)V

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ww;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/wy;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/wy;->zza(Lcom/google/android/gms/internal/wy;)V

    new-instance p0, Lcom/google/android/gms/internal/ww;

    invoke-static {v1}, Lcom/google/android/gms/internal/wy;->zzb(Lcom/google/android/gms/internal/wy;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/internal/wy;->zzc(Lcom/google/android/gms/internal/wy;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ww;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final zzFR()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/qr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->zzcao:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzFS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ww;->zzcap:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
