.class final Lcom/google/android/gms/dynamite/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$zzd;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/zzh;)Lcom/google/android/gms/dynamite/zzi;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$zzc;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/dynamite/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzi;-><init>()V

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/zzh;->zzE(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSU:I

    iget v1, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSU:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p3, p1, p2, v3}, Lcom/google/android/gms/dynamite/zzh;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    :goto_0
    iput p1, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSV:I

    goto :goto_1

    :cond_0
    invoke-interface {p3, p1, p2, v2}, Lcom/google/android/gms/dynamite/zzh;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    goto :goto_0

    :goto_1
    iget p1, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSU:I

    if-nez p1, :cond_1

    iget p1, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSV:I

    if-nez p1, :cond_1

    iput v3, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSW:I

    return-object v0

    :cond_1
    iget p1, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSV:I

    iget p2, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSU:I

    if-lt p1, p2, :cond_2

    iput v2, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSW:I

    return-object v0

    :cond_2
    const/4 p1, -0x1

    iput p1, v0, Lcom/google/android/gms/dynamite/zzi;->zzaSW:I

    return-object v0
.end method
