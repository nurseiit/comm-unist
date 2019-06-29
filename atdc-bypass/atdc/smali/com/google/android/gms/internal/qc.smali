.class public final Lcom/google/android/gms/internal/qc;
.super Ljava/lang/Object;


# static fields
.field public static final zzccK:Lcom/google/android/gms/internal/wp;

.field public static final zzccL:Lcom/google/android/gms/internal/wp;

.field public static final zzccM:Lcom/google/android/gms/internal/wp;

.field public static final zzccN:Lcom/google/android/gms/internal/wp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".info"

    invoke-static {v0}, Lcom/google/android/gms/internal/wp;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/qc;->zzccK:Lcom/google/android/gms/internal/wp;

    const-string v0, "serverTimeOffset"

    invoke-static {v0}, Lcom/google/android/gms/internal/wp;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/qc;->zzccL:Lcom/google/android/gms/internal/wp;

    const-string v0, "authenticated"

    invoke-static {v0}, Lcom/google/android/gms/internal/wp;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/qc;->zzccM:Lcom/google/android/gms/internal/wp;

    const-string v0, "connected"

    invoke-static {v0}, Lcom/google/android/gms/internal/wp;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/qc;->zzccN:Lcom/google/android/gms/internal/wp;

    return-void
.end method
