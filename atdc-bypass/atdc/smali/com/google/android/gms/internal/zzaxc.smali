.class final Lcom/google/android/gms/internal/zzaxc;
.super Lcom/google/android/gms/internal/zzaxe;


# instance fields
.field private synthetic zzaxd:Lcom/google/android/gms/internal/zzawy;

.field private synthetic zzaxg:Ljava/lang/String;

.field private synthetic zzaxh:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawy;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxc;->zzaxd:Lcom/google/android/gms/internal/zzawy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxc;->zzaxg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaxc;->zzaxh:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaxe;-><init>(Lcom/google/android/gms/internal/zzawy;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxc;->zzaxd:Lcom/google/android/gms/internal/zzawy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxc;->zzaxg:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxc;->zzaxh:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaxg;->zzarw:Lcom/google/android/gms/internal/zzayt;

    const/4 v4, 0x6

    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/zzawy;->zza(Lcom/google/android/gms/internal/zzawy;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/zzayt;)V

    return-void
.end method
