.class public Lantlr/TokenBuffer;
.super Ljava/lang/Object;
.source "TokenBuffer.java"


# instance fields
.field protected input:Lantlr/TokenStream;

.field markerOffset:I

.field nMarkers:I

.field numToConsume:I

.field queue:Lantlr/TokenQueue;


# direct methods
.method public constructor <init>(Lantlr/TokenStream;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lantlr/TokenBuffer;->nMarkers:I

    .line 36
    iput v0, p0, Lantlr/TokenBuffer;->markerOffset:I

    .line 39
    iput v0, p0, Lantlr/TokenBuffer;->numToConsume:I

    .line 46
    iput-object p1, p0, Lantlr/TokenBuffer;->input:Lantlr/TokenStream;

    .line 47
    new-instance p1, Lantlr/TokenQueue;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lantlr/TokenQueue;-><init>(I)V

    iput-object p1, p0, Lantlr/TokenBuffer;->queue:Lantlr/TokenQueue;

    return-void
.end method

.method private final fill(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lantlr/TokenBuffer;->syncConsume()V

    .line 67
    :goto_0
    iget-object v0, p0, Lantlr/TokenBuffer;->queue:Lantlr/TokenQueue;

    iget v0, v0, Lantlr/TokenQueue;->nbrEntries:I

    iget v1, p0, Lantlr/TokenBuffer;->markerOffset:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lantlr/TokenBuffer;->queue:Lantlr/TokenQueue;

    iget-object v1, p0, Lantlr/TokenBuffer;->input:Lantlr/TokenStream;

    invoke-interface {v1}, Lantlr/TokenStream;->nextToken()Lantlr/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/TokenQueue;->append(Lantlr/Token;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final syncConsume()V
    .locals 1

    .line 114
    :goto_0
    iget v0, p0, Lantlr/TokenBuffer;->numToConsume:I

    if-lez v0, :cond_1

    .line 115
    iget v0, p0, Lantlr/TokenBuffer;->nMarkers:I

    if-lez v0, :cond_0

    .line 117
    iget v0, p0, Lantlr/TokenBuffer;->markerOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/TokenBuffer;->markerOffset:I

    goto :goto_1

    .line 121
    :cond_0
    iget-object v0, p0, Lantlr/TokenBuffer;->queue:Lantlr/TokenQueue;

    invoke-virtual {v0}, Lantlr/TokenQueue;->removeFirst()V

    .line 123
    :goto_1
    iget v0, p0, Lantlr/TokenBuffer;->numToConsume:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/TokenBuffer;->numToConsume:I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final LA(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lantlr/TokenBuffer;->fill(I)V

    .line 81
    iget-object v0, p0, Lantlr/TokenBuffer;->queue:Lantlr/TokenQueue;

    iget v1, p0, Lantlr/TokenBuffer;->markerOffset:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lantlr/TokenQueue;->elementAt(I)Lantlr/Token;

    move-result-object p1

    iget p1, p1, Lantlr/Token;->type:I

    return p1
.end method

.method public final LT(I)Lantlr/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lantlr/TokenBuffer;->fill(I)V

    .line 87
    iget-object v0, p0, Lantlr/TokenBuffer;->queue:Lantlr/TokenQueue;

    iget v1, p0, Lantlr/TokenBuffer;->markerOffset:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lantlr/TokenQueue;->elementAt(I)Lantlr/Token;

    move-result-object p1

    return-object p1
.end method

.method public final consume()V
    .locals 1

    .line 60
    iget v0, p0, Lantlr/TokenBuffer;->numToConsume:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/TokenBuffer;->numToConsume:I

    return-void
.end method

.method public getInput()Lantlr/TokenStream;
    .locals 1

    .line 75
    iget-object v0, p0, Lantlr/TokenBuffer;->input:Lantlr/TokenStream;

    return-object v0
.end method

.method public final mark()I
    .locals 1

    .line 94
    invoke-direct {p0}, Lantlr/TokenBuffer;->syncConsume()V

    .line 97
    iget v0, p0, Lantlr/TokenBuffer;->nMarkers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/TokenBuffer;->nMarkers:I

    .line 98
    iget v0, p0, Lantlr/TokenBuffer;->markerOffset:I

    return v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lantlr/TokenBuffer;->nMarkers:I

    .line 53
    iput v0, p0, Lantlr/TokenBuffer;->markerOffset:I

    .line 54
    iput v0, p0, Lantlr/TokenBuffer;->numToConsume:I

    .line 55
    iget-object v0, p0, Lantlr/TokenBuffer;->queue:Lantlr/TokenQueue;

    invoke-virtual {v0}, Lantlr/TokenQueue;->reset()V

    return-void
.end method

.method public final rewind(I)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lantlr/TokenBuffer;->syncConsume()V

    .line 106
    iput p1, p0, Lantlr/TokenBuffer;->markerOffset:I

    .line 107
    iget p1, p0, Lantlr/TokenBuffer;->nMarkers:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/TokenBuffer;->nMarkers:I

    return-void
.end method
