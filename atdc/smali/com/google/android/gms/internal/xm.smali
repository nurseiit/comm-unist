.class public interface abstract Lcom/google/android/gms/internal/xm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/xm;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lcom/google/android/gms/internal/xl;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzciw:Lcom/google/android/gms/internal/wr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/xm;->zzciw:Lcom/google/android/gms/internal/wr;

    return-void
.end method


# virtual methods
.method public abstract getChildCount()I
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract getValue(Z)Ljava/lang/Object;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract zzFz()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/xl;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zzIP()Ljava/lang/String;
.end method

.method public abstract zzIQ()Z
.end method

.method public abstract zzIR()Lcom/google/android/gms/internal/xm;
.end method

.method public abstract zzN(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;
.end method

.method public abstract zza(Lcom/google/android/gms/internal/xo;)Ljava/lang/String;
.end method

.method public abstract zze(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
.end method

.method public abstract zzf(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
.end method

.method public abstract zzk(Lcom/google/android/gms/internal/wp;)Z
.end method

.method public abstract zzl(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/wp;
.end method

.method public abstract zzl(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
.end method

.method public abstract zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;
.end method
