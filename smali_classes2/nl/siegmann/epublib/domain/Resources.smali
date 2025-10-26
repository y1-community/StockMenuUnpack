.class public Lnl/siegmann/epublib/domain/Resources;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final IMAGE_PREFIX:Ljava/lang/String; = "image_"

.field private static final ITEM_PREFIX:Ljava/lang/String; = "item_"

.field private static final serialVersionUID:J = 0x2203439a92a323dbL


# instance fields
.field private lastId:I

.field private resources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lnl/siegmann/epublib/domain/Resources;->lastId:I

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    return-void
.end method

.method private createHref(Lnl/siegmann/epublib/domain/MediaType;I)Ljava/lang/String;
    .locals 2

    .line 184
    invoke-static {p1}, Lnl/siegmann/epublib/service/MediatypeService;->isBitmapImage(Lnl/siegmann/epublib/domain/MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/MediaType;->getDefaultExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/MediaType;->getDefaultExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createUniqueResourceId(Lnl/siegmann/epublib/domain/Resource;)Ljava/lang/String;
    .locals 3

    .line 102
    iget v0, p0, Lnl/siegmann/epublib/domain/Resources;->lastId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Resources contains 2147483647 elements: no new elements can be added"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lnl/siegmann/epublib/domain/Resources;->getResourceItemPrefix(Lnl/siegmann/epublib/domain/Resource;)Ljava/lang/String;

    move-result-object p1

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    :goto_1
    invoke-virtual {p0, v1}, Lnl/siegmann/epublib/domain/Resources;->containsId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 115
    :cond_2
    iput v0, p0, Lnl/siegmann/epublib/domain/Resources;->lastId:I

    return-object v1
.end method

.method public static findFirstResourceByMediaType(Ljava/util/Collection;Lnl/siegmann/epublib/domain/MediaType;)Lnl/siegmann/epublib/domain/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;",
            "Lnl/siegmann/epublib/domain/MediaType;",
            ")",
            "Lnl/siegmann/epublib/domain/Resource;"
        }
    .end annotation

    .line 316
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/siegmann/epublib/domain/Resource;

    .line 317
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private fixResourceHref(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 4

    .line 166
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnl/siegmann/epublib/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    .line 167
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnl/siegmann/epublib/domain/Resources;->createHref(Lnl/siegmann/epublib/domain/MediaType;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 176
    :goto_0
    iget-object v3, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v0

    add-int/2addr v2, v1

    invoke-direct {p0, v0, v2}, Lnl/siegmann/epublib/domain/Resources;->createHref(Lnl/siegmann/epublib/domain/MediaType;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p1, v0}, Lnl/siegmann/epublib/domain/Resource;->setHref(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Resource must have either a MediaType or a href"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private getResourceItemPrefix(Lnl/siegmann/epublib/domain/Resource;)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object p1

    invoke-static {p1}, Lnl/siegmann/epublib/service/MediatypeService;->isBitmapImage(Lnl/siegmann/epublib/domain/MediaType;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "image_"

    goto :goto_0

    :cond_0
    const-string p1, "item_"

    :goto_0
    return-object p1
.end method

.method private makeValidId(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;)Ljava/lang/String;
    .locals 1

    .line 79
    invoke-static {p1}, Lnl/siegmann/epublib/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lnl/siegmann/epublib/domain/Resources;->getResourceItemPrefix(Lnl/siegmann/epublib/domain/Resource;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public add(Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/Resource;
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lnl/siegmann/epublib/domain/Resources;->fixResourceHref(Lnl/siegmann/epublib/domain/Resource;)V

    .line 44
    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/domain/Resources;->fixResourceId(Lnl/siegmann/epublib/domain/Resource;)V

    .line 45
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;)V"
        }
    .end annotation

    .line 247
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/siegmann/epublib/domain/Resource;

    .line 248
    invoke-direct {p0, v0}, Lnl/siegmann/epublib/domain/Resources;->fixResourceHref(Lnl/siegmann/epublib/domain/Resource;)V

    .line 249
    iget-object v1, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsByHref(Ljava/lang/String;)Z
    .locals 2

    .line 225
    invoke-static {p1}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 228
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    const/16 v1, 0x23

    invoke-static {p1, v1}, Lnl/siegmann/epublib/util/StringUtil;->substringBefore(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsId(Ljava/lang/String;)Z
    .locals 3

    .line 126
    invoke-static {p1}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 129
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/siegmann/epublib/domain/Resource;

    .line 130
    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public findFirstResourceByMediaType(Lnl/siegmann/epublib/domain/MediaType;)Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 304
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lnl/siegmann/epublib/domain/Resources;->findFirstResourceByMediaType(Ljava/util/Collection;Lnl/siegmann/epublib/domain/MediaType;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    return-object p1
.end method

.method public fixResourceId(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 2

    .line 55
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lnl/siegmann/epublib/util/StringUtil;->substringBeforeLast(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 60
    invoke-static {v0, v1}, Lnl/siegmann/epublib/util/StringUtil;->substringAfterLast(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    invoke-direct {p0, v0, p1}, Lnl/siegmann/epublib/domain/Resources;->makeValidId(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resource;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lnl/siegmann/epublib/domain/Resources;->containsId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    :cond_1
    invoke-direct {p0, p1}, Lnl/siegmann/epublib/domain/Resources;->createUniqueResourceId(Lnl/siegmann/epublib/domain/Resource;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_2
    invoke-virtual {p1, v0}, Lnl/siegmann/epublib/domain/Resource;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public getAll()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAllHrefs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getByHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 287
    invoke-static {p1}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x23

    .line 290
    invoke-static {p1, v0}, Lnl/siegmann/epublib/util/StringUtil;->substringBefore(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    .line 291
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnl/siegmann/epublib/domain/Resource;

    return-object p1
.end method

.method public getById(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;
    .locals 4

    .line 144
    invoke-static {p1}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 147
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/siegmann/epublib/domain/Resource;

    .line 148
    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public getByIdOrHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 271
    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/domain/Resources;->getById(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/domain/Resources;->getByHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResourceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    return-object v0
.end method

.method public getResourcesByMediaType(Lnl/siegmann/epublib/domain/MediaType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl/siegmann/epublib/domain/MediaType;",
            ")",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Resources;->getAll()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/siegmann/epublib/domain/Resource;

    .line 336
    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 337
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getResourcesByMediaTypes([Lnl/siegmann/epublib/domain/MediaType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnl/siegmann/epublib/domain/MediaType;",
            ")",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 357
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 358
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Resources;->getAll()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/siegmann/epublib/domain/Resource;

    .line 359
    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 162
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnl/siegmann/epublib/domain/Resource;

    return-object p1
.end method

.method public set(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;)V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 238
    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/domain/Resources;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method public set(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnl/siegmann/epublib/domain/Resource;",
            ">;)V"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    return-void
.end method

.method public size()I
    .locals 1

    .line 201
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Resources;->resources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
