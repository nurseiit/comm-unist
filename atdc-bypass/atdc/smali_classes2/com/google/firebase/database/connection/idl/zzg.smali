.class final Lcom/google/firebase/database/connection/idl/zzg;
.super Lcom/google/firebase/database/connection/idl/zzr;


# instance fields
.field private synthetic zzccb:Lcom/google/android/gms/internal/om;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzf;Lcom/google/android/gms/internal/om;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzccb:Lcom/google/android/gms/internal/om;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzr;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzFY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzccb:Lcom/google/android/gms/internal/om;

    invoke-interface {v0}, Lcom/google/android/gms/internal/om;->zzFY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzFZ()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzccb:Lcom/google/android/gms/internal/om;

    invoke-interface {v0}, Lcom/google/android/gms/internal/om;->zzFZ()Z

    move-result v0

    return v0
.end method

.method public final zzGz()Lcom/google/firebase/database/connection/idl/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzccb:Lcom/google/android/gms/internal/om;

    invoke-interface {v0}, Lcom/google/android/gms/internal/om;->zzGa()Lcom/google/android/gms/internal/oc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zza;->zza(Lcom/google/android/gms/internal/oc;)Lcom/google/firebase/database/connection/idl/zza;

    move-result-object v0

    return-object v0
.end method
