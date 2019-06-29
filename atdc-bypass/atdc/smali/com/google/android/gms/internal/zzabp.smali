.class final Lcom/google/android/gms/internal/zzabp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzajq;


# instance fields
.field private synthetic zzUE:Lcom/google/android/gms/internal/zzabn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabp;->zzUE:Lcom/google/android/gms/internal/zzabn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "JS engine could not be obtained. Cancelling ad request"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabp;->zzUE:Lcom/google/android/gms/internal/zzabn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzabn;->zzUA:Lcom/google/android/gms/internal/zzabu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzabu;->fail()V

    return-void
.end method
