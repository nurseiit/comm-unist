.class final Lcom/google/android/gms/internal/zzrj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzJx:Lcom/google/android/gms/internal/zzrk;

.field private final zzJy:Z

.field private final zzJz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzre;ZLcom/google/android/gms/internal/zzrk;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzrj;->zzJy:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrj;->zzJx:Lcom/google/android/gms/internal/zzrk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzrj;->zzJz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrj;->zzJz:Ljava/lang/String;

    return-object v0
.end method

.method public final isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrj;->zzJy:Z

    return v0
.end method

.method public final zzeC()Lcom/google/android/gms/internal/zzrk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrj;->zzJx:Lcom/google/android/gms/internal/zzrk;

    return-object v0
.end method
