.class final Lcom/google/android/gms/internal/zzoq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzIA:Lcom/google/android/gms/internal/zzoc;

.field private synthetic zzIB:Lcom/google/android/gms/internal/zzop;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzop;Lcom/google/android/gms/internal/zzoc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoq;->zzIB:Lcom/google/android/gms/internal/zzop;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzoq;->zzIA:Lcom/google/android/gms/internal/zzoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzIA:Lcom/google/android/gms/internal/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoc;->zzes()Lcom/google/android/gms/internal/zzaka;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error obtaining overlay."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoq;->zzIB:Lcom/google/android/gms/internal/zzop;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzop;->zzss:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoq;->zzIB:Lcom/google/android/gms/internal/zzop;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzop;->zzss:Landroid/widget/FrameLayout;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzIA:Lcom/google/android/gms/internal/zzoc;

    instance-of v0, v0, Lcom/google/android/gms/internal/zznx;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoq;->zzIB:Lcom/google/android/gms/internal/zzop;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoq;->zzIA:Lcom/google/android/gms/internal/zzoc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzop;->zza(Lcom/google/android/gms/internal/zzop;Lcom/google/android/gms/internal/zzoc;)V

    :cond_1
    return-void
.end method
