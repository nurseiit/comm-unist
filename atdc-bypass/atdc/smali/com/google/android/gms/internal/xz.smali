.class final Lcom/google/android/gms/internal/xz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/xy;


# static fields
.field private static zzciI:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private static zzciJ:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzciK:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ya;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ya;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/xz;->zzciI:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/yb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/yb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/xz;->zzciJ:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/xz;->zzciK:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zzD([B)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/xz;->zzciI:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final zzC([B)Z
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/xz;->zzD([B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xz;->zzciK:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzJn()Lcom/google/android/gms/internal/yl;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/yl;

    iget-object v1, p0, Lcom/google/android/gms/internal/xz;->zzciK:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/yl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
