.class public final Lcom/google/android/gms/internal/zzty;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zztx;


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
.method public final zza(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/zzajm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lcom/google/android/gms/internal/zzajm<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzajh;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzajh;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
