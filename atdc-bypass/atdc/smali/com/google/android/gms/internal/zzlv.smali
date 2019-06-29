.class public final Lcom/google/android/gms/internal/zzlv;
.super Lcom/google/android/gms/internal/zziv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zziv;)V
    .locals 11

    iget-object v1, p1, Lcom/google/android/gms/internal/zziv;->zzAs:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/gms/internal/zziv;->height:I

    iget v3, p1, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zziv;->zzAt:Z

    iget v5, p1, Lcom/google/android/gms/internal/zziv;->width:I

    iget v6, p1, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    iget-object v7, p1, Lcom/google/android/gms/internal/zziv;->zzAu:[Lcom/google/android/gms/internal/zziv;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/zziv;->zzAv:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/zziv;->zzAw:Z

    iget-boolean v10, p1, Lcom/google/android/gms/internal/zziv;->zzAx:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zziv;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/zziv;ZZZ)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzAs:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/internal/zzlv;->height:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/zzlv;->width:I

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
