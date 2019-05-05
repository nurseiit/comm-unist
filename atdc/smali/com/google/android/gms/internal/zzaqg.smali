.class final Lcom/google/android/gms/internal/zzaqg;
.super Lcom/google/android/gms/internal/zzapz;


# instance fields
.field private synthetic zzakd:Lcom/google/android/gms/internal/zzaqf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqg;->zzakd:Lcom/google/android/gms/internal/zzaqf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqg;->zzakd:Lcom/google/android/gms/internal/zzaqf;

    new-instance v1, Lcom/google/android/gms/internal/zzaqi;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzaqi;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaqf;->setResult(Lcom/google/android/gms/common/api/Result;)V

    invoke-static {p2}, Lcom/google/android/gms/appinvite/AppInviteReferral;->hasReferral(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaqg;->zzakd:Lcom/google/android/gms/internal/zzaqf;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaqf;->zza(Lcom/google/android/gms/internal/zzaqf;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaqg;->zzakd:Lcom/google/android/gms/internal/zzaqf;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaqf;->zzb(Lcom/google/android/gms/internal/zzaqf;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaqg;->zzakd:Lcom/google/android/gms/internal/zzaqf;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaqf;->zzb(Lcom/google/android/gms/internal/zzaqf;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
