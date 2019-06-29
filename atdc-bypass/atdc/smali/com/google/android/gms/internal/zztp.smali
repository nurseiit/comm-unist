.class public final Lcom/google/android/gms/internal/zztp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field private static zzKC:Lcom/google/android/gms/internal/zztp;


# instance fields
.field private zzKD:I

.field private zzKE:I

.field private zzKF:I

.field private zzKG:I

.field private zzKH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zztp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztp;->zzKC:Lcom/google/android/gms/internal/zztp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzeN()Lcom/google/android/gms/internal/zztp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zztp;->zzKC:Lcom/google/android/gms/internal/zztp;

    return-object v0
.end method


# virtual methods
.method public final asBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ipl"

    iget v2, p0, Lcom/google/android/gms/internal/zztp;->zzKD:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipds"

    iget v2, p0, Lcom/google/android/gms/internal/zztp;->zzKE:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipde"

    iget v2, p0, Lcom/google/android/gms/internal/zztp;->zzKF:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "iph"

    iget v2, p0, Lcom/google/android/gms/internal/zztp;->zzKG:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipm"

    iget v2, p0, Lcom/google/android/gms/internal/zztp;->zzKH:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method final zzeO()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztp;->zzKE:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztp;->zzKE:I

    return-void
.end method

.method final zzeP()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztp;->zzKF:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztp;->zzKF:I

    return-void
.end method

.method final zzeQ()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztp;->zzKG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztp;->zzKG:I

    return-void
.end method

.method final zzeR()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztp;->zzKH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztp;->zzKH:I

    return-void
.end method

.method public final zzeS()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztp;->zzKE:I

    return v0
.end method

.method public final zzeT()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztp;->zzKF:I

    return v0
.end method

.method public final zzeU()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztp;->zzKG:I

    return v0
.end method

.method public final zzeV()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztp;->zzKH:I

    return v0
.end method

.method final zzn(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztp;->zzKD:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zztp;->zzKD:I

    return-void
.end method
