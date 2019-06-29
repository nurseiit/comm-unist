.class final Lcom/google/android/gms/internal/zzakc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$view:Landroid/view/View;

.field private synthetic zzabH:Lcom/google/android/gms/internal/zzaet;

.field private synthetic zzabI:I

.field private synthetic zzabJ:Lcom/google/android/gms/internal/zzakb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzakb;Landroid/view/View;Lcom/google/android/gms/internal/zzaet;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakc;->zzabJ:Lcom/google/android/gms/internal/zzakb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakc;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzakc;->zzabH:Lcom/google/android/gms/internal/zzaet;

    iput p4, p0, Lcom/google/android/gms/internal/zzakc;->zzabI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakc;->zzabJ:Lcom/google/android/gms/internal/zzakb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakc;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakc;->zzabH:Lcom/google/android/gms/internal/zzaet;

    iget v3, p0, Lcom/google/android/gms/internal/zzakc;->zzabI:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzakb;Landroid/view/View;Lcom/google/android/gms/internal/zzaet;I)V

    return-void
.end method
