.class public final Lcom/google/android/gms/nearby/messages/internal/zzaf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/messages/internal/zzaf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaku:I

.field private zzbzd:Lcom/google/android/gms/nearby/messages/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/Message;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzaku:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/nearby/messages/Message;

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzbzd:Lcom/google/android/gms/nearby/messages/Message;

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/nearby/messages/internal/zzaf;
    .locals 2

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzaf;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/nearby/messages/internal/zzaf;-><init>(ILcom/google/android/gms/nearby/messages/Message;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/nearby/messages/internal/zzaf;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzaf;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzbzd:Lcom/google/android/gms/nearby/messages/Message;

    iget-object p1, p1, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzbzd:Lcom/google/android/gms/nearby/messages/Message;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzbzd:Lcom/google/android/gms/nearby/messages/Message;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzbzd:Lcom/google/android/gms/nearby/messages/Message;

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/Message;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "MessageWrapper{message="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzbzd:Lcom/google/android/gms/nearby/messages/Message;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzaf;->zzaku:I

    const/16 v1, 0x3e8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
