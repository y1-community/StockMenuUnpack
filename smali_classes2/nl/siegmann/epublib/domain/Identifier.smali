.class public Lnl/siegmann/epublib/domain/Identifier;
.super Ljava/lang/Object;
.source "Identifier.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/siegmann/epublib/domain/Identifier$Scheme;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xd44376a7d39d882L


# instance fields
.field private bookId:Z

.field private scheme:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID"

    invoke-direct {p0, v1, v0}, Lnl/siegmann/epublib/domain/Identifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lnl/siegmann/epublib/domain/Identifier;->bookId:Z

    .line 44
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Identifier;->scheme:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lnl/siegmann/epublib/domain/Identifier;->value:Ljava/lang/String;

    return-void
.end method

.method public static getBookIdIdentifier(Ljava/util/List;)Lnl/siegmann/epublib/domain/Identifier;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Identifier;",
            ">;)",
            "Lnl/siegmann/epublib/domain/Identifier;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 56
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/siegmann/epublib/domain/Identifier;

    .line 62
    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Identifier;->isBookId()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 69
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lnl/siegmann/epublib/domain/Identifier;

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 111
    instance-of v0, p1, Lnl/siegmann/epublib/domain/Identifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 114
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Identifier;->scheme:Ljava/lang/String;

    check-cast p1, Lnl/siegmann/epublib/domain/Identifier;

    iget-object v2, p1, Lnl/siegmann/epublib/domain/Identifier;->scheme:Ljava/lang/String;

    invoke-static {v0, v2}, Lnl/siegmann/epublib/util/StringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnl/siegmann/epublib/domain/Identifier;->value:Ljava/lang/String;

    iget-object p1, p1, Lnl/siegmann/epublib/domain/Identifier;->value:Ljava/lang/String;

    .line 115
    invoke-static {v0, p1}, Lnl/siegmann/epublib/util/StringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Identifier;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Identifier;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 107
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Identifier;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lnl/siegmann/epublib/util/StringUtil;->defaultIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Identifier;->value:Ljava/lang/String;

    invoke-static {v1}, Lnl/siegmann/epublib/util/StringUtil;->defaultIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isBookId()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lnl/siegmann/epublib/domain/Identifier;->bookId:Z

    return v0
.end method

.method public setBookId(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lnl/siegmann/epublib/domain/Identifier;->bookId:Z

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Identifier;->scheme:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Identifier;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Identifier;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Identifier;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Identifier;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Identifier;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
