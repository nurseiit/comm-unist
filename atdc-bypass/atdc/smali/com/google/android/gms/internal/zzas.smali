.class public final Lcom/google/android/gms/internal/zzas;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzan;)Lcom/google/android/gms/internal/zzs;
    .locals 4

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "volley"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "volley/0"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/zzao;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzao;-><init>()V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzak;

    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzak;-><init>(Lorg/apache/http/client/HttpClient;)V

    move-object p0, v0

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/zzad;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzad;-><init>(Lcom/google/android/gms/internal/zzan;)V

    new-instance p0, Lcom/google/android/gms/internal/zzs;

    new-instance v1, Lcom/google/android/gms/internal/zzag;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzag;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzs;-><init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzs;->start()V

    return-object p0
.end method
