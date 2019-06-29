.class public final Lcom/google/android/gms/internal/vh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/vk;


# instance fields
.field private final zzbZf:Lcom/google/android/gms/internal/qr;

.field private final zzcgG:Lcom/google/android/gms/internal/qi;

.field private final zzcgH:Lcom/google/firebase/database/DatabaseError;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qi;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/qr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vh;->zzcgG:Lcom/google/android/gms/internal/qi;

    iput-object p3, p0, Lcom/google/android/gms/internal/vh;->zzbZf:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/android/gms/internal/vh;->zzcgH:Lcom/google/firebase/database/DatabaseError;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/vh;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":CANCEL"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzHX()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vh;->zzcgG:Lcom/google/android/gms/internal/qi;

    iget-object v1, p0, Lcom/google/android/gms/internal/vh;->zzcgH:Lcom/google/firebase/database/DatabaseError;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qi;->zza(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method
