.class public final Lcom/google/android/gms/internal/sh;
.super Ljava/lang/Object;


# instance fields
.field private zzcey:Lcom/google/android/gms/internal/xm;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/sh;->zzcey:Lcom/google/android/gms/internal/xm;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/xm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/sh;->zzcey:Lcom/google/android/gms/internal/xm;

    return-void
.end method


# virtual methods
.method public final zzHm()Lcom/google/android/gms/internal/xm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sh;->zzcey:Lcom/google/android/gms/internal/xm;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sh;->zzcey:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/xm;->zzl(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/sh;->zzcey:Lcom/google/android/gms/internal/xm;

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sh;->zzcey:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xm;->zzN(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    return-object p1
.end method
