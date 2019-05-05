.class public final Lcom/google/android/gms/drive/zzo;
.super Lcom/google/android/gms/drive/ExecutionOptions$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic build()Lcom/google/android/gms/drive/ExecutionOptions;
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zzo;->zzsS()V

    new-instance v7, Lcom/google/android/gms/drive/zzm;

    iget-object v1, p0, Lcom/google/android/gms/drive/zzo;->zzaMr:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/drive/zzo;->zzaMs:Z

    iget v5, p0, Lcom/google/android/gms/drive/zzo;->zzaMt:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/zzm;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/drive/zzn;)V

    return-object v7
.end method

.method public final synthetic setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final synthetic setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public final synthetic setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method
