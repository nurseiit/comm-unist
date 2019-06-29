.class final Lcom/google/firebase/crash/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/crash/zzf;


# instance fields
.field private final zzbYb:Lcom/google/firebase/crash/FirebaseCrash;


# direct methods
.method constructor <init>(Lcom/google/firebase/crash/FirebaseCrash;)V
    .locals 0
    .param p1    # Lcom/google/firebase/crash/FirebaseCrash;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crash/zzb;->zzbYb:Lcom/google/firebase/crash/FirebaseCrash;

    return-void
.end method


# virtual methods
.method public final zzFh()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crash/zzb;->zzbYb:Lcom/google/firebase/crash/FirebaseCrash;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/crash/FirebaseCrash;->zza(Lcom/google/android/gms/internal/mj;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/mj;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/mj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/crash/zzb;->zzbYb:Lcom/google/firebase/crash/FirebaseCrash;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crash/FirebaseCrash;->zza(Lcom/google/android/gms/internal/mj;)V

    return-void
.end method
