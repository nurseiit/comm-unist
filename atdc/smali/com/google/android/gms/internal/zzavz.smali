.class final Lcom/google/android/gms/internal/zzavz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic zzavz:Lcom/google/android/gms/internal/zzavy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavz;->zzavz:Lcom/google/android/gms/internal/zzavy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzavz;->zzavz:Lcom/google/android/gms/internal/zzavy;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzavy;->zza(Lcom/google/android/gms/internal/zzavy;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavz;->zzavz:Lcom/google/android/gms/internal/zzavy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzavy;->zzb(Lcom/google/android/gms/internal/zzavy;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
