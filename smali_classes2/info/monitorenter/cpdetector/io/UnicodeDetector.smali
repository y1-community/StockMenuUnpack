.class public Linfo/monitorenter/cpdetector/io/UnicodeDetector;
.super Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;
.source "UnicodeDetector.java"


# static fields
.field private static instance:Linfo/monitorenter/cpdetector/io/ICodepageDetector;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;-><init>()V

    return-void
.end method

.method public static getInstance()Linfo/monitorenter/cpdetector/io/ICodepageDetector;
    .locals 1

    .line 130
    sget-object v0, Linfo/monitorenter/cpdetector/io/UnicodeDetector;->instance:Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Linfo/monitorenter/cpdetector/io/UnicodeDetector;

    invoke-direct {v0}, Linfo/monitorenter/cpdetector/io/UnicodeDetector;-><init>()V

    sput-object v0, Linfo/monitorenter/cpdetector/io/UnicodeDetector;->instance:Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    .line 133
    :cond_0
    sget-object v0, Linfo/monitorenter/cpdetector/io/UnicodeDetector;->instance:Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    return-object v0
.end method


# virtual methods
.method public detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x4

    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    aget-byte p1, v0, v1

    const/4 p2, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_0

    aget-byte p1, v0, v4

    if-nez p1, :cond_0

    aget-byte p1, v0, v3

    if-ne p1, p2, :cond_0

    aget-byte p1, v0, v3

    if-ne p1, v2, :cond_0

    const-string p1, "UTF-32BE"

    .line 150
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    :cond_0
    aget-byte p1, v0, v1

    if-ne p1, v2, :cond_1

    aget-byte p1, v0, v4

    if-ne p1, p2, :cond_1

    aget-byte p1, v0, v3

    if-nez p1, :cond_1

    aget-byte p1, v0, v3

    if-nez p1, :cond_1

    const-string p1, "UTF-32LE"

    .line 153
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    :cond_1
    aget-byte p1, v0, v1

    const/16 v5, -0x11

    if-ne p1, v5, :cond_2

    aget-byte p1, v0, v4

    const/16 v5, -0x45

    if-ne p1, v5, :cond_2

    aget-byte p1, v0, v3

    const/16 v5, -0x41

    if-ne p1, v5, :cond_2

    const-string p1, "UTF-8"

    .line 155
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    :cond_2
    aget-byte p1, v0, v1

    if-ne p1, v2, :cond_3

    aget-byte p1, v0, v4

    if-ne p1, p2, :cond_3

    const-string p1, "UTF-16LE"

    .line 157
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    :cond_3
    aget-byte p1, v0, v1

    if-ne p1, p2, :cond_4

    aget-byte p1, v0, v4

    if-ne p1, v2, :cond_4

    const-string p1, "UTF-16BE"

    .line 159
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    :cond_4
    aget-byte p1, v0, v1

    if-nez p1, :cond_5

    aget-byte p1, v0, v4

    if-nez p1, :cond_5

    aget-byte p1, v0, v3

    if-ne p1, p2, :cond_5

    const/4 p1, 0x3

    aget-byte p1, v0, p1

    if-ne p1, v2, :cond_5

    const-string p1, "UCS-4"

    .line 161
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    .line 162
    :cond_5
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnknownCharset;->getInstance()Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1
.end method

.method public detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const p1, 0x7fffffff

    .line 171
    invoke-virtual {p0, v0, p1}, Linfo/monitorenter/cpdetector/io/UnicodeDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 172
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-object p1
.end method
