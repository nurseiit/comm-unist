.class final Lcom/google/android/gms/internal/qa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uy<",
        "Lcom/google/android/gms/internal/xm;",
        "Lcom/google/android/gms/internal/pz;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzccH:Lcom/google/android/gms/internal/qr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pz;Lcom/google/android/gms/internal/qr;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/qa;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/xm;

    check-cast p3, Lcom/google/android/gms/internal/pz;

    iget-object v0, p0, Lcom/google/android/gms/internal/qa;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/qr;->zzh(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/pz;->zze(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/pz;

    move-result-object p1

    return-object p1
.end method
