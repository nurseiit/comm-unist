.class public abstract Lcom/google/android/gms/cast/framework/SessionProvider;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/SessionProvider$zza;
    }
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mCategory:Ljava/lang/String;

.field private final zzasz:Lcom/google/android/gms/cast/framework/SessionProvider$zza;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/framework/SessionProvider$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/framework/SessionProvider$zza;-><init>(Lcom/google/android/gms/cast/framework/SessionProvider;Lcom/google/android/gms/cast/framework/zzag;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/SessionProvider;->zzasz:Lcom/google/android/gms/cast/framework/SessionProvider$zza;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/SessionProvider;->mApplicationContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/SessionProvider;->mCategory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createSession(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/Session;
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/SessionProvider;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/SessionProvider;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract isSessionRecoverable()Z
.end method

.method public final zznH()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/SessionProvider;->zzasz:Lcom/google/android/gms/cast/framework/SessionProvider$zza;

    return-object v0
.end method
