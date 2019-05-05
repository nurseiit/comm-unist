.class public final Lcom/google/android/gms/internal/xl;
.super Ljava/lang/Object;


# static fields
.field private static final zzciu:Lcom/google/android/gms/internal/xl;

.field private static final zzciv:Lcom/google/android/gms/internal/xl;


# instance fields
.field private final zzcgy:Lcom/google/android/gms/internal/wp;

.field private final zzcil:Lcom/google/android/gms/internal/xm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/xl;

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIJ()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    sput-object v0, Lcom/google/android/gms/internal/xl;->zzciu:Lcom/google/android/gms/internal/xl;

    new-instance v0, Lcom/google/android/gms/internal/xl;

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIK()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/xm;->zzciw:Lcom/google/android/gms/internal/wr;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    sput-object v0, Lcom/google/android/gms/internal/xl;->zzciv:Lcom/google/android/gms/internal/xl;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/xl;->zzcgy:Lcom/google/android/gms/internal/wp;

    iput-object p2, p0, Lcom/google/android/gms/internal/xl;->zzcil:Lcom/google/android/gms/internal/xm;

    return-void
.end method

.method public static zzJi()Lcom/google/android/gms/internal/xl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xl;->zzciu:Lcom/google/android/gms/internal/xl;

    return-object v0
.end method

.method public static zzJj()Lcom/google/android/gms/internal/xl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xl;->zzciv:Lcom/google/android/gms/internal/xl;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/xl;

    iget-object v2, p0, Lcom/google/android/gms/internal/xl;->zzcgy:Lcom/google/android/gms/internal/wp;

    iget-object v3, p1, Lcom/google/android/gms/internal/xl;->zzcgy:Lcom/google/android/gms/internal/wp;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/wp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/xl;->zzcil:Lcom/google/android/gms/internal/xm;

    iget-object p1, p1, Lcom/google/android/gms/internal/xl;->zzcil:Lcom/google/android/gms/internal/xm;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/xl;->zzcgy:Lcom/google/android/gms/internal/wp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wp;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/xl;->zzcil:Lcom/google/android/gms/internal/xm;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/xl;->zzcgy:Lcom/google/android/gms/internal/wp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xl;->zzcil:Lcom/google/android/gms/internal/xm;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "NamedNode{name="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", node="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzFn()Lcom/google/android/gms/internal/xm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xl;->zzcil:Lcom/google/android/gms/internal/xm;

    return-object v0
.end method

.method public final zzJk()Lcom/google/android/gms/internal/wp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xl;->zzcgy:Lcom/google/android/gms/internal/wp;

    return-object v0
.end method
