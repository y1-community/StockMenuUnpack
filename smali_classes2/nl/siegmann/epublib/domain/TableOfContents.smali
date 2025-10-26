.class public Lnl/siegmann/epublib/domain/TableOfContents;
.super Ljava/lang/Object;
.source "TableOfContents.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_PATH_SEPARATOR:Ljava/lang/String; = "/"

.field private static final serialVersionUID:J = -0x2badc7a83b5db650L


# instance fields
.field private tocReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lnl/siegmann/epublib/domain/TableOfContents;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lnl/siegmann/epublib/domain/TableOfContents;->tocReferences:Ljava/util/List;

    return-void
.end method

.method private calculateDepth(Ljava/util/List;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;I)I"
        }
    .end annotation

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/siegmann/epublib/domain/TOCReference;

    .line 247
    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/TOCReference;->getChildren()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lnl/siegmann/epublib/domain/TableOfContents;->calculateDepth(Ljava/util/List;I)I

    move-result v1

    if-le v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/2addr p2, v0

    return p2
.end method

.method private createSectionTitle([IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_1

    if-lez p4, :cond_0

    .line 176
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_0
    aget v1, p1, p4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    .line 181
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 183
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static findTocReferenceByTitle(Ljava/lang/String;Ljava/util/List;)Lnl/siegmann/epublib/domain/TOCReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;)",
            "Lnl/siegmann/epublib/domain/TOCReference;"
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/siegmann/epublib/domain/TOCReference;

    .line 81
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/TOCReference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAllUniqueResources(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;)V"
        }
    .end annotation

    .line 209
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/siegmann/epublib/domain/TOCReference;

    .line 210
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/TOCReference;->getResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/TOCReference;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnl/siegmann/epublib/domain/TableOfContents;->getAllUniqueResources(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getTotalSize(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;)I"
        }
    .end annotation

    .line 229
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 230
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/siegmann/epublib/domain/TOCReference;

    .line 231
    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/TOCReference;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lnl/siegmann/epublib/domain/TableOfContents;->getTotalSize(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private paddTOCReferences(Ljava/util/List;[IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;[II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    aget v1, p2, p3

    if-gt v0, v1, :cond_0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, v0

    move-object v5, p4

    move-object v6, p5

    .line 165
    invoke-direct/range {v1 .. v6}, Lnl/siegmann/epublib/domain/TableOfContents;->createSectionTitle([IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    new-instance v2, Lnl/siegmann/epublib/domain/TOCReference;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lnl/siegmann/epublib/domain/TOCReference;-><init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addSection(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;)Lnl/siegmann/epublib/domain/TOCReference;
    .locals 1

    const-string v0, "/"

    .line 56
    invoke-virtual {p0, p1, p2, v0}, Lnl/siegmann/epublib/domain/TableOfContents;->addSection(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;Ljava/lang/String;)Lnl/siegmann/epublib/domain/TOCReference;

    move-result-object p1

    return-object p1
.end method

.method public addSection(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;Ljava/lang/String;)Lnl/siegmann/epublib/domain/TOCReference;
    .locals 0

    .line 68
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-virtual {p0, p1, p2}, Lnl/siegmann/epublib/domain/TableOfContents;->addSection(Lnl/siegmann/epublib/domain/Resource;[Ljava/lang/String;)Lnl/siegmann/epublib/domain/TOCReference;

    move-result-object p1

    return-object p1
.end method

.method public addSection(Lnl/siegmann/epublib/domain/Resource;[ILjava/lang/String;Ljava/lang/String;)Lnl/siegmann/epublib/domain/TOCReference;
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 140
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_2

    .line 144
    :cond_0
    iget-object v1, p0, Lnl/siegmann/epublib/domain/TableOfContents;->tocReferences:Ljava/util/List;

    const/4 v2, 0x0

    move-object v3, v0

    .line 145
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_3

    .line 146
    aget v9, p2, v2

    if-lez v9, :cond_1

    .line 147
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v9, v3, :cond_1

    .line 148
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnl/siegmann/epublib/domain/TOCReference;

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-nez v3, :cond_2

    move-object v3, p0

    move-object v4, v1

    move-object v5, p2

    move v6, v2

    move-object v7, p3

    move-object v8, p4

    .line 153
    invoke-direct/range {v3 .. v8}, Lnl/siegmann/epublib/domain/TableOfContents;->paddTOCReferences(Ljava/util/List;[IILjava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/siegmann/epublib/domain/TOCReference;

    move-object v3, v1

    .line 156
    :cond_2
    invoke-virtual {v3}, Lnl/siegmann/epublib/domain/TOCReference;->getChildren()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {v3, p1}, Lnl/siegmann/epublib/domain/TOCReference;->setResource(Lnl/siegmann/epublib/domain/Resource;)V

    return-object v3

    :cond_4
    :goto_2
    return-object v0
.end method

.method public addSection(Lnl/siegmann/epublib/domain/Resource;[Ljava/lang/String;)Lnl/siegmann/epublib/domain/TOCReference;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 105
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    iget-object v1, p0, Lnl/siegmann/epublib/domain/TableOfContents;->tocReferences:Ljava/util/List;

    const/4 v2, 0x0

    move-object v3, v0

    .line 110
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 111
    aget-object v3, p2, v2

    .line 112
    invoke-static {v3, v1}, Lnl/siegmann/epublib/domain/TableOfContents;->findTocReferenceByTitle(Ljava/lang/String;Ljava/util/List;)Lnl/siegmann/epublib/domain/TOCReference;

    move-result-object v4

    if-nez v4, :cond_1

    .line 114
    new-instance v4, Lnl/siegmann/epublib/domain/TOCReference;

    invoke-direct {v4, v3, v0}, Lnl/siegmann/epublib/domain/TOCReference;-><init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;)V

    .line 115
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v3, v4

    .line 117
    invoke-virtual {v3}, Lnl/siegmann/epublib/domain/TOCReference;->getChildren()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v3, p1}, Lnl/siegmann/epublib/domain/TOCReference;->setResource(Lnl/siegmann/epublib/domain/Resource;)V

    return-object v3

    :cond_3
    :goto_1
    return-object v0
.end method

.method public addTOCReference(Lnl/siegmann/epublib/domain/TOCReference;)Lnl/siegmann/epublib/domain/TOCReference;
    .locals 1

    .line 188
    iget-object v0, p0, Lnl/siegmann/epublib/domain/TableOfContents;->tocReferences:Ljava/util/List;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/siegmann/epublib/domain/TableOfContents;->tocReferences:Ljava/util/List;

    .line 191
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/domain/TableOfContents;->tocReferences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public calculateDepth()I
    .locals 2

    .line 241
    iget-object v0, p0, Lnl/siegmann/epublib/domain/TableOfContents;->tocReferences:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnl/siegmann/epublib/domain/TableOfContents;->calculateDepth(Ljava/util/List;I)I

    move-result v0

    return v0
.end method

.method public getAllUniqueResources()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iget-object v2, p0, Lnl/siegmann/epublib/domain/TableOfContents;->tocReferences:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lnl/siegmann/epublib/domain/TableOfContents;->getAllUniqueResources(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public getTocReferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lnl/siegmann/epublib/domain/TableOfContents;->tocReferences:Ljava/util/List;

    return-object v0
.end method

.method public setTocReferences(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/TOCReference;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lnl/siegmann/epublib/domain/TableOfContents;->tocReferences:Ljava/util/List;

    return-void
.end method

.method public size()I
    .locals 1

    .line 225
    iget-object v0, p0, Lnl/siegmann/epublib/domain/TableOfContents;->tocReferences:Ljava/util/List;

    invoke-static {v0}, Lnl/siegmann/epublib/domain/TableOfContents;->getTotalSize(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method
