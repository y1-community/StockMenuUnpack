.class public Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;
.super Ljava/lang/Object;
.source "ByteOrderMark.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final UTF_16BE:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

.field public static final UTF_16LE:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

.field public static final UTF_8:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bytes:[I

.field private final charsetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string v2, "UTF-8"

    invoke-direct {v0, v2, v1}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->UTF_8:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    .line 38
    new-instance v0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const-string v3, "UTF-16BE"

    invoke-direct {v0, v3, v2}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->UTF_16BE:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    .line 40
    new-instance v0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v2, v1}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->UTF_16LE:Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    return-void

    nop

    :array_0
    .array-data 4
        0xef
        0xbb
        0xbf
    .end array-data

    :array_1
    .array-data 4
        0xfe
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xfe
    .end array-data
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 59
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 62
    iput-object p1, p0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->charsetName:Ljava/lang/String;

    .line 63
    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->bytes:[I

    .line 64
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bytes specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No charsetName specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 117
    instance-of v0, p1, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 120
    :cond_0
    check-cast p1, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;

    .line 121
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->bytes:[I

    array-length v0, v0

    invoke-virtual {p1}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->length()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 124
    :goto_0
    iget-object v2, p0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->bytes:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 125
    aget v2, v2, v0

    invoke-virtual {p1, v0}, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)I
    .locals 1

    .line 92
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->bytes:[I

    aget p1, v0, p1

    return p1
.end method

.method public getBytes()[B
    .locals 4

    .line 101
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->bytes:[I

    array-length v0, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 102
    :goto_0
    iget-object v2, p0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->bytes:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 103
    aget v2, v2, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 141
    iget-object v1, p0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->bytes:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 82
    iget-object v0, p0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->bytes:[I

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->charsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 159
    :goto_0
    iget-object v2, p0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->bytes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "0x"

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v2, p0, Lnl/siegmann/epublib/util/commons/io/ByteOrderMark;->bytes:[I

    aget v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
