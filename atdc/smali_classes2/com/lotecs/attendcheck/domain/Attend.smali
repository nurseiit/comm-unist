.class public Lcom/lotecs/attendcheck/domain/Attend;
.super Ljava/lang/Object;
.source "Attend.java"


# instance fields
.field private camp:Ljava/lang/String;

.field private psco:Ljava/lang/String;

.field private sjco:Ljava/lang/String;

.field private yyse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCamp()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/Attend;->camp:Ljava/lang/String;

    return-object v0
.end method

.method public getPsco()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/Attend;->psco:Ljava/lang/String;

    return-object v0
.end method

.method public getSjco()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/Attend;->sjco:Ljava/lang/String;

    return-object v0
.end method

.method public getYyse()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/lotecs/attendcheck/domain/Attend;->yyse:Ljava/lang/String;

    return-object v0
.end method

.method public setCamp(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/Attend;->camp:Ljava/lang/String;

    return-void
.end method

.method public setPsco(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/Attend;->psco:Ljava/lang/String;

    return-void
.end method

.method public setSjco(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/Attend;->sjco:Ljava/lang/String;

    return-void
.end method

.method public setYyse(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/lotecs/attendcheck/domain/Attend;->yyse:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attend{yyse=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lotecs/attendcheck/domain/Attend;->yyse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", camp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/Attend;->camp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", psco=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/Attend;->psco:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sjco=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lotecs/attendcheck/domain/Attend;->sjco:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
