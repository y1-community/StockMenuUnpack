.class public Lnl/siegmann/epublib/domain/Book;
.super Ljava/lang/Object;
.source "Book.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1cb44611be95b1f4L


# instance fields
.field private coverImage:Lnl/siegmann/epublib/domain/Resource;

.field private guide:Lnl/siegmann/epublib/domain/Guide;

.field private metadata:Lnl/siegmann/epublib/domain/Metadata;

.field private ncxResource:Lnl/siegmann/epublib/domain/Resource;

.field private opfResource:Lnl/siegmann/epublib/domain/Resource;

.field private resources:Lnl/siegmann/epublib/domain/Resources;

.field private spine:Lnl/siegmann/epublib/domain/Spine;

.field private tableOfContents:Lnl/siegmann/epublib/domain/TableOfContents;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    new-instance v0, Lnl/siegmann/epublib/domain/Resources;

    invoke-direct {v0}, Lnl/siegmann/epublib/domain/Resources;-><init>()V

    iput-object v0, p0, Lnl/siegmann/epublib/domain/Book;->resources:Lnl/siegmann/epublib/domain/Resources;

    .line 301
    new-instance v0, Lnl/siegmann/epublib/domain/Metadata;

    invoke-direct {v0}, Lnl/siegmann/epublib/domain/Metadata;-><init>()V

    iput-object v0, p0, Lnl/siegmann/epublib/domain/Book;->metadata:Lnl/siegmann/epublib/domain/Metadata;

    .line 302
    new-instance v0, Lnl/siegmann/epublib/domain/Spine;

    invoke-direct {v0}, Lnl/siegmann/epublib/domain/Spine;-><init>()V

    iput-object v0, p0, Lnl/siegmann/epublib/domain/Book;->spine:Lnl/siegmann/epublib/domain/Spine;

    .line 303
    new-instance v0, Lnl/siegmann/epublib/domain/TableOfContents;

    invoke-direct {v0}, Lnl/siegmann/epublib/domain/TableOfContents;-><init>()V

    iput-object v0, p0, Lnl/siegmann/epublib/domain/Book;->tableOfContents:Lnl/siegmann/epublib/domain/TableOfContents;

    .line 304
    new-instance v0, Lnl/siegmann/epublib/domain/Guide;

    invoke-direct {v0}, Lnl/siegmann/epublib/domain/Guide;-><init>()V

    iput-object v0, p0, Lnl/siegmann/epublib/domain/Book;->guide:Lnl/siegmann/epublib/domain/Guide;

    return-void
.end method

.method private static addToContentsResult(Lnl/siegmann/epublib/domain/Resource;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl/siegmann/epublib/domain/Resource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 509
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public addResource(Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 371
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->resources:Lnl/siegmann/epublib/domain/Resources;

    invoke-virtual {v0, p1}, Lnl/siegmann/epublib/domain/Resources;->add(Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    return-object p1
.end method

.method public addSection(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/TOCReference;
    .locals 2

    .line 343
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getResources()Lnl/siegmann/epublib/domain/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnl/siegmann/epublib/domain/Resources;->add(Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/Resource;

    .line 344
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->tableOfContents:Lnl/siegmann/epublib/domain/TableOfContents;

    new-instance v1, Lnl/siegmann/epublib/domain/TOCReference;

    invoke-direct {v1, p1, p2}, Lnl/siegmann/epublib/domain/TOCReference;-><init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;)V

    invoke-virtual {v0, v1}, Lnl/siegmann/epublib/domain/TableOfContents;->addTOCReference(Lnl/siegmann/epublib/domain/TOCReference;)Lnl/siegmann/epublib/domain/TOCReference;

    move-result-object p1

    .line 345
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->spine:Lnl/siegmann/epublib/domain/Spine;

    invoke-virtual {p2}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnl/siegmann/epublib/domain/Spine;->findFirstResourceById(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 346
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->spine:Lnl/siegmann/epublib/domain/Spine;

    new-instance v1, Lnl/siegmann/epublib/domain/SpineReference;

    invoke-direct {v1, p2}, Lnl/siegmann/epublib/domain/SpineReference;-><init>(Lnl/siegmann/epublib/domain/Resource;)V

    invoke-virtual {v0, v1}, Lnl/siegmann/epublib/domain/Spine;->addSpineReference(Lnl/siegmann/epublib/domain/SpineReference;)Lnl/siegmann/epublib/domain/SpineReference;

    :cond_0
    return-object p1
.end method

.method public addSection(Lnl/siegmann/epublib/domain/TOCReference;Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/TOCReference;
    .locals 2

    .line 319
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getResources()Lnl/siegmann/epublib/domain/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Lnl/siegmann/epublib/domain/Resources;->add(Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/Resource;

    .line 320
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->spine:Lnl/siegmann/epublib/domain/Spine;

    invoke-virtual {p3}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnl/siegmann/epublib/domain/Spine;->findFirstResourceById(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 321
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->spine:Lnl/siegmann/epublib/domain/Spine;

    new-instance v1, Lnl/siegmann/epublib/domain/SpineReference;

    invoke-direct {v1, p3}, Lnl/siegmann/epublib/domain/SpineReference;-><init>(Lnl/siegmann/epublib/domain/Resource;)V

    invoke-virtual {v0, v1}, Lnl/siegmann/epublib/domain/Spine;->addSpineReference(Lnl/siegmann/epublib/domain/SpineReference;)Lnl/siegmann/epublib/domain/SpineReference;

    .line 323
    :cond_0
    new-instance v0, Lnl/siegmann/epublib/domain/TOCReference;

    invoke-direct {v0, p2, p3}, Lnl/siegmann/epublib/domain/TOCReference;-><init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;)V

    invoke-virtual {p1, v0}, Lnl/siegmann/epublib/domain/TOCReference;->addChildSection(Lnl/siegmann/epublib/domain/TOCReference;)Lnl/siegmann/epublib/domain/TOCReference;

    move-result-object p1

    return-object p1
.end method

.method public generateSpineFromTableOfContents()V
    .locals 2

    .line 327
    new-instance v0, Lnl/siegmann/epublib/domain/Spine;

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Book;->tableOfContents:Lnl/siegmann/epublib/domain/TableOfContents;

    invoke-direct {v0, v1}, Lnl/siegmann/epublib/domain/Spine;-><init>(Lnl/siegmann/epublib/domain/TableOfContents;)V

    .line 330
    iget-object v1, p0, Lnl/siegmann/epublib/domain/Book;->spine:Lnl/siegmann/epublib/domain/Spine;

    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Spine;->getTocResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnl/siegmann/epublib/domain/Spine;->setTocResource(Lnl/siegmann/epublib/domain/Resource;)V

    .line 332
    iput-object v0, p0, Lnl/siegmann/epublib/domain/Book;->spine:Lnl/siegmann/epublib/domain/Spine;

    return-void
.end method

.method public getContents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;"
        }
    .end annotation

    .line 490
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 491
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getCoverPage()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v1

    invoke-static {v1, v0}, Lnl/siegmann/epublib/domain/Book;->addToContentsResult(Lnl/siegmann/epublib/domain/Resource;Ljava/util/Map;)V

    .line 493
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v1

    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Spine;->getSpineReferences()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/siegmann/epublib/domain/SpineReference;

    .line 494
    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/SpineReference;->getResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v2

    invoke-static {v2, v0}, Lnl/siegmann/epublib/domain/Book;->addToContentsResult(Lnl/siegmann/epublib/domain/Resource;Ljava/util/Map;)V

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getTableOfContents()Lnl/siegmann/epublib/domain/TableOfContents;

    move-result-object v1

    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/TableOfContents;->getAllUniqueResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/siegmann/epublib/domain/Resource;

    .line 498
    invoke-static {v2, v0}, Lnl/siegmann/epublib/domain/Book;->addToContentsResult(Lnl/siegmann/epublib/domain/Resource;Ljava/util/Map;)V

    goto :goto_1

    .line 501
    :cond_1
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getGuide()Lnl/siegmann/epublib/domain/Guide;

    move-result-object v1

    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Guide;->getReferences()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/siegmann/epublib/domain/GuideReference;

    .line 502
    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/GuideReference;->getResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v2

    invoke-static {v2, v0}, Lnl/siegmann/epublib/domain/Book;->addToContentsResult(Lnl/siegmann/epublib/domain/Resource;Ljava/util/Map;)V

    goto :goto_2

    .line 505
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getCoverImage()Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 454
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->coverImage:Lnl/siegmann/epublib/domain/Resource;

    return-object v0
.end method

.method public getCoverPage()Lnl/siegmann/epublib/domain/Resource;
    .locals 2

    .line 420
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->guide:Lnl/siegmann/epublib/domain/Guide;

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Guide;->getCoverPage()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->spine:Lnl/siegmann/epublib/domain/Spine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnl/siegmann/epublib/domain/Spine;->getResource(I)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGuide()Lnl/siegmann/epublib/domain/Guide;
    .locals 1

    .line 473
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->guide:Lnl/siegmann/epublib/domain/Guide;

    return-object v0
.end method

.method public getMetadata()Lnl/siegmann/epublib/domain/Metadata;
    .locals 1

    .line 358
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->metadata:Lnl/siegmann/epublib/domain/Metadata;

    return-object v0
.end method

.method public getNcxResource()Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 527
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->ncxResource:Lnl/siegmann/epublib/domain/Resource;

    return-object v0
.end method

.method public getOpfResource()Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 515
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->opfResource:Lnl/siegmann/epublib/domain/Resource;

    return-object v0
.end method

.method public getResources()Lnl/siegmann/epublib/domain/Resources;
    .locals 1

    .line 380
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->resources:Lnl/siegmann/epublib/domain/Resources;

    return-object v0
.end method

.method public getSpine()Lnl/siegmann/epublib/domain/Spine;
    .locals 1

    .line 390
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->spine:Lnl/siegmann/epublib/domain/Spine;

    return-object v0
.end method

.method public getTableOfContents()Lnl/siegmann/epublib/domain/TableOfContents;
    .locals 1

    .line 405
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->tableOfContents:Lnl/siegmann/epublib/domain/TableOfContents;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 444
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Metadata;->getFirstTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCoverImage(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->resources:Lnl/siegmann/epublib/domain/Resources;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnl/siegmann/epublib/domain/Resources;->containsByHref(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->resources:Lnl/siegmann/epublib/domain/Resources;

    invoke-virtual {v0, p1}, Lnl/siegmann/epublib/domain/Resources;->add(Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/Resource;

    .line 464
    :cond_1
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Book;->coverImage:Lnl/siegmann/epublib/domain/Resource;

    return-void
.end method

.method public setCoverPage(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->resources:Lnl/siegmann/epublib/domain/Resources;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnl/siegmann/epublib/domain/Resources;->containsByHref(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->resources:Lnl/siegmann/epublib/domain/Resources;

    invoke-virtual {v0, p1}, Lnl/siegmann/epublib/domain/Resources;->add(Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/Resource;

    .line 435
    :cond_1
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Book;->guide:Lnl/siegmann/epublib/domain/Guide;

    invoke-virtual {v0, p1}, Lnl/siegmann/epublib/domain/Guide;->setCoverPage(Lnl/siegmann/epublib/domain/Resource;)V

    return-void
.end method

.method public setMetadata(Lnl/siegmann/epublib/domain/Metadata;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Book;->metadata:Lnl/siegmann/epublib/domain/Metadata;

    return-void
.end method

.method public setNcxResource(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Book;->ncxResource:Lnl/siegmann/epublib/domain/Resource;

    return-void
.end method

.method public setOpfResource(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Book;->opfResource:Lnl/siegmann/epublib/domain/Resource;

    return-void
.end method

.method public setResources(Lnl/siegmann/epublib/domain/Resources;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Book;->resources:Lnl/siegmann/epublib/domain/Resources;

    return-void
.end method

.method public setSpine(Lnl/siegmann/epublib/domain/Spine;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Book;->spine:Lnl/siegmann/epublib/domain/Spine;

    return-void
.end method

.method public setTableOfContents(Lnl/siegmann/epublib/domain/TableOfContents;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Book;->tableOfContents:Lnl/siegmann/epublib/domain/TableOfContents;

    return-void
.end method
