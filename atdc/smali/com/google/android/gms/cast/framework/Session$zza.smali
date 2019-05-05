.class final Lcom/google/android/gms/cast/framework/Session$zza;
.super Lcom/google/android/gms/cast/framework/zzad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private synthetic zzasv:Lcom/google/android/gms/cast/framework/Session;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/Session$zza;->zzasv:Lcom/google/android/gms/cast/framework/Session;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/zzad;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/framework/Session;Lcom/google/android/gms/cast/framework/zzae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/Session$zza;-><init>(Lcom/google/android/gms/cast/framework/Session;)V

    return-void
.end method


# virtual methods
.method public final end(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/Session$zza;->zzasv:Lcom/google/android/gms/cast/framework/Session;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/Session;->end(Z)V

    return-void
.end method

.method public final getSessionRemainingTimeMs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/Session$zza;->zzasv:Lcom/google/android/gms/cast/framework/Session;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/Session;->getSessionRemainingTimeMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final resume(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/Session$zza;->zzasv:Lcom/google/android/gms/cast/framework/Session;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/Session;->resume(Landroid/os/Bundle;)V

    return-void
.end method

.method public final start(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/Session$zza;->zzasv:Lcom/google/android/gms/cast/framework/Session;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/Session;->start(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zznz()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/Session$zza;->zzasv:Lcom/google/android/gms/cast/framework/Session;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
