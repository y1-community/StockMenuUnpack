.class public Lnl/siegmann/epublib/domain/Author;
.super Ljava/lang/Object;
.source "Author.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5c792eba5040bcf8L


# instance fields
.field private firstname:Ljava/lang/String;

.field private lastname:Ljava/lang/String;

.field private relator:Lnl/siegmann/epublib/domain/Relator;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 22
    invoke-direct {p0, v0, p1}, Lnl/siegmann/epublib/domain/Author;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lnl/siegmann/epublib/domain/Relator;->AUTHOR:Lnl/siegmann/epublib/domain/Relator;

    iput-object v0, p0, Lnl/siegmann/epublib/domain/Author;->relator:Lnl/siegmann/epublib/domain/Relator;

    .line 27
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Author;->firstname:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lnl/siegmann/epublib/domain/Author;->lastname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 54
    instance-of v0, p1, Lnl/siegmann/epublib/domain/Author;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 57
    :cond_0
    check-cast p1, Lnl/siegmann/epublib/domain/Author;

    .line 58
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Author;->firstname:Ljava/lang/String;

    iget-object v2, p1, Lnl/siegmann/epublib/domain/Author;->firstname:Ljava/lang/String;

    invoke-static {v0, v2}, Lnl/siegmann/epublib/util/StringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnl/siegmann/epublib/domain/Author;->lastname:Ljava/lang/String;

    iget-object p1, p1, Lnl/siegmann/epublib/domain/Author;->lastname:Ljava/lang/String;

    .line 59
    invoke-static {v0, p1}, Lnl/siegmann/epublib/util/StringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getFirstname()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Author;->firstname:Ljava/lang/String;

    return-object v0
.end method

.method public getLastname()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Author;->lastname:Ljava/lang/String;

    return-object v0
.end method

.method public getRelator()Lnl/siegmann/epublib/domain/Relator;
    .locals 1

    .line 73
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Author;->relator:Lnl/siegmann/epublib/domain/Relator;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lnl/siegmann/epublib/domain/Author;->firstname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Author;->lastname:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lnl/siegmann/epublib/util/StringUtil;->hashCode([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFirstname(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Author;->firstname:Ljava/lang/String;

    return-void
.end method

.method public setLastname(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Author;->lastname:Ljava/lang/String;

    return-void
.end method

.method public setRelator(Lnl/siegmann/epublib/domain/Relator;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Author;->relator:Lnl/siegmann/epublib/domain/Relator;

    return-void
.end method

.method public setRole(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Relator;
    .locals 0

    .line 63
    invoke-static {p1}, Lnl/siegmann/epublib/domain/Relator;->byCode(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Relator;

    move-result-object p1

    if-nez p1, :cond_0

    .line 65
    sget-object p1, Lnl/siegmann/epublib/domain/Relator;->AUTHOR:Lnl/siegmann/epublib/domain/Relator;

    .line 67
    :cond_0
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Author;->relator:Lnl/siegmann/epublib/domain/Relator;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Author;->lastname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Author;->firstname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
