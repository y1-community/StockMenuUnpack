.class public final Lcom/ibm/icu/impl/StringPrepDataReader;
.super Ljava/lang/Object;
.source "StringPrepDataReader.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# static fields
.field private static final DATA_FORMAT_ID:I = 0x53505250

.field private static final DATA_FORMAT_VERSION:[B

.field private static final debug:Z


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private unicodeVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NormalizerDataReader"

    .line 28
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/impl/StringPrepDataReader;->debug:Z

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 83
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3t
        0x2t
        0x5t
        0x2t
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-boolean v0, Lcom/ibm/icu/impl/StringPrepDataReader;->debug:Z

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bytes in buffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    const v1, 0x53505250

    .line 40
    invoke-static {p1, v1, p0}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/StringPrepDataReader;->unicodeVersion:I

    if-eqz v0, :cond_1

    .line 42
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bytes left in byteBuffer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getUnicodeVersion()[B
    .locals 1

    .line 66
    iget v0, p0, Lcom/ibm/icu/impl/StringPrepDataReader;->unicodeVersion:I

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getVersionByteArrayFromCompactInt(I)[B

    move-result-object v0

    return-object v0
.end method

.method public isDataVersionAcceptable([B)Z
    .locals 4

    const/4 v0, 0x0

    .line 52
    aget-byte v1, p1, v0

    sget-object v2, Lcom/ibm/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    aget-byte v3, v2, v0

    if-ne v1, v3, :cond_0

    const/4 v1, 0x2

    aget-byte v3, p1, v1

    aget-byte v1, v2, v1

    if-ne v3, v1, :cond_0

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    aget-byte v1, v2, v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public read(I)[C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/ibm/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object p1

    return-object p1
.end method

.method public readIndexes(I)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 60
    iget-object v2, p0, Lcom/ibm/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
