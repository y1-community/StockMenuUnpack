.class public Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;
.super Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;
.source "ByteOrderMarkDetector.java"

# interfaces
.implements Linfo/monitorenter/cpdetector/io/ICodepageDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "UCS-4LE"

    const-string v0, "utf-8"

    const-string v1, "UCS-4BE"

    .line 113
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnknownCharset;->getInstance()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 115
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0xff

    const/16 v5, 0xfe

    const-string v6, "UCS-4"

    if-eqz v3, :cond_b

    const/16 v1, 0xef

    if-eq v3, v1, :cond_8

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_0

    return-object v2

    .line 210
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v5, :cond_1

    return-object v2

    .line 215
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const-string v1, "UTF-16LE"

    if-eqz v0, :cond_2

    .line 244
    :try_start_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    invoke-static {v1}, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_0
    return-object p1

    .line 219
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-eqz p1, :cond_3

    .line 234
    :try_start_1
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 236
    :catch_1
    invoke-static {v1}, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_1
    return-object p1

    .line 225
    :cond_3
    :try_start_2
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_2
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 227
    :catch_2
    invoke-static {p2}, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_2
    return-object p1

    .line 158
    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    if-eq p2, v4, :cond_5

    return-object v2

    .line 163
    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    const-string v0, "UTF-16BE"

    if-eqz p2, :cond_6

    .line 192
    :try_start_3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_3
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 194
    :catch_3
    invoke-static {v0}, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_3
    return-object p1

    .line 167
    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-eqz p1, :cond_7

    .line 181
    :try_start_4
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_4
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 183
    :catch_4
    invoke-static {v0}, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_4
    return-object p1

    .line 173
    :cond_7
    :try_start_5
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_5
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    .line 175
    :catch_5
    invoke-static {v6}, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_5
    return-object p1

    .line 259
    :cond_8
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    const/16 v1, 0xbb

    if-eq p2, v1, :cond_9

    return-object v2

    .line 263
    :cond_9
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    const/16 p2, 0xbf

    if-eq p1, p2, :cond_a

    return-object v2

    .line 267
    :cond_a
    :try_start_6
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_6
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    .line 269
    :catch_6
    invoke-static {v0}, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_6
    return-object p1

    .line 119
    :cond_b
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    if-eqz p2, :cond_c

    return-object v2

    .line 123
    :cond_c
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-eq p1, v5, :cond_e

    if-eq p1, v4, :cond_d

    return-object v2

    .line 140
    :cond_d
    :try_start_7
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_7
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    .line 142
    :catch_7
    invoke-static {v6}, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_7
    return-object p1

    .line 129
    :cond_e
    :try_start_8
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_8
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    .line 131
    :catch_8
    invoke-static {v1}, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    :goto_8
    return-object p1
.end method

.method public detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const p1, 0x7fffffff

    .line 303
    invoke-virtual {p0, v0, p1}, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 304
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-object p1
.end method
