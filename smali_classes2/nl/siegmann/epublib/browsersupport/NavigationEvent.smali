.class public Lnl/siegmann/epublib/browsersupport/NavigationEvent;
.super Ljava/util/EventObject;
.source "NavigationEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x58142fa135b1bebaL


# instance fields
.field private navigator:Lnl/siegmann/epublib/browsersupport/Navigator;

.field private oldBook:Lnl/siegmann/epublib/domain/Book;

.field private oldFragmentId:Ljava/lang/String;

.field private oldResource:Lnl/siegmann/epublib/domain/Resource;

.field private oldSectionPos:I

.field private oldSpinePos:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lnl/siegmann/epublib/browsersupport/Navigator;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 32
    iput-object p2, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->navigator:Lnl/siegmann/epublib/browsersupport/Navigator;

    .line 33
    invoke-virtual {p2}, Lnl/siegmann/epublib/browsersupport/Navigator;->getBook()Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldBook:Lnl/siegmann/epublib/domain/Book;

    .line 34
    invoke-virtual {p2}, Lnl/siegmann/epublib/browsersupport/Navigator;->getCurrentFragmentId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldFragmentId:Ljava/lang/String;

    .line 35
    invoke-virtual {p2}, Lnl/siegmann/epublib/browsersupport/Navigator;->getCurrentSectionPos()I

    move-result p1

    iput p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldSectionPos:I

    .line 36
    invoke-virtual {p2}, Lnl/siegmann/epublib/browsersupport/Navigator;->getCurrentResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldResource:Lnl/siegmann/epublib/domain/Resource;

    .line 37
    invoke-virtual {p2}, Lnl/siegmann/epublib/browsersupport/Navigator;->getCurrentSpinePos()I

    move-result p1

    iput p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldSpinePos:I

    return-void
.end method


# virtual methods
.method public getCurrentBook()Lnl/siegmann/epublib/domain/Book;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getNavigator()Lnl/siegmann/epublib/browsersupport/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lnl/siegmann/epublib/browsersupport/Navigator;->getBook()Lnl/siegmann/epublib/domain/Book;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFragmentId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->navigator:Lnl/siegmann/epublib/browsersupport/Navigator;

    invoke-virtual {v0}, Lnl/siegmann/epublib/browsersupport/Navigator;->getCurrentFragmentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentResource()Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 107
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->navigator:Lnl/siegmann/epublib/browsersupport/Navigator;

    invoke-virtual {v0}, Lnl/siegmann/epublib/browsersupport/Navigator;->getCurrentResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSectionPos()I
    .locals 1

    .line 72
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->navigator:Lnl/siegmann/epublib/browsersupport/Navigator;

    invoke-virtual {v0}, Lnl/siegmann/epublib/browsersupport/Navigator;->getCurrentSectionPos()I

    move-result v0

    return v0
.end method

.method public getCurrentSpinePos()I
    .locals 1

    .line 80
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->navigator:Lnl/siegmann/epublib/browsersupport/Navigator;

    invoke-virtual {v0}, Lnl/siegmann/epublib/browsersupport/Navigator;->getCurrentSpinePos()I

    move-result v0

    return v0
.end method

.method public getNavigator()Lnl/siegmann/epublib/browsersupport/Navigator;
    .locals 1

    .line 50
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->navigator:Lnl/siegmann/epublib/browsersupport/Navigator;

    return-object v0
.end method

.method public getOldBook()Lnl/siegmann/epublib/domain/Book;
    .locals 1

    .line 63
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldBook:Lnl/siegmann/epublib/domain/Book;

    return-object v0
.end method

.method public getOldFragmentId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldFragmentId:Ljava/lang/String;

    return-object v0
.end method

.method public getOldResource()Lnl/siegmann/epublib/domain/Resource;
    .locals 1

    .line 103
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldResource:Lnl/siegmann/epublib/domain/Resource;

    return-object v0
.end method

.method public getOldSectionPos()I
    .locals 1

    .line 46
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldSectionPos:I

    return v0
.end method

.method public getOldSpinePos()I
    .locals 1

    .line 76
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldSpinePos:I

    return v0
.end method

.method public isBookChanged()Z
    .locals 3

    .line 88
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldBook:Lnl/siegmann/epublib/domain/Book;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 91
    :cond_0
    iget-object v2, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->navigator:Lnl/siegmann/epublib/browsersupport/Navigator;

    invoke-virtual {v2}, Lnl/siegmann/epublib/browsersupport/Navigator;->getBook()Lnl/siegmann/epublib/domain/Book;

    move-result-object v2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFragmentChanged()Z
    .locals 2

    .line 99
    invoke-virtual {p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getOldFragmentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getCurrentFragmentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnl/siegmann/epublib/util/StringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isResourceChanged()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldResource:Lnl/siegmann/epublib/domain/Resource;

    invoke-virtual {p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getCurrentResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSectionPosChanged()Z
    .locals 2

    .line 152
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldSectionPos:I

    invoke-virtual {p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getCurrentSectionPos()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpinePosChanged()Z
    .locals 2

    .line 95
    invoke-virtual {p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getOldSpinePos()I

    move-result v0

    invoke-virtual {p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getCurrentSpinePos()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setNavigator(Lnl/siegmann/epublib/browsersupport/Navigator;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->navigator:Lnl/siegmann/epublib/browsersupport/Navigator;

    return-void
.end method

.method public setOldBook(Lnl/siegmann/epublib/domain/Book;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldBook:Lnl/siegmann/epublib/domain/Book;

    return-void
.end method

.method setOldFragmentId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldFragmentId:Ljava/lang/String;

    return-void
.end method

.method setOldPagePos(I)V
    .locals 0

    .line 68
    iput p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldSectionPos:I

    return-void
.end method

.method public setOldResource(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldResource:Lnl/siegmann/epublib/domain/Resource;

    return-void
.end method

.method public setOldSpinePos(I)V
    .locals 0

    .line 115
    iput p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldSpinePos:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "oldSectionPos"

    aput-object v2, v0, v1

    .line 137
    iget v1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldSectionPos:I

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "oldResource"

    aput-object v2, v0, v1

    iget-object v1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldResource:Lnl/siegmann/epublib/domain/Resource;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "oldBook"

    aput-object v2, v0, v1

    iget-object v1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldBook:Lnl/siegmann/epublib/domain/Book;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const-string v2, "oldFragmentId"

    aput-object v2, v0, v1

    iget-object v1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldFragmentId:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    const-string v2, "oldSpinePos"

    aput-object v2, v0, v1

    iget v1, p0, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->oldSpinePos:I

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0xa

    const-string v2, "currentPagePos"

    aput-object v2, v0, v1

    .line 143
    invoke-virtual {p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getCurrentSectionPos()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0xc

    const-string v2, "currentResource"

    aput-object v2, v0, v1

    .line 144
    invoke-virtual {p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getCurrentResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0xe

    const-string v2, "currentBook"

    aput-object v2, v0, v1

    .line 145
    invoke-virtual {p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getCurrentBook()Lnl/siegmann/epublib/domain/Book;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/16 v1, 0x10

    const-string v2, "currentFragmentId"

    aput-object v2, v0, v1

    .line 146
    invoke-virtual {p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getCurrentFragmentId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x12

    const-string v2, "currentSpinePos"

    aput-object v2, v0, v1

    .line 147
    invoke-virtual {p0}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getCurrentSpinePos()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 137
    invoke-static {v0}, Lnl/siegmann/epublib/util/StringUtil;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
