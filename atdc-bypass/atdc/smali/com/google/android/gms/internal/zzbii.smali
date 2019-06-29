.class public final Lcom/google/android/gms/internal/zzbii;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbii;",
            ">;"
        }
    .end annotation
.end field

.field private static zzaKK:Lcom/google/android/gms/internal/zzer;

.field private static zzaKL:[I


# instance fields
.field private zzaKM:Lcom/google/android/gms/internal/acl;

.field private zzaKN:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbij;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbij;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbii;->zzaKK:Lcom/google/android/gms/internal/zzer;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/zzbii;->zzaKL:[I

    new-instance v0, Lcom/google/android/gms/internal/zzbik;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbik;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbii;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKM:Lcom/google/android/gms/internal/acl;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbii;->zzaKN:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbii;->zzsA()V

    return-void
.end method

.method private final getId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbii;->zzsz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKM:Lcom/google/android/gms/internal/acl;

    iget-object v0, v0, Lcom/google/android/gms/internal/acl;->zzcqD:Ljava/lang/String;

    return-object v0
.end method

.method private final zzsA()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKM:Lcom/google/android/gms/internal/acl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKN:[B

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKM:Lcom/google/android/gms/internal/acl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKN:[B

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKM:Lcom/google/android/gms/internal/acl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKN:[B

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKM:Lcom/google/android/gms/internal/acl;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKN:[B

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKM:Lcom/google/android/gms/internal/acl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKN:[B

    new-instance v1, Lcom/google/android/gms/internal/acl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/acl;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adp;->zza(Lcom/google/android/gms/internal/adp;[B)Lcom/google/android/gms/internal/adp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/acl;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKM:Lcom/google/android/gms/internal/acl;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKN:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/ado; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ContextData"

    const-string v2, "Could not deserialize context bytes."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbii;->zzsA()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzbii;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbii;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbii;->zzsz()V

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzbii;->zzsz()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbii;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzbii;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbii;->zzaKM:Lcom/google/android/gms/internal/acl;

    iget-object v1, v1, Lcom/google/android/gms/internal/acl;->zzcqE:Lcom/google/android/gms/internal/aco;

    iget v1, v1, Lcom/google/android/gms/internal/aco;->version:I

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbii;->zzaKM:Lcom/google/android/gms/internal/acl;

    iget-object p1, p1, Lcom/google/android/gms/internal/acl;->zzcqE:Lcom/google/android/gms/internal/aco;

    iget p1, p1, Lcom/google/android/gms/internal/aco;->version:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbii;->zzsz()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbii;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbii;->zzaKM:Lcom/google/android/gms/internal/acl;

    iget-object v1, v1, Lcom/google/android/gms/internal/acl;->zzcqE:Lcom/google/android/gms/internal/aco;

    iget v1, v1, Lcom/google/android/gms/internal/aco;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbii;->zzsz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKM:Lcom/google/android/gms/internal/acl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbii;->zzaKK:Lcom/google/android/gms/internal/zzer;

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/zzer;->zza(Lcom/google/android/gms/internal/zzbii;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKN:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKN:[B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbii;->zzaKM:Lcom/google/android/gms/internal/acl;

    invoke-static {v0}, Lcom/google/android/gms/internal/adp;->zzc(Lcom/google/android/gms/internal/adp;)[B

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
