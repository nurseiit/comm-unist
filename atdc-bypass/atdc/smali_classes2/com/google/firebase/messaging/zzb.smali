.class public final Lcom/google/firebase/messaging/zzb;
.super Ljava/lang/Object;


# instance fields
.field private zzbVp:Ljava/lang/String;

.field private zzbVq:Ljava/lang/String;

.field private zzbVr:Ljava/lang/String;

.field private zzbVs:Ljava/lang/String;

.field private zzbVt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_exp_set"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbVp:Ljava/lang/String;

    const-string v0, "_exp_activate"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbVq:Ljava/lang/String;

    const-string v0, "_exp_timeout"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbVr:Ljava/lang/String;

    const-string v0, "_exp_expire"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbVs:Ljava/lang/String;

    const-string v0, "_exp_clear"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbVt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzEu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbVp:Ljava/lang/String;

    return-object v0
.end method

.method public final zzEv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbVq:Ljava/lang/String;

    return-object v0
.end method

.method public final zzEw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbVr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbVs:Ljava/lang/String;

    return-object v0
.end method

.method public final zzEy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzbVt:Ljava/lang/String;

    return-object v0
.end method
