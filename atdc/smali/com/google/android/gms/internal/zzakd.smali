.class final Lcom/google/android/gms/internal/zzakd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private synthetic zzabH:Lcom/google/android/gms/internal/zzaet;

.field private synthetic zzabJ:Lcom/google/android/gms/internal/zzakb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzakb;Lcom/google/android/gms/internal/zzaet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakd;->zzabJ:Lcom/google/android/gms/internal/zzakb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakd;->zzabH:Lcom/google/android/gms/internal/zzaet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakd;->zzabJ:Lcom/google/android/gms/internal/zzakb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakd;->zzabH:Lcom/google/android/gms/internal/zzaet;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzakb;Landroid/view/View;Lcom/google/android/gms/internal/zzaet;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
