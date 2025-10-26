.class public Lnl/siegmann/epublib/browsersupport/NavigationHistory;
.super Ljava/lang/Object;
.source "NavigationHistory.java"

# interfaces
.implements Lnl/siegmann/epublib/browsersupport/NavigationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;
    }
.end annotation


# static fields
.field private static final DEFAULT_HISTORY_WAIT_TIME:J = 0x3e8L

.field public static final DEFAULT_MAX_HISTORY_SIZE:I = 0x3e8


# instance fields
.field private currentPos:I

.field private currentSize:I

.field private historyWaitTime:J

.field private lastUpdateTime:J

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;",
            ">;"
        }
    .end annotation
.end field

.field private maxHistorySize:I

.field private navigator:Lnl/siegmann/epublib/browsersupport/Navigator;


# direct methods
.method public constructor <init>(Lnl/siegmann/epublib/browsersupport/Navigator;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->lastUpdateTime:J

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->locations:Ljava/util/List;

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentSize:I

    const/16 v0, 0x3e8

    .line 45
    iput v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->maxHistorySize:I

    const-wide/16 v0, 0x3e8

    .line 46
    iput-wide v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->historyWaitTime:J

    .line 49
    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->navigator:Lnl/siegmann/epublib/browsersupport/Navigator;

    .line 50
    invoke-virtual {p1, p0}, Lnl/siegmann/epublib/browsersupport/Navigator;->addNavigationEventListener(Lnl/siegmann/epublib/browsersupport/NavigationEventListener;)Z

    .line 51
    invoke-virtual {p1}, Lnl/siegmann/epublib/browsersupport/Navigator;->getBook()Lnl/siegmann/epublib/domain/Book;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->initBook(Lnl/siegmann/epublib/domain/Book;)V

    return-void
.end method

.method private checkHistorySize()V
    .locals 2

    .line 126
    :goto_0
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->maxHistorySize:I

    if-le v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->locations:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 128
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentSize:I

    .line 129
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getLocationHref(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    .line 138
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->locations:Ljava/util/List;

    iget v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;

    invoke-virtual {p1}, Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;->getHref()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addLocation(Ljava/lang/String;)V
    .locals 1

    .line 134
    new-instance v0, Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;

    invoke-direct {v0, p1}, Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->addLocation(Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;)V

    return-void
.end method

.method public addLocation(Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p1}, Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;->getHref()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->locations:Ljava/util/List;

    iget v2, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;

    invoke-virtual {v1}, Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    .line 112
    iget v1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentSize:I

    if-eq v0, v1, :cond_1

    .line 113
    iget-object v1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->locations:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-direct {p0}, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->checkHistorySize()V

    .line 118
    :goto_0
    iget p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentSize:I

    return-void
.end method

.method public addLocation(Lnl/siegmann/epublib/domain/Resource;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->addLocation(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentHref()Ljava/lang/String;
    .locals 2

    .line 187
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->locations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->locations:Ljava/util/List;

    iget v1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;

    invoke-virtual {v0}, Lnl/siegmann/epublib/browsersupport/NavigationHistory$Location;->getHref()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPos()I
    .locals 1

    .line 55
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    return v0
.end method

.method public getCurrentSize()I
    .locals 1

    .line 60
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentSize:I

    return v0
.end method

.method public getHistoryWaitTime()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->historyWaitTime:J

    return-wide v0
.end method

.method public getMaxHistorySize()I
    .locals 1

    .line 198
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->maxHistorySize:I

    return v0
.end method

.method public initBook(Lnl/siegmann/epublib/domain/Book;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->locations:Ljava/util/List;

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentSize:I

    .line 70
    iget-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->navigator:Lnl/siegmann/epublib/browsersupport/Navigator;

    invoke-virtual {p1}, Lnl/siegmann/epublib/browsersupport/Navigator;->getCurrentResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 71
    iget-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->navigator:Lnl/siegmann/epublib/browsersupport/Navigator;

    invoke-virtual {p1}, Lnl/siegmann/epublib/browsersupport/Navigator;->getCurrentResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->addLocation(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public move(I)Z
    .locals 3

    .line 155
    iget v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    add-int v1, v0, p1

    if-ltz v1, :cond_1

    add-int v1, v0, p1

    iget v2, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentSize:I

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, p1

    .line 159
    iput v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->currentPos:I

    .line 160
    iget-object p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->navigator:Lnl/siegmann/epublib/browsersupport/Navigator;

    invoke-direct {p0, v0}, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->getLocationHref(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lnl/siegmann/epublib/browsersupport/Navigator;->gotoResource(Ljava/lang/String;Ljava/lang/Object;)I

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public navigationPerformed(Lnl/siegmann/epublib/browsersupport/NavigationEvent;)V
    .locals 5

    .line 170
    invoke-virtual {p1}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p1}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getCurrentResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 177
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->lastUpdateTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->historyWaitTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 179
    invoke-virtual {p1}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getOldResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->addLocation(Lnl/siegmann/epublib/domain/Resource;)V

    .line 181
    invoke-virtual {p1}, Lnl/siegmann/epublib/browsersupport/NavigationEvent;->getCurrentResource()Lnl/siegmann/epublib/domain/Resource;

    move-result-object p1

    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->addLocation(Ljava/lang/String;)V

    .line 183
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->lastUpdateTime:J

    return-void
.end method

.method public setHistoryWaitTime(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->historyWaitTime:J

    return-void
.end method

.method public setMaxHistorySize(I)V
    .locals 0

    .line 194
    iput p1, p0, Lnl/siegmann/epublib/browsersupport/NavigationHistory;->maxHistorySize:I

    return-void
.end method
