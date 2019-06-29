.class final Lcom/google/android/gms/internal/te;
.super Lcom/google/android/gms/internal/qi;


# instance fields
.field private zzccD:Lcom/google/android/gms/internal/vt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/te;->zzccD:Lcom/google/android/gms/internal/vt;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/te;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/te;

    iget-object p1, p1, Lcom/google/android/gms/internal/te;->zzccD:Lcom/google/android/gms/internal/vt;

    iget-object v0, p0, Lcom/google/android/gms/internal/te;->zzccD:Lcom/google/android/gms/internal/vt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vt;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/te;->zzccD:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzGH()Lcom/google/android/gms/internal/vt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/te;->zzccD:Lcom/google/android/gms/internal/vt;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/qi;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/te;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/te;-><init>(Lcom/google/android/gms/internal/vt;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vi;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vj;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/vj;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/qi;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/te;

    return p1
.end method
