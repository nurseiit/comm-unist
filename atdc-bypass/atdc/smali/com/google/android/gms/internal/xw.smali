.class public final Lcom/google/android/gms/internal/xw;
.super Lcom/google/android/gms/internal/xe;


# static fields
.field private static final zzciF:Lcom/google/android/gms/internal/xw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/xw;->zzciF:Lcom/google/android/gms/internal/xw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xe;-><init>()V

    return-void
.end method

.method public static zzJm()Lcom/google/android/gms/internal/xw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xw;->zzciF:Lcom/google/android/gms/internal/xw;

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/xl;

    check-cast p2, Lcom/google/android/gms/internal/xl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/xm;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/wp;->zzi(Lcom/google/android/gms/internal/wp;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/xw;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ValueIndex"

    return-object v0
.end method

.method public final zzJc()Lcom/google/android/gms/internal/xl;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/xl;

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIK()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/xm;->zzciw:Lcom/google/android/gms/internal/wr;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    return-object v0
.end method

.method public final zzJd()Ljava/lang/String;
    .locals 1

    const-string v0, ".value"

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xl;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/xm;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
