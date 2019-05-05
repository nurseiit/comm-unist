.class public final Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast$CastOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field zzaoX:Lcom/google/android/gms/cast/CastDevice;

.field zzaoY:Lcom/google/android/gms/cast/Cast$Listener;

.field private zzaoZ:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CastDevice parameter cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CastListener parameter cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzaoX:Lcom/google/android/gms/cast/CastDevice;

    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzaoY:Lcom/google/android/gms/cast/Cast$Listener;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzaoZ:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzaoZ:I

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/cast/Cast$CastOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/Cast$CastOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/Cast$CastOptions;-><init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;Lcom/google/android/gms/cast/zze;)V

    return-object v0
.end method

.method public final setVerboseLoggingEnabled(Z)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzaoZ:I

    or-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzaoZ:I

    return-object p0

    :cond_0
    iget p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->zzaoZ:I

    and-int/lit8 p1, p1, -0x2

    goto :goto_0

    return-object p0
.end method

.method public final zzi(Landroid/os/Bundle;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method
