.class final Lcom/google/android/gms/tagmanager/zzad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzdi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzdi<",
        "Lcom/google/android/gms/internal/ee;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbDX:Lcom/google/android/gms/tagmanager/zzy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/zzy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzad;->zzbDX:Lcom/google/android/gms/tagmanager/zzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/tagmanager/zzz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzad;-><init>(Lcom/google/android/gms/tagmanager/zzy;)V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ee;

    iget-object v0, p1, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ee;->zzbLH:Lcom/google/android/gms/internal/zzbq;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ee;->zzlB:Lcom/google/android/gms/internal/zzbn;

    new-instance v1, Lcom/google/android/gms/internal/zzbq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbq;-><init>()V

    iput-object v0, v1, Lcom/google/android/gms/internal/zzbq;->zzlB:Lcom/google/android/gms/internal/zzbn;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/zzbq;->zzlA:[Lcom/google/android/gms/internal/zzbp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbn;->version:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzbq;->zzlC:Ljava/lang/String;

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzad;->zzbDX:Lcom/google/android/gms/tagmanager/zzy;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ee;->zzbLG:J

    const/4 p1, 0x1

    invoke-static {v1, v0, v2, v3, p1}, Lcom/google/android/gms/tagmanager/zzy;->zza(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/internal/zzbq;JZ)V

    return-void
.end method

.method public final zzbw(I)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzad;->zzbDX:Lcom/google/android/gms/tagmanager/zzy;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzy;->zze(Lcom/google/android/gms/tagmanager/zzy;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzad;->zzbDX:Lcom/google/android/gms/tagmanager/zzy;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/tagmanager/zzy;->zza(Lcom/google/android/gms/tagmanager/zzy;J)V

    :cond_0
    return-void
.end method
