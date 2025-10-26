.class public abstract Lantlr/InputBuffer;
.super Ljava/lang/Object;
.source "InputBuffer.java"


# instance fields
.field protected markerOffset:I

.field protected nMarkers:I

.field protected numToConsume:I

.field protected queue:Lantlr/CharQueue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lantlr/InputBuffer;->nMarkers:I

    .line 35
    iput v0, p0, Lantlr/InputBuffer;->markerOffset:I

    .line 38
    iput v0, p0, Lantlr/InputBuffer;->numToConsume:I

    .line 45
    new-instance v0, Lantlr/CharQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lantlr/CharQueue;-><init>(I)V

    iput-object v0, p0, Lantlr/InputBuffer;->queue:Lantlr/CharQueue;

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

    .line 86
    invoke-virtual {p0, p1}, Lantlr/InputBuffer;->fill(I)V

    .line 87
    iget-object v0, p0, Lantlr/InputBuffer;->queue:Lantlr/CharQueue;

    iget v1, p0, Lantlr/InputBuffer;->markerOffset:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lantlr/CharQueue;->elementAt(I)C

    move-result p1

    return p1
.end method

.method public commit()V
    .locals 1

    .line 55
    iget v0, p0, Lantlr/InputBuffer;->nMarkers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/InputBuffer;->nMarkers:I

    return-void
.end method

.method public consume()V
    .locals 1

    .line 60
    iget v0, p0, Lantlr/InputBuffer;->numToConsume:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/InputBuffer;->numToConsume:I

    return-void
.end method

.method public abstract fill(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation
.end method

.method public getLAChars()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    iget v1, p0, Lantlr/InputBuffer;->markerOffset:I

    :goto_0
    iget-object v2, p0, Lantlr/InputBuffer;->queue:Lantlr/CharQueue;

    iget v2, v2, Lantlr/CharQueue;->nbrEntries:I

    if-ge v1, v2, :cond_0

    .line 69
    iget-object v2, p0, Lantlr/InputBuffer;->queue:Lantlr/CharQueue;

    invoke-virtual {v2, v1}, Lantlr/CharQueue;->elementAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarkedChars()Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 75
    :goto_0
    iget v2, p0, Lantlr/InputBuffer;->markerOffset:I

    if-ge v1, v2, :cond_0

    .line 76
    iget-object v2, p0, Lantlr/InputBuffer;->queue:Lantlr/CharQueue;

    invoke-virtual {v2, v1}, Lantlr/CharQueue;->elementAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMarked()Z
    .locals 1

    .line 81
    iget v0, p0, Lantlr/InputBuffer;->nMarkers:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mark()I
    .locals 1

    .line 94
    invoke-virtual {p0}, Lantlr/InputBuffer;->syncConsume()V

    .line 95
    iget v0, p0, Lantlr/InputBuffer;->nMarkers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/InputBuffer;->nMarkers:I

    .line 96
    iget v0, p0, Lantlr/InputBuffer;->markerOffset:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lantlr/InputBuffer;->nMarkers:I

    .line 112
    iput v0, p0, Lantlr/InputBuffer;->markerOffset:I

    .line 113
    iput v0, p0, Lantlr/InputBuffer;->numToConsume:I

    .line 114
    iget-object v0, p0, Lantlr/InputBuffer;->queue:Lantlr/CharQueue;

    invoke-virtual {v0}, Lantlr/CharQueue;->reset()V

    return-void
.end method

.method public rewind(I)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lantlr/InputBuffer;->syncConsume()V

    .line 104
    iput p1, p0, Lantlr/InputBuffer;->markerOffset:I

    .line 105
    iget p1, p0, Lantlr/InputBuffer;->nMarkers:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/InputBuffer;->nMarkers:I

    return-void
.end method

.method protected syncConsume()V
    .locals 1

    .line 119
    :goto_0
    iget v0, p0, Lantlr/InputBuffer;->numToConsume:I

    if-lez v0, :cond_1

    .line 120
    iget v0, p0, Lantlr/InputBuffer;->nMarkers:I

    if-lez v0, :cond_0

    .line 122
    iget v0, p0, Lantlr/InputBuffer;->markerOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/InputBuffer;->markerOffset:I

    goto :goto_1

    .line 126
    :cond_0
    iget-object v0, p0, Lantlr/InputBuffer;->queue:Lantlr/CharQueue;

    invoke-virtual {v0}, Lantlr/CharQueue;->removeFirst()V

    .line 128
    :goto_1
    iget v0, p0, Lantlr/InputBuffer;->numToConsume:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/InputBuffer;->numToConsume:I

    goto :goto_0

    :cond_1
    return-void
.end method
