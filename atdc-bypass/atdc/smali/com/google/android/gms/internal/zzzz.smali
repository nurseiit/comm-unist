.class final Lcom/google/android/gms/internal/zzzz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzajs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzajs<",
        "Lcom/google/android/gms/internal/zzaae;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzSu:Lcom/google/android/gms/internal/zzaam;

.field private synthetic zzSv:Lcom/google/android/gms/internal/zzzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzy;Lcom/google/android/gms/internal/zzaam;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzz;->zzSv:Lcom/google/android/gms/internal/zzzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzz;->zzSu:Lcom/google/android/gms/internal/zzaam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/zzaae;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzz;->zzSv:Lcom/google/android/gms/internal/zzzy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzz;->zzSu:Lcom/google/android/gms/internal/zzaam;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzzy;->zza(Lcom/google/android/gms/internal/zzaam;Lcom/google/android/gms/internal/zzaae;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzz;->zzSv:Lcom/google/android/gms/internal/zzzy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzzy;->zzgA()V

    :cond_0
    return-void
.end method
