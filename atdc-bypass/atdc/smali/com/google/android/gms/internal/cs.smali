.class final Lcom/google/android/gms/internal/cs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbKM:Ljava/lang/String;

.field private synthetic zzbKO:Lcom/google/android/gms/internal/co;

.field private synthetic zzbKQ:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/co;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cs;->zzbKO:Lcom/google/android/gms/internal/co;

    iput-object p2, p0, Lcom/google/android/gms/internal/cs;->zzbKM:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/cs;->zzbKQ:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->zzbKO:Lcom/google/android/gms/internal/co;

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->zzbKM:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/cs;->zzbKQ:[B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/co;->zze(Ljava/lang/String;[B)V

    return-void
.end method
