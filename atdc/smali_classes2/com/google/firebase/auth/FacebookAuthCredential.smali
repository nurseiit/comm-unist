.class public Lcom/google/firebase/auth/FacebookAuthCredential;
.super Lcom/google/firebase/auth/AuthCredential;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/FacebookAuthCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbCx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/zze;

    invoke-direct {v0}, Lcom/google/firebase/auth/zze;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/FacebookAuthCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/firebase/auth/AuthCredential;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/FacebookAuthCredential;->zzbCx:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/firebase/auth/FacebookAuthCredential;)Lcom/google/android/gms/internal/lj;
    .locals 7
    .param p0    # Lcom/google/firebase/auth/FacebookAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/gms/internal/lj;

    iget-object v2, p0, Lcom/google/firebase/auth/FacebookAuthCredential;->zzbCx:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/firebase/auth/FacebookAuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/lj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public getProvider()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook.com"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/firebase/auth/FacebookAuthCredential;->zzbCx:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
