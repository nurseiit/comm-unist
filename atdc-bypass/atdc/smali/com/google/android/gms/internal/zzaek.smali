.class public final Lcom/google/android/gms/internal/zzaek;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaeu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zzaai;)Lcom/google/android/gms/internal/zzaet;
    .locals 1

    iget-object v0, p3, Lcom/google/android/gms/internal/zzaai;->zzTJ:Lcom/google/android/gms/internal/zzaeq;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzaeg;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaeg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zzaai;)V

    return-object v0
.end method
