.class final Lcom/google/android/gms/internal/zzabq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzUA:Lcom/google/android/gms/internal/zzabu;

.field private synthetic zzUF:Lcom/google/android/gms/internal/zzabl;

.field private synthetic zzUG:Lcom/google/android/gms/internal/zzaae;

.field private synthetic zztF:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabl;Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabq;->zzUF:Lcom/google/android/gms/internal/zzabl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabq;->zztF:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabq;->zzUA:Lcom/google/android/gms/internal/zzabu;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzabq;->zzUG:Lcom/google/android/gms/internal/zzaae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabq;->zzUF:Lcom/google/android/gms/internal/zzabl;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzabl;->zzUr:Lcom/google/android/gms/internal/zzack;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabq;->zztF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabq;->zzUA:Lcom/google/android/gms/internal/zzabu;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzabq;->zzUG:Lcom/google/android/gms/internal/zzaae;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaae;->zzvT:Lcom/google/android/gms/internal/zzaje;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzack;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaje;)V

    return-void
.end method
