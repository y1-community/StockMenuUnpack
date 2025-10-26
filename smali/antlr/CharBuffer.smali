.class public Lantlr/CharBuffer;
.super Lantlr/InputBuffer;
.source "CharBuffer.java"


# instance fields
.field transient input:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lantlr/InputBuffer;-><init>()V

    .line 36
    iput-object p1, p0, Lantlr/CharBuffer;->input:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public fill(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lantlr/CharBuffer;->syncConsume()V

    .line 44
    :goto_0
    iget-object v0, p0, Lantlr/CharBuffer;->queue:Lantlr/CharQueue;

    iget v0, v0, Lantlr/CharQueue;->nbrEntries:I

    iget v1, p0, Lantlr/CharBuffer;->markerOffset:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lantlr/CharBuffer;->queue:Lantlr/CharQueue;

    iget-object v1, p0, Lantlr/CharBuffer;->input:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lantlr/CharQueue;->append(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 50
    new-instance v0, Lantlr/CharStreamIOException;

    invoke-direct {v0, p1}, Lantlr/CharStreamIOException;-><init>(Ljava/io/IOException;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
