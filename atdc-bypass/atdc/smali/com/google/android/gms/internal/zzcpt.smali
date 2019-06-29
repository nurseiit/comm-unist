.class public final Lcom/google/android/gms/internal/zzcpt;
.super Lcom/google/android/gms/nearby/messages/internal/zzv;

# interfaces
.implements Lcom/google/android/gms/internal/zzcpn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzv;",
        "Lcom/google/android/gms/internal/zzcpn<",
        "Lcom/google/android/gms/nearby/messages/PublishCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzbzH:Lcom/google/android/gms/internal/zzcps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcps<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbzE:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcpu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcpu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcpt;->zzbzH:Lcom/google/android/gms/internal/zzcps;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbdw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcpt;->zzbzE:Lcom/google/android/gms/internal/zzbdw;

    return-void
.end method


# virtual methods
.method public final onExpired()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpt;->zzbzE:Lcom/google/android/gms/internal/zzbdw;

    sget-object v1, Lcom/google/android/gms/internal/zzcpt;->zzbzH:Lcom/google/android/gms/internal/zzcps;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method

.method public final zzzX()Lcom/google/android/gms/internal/zzbdw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbdw<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpt;->zzbzE:Lcom/google/android/gms/internal/zzbdw;

    return-object v0
.end method
