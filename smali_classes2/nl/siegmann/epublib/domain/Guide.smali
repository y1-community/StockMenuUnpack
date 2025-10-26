.class public Lnl/siegmann/epublib/domain/Guide;
.super Ljava/lang/Object;
.source "Guide.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final COVERPAGE_NOT_FOUND:I = -0x1

.field private static final COVERPAGE_UNITIALIZED:I = -0x2

.field public static final DEFAULT_COVER_TITLE:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x56d411c99b480f15L


# instance fields
.field private coverPageIndex:I

.field private references:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/GuideReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lnl/siegmann/epublib/domain/GuideReference;->COVER:Ljava/lang/String;

    sput-object v0, Lnl/siegmann/epublib/domain/Guide;->DEFAULT_COVER_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/siegmann/epublib/domain/Guide;->references:Ljava/util/List;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lnl/siegmann/epublib/domain/Guide;->coverPageIndex:I

    return-void
.end method

.method private checkCoverPage()V
    .locals 2

    .line 65
    iget v0, p0, Lnl/siegmann/epublib/domain/Guide;->coverPageIndex:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 66
    invoke-direct {p0}, Lnl/siegmann/epublib/domain/Guide;->initCoverPage()V

    :cond_0
    return-void
.end method

.method private initCoverPage()V
    .locals 3

    const/4 v0, 0x0

    .line 73
    :goto_0
    iget-object v1, p0, Lnl/siegmann/epublib/domain/Guide;->references:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lnl/siegmann/epublib/domain/Guide;->references:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/siegmann/epublib/domain/GuideReference;

    .line 75
    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/GuideReference;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnl/siegmann/epublib/domain/GuideReference;->COVER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 80
    :goto_1
    iput v0, p0, Lnl/siegmann/epublib/domain/Guide;->coverPageIndex:I

    return-void
.end method

.method private uncheckCoverPage()V
    .locals 1

    const/4 v0, -0x2

    .line 43
    iput v0, p0, Lnl/siegmann/epublib/domain/Guide;->coverPageIndex:I

    return-void
.end method


# virtual methods
.method public addReference(Lnl/siegmann/epublib/domain/GuideReference;)Lnl/siegmann/epublib/domain/ResourceReference;
    .locals 1

    .line 103
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Guide;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-direct {p0}, Lnl/siegmann/epublib/domain/Guide;->uncheckCoverPage()V

    return-object p1
.end method

.method public getCoverPage()Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Guide;->getCoverReference()Lnl/siegmann/epublib/domain/GuideReference;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/GuideReference;->getResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getCoverReference()Lnl/siegmann/epublib/domain/GuideReference;
    .locals 2

    .line 47
    invoke-direct {p0}, Lnl/siegmann/epublib/domain/Guide;->checkCoverPage()V

    .line 48
    iget v0, p0, Lnl/siegmann/epublib/domain/Guide;->coverPageIndex:I

    if-ltz v0, :cond_0

    .line 49
    iget-object v1, p0, Lnl/siegmann/epublib/domain/Guide;->references:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/siegmann/epublib/domain/GuideReference;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGuideReferencesByType(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/GuideReference;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v1, p0, Lnl/siegmann/epublib/domain/Guide;->references:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/siegmann/epublib/domain/GuideReference;

    .line 117
    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/GuideReference;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getReferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/GuideReference;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Guide;->references:Ljava/util/List;

    return-object v0
.end method

.method public setCoverPage(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 3

    .line 97
    new-instance v0, Lnl/siegmann/epublib/domain/GuideReference;

    sget-object v1, Lnl/siegmann/epublib/domain/GuideReference;->COVER:Ljava/lang/String;

    sget-object v2, Lnl/siegmann/epublib/domain/Guide;->DEFAULT_COVER_TITLE:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lnl/siegmann/epublib/domain/GuideReference;-><init>(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v0}, Lnl/siegmann/epublib/domain/Guide;->setCoverReference(Lnl/siegmann/epublib/domain/GuideReference;)I

    return-void
.end method

.method public setCoverReference(Lnl/siegmann/epublib/domain/GuideReference;)I
    .locals 2

    .line 55
    iget v0, p0, Lnl/siegmann/epublib/domain/Guide;->coverPageIndex:I

    if-ltz v0, :cond_0

    .line 56
    iget-object v1, p0, Lnl/siegmann/epublib/domain/Guide;->references:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Guide;->references:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 59
    iput v1, p0, Lnl/siegmann/epublib/domain/Guide;->coverPageIndex:I

    .line 61
    :goto_0
    iget p1, p0, Lnl/siegmann/epublib/domain/Guide;->coverPageIndex:I

    return p1
.end method

.method public setReferences(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/GuideReference;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Guide;->references:Ljava/util/List;

    .line 39
    invoke-direct {p0}, Lnl/siegmann/epublib/domain/Guide;->uncheckCoverPage()V

    return-void
.end method
