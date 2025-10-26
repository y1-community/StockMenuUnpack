.class public Lnl/siegmann/epublib/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field public static final IO_COPY_BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static calcNewNrReadSize(II)I
    .locals 1

    if-gez p1, :cond_0

    return p1

    :cond_0
    const v0, 0x7fffffff

    sub-int/2addr v0, p0

    if-le p1, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    add-int/2addr p1, p0

    return p1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 106
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 107
    invoke-static {v3, v2}, Lnl/siegmann/epublib/util/IOUtil;->calcNewNrReadSize(II)I

    move-result v2

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return v2
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 125
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-ltz v3, :cond_0

    .line 126
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/Writer;->write([CII)V

    .line 127
    invoke-static {v3, v2}, Lnl/siegmann/epublib/util/IOUtil;->calcNewNrReadSize(II)I

    move-result v2

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    return v2
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    invoke-static {p0, v0}, Lnl/siegmann/epublib/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 38
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/InputStream;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 59
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    :goto_0
    invoke-static {p0, v0}, Lnl/siegmann/epublib/util/IOUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 66
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 23
    invoke-static {p0, v0}, Lnl/siegmann/epublib/util/IOUtil;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 24
    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    .line 25
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
