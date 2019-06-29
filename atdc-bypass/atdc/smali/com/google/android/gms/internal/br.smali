.class public final Lcom/google/android/gms/internal/br;
.super Lcom/google/android/gms/internal/bs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bs;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zze(DD)Z
    .locals 1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
