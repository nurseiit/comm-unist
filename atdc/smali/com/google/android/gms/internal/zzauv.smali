.class final Lcom/google/android/gms/internal/zzauv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzasG:Lcom/google/android/gms/internal/zzaut;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaut;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauv;->zzasG:Lcom/google/android/gms/internal/zzaut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv;->zzasG:Lcom/google/android/gms/internal/zzaut;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaut;->zzasF:Lcom/google/android/gms/internal/zzaus;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaus;->zza(Lcom/google/android/gms/internal/zzaus;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv;->zzasG:Lcom/google/android/gms/internal/zzaut;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaut;->zzasF:Lcom/google/android/gms/internal/zzaus;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaus;->zzb(Lcom/google/android/gms/internal/zzaus;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauv;->zzasG:Lcom/google/android/gms/internal/zzaut;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaut;->zzasF:Lcom/google/android/gms/internal/zzaus;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv;->zzasG:Lcom/google/android/gms/internal/zzaut;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaut;->zzasF:Lcom/google/android/gms/internal/zzaus;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaus;->zzc(Lcom/google/android/gms/internal/zzaus;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv;->zzasG:Lcom/google/android/gms/internal/zzaut;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaut;->zzasF:Lcom/google/android/gms/internal/zzaus;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaus;->zzc(Lcom/google/android/gms/internal/zzaus;)Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;->onOverlayDismissed()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauv;->zzasG:Lcom/google/android/gms/internal/zzaut;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaut;->zzasF:Lcom/google/android/gms/internal/zzaus;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaus;->zzd(Lcom/google/android/gms/internal/zzaus;)V

    :cond_1
    return-void
.end method
