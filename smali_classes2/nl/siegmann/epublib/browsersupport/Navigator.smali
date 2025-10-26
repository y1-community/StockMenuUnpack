.class public Lnl/siegmann/epublib/browsersupport/Navigator;
.super Ljava/lang/Object;
.source "Navigator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xeef2bcae711bd22L


# instance fields
.field private book:Lnl/siegmann/epublib/domain/Book;

.field private currentFragmentId:Ljava/lang/String;

.field private currentPagePos:I

.field private currentResource:Lnl/siegmann/epublib/domain/Resource;

.field private currentSpinePos:I

.field private eventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/browsersupport/NavigationEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lnl/siegmann/epublib/browsersupport/Navigator;-><init>(Lnl/siegmann/epublib/domain/Book;)V

    return-void
.end method

.method public constructor <init>(Lnl/siegmann/epublib/domain/Book;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->eventListeners:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->book:Lnl/siegmann/epublib/domain/Book;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getCoverPage()Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentResource:Lnl/siegmann/epublib/domain/Resource;

    .line 43
    :cond_0
    iput v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentPagePos:I

    return-void
.end method

.method private declared-synchronized handleEventListeners(Lnl/siegmann/epublib/browsersupport/NavigationEvent;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 47
    :goto_0
    :try_start_0
    iget-object v1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->eventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 48
    iget-object v1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->eventListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/siegmann/epublib/browsersupport/NavigationEventListener;

    .line 49
    invoke-interface {v1, p1}, Lnl/siegmann/epublib/browsersupport/NavigationEventListener;->navigationPerformed(Lnl/siegmann/epublib/browsersupport/NavigationEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public addNavigationEventListener(Lnl/siegmann/epublib/browsersupport/NavigationEventListener;)Z
    .locals 1

    .line 54
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->eventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBook()Lnl/siegmann/epublib/domain/Book;
    .locals 1

    .line 198
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->book:Lnl/siegmann/epublib/domain/Book;

    return-object v0
.end method

.method public getCurrentFragmentId()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentFragmentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentResource()Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 182
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentResource:Lnl/siegmann/epublib/domain/Resource;

    return-object v0
.end method

.method public getCurrentSectionPos()I
    .locals 1

    .line 218
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentPagePos:I

    return v0
.end method

.method public getCurrentSpinePos()I
    .locals 1

    .line 178
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    return v0
.end method

.method public gotoBook(Lnl/siegmann/epublib/domain/Book;Ljava/lang/Object;)V
    .locals 2

    .line 162
    new-instance v0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;

    invoke-direct {v0, p2, p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;-><init>(Ljava/lang/Object;Lnl/siegmann/epublib/browsersupport/Navigator;)V

    .line 163
    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->book:Lnl/siegmann/epublib/domain/Book;

    const/4 p2, 0x0

    .line 164
    iput-object p2, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentFragmentId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 165
    iput v1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentPagePos:I

    .line 166
    iput-object p2, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentResource:Lnl/siegmann/epublib/domain/Resource;

    .line 167
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object p1

    iget-object p2, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentResource:Lnl/siegmann/epublib/domain/Resource;

    invoke-virtual {p1, p2}, Lnl/siegmann/epublib/domain/Spine;->getResourceIndex(Lnl/siegmann/epublib/domain/Resource;)I

    move-result p1

    iput p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    .line 168
    invoke-direct {p0, v0}, Lnl/siegmann/epublib/browsersupport/Navigator;->handleEventListeners(Lnl/siegmann/epublib/browsersupport/NavigationEvent;)V

    return-void
.end method

.method public gotoFirstSpineSection(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0, p1}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoSpineSection(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public gotoLastSpineSection(Ljava/lang/Object;)I
    .locals 1

    .line 158
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->book:Lnl/siegmann/epublib/domain/Book;

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v0

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Spine;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoSpineSection(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public gotoNextSpineSection(Ljava/lang/Object;)I
    .locals 1

    .line 87
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0, p1}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoSpineSection(ILjava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 90
    invoke-virtual {p0, v0, p1}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoSpineSection(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public gotoPreviousSpineSection(ILjava/lang/Object;)I
    .locals 1

    .line 71
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0, p1, p2}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoSpineSection(IILjava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 74
    invoke-virtual {p0, v0, p1, p2}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoSpineSection(IILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public gotoPreviousSpineSection(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0, p1}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoPreviousSpineSection(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public gotoResource(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1

    .line 95
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->book:Lnl/siegmann/epublib/domain/Book;

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Book;->getResources()Lnl/siegmann/epublib/domain/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/siegmann/epublib/domain/Resources;->getByHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    .line 96
    invoke-virtual {p0, p1, p2}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoResource(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public gotoResource(Lnl/siegmann/epublib/domain/Resource;ILjava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, p2, v0, p3}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoResource(Lnl/siegmann/epublib/domain/Resource;ILjava/lang/String;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public gotoResource(Lnl/siegmann/epublib/domain/Resource;ILjava/lang/String;Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 116
    :cond_0
    new-instance v0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;

    invoke-direct {v0, p4, p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;-><init>(Ljava/lang/Object;Lnl/siegmann/epublib/browsersupport/Navigator;)V

    .line 117
    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentResource:Lnl/siegmann/epublib/domain/Resource;

    .line 118
    iget-object p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->book:Lnl/siegmann/epublib/domain/Book;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object p1

    iget-object p4, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentResource:Lnl/siegmann/epublib/domain/Resource;

    invoke-virtual {p1, p4}, Lnl/siegmann/epublib/domain/Spine;->getResourceIndex(Lnl/siegmann/epublib/domain/Resource;)I

    move-result p1

    iput p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    .line 119
    iput p2, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentPagePos:I

    .line 120
    iput-object p3, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentFragmentId:Ljava/lang/String;

    .line 121
    invoke-direct {p0, v0}, Lnl/siegmann/epublib/browsersupport/Navigator;->handleEventListeners(Lnl/siegmann/epublib/browsersupport/NavigationEvent;)V

    .line 123
    iget p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    return p1
.end method

.method public gotoResource(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, p1, v0, v1, p2}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoResource(Lnl/siegmann/epublib/domain/Resource;ILjava/lang/String;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public gotoResource(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0, p2, p3}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoResource(Lnl/siegmann/epublib/domain/Resource;ILjava/lang/String;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public gotoResourceId(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1

    .line 127
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->book:Lnl/siegmann/epublib/domain/Book;

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/siegmann/epublib/domain/Spine;->findFirstResourceById(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoSpineSection(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public gotoSpineSection(IILjava/lang/Object;)I
    .locals 1

    .line 143
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    if-ltz p1, :cond_2

    .line 146
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->book:Lnl/siegmann/epublib/domain/Book;

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v0

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Spine;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    new-instance v0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;

    invoke-direct {v0, p3, p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;-><init>(Ljava/lang/Object;Lnl/siegmann/epublib/browsersupport/Navigator;)V

    .line 150
    iput p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    .line 151
    iput p2, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentPagePos:I

    .line 152
    iget-object p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->book:Lnl/siegmann/epublib/domain/Book;

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object p1

    iget p2, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    invoke-virtual {p1, p2}, Lnl/siegmann/epublib/domain/Spine;->getResource(I)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentResource:Lnl/siegmann/epublib/domain/Resource;

    .line 153
    invoke-direct {p0, v0}, Lnl/siegmann/epublib/browsersupport/Navigator;->handleEventListeners(Lnl/siegmann/epublib/browsersupport/NavigationEvent;)V

    .line 154
    iget p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    return p1

    .line 147
    :cond_2
    :goto_0
    iget p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    return p1
.end method

.method public gotoSpineSection(ILjava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, v0, p2}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoSpineSection(IILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hasNextSpineSection()Z
    .locals 3

    .line 79
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    iget-object v1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->book:Lnl/siegmann/epublib/domain/Book;

    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v1

    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Spine;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public hasPreviousSpineSection()Z
    .locals 1

    .line 83
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeNavigationEventListener(Lnl/siegmann/epublib/browsersupport/NavigationEventListener;)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->eventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setCurrentResource(Lnl/siegmann/epublib/domain/Resource;)I
    .locals 1

    .line 208
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->book:Lnl/siegmann/epublib/domain/Book;

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/siegmann/epublib/domain/Spine;->getResourceIndex(Lnl/siegmann/epublib/domain/Resource;)I

    move-result v0

    iput v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    .line 209
    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentResource:Lnl/siegmann/epublib/domain/Resource;

    return v0
.end method

.method public setCurrentSpinePos(I)V
    .locals 1

    .line 193
    iput p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentSpinePos:I

    .line 194
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->book:Lnl/siegmann/epublib/domain/Book;

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnl/siegmann/epublib/domain/Spine;->getResource(I)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/Navigator;->currentResource:Lnl/siegmann/epublib/domain/Resource;

    return-void
.end method
