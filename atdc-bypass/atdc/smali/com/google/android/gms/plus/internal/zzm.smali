.class public final Lcom/google/android/gms/plus/internal/zzm;
.super Lcom/google/android/gms/dynamic/zzp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzp<",
        "Lcom/google/android/gms/plus/internal/zzd;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzbAG:Lcom/google/android/gms/plus/internal/zzm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/plus/internal/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/zzm;->zzbAG:Lcom/google/android/gms/plus/internal/zzm;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.plus.plusone.PlusOneButtonCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzp;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;IILjava/lang/String;I)Landroid/view/View;
    .locals 7

    if-nez p3, :cond_0

    :try_start_0
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    throw p2

    :cond_0
    sget-object v0, Lcom/google/android/gms/plus/internal/zzm;->zzbAG:Lcom/google/android/gms/plus/internal/zzm;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/plus/internal/zzm;->zzaS(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/plus/internal/zzd;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/plus/internal/zzd;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;IILjava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    new-instance p2, Lcom/google/android/gms/plus/PlusOneDummyView;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/plus/PlusOneDummyView;-><init>(Landroid/content/Context;I)V

    return-object p2
.end method


# virtual methods
.method protected final synthetic zzb(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.plus.internal.IPlusOneButtonCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/plus/internal/zzd;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/plus/internal/zzd;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/plus/internal/zze;

    invoke-direct {v0, p1}, Lcom/google/android/gms/plus/internal/zze;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
