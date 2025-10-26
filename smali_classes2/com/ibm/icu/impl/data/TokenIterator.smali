.class public Lcom/ibm/icu/impl/data/TokenIterator;
.super Ljava/lang/Object;
.source "TokenIterator.java"


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private done:Z

.field private lastpos:I

.field private line:Ljava/lang/String;

.field private pos:I

.field private reader:Lcom/ibm/icu/impl/data/ResourceReader;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/data/ResourceReader;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->reader:Lcom/ibm/icu/impl/data/ResourceReader;

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->done:Z

    .line 49
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->lastpos:I

    iput p1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->pos:I

    return-void
.end method

.method private nextToken(I)I
    .locals 9

    .line 112
    iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 113
    iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x22

    const/16 v4, 0x23

    const/4 v5, 0x0

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 131
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x3a

    if-ge v2, v3, :cond_a

    .line 132
    iget-object v3, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x5c

    const/4 v8, 0x1

    if-ne v3, v7, :cond_5

    if-nez v1, :cond_3

    new-array v1, v8, [I

    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 137
    aput v3, v1, v5

    .line 138
    iget-object v3, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/ibm/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 144
    iget-object v2, p0, Lcom/ibm/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-static {v2, v3}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 145
    aget v2, v1, v5

    goto :goto_1

    .line 140
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid escape at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->reader:Lcom/ibm/icu/impl/data/ResourceReader;

    .line 141
    invoke-virtual {v1}, Lcom/ibm/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-eqz v0, :cond_6

    if-eq v3, v0, :cond_7

    :cond_6
    if-nez v0, :cond_8

    .line 147
    invoke-static {v3}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    add-int/2addr v2, v8

    return v2

    :cond_8
    if-nez v0, :cond_9

    if-ne v3, v4, :cond_9

    return v2

    .line 152
    :cond_9
    iget-object v6, p0, Lcom/ibm/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    if-nez v0, :cond_b

    return v2

    .line 157
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unterminated quote at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/impl/data/TokenIterator;->reader:Lcom/ibm/icu/impl/data/ResourceReader;

    .line 158
    invoke-virtual {v2}, Lcom/ibm/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public describePosition()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->reader:Lcom/ibm/icu/impl/data/ResourceReader;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->lastpos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->reader:Lcom/ibm/icu/impl/data/ResourceReader;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/data/ResourceReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-boolean v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->reader:Lcom/ibm/icu/impl/data/ResourceReader;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/data/ResourceReader;->readLineSkippingComments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->done:Z

    return-object v1

    .line 68
    :cond_1
    iput v2, p0, Lcom/ibm/icu/impl/data/TokenIterator;->pos:I

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 71
    iget v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->pos:I

    iput v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->lastpos:I

    .line 72
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/data/TokenIterator;->nextToken(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->pos:I

    if-gez v0, :cond_3

    .line 74
    iput-object v1, p0, Lcom/ibm/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
