.class public final Lcom/google/android/gms/internal/zzaot;
.super Lcom/google/android/gms/internal/zzamh;


# instance fields
.field private zzadF:Z

.field private zzaeH:Ljava/lang/String;

.field private zzaeI:Ljava/lang/String;

.field private zzagX:I

.field protected zzahZ:I

.field protected zzaiP:Z

.field private zzaiQ:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzamj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamh;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    return-void
.end method


# virtual methods
.method protected final zzjD()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaot;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x81

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PackageManager doesn\'t know about the app package"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzaot;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "Couldn\'t get ApplicationInfo to load global config"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaot;->zzbr(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/zzanu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaot;->zzkp()Lcom/google/android/gms/internal/zzamj;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzanu;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzanu;->zzP(I)Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzanw;

    if-eqz v0, :cond_e

    const-string v1, "Loading global XML config values"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzaot;->zzbo(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzanw;->zzaeH:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/zzanw;->zzaeH:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaot;->zzaeH:Ljava/lang/String;

    const-string v4, "XML config - app name"

    invoke-virtual {p0, v4, v1}, Lcom/google/android/gms/internal/zzaot;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/zzanw;->zzaeI:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/internal/zzanw;->zzaeI:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaot;->zzaeI:Ljava/lang/String;

    const-string v4, "XML config - app version"

    invoke-virtual {p0, v4, v1}, Lcom/google/android/gms/internal/zzaot;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/zzanw;->zzahY:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    const/4 v4, -0x1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/google/android/gms/internal/zzanw;->zzahY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "verbose"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    const-string v5, "info"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const-string v5, "warning"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v1, 0x2

    goto :goto_4

    :cond_8
    const-string v5, "error"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x3

    goto :goto_4

    :cond_9
    const/4 v1, -0x1

    :goto_4
    if-ltz v1, :cond_a

    iput v1, p0, Lcom/google/android/gms/internal/zzaot;->zzagX:I

    const-string v5, "XML config - log level"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/google/android/gms/internal/zzaot;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    iget v1, v0, Lcom/google/android/gms/internal/zzanw;->zzahZ:I

    if-ltz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_c

    iget v1, v0, Lcom/google/android/gms/internal/zzanw;->zzahZ:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaot;->zzahZ:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzaot;->zzaiP:Z

    const-string v5, "XML config - dispatch period (sec)"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/google/android/gms/internal/zzaot;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    iget v1, v0, Lcom/google/android/gms/internal/zzanw;->zzaia:I

    if-eq v1, v4, :cond_e

    iget v0, v0, Lcom/google/android/gms/internal/zzanw;->zzaia:I

    if-ne v0, v3, :cond_d

    const/4 v2, 0x1

    :cond_d
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzaot;->zzadF:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzaot;->zzaiQ:Z

    const-string v0, "XML config - dry run"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaot;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final zzjG()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaot;->zzkD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaot;->zzaeH:Ljava/lang/String;

    return-object v0
.end method

.method public final zzjH()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaot;->zzkD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaot;->zzaeI:Ljava/lang/String;

    return-object v0
.end method

.method public final zzmg()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaot;->zzkD()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzmh()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaot;->zzkD()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaot;->zzaiQ:Z

    return v0
.end method

.method public final zzmi()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaot;->zzkD()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaot;->zzadF:Z

    return v0
.end method
