.class final Lcom/google/android/gms/internal/sk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/sl;


# instance fields
.field private synthetic zzceC:Lcom/google/android/gms/internal/qr;

.field private synthetic zzceD:Lcom/google/android/gms/internal/sm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/si;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/sm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/sk;->zzceC:Lcom/google/android/gms/internal/qr;

    iput-object p3, p0, Lcom/google/android/gms/internal/sk;->zzceD:Lcom/google/android/gms/internal/sm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/si;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceC:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/qr;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceD:Lcom/google/android/gms/internal/sm;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/si;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/sm;)V

    return-void
.end method
