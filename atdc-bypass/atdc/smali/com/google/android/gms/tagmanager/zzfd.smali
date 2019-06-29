.class final Lcom/google/android/gms/tagmanager/zzfd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzs<",
        "Lcom/google/android/gms/internal/ei;",
        "Lcom/google/android/gms/tagmanager/zzea<",
        "Lcom/google/android/gms/internal/zzbr;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzfc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p2, Lcom/google/android/gms/tagmanager/zzea;

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbr;->zzLU()I

    move-result p1

    return p1
.end method
