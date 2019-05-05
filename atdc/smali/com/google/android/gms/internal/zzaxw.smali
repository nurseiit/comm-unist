.class public Lcom/google/android/gms/internal/zzaxw;
.super Ljava/lang/Object;


# instance fields
.field private final zzanR:Ljava/lang/String;

.field protected final zzarK:Lcom/google/android/gms/internal/zzayo;

.field private zzaxK:Lcom/google/android/gms/internal/zzays;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaye;->zzci(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxw;->zzanR:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/zzayo;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzayo;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxw;->zzarK:Lcom/google/android/gms/internal/zzayo;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/zzaxw;->setSessionLabel(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxw;->zzanR:Ljava/lang/String;

    return-object v0
.end method

.method public final setSessionLabel(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxw;->zzarK:Lcom/google/android/gms/internal/zzayo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzayo;->zzcn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzays;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxw;->zzaxK:Lcom/google/android/gms/internal/zzays;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaxw;->zzaxK:Lcom/google/android/gms/internal/zzays;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaxw;->zzoz()V

    :cond_0
    return-void
.end method

.method protected final zza(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-object v1, p4, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxw;->zzaxK:Lcom/google/android/gms/internal/zzays;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaxw;->zzanR:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v4, p1

    move-wide v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/zzays;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public zzc(JI)V
    .locals 0

    return-void
.end method

.method public zzch(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected final zzoA()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxw;->zzaxK:Lcom/google/android/gms/internal/zzays;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzays;->zznl()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzoz()V
    .locals 0

    return-void
.end method
