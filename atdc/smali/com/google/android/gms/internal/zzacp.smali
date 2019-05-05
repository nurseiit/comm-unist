.class public final Lcom/google/android/gms/internal/zzacp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzacm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzo(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/zzacn;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzajh;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzajh;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
