.class public final Lcom/google/android/gms/internal/zzfg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzwE:Ljava/lang/String;

.field private final zzwF:Lorg/json/JSONObject;

.field private final zzwG:Ljava/lang/String;

.field private final zzwH:Ljava/lang/String;

.field private final zzwI:Z

.field private final zzwJ:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzaje;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfg;->zzwH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfg;->zzwF:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfg;->zzwG:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfg;->zzwE:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzfg;->zzwI:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzfg;->zzwJ:Z

    return-void
.end method


# virtual methods
.method public final zzcj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzwE:Ljava/lang/String;

    return-object v0
.end method

.method public final zzck()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzwH:Ljava/lang/String;

    return-object v0
.end method

.method public final zzcl()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzwF:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zzcm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfg;->zzwG:Ljava/lang/String;

    return-object v0
.end method

.method public final zzcn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfg;->zzwI:Z

    return v0
.end method

.method public final zzco()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfg;->zzwJ:Z

    return v0
.end method
