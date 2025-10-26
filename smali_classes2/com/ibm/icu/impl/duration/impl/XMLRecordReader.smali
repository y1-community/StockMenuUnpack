.class public Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;
.super Ljava/lang/Object;
.source "XMLRecordReader.java"

# interfaces
.implements Lcom/ibm/icu/impl/duration/impl/RecordReader;


# instance fields
.field private atTag:Z

.field private nameStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/io/Reader;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->r:Ljava/io/Reader;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    .line 33
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "?xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->advance()V

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "!--"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->advance()V

    :cond_1
    return-void
.end method

.method private advance()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    return-void
.end method

.method private getTag()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readNextTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    return-object v0
.end method

.method private match(Ljava/lang/String;)Z
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->advance()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private readData()Ljava/lang/String;
    .locals 10

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 211
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x3c

    const/4 v6, -0x1

    if-eq v3, v6, :cond_d

    if-ne v3, v5, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v7, 0x26

    if-ne v3, v7, :cond_a

    .line 217
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v3

    const/16 v8, 0x23

    const/16 v9, 0x3b

    if-ne v3, v8, :cond_3

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xa

    .line 221
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v7

    const/16 v8, 0x78

    if-ne v7, v8, :cond_1

    const/16 v5, 0x10

    .line 224
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v7

    :cond_1
    :goto_1
    if-eq v7, v9, :cond_2

    if-eq v7, v6, :cond_2

    int-to-char v7, v7

    .line 227
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v7

    goto :goto_1

    .line 231
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v3, v3

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 234
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numbuf: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " radix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    throw v0

    .line 239
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-eq v3, v9, :cond_4

    if-eq v3, v6, :cond_4

    int-to-char v3, v3

    .line 241
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v3

    goto :goto_2

    .line 244
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "lt"

    .line 245
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v3, 0x3c

    goto :goto_3

    :cond_5
    const-string v5, "gt"

    .line 247
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v3, 0x3e

    goto :goto_3

    :cond_6
    const-string v5, "quot"

    .line 249
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v3, 0x22

    goto :goto_3

    :cond_7
    const-string v5, "apos"

    .line 251
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v3, 0x27

    goto :goto_3

    :cond_8
    const-string v5, "amp"

    .line 253
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v3, 0x26

    goto :goto_3

    .line 256
    :cond_9
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unrecognized character entity: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :cond_a
    :goto_3
    invoke-static {v3}, Lcom/ibm/icu/lang/UCharacter;->isWhitespace(I)Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x20

    const/4 v2, 0x1

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    :goto_4
    int-to-char v3, v3

    .line 272
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_d
    :goto_5
    if-ne v3, v5, :cond_e

    const/4 v1, 0x1

    .line 213
    :cond_e
    iput-boolean v1, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readNextTag()Ljava/lang/String;
    .locals 5

    .line 280
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    const/4 v1, -0x1

    if-nez v0, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v0

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 288
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected non-whitespace character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    .line 295
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    :goto_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_5

    if-ne v2, v1, :cond_4

    goto :goto_3

    :cond_4
    int-to-char v2, v2

    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 306
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public bool(Ljava/lang/String;)Z
    .locals 1

    .line 67
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "true"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public boolArray(Ljava/lang/String;)[Z
    .locals 4

    .line 76
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    array-length v0, p1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 79
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 80
    aget-object v2, p1, v1

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public character(Ljava/lang/String;)C
    .locals 1

    .line 89
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_0
    const p1, 0xffff

    return p1
.end method

.method public characterArray(Ljava/lang/String;)[C
    .locals 4

    .line 98
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    array-length v0, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 101
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 102
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public close()Z
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 56
    iget-object v2, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->advance()V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public namedIndex(Ljava/lang/String;[Ljava/lang/String;)B
    .locals 2

    .line 111
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 113
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 114
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-byte p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B
    .locals 6

    .line 124
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 126
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 128
    aget-object v3, p1, v2

    const/4 v4, 0x0

    .line 129
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_1

    .line 130
    aget-object v5, p2, v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    int-to-byte v3, v4

    .line 131
    aput-byte v3, v0, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    .line 135
    aput-byte v3, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public open(Ljava/lang/String;)Z
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->advance()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method readChar()I
    .locals 1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->r:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method public string(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 144
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->readData()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public stringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "List"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "Null"

    .line 159
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 162
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v2
.end method

.method public stringTable(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 4

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Table"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [[Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 183
    move-object v0, p1

    check-cast v0, [[Ljava/lang/String;

    return-object p1
.end method
