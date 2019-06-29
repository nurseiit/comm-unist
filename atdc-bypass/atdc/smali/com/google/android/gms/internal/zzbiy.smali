.class public final Lcom/google/android/gms/internal/zzbiy;
.super Lcom/google/android/gms/awareness/fence/AwarenessFence;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbiy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaKZ:Lcom/google/android/gms/internal/acn;

.field private zzaLa:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbiz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbiz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbiy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/acn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/acn;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbiy;->zzaKZ:Lcom/google/android/gms/internal/acn;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbiy;->zzaLa:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbiy;->zzsA()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaKZ:Lcom/google/android/gms/internal/acn;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbiy;->zzaLa:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbiy;->zzsA()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbin;)Lcom/google/android/gms/internal/zzbiy;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbiy;->zzaK(I)Lcom/google/android/gms/internal/acn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbin;->zzsB()Lcom/google/android/gms/internal/ach;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/acn;->zzcqR:Lcom/google/android/gms/internal/ach;

    new-instance p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbiy;-><init>(Lcom/google/android/gms/internal/acn;)V

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbio;)Lcom/google/android/gms/internal/zzbiy;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbiy;->zzaK(I)Lcom/google/android/gms/internal/acn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbio;->zzsE()Lcom/google/android/gms/internal/aci;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/acn;->zzcqV:Lcom/google/android/gms/internal/aci;

    new-instance p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbiy;-><init>(Lcom/google/android/gms/internal/acn;)V

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbis;)Lcom/google/android/gms/internal/zzbiy;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbiy;->zzaK(I)Lcom/google/android/gms/internal/acn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbis;->zzsF()Lcom/google/android/gms/internal/acj;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/acn;->zzcqW:Lcom/google/android/gms/internal/acj;

    new-instance p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbiy;-><init>(Lcom/google/android/gms/internal/acn;)V

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbiy;)Lcom/google/android/gms/internal/zzbiy;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbiy;->zzaK(I)Lcom/google/android/gms/internal/acn;

    move-result-object p0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbiy;->zzg(Ljava/util/Collection;)[Lcom/google/android/gms/internal/acn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/acn;->zzcqN:[Lcom/google/android/gms/internal/acn;

    new-instance v0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbiy;-><init>(Lcom/google/android/gms/internal/acn;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbjo;)Lcom/google/android/gms/internal/zzbiy;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbiy;->zzaK(I)Lcom/google/android/gms/internal/acn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjo;->zzsG()Lcom/google/android/gms/internal/acs;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/acn;->zzcqP:Lcom/google/android/gms/internal/acs;

    new-instance p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbiy;-><init>(Lcom/google/android/gms/internal/acn;)V

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbjq;)Lcom/google/android/gms/internal/zzbiy;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbiy;->zzaK(I)Lcom/google/android/gms/internal/acn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjq;->zzsH()Lcom/google/android/gms/internal/adb;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/acn;->zzcre:Lcom/google/android/gms/internal/adb;

    new-instance p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbiy;-><init>(Lcom/google/android/gms/internal/acn;)V

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbjr;)Lcom/google/android/gms/internal/zzbiy;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjr;->zzsI()Lcom/google/android/gms/internal/add;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/add;->zzcrI:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbiy;->zzaK(I)Lcom/google/android/gms/internal/acn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjr;->zzsI()Lcom/google/android/gms/internal/add;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/acn;->zzcrf:Lcom/google/android/gms/internal/add;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbiy;->zzaK(I)Lcom/google/android/gms/internal/acn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjr;->zzsI()Lcom/google/android/gms/internal/add;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/acn;->zzcqO:Lcom/google/android/gms/internal/add;

    :goto_0
    new-instance p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbiy;-><init>(Lcom/google/android/gms/internal/acn;)V

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbjs;)Lcom/google/android/gms/internal/zzbiy;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbiy;->zzaK(I)Lcom/google/android/gms/internal/acn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbjs;->zzsJ()Lcom/google/android/gms/internal/ade;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/acn;->zzcra:Lcom/google/android/gms/internal/ade;

    new-instance p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbiy;-><init>(Lcom/google/android/gms/internal/acn;)V

    return-object p0
.end method

.method private static zzaK(I)Lcom/google/android/gms/internal/acn;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/acn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/acn;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/acn;->type:I

    return-object v0
.end method

.method public static zze(Ljava/util/Collection;)Lcom/google/android/gms/internal/zzbiy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/zzbiy;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbiy;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbiy;->zzaK(I)Lcom/google/android/gms/internal/acn;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbiy;->zzg(Ljava/util/Collection;)[Lcom/google/android/gms/internal/acn;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/acn;->zzcqN:[Lcom/google/android/gms/internal/acn;

    new-instance p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbiy;-><init>(Lcom/google/android/gms/internal/acn;)V

    return-object p0
.end method

.method public static zzf(Ljava/util/Collection;)Lcom/google/android/gms/internal/zzbiy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/zzbiy;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbiy;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbiy;->zzaK(I)Lcom/google/android/gms/internal/acn;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbiy;->zzg(Ljava/util/Collection;)[Lcom/google/android/gms/internal/acn;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/acn;->zzcqN:[Lcom/google/android/gms/internal/acn;

    new-instance p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbiy;-><init>(Lcom/google/android/gms/internal/acn;)V

    return-object p0
.end method

.method private static zzg(Ljava/util/Collection;)[Lcom/google/android/gms/internal/acn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/zzbiy;",
            ">;)[",
            "Lcom/google/android/gms/internal/acn;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/acn;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbiy;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbiy;->zzsz()V

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbiy;->zzaKZ:Lcom/google/android/gms/internal/acn;

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final zzsA()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaKZ:Lcom/google/android/gms/internal/acn;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaLa:[B

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaKZ:Lcom/google/android/gms/internal/acn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaLa:[B

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaKZ:Lcom/google/android/gms/internal/acn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaLa:[B

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaKZ:Lcom/google/android/gms/internal/acn;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaLa:[B

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzsz()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaKZ:Lcom/google/android/gms/internal/acn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaLa:[B

    new-instance v1, Lcom/google/android/gms/internal/acn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/acn;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adp;->zza(Lcom/google/android/gms/internal/adp;[B)Lcom/google/android/gms/internal/adp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/acn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaKZ:Lcom/google/android/gms/internal/acn;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaLa:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/ado; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ContextFenceStub"

    const-string v2, "Could not deserialize context fence bytes."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzeq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbiy;->zzsA()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbiy;->zzsz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaKZ:Lcom/google/android/gms/internal/acn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaLa:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaLa:[B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbiy;->zzaKZ:Lcom/google/android/gms/internal/acn;

    invoke-static {v0}, Lcom/google/android/gms/internal/adp;->zzc(Lcom/google/android/gms/internal/adp;)[B

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
