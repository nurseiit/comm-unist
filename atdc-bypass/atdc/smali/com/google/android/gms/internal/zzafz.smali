.class final Lcom/google/android/gms/internal/zzafz;
.super Lcom/google/android/gms/internal/zzagr;


# instance fields
.field private synthetic zzZb:Lcom/google/android/gms/internal/zzags;

.field private synthetic zztF:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzags;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafz;->zztF:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafz;->zzZb:Lcom/google/android/gms/internal/zzags;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzagr;-><init>(Lcom/google/android/gms/internal/zzafu;)V

    return-void
.end method


# virtual methods
.method public final zzbd()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafz;->zztF:Landroid/content/Context;

    const-string v1, "admob"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "version_code"

    const-string v4, "version_code"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafz;->zzZb:Lcom/google/android/gms/internal/zzags;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafz;->zzZb:Lcom/google/android/gms/internal/zzags;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzags;->zzf(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
