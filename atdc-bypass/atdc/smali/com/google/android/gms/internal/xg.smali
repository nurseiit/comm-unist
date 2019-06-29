.class public final Lcom/google/android/gms/internal/xg;
.super Lcom/google/android/gms/internal/xe;


# static fields
.field private static final zzcin:Lcom/google/android/gms/internal/xg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/xg;->zzcin:Lcom/google/android/gms/internal/xg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xe;-><init>()V

    return-void
.end method

.method public static zzJh()Lcom/google/android/gms/internal/xg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xg;->zzcin:Lcom/google/android/gms/internal/xg;

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/xl;

    check-cast p2, Lcom/google/android/gms/internal/xl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/wp;->zzi(Lcom/google/android/gms/internal/wp;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/xg;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "KeyIndex"

    return-object v0
.end method

.method public final zzJc()Lcom/google/android/gms/internal/xl;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/xl;->zzJj()Lcom/google/android/gms/internal/xl;

    move-result-object v0

    return-object v0
.end method

.method public final zzJd()Ljava/lang/String;
    .locals 1

    const-string v0, ".key"

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xl;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/xl;

    invoke-interface {p2}, Lcom/google/android/gms/internal/xm;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/wp;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wp;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/xm;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
