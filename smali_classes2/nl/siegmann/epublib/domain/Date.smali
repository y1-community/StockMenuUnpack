.class public Lnl/siegmann/epublib/domain/Date;
.super Ljava/lang/Object;
.source "Date.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/siegmann/epublib/domain/Date$Event;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x688dabf752cc9a08L


# instance fields
.field private dateString:Ljava/lang/String;

.field private event:Lnl/siegmann/epublib/domain/Date$Event;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 55
    move-object v1, v0

    check-cast v1, Lnl/siegmann/epublib/domain/Date$Event;

    invoke-direct {p0, p1, v0}, Lnl/siegmann/epublib/domain/Date;-><init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Date$Event;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-static {p1}, Lnl/siegmann/epublib/domain/Date;->checkDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lnl/siegmann/epublib/domain/Date$Event;->fromValue(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Date$Event;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lnl/siegmann/epublib/domain/Date;-><init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Date$Event;)V

    .line 73
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Date;->dateString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Date$Event;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Date;->dateString:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lnl/siegmann/epublib/domain/Date;->event:Lnl/siegmann/epublib/domain/Date$Event;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    const/4 v0, 0x0

    .line 51
    move-object v1, v0

    check-cast v1, Lnl/siegmann/epublib/domain/Date$Event;

    invoke-direct {p0, p1, v0}, Lnl/siegmann/epublib/domain/Date;-><init>(Ljava/util/Date;Lnl/siegmann/epublib/domain/Date$Event;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;)V
    .locals 2

    .line 68
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lnl/siegmann/epublib/domain/Date;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lnl/siegmann/epublib/domain/Date$Event;)V
    .locals 2

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lnl/siegmann/epublib/domain/Date;-><init>(Ljava/lang/String;Lnl/siegmann/epublib/domain/Date$Event;)V

    return-void
.end method

.method private static checkDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    return-object p0

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create a date from a blank string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getEvent()Lnl/siegmann/epublib/domain/Date$Event;
    .locals 1

    .line 86
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Date;->event:Lnl/siegmann/epublib/domain/Date$Event;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Date;->dateString:Ljava/lang/String;

    return-object v0
.end method

.method public setEvent(Lnl/siegmann/epublib/domain/Date$Event;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lnl/siegmann/epublib/domain/Date;->event:Lnl/siegmann/epublib/domain/Date$Event;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Date;->event:Lnl/siegmann/epublib/domain/Date$Event;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lnl/siegmann/epublib/domain/Date;->dateString:Ljava/lang/String;

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Date;->event:Lnl/siegmann/epublib/domain/Date$Event;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnl/siegmann/epublib/domain/Date;->dateString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
