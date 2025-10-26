.class public Lnl/siegmann/epublib/domain/Spine;
.super Ljava/lang/Object;
.source "Spine.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x35d3249c901ba23eL


# instance fields
.field private spineReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/SpineReference;",
            ">;"
        }
    .end annotation
.end field

.field private tocResource:Lnl/siegmann/epublib/domain/Resource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lnl/siegmann/epublib/domain/Spine;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/SpineReference;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lnl/siegmann/epublib/domain/TableOfContents;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/TableOfContents;->getAllUniqueResources()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lnl/siegmann/epublib/domain/Spine;->createSpineReferences(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    return-void
.end method

.method public static createSpineReferences(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;)",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/SpineReference;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/siegmann/epublib/domain/Resource;

    .line 49
    new-instance v2, Lnl/siegmann/epublib/domain/SpineReference;

    invoke-direct {v2, v1}, Lnl/siegmann/epublib/domain/SpineReference;-><init>(Lnl/siegmann/epublib/domain/Resource;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addResource(Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/SpineReference;
    .locals 1

    .line 117
    new-instance v0, Lnl/siegmann/epublib/domain/SpineReference;

    invoke-direct {v0, p1}, Lnl/siegmann/epublib/domain/SpineReference;-><init>(Lnl/siegmann/epublib/domain/Resource;)V

    invoke-virtual {p0, v0}, Lnl/siegmann/epublib/domain/Spine;->addSpineReference(Lnl/siegmann/epublib/domain/SpineReference;)Lnl/siegmann/epublib/domain/SpineReference;

    move-result-object p1

    return-object p1
.end method

.method public addSpineReference(Lnl/siegmann/epublib/domain/SpineReference;)Lnl/siegmann/epublib/domain/SpineReference;
    .locals 1

    .line 104
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    .line 107
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public findFirstResourceById(Ljava/lang/String;)I
    .locals 3

    .line 84
    invoke-static {p1}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    iget-object v2, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 89
    iget-object v2, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/siegmann/epublib/domain/SpineReference;

    .line 90
    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/SpineReference;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getResource(I)Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    if-ltz p1, :cond_1

    .line 69
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnl/siegmann/epublib/domain/SpineReference;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/SpineReference;->getResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResourceIndex(Ljava/lang/String;)I
    .locals 3

    .line 172
    invoke-static {p1}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    iget-object v2, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 176
    iget-object v2, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/siegmann/epublib/domain/SpineReference;

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/SpineReference;->getResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public getResourceIndex(Lnl/siegmann/epublib/domain/Resource;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 161
    :cond_0
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/domain/Spine;->getResourceIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSpineReferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/SpineReference;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    return-object v0
.end method

.method public getTocResource()Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 147
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Spine;->tocResource:Lnl/siegmann/epublib/domain/Resource;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setSpineReferences(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/SpineReference;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    return-void
.end method

.method public setTocResource(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Spine;->tocResource:Lnl/siegmann/epublib/domain/Resource;

    return-void
.end method

.method public size()I
    .locals 1

    .line 126
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Spine;->spineReferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
