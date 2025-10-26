.class public Lantlr/debug/DebuggingInputBuffer;
.super Lantlr/InputBuffer;
.source "DebuggingInputBuffer.java"


# instance fields
.field private buffer:Lantlr/InputBuffer;

.field private debugMode:Z

.field private inputBufferEventSupport:Lantlr/debug/InputBufferEventSupport;


# direct methods
.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lantlr/InputBuffer;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lantlr/debug/DebuggingInputBuffer;->debugMode:Z

    .line 15
    iput-object p1, p0, Lantlr/debug/DebuggingInputBuffer;->buffer:Lantlr/InputBuffer;

    .line 16
    new-instance p1, Lantlr/debug/InputBufferEventSupport;

    invoke-direct {p1, p0}, Lantlr/debug/InputBufferEventSupport;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lantlr/debug/DebuggingInputBuffer;->inputBufferEventSupport:Lantlr/debug/InputBufferEventSupport;

    return-void
.end method


# virtual methods
.method public LA(I)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lantlr/debug/DebuggingInputBuffer;->buffer:Lantlr/InputBuffer;

    invoke-virtual {v0, p1}, Lantlr/InputBuffer;->LA(I)C

    move-result v0

    .line 43
    iget-boolean v1, p0, Lantlr/debug/DebuggingInputBuffer;->debugMode:Z

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lantlr/debug/DebuggingInputBuffer;->inputBufferEventSupport:Lantlr/debug/InputBufferEventSupport;

    invoke-virtual {v1, v0, p1}, Lantlr/debug/InputBufferEventSupport;->fireLA(CI)V

    :cond_0
    return v0
.end method

.method public addInputBufferListener(Lantlr/debug/InputBufferListener;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lantlr/debug/DebuggingInputBuffer;->inputBufferEventSupport:Lantlr/debug/InputBufferEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/InputBufferEventSupport;->addInputBufferListener(Lantlr/debug/InputBufferListener;)V

    return-void
.end method

.method public consume()V
    .locals 2

    .line 23
    :try_start_0
    iget-object v0, p0, Lantlr/debug/DebuggingInputBuffer;->buffer:Lantlr/InputBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lantlr/InputBuffer;->LA(I)C

    move-result v0
    :try_end_0
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x20

    .line 25
    :goto_0
    iget-object v1, p0, Lantlr/debug/DebuggingInputBuffer;->buffer:Lantlr/InputBuffer;

    invoke-virtual {v1}, Lantlr/InputBuffer;->consume()V

    .line 26
    iget-boolean v1, p0, Lantlr/debug/DebuggingInputBuffer;->debugMode:Z

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lantlr/debug/DebuggingInputBuffer;->inputBufferEventSupport:Lantlr/debug/InputBufferEventSupport;

    invoke-virtual {v1, v0}, Lantlr/debug/InputBufferEventSupport;->fireConsume(C)V

    :cond_0
    return-void
.end method

.method public fill(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lantlr/debug/DebuggingInputBuffer;->buffer:Lantlr/InputBuffer;

    invoke-virtual {v0, p1}, Lantlr/InputBuffer;->fill(I)V

    return-void
.end method

.method public getInputBufferListeners()Ljava/util/Vector;
    .locals 1

    .line 33
    iget-object v0, p0, Lantlr/debug/DebuggingInputBuffer;->inputBufferEventSupport:Lantlr/debug/InputBufferEventSupport;

    invoke-virtual {v0}, Lantlr/debug/InputBufferEventSupport;->getInputBufferListeners()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public isDebugMode()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lantlr/debug/DebuggingInputBuffer;->debugMode:Z

    return v0
.end method

.method public isMarked()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lantlr/debug/DebuggingInputBuffer;->buffer:Lantlr/InputBuffer;

    invoke-virtual {v0}, Lantlr/InputBuffer;->isMarked()Z

    move-result v0

    return v0
.end method

.method public mark()I
    .locals 2

    .line 48
    iget-object v0, p0, Lantlr/debug/DebuggingInputBuffer;->buffer:Lantlr/InputBuffer;

    invoke-virtual {v0}, Lantlr/InputBuffer;->mark()I

    move-result v0

    .line 49
    iget-object v1, p0, Lantlr/debug/DebuggingInputBuffer;->inputBufferEventSupport:Lantlr/debug/InputBufferEventSupport;

    invoke-virtual {v1, v0}, Lantlr/debug/InputBufferEventSupport;->fireMark(I)V

    return v0
.end method

.method public removeInputBufferListener(Lantlr/debug/InputBufferListener;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lantlr/debug/DebuggingInputBuffer;->inputBufferEventSupport:Lantlr/debug/InputBufferEventSupport;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Lantlr/debug/InputBufferEventSupport;->removeInputBufferListener(Lantlr/debug/InputBufferListener;)V

    :cond_0
    return-void
.end method

.method public rewind(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Lantlr/debug/DebuggingInputBuffer;->buffer:Lantlr/InputBuffer;

    invoke-virtual {v0, p1}, Lantlr/InputBuffer;->rewind(I)V

    .line 58
    iget-object v0, p0, Lantlr/debug/DebuggingInputBuffer;->inputBufferEventSupport:Lantlr/debug/InputBufferEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/InputBufferEventSupport;->fireRewind(I)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lantlr/debug/DebuggingInputBuffer;->debugMode:Z

    return-void
.end method
