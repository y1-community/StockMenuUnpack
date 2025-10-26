.class public Lantlr/debug/InputBufferEventSupport;
.super Ljava/lang/Object;
.source "InputBufferEventSupport.java"


# static fields
.field protected static final CONSUME:I = 0x0

.field protected static final LA:I = 0x1

.field protected static final MARK:I = 0x2

.field protected static final REWIND:I = 0x3


# instance fields
.field private inputBufferEvent:Lantlr/debug/InputBufferEvent;

.field private inputBufferListeners:Ljava/util/Vector;

.field private source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lantlr/debug/InputBufferEvent;

    invoke-direct {v0, p1}, Lantlr/debug/InputBufferEvent;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferEvent:Lantlr/debug/InputBufferEvent;

    .line 19
    iput-object p1, p0, Lantlr/debug/InputBufferEventSupport;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addInputBufferListener(Lantlr/debug/InputBufferListener;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferListeners:Ljava/util/Vector;

    .line 23
    :cond_0
    iget-object v0, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public fireConsume(C)V
    .locals 2

    .line 26
    iget-object v0, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferEvent:Lantlr/debug/InputBufferEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Lantlr/debug/InputBufferEvent;->setValues(ICI)V

    .line 27
    iget-object p1, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferListeners:Ljava/util/Vector;

    invoke-virtual {p0, v1, p1}, Lantlr/debug/InputBufferEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireEvent(ILantlr/debug/ListenerBase;)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 34
    check-cast p2, Lantlr/debug/InputBufferListener;

    iget-object p1, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferEvent:Lantlr/debug/InputBufferEvent;

    invoke-interface {p2, p1}, Lantlr/debug/InputBufferListener;->inputBufferRewind(Lantlr/debug/InputBufferEvent;)V

    goto :goto_0

    .line 36
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "bad type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " for fireEvent()"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 33
    :cond_1
    check-cast p2, Lantlr/debug/InputBufferListener;

    iget-object p1, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferEvent:Lantlr/debug/InputBufferEvent;

    invoke-interface {p2, p1}, Lantlr/debug/InputBufferListener;->inputBufferMark(Lantlr/debug/InputBufferEvent;)V

    goto :goto_0

    .line 32
    :cond_2
    check-cast p2, Lantlr/debug/InputBufferListener;

    iget-object p1, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferEvent:Lantlr/debug/InputBufferEvent;

    invoke-interface {p2, p1}, Lantlr/debug/InputBufferListener;->inputBufferLA(Lantlr/debug/InputBufferEvent;)V

    goto :goto_0

    .line 31
    :cond_3
    check-cast p2, Lantlr/debug/InputBufferListener;

    iget-object p1, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferEvent:Lantlr/debug/InputBufferEvent;

    invoke-interface {p2, p1}, Lantlr/debug/InputBufferListener;->inputBufferConsume(Lantlr/debug/InputBufferEvent;)V

    :goto_0
    return-void
.end method

.method public fireEvents(ILjava/util/Vector;)V
    .locals 2

    .line 43
    monitor-enter p0

    if-nez p2, :cond_0

    .line 44
    :try_start_0
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Vector;

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 50
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/debug/ListenerBase;

    .line 51
    invoke-virtual {p0, p1, v1}, Lantlr/debug/InputBufferEventSupport;->fireEvent(ILantlr/debug/ListenerBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 46
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public fireLA(CI)V
    .locals 2

    .line 55
    iget-object v0, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferEvent:Lantlr/debug/InputBufferEvent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lantlr/debug/InputBufferEvent;->setValues(ICI)V

    .line 56
    iget-object p1, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferListeners:Ljava/util/Vector;

    invoke-virtual {p0, v1, p1}, Lantlr/debug/InputBufferEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMark(I)V
    .locals 3

    .line 59
    iget-object v0, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferEvent:Lantlr/debug/InputBufferEvent;

    const/4 v1, 0x2

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, p1}, Lantlr/debug/InputBufferEvent;->setValues(ICI)V

    .line 60
    iget-object p1, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferListeners:Ljava/util/Vector;

    invoke-virtual {p0, v1, p1}, Lantlr/debug/InputBufferEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireRewind(I)V
    .locals 3

    .line 63
    iget-object v0, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferEvent:Lantlr/debug/InputBufferEvent;

    const/4 v1, 0x3

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, p1}, Lantlr/debug/InputBufferEvent;->setValues(ICI)V

    .line 64
    iget-object p1, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferListeners:Ljava/util/Vector;

    invoke-virtual {p0, v1, p1}, Lantlr/debug/InputBufferEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public getInputBufferListeners()Ljava/util/Vector;
    .locals 1

    .line 67
    iget-object v0, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferListeners:Ljava/util/Vector;

    return-object v0
.end method

.method protected refresh(Ljava/util/Vector;)V
    .locals 2

    .line 71
    monitor-enter p1

    .line 72
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 73
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 75
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/debug/ListenerBase;

    invoke-interface {v1}, Lantlr/debug/ListenerBase;->refresh()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 73
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public refreshListeners()V
    .locals 1

    .line 79
    iget-object v0, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lantlr/debug/InputBufferEventSupport;->refresh(Ljava/util/Vector;)V

    return-void
.end method

.method public removeInputBufferListener(Lantlr/debug/InputBufferListener;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lantlr/debug/InputBufferEventSupport;->inputBufferListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
