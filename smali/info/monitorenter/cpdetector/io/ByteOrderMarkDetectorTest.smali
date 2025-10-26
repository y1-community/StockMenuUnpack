.class public Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetectorTest;
.super Ljava/lang/Object;
.source "ByteOrderMarkDetectorTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ucs4_2143order()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    :try_start_0
    const-string v0, "UCS-4"

    .line 118
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, -0x2

    aput-byte v4, v2, v3

    .line 120
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 121
    new-instance v2, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;

    invoke-direct {v2}, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;-><init>()V

    .line 122
    invoke-interface {v2, v3, v1}, Linfo/monitorenter/cpdetector/io/ICodepageDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Lorg/junit/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This test cannot be run on this machine. Charset is missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public ucs4_3412order()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    :try_start_0
    const-string v0, "UCS-4"

    .line 140
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, -0x2

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, -0x1

    aput-byte v5, v2, v3

    const/4 v3, 0x2

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    aput-byte v4, v2, v3

    .line 142
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 143
    new-instance v2, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;

    invoke-direct {v2}, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;-><init>()V

    .line 144
    invoke-interface {v2, v3, v1}, Linfo/monitorenter/cpdetector/io/ICodepageDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 145
    invoke-static {v0, v1}, Lorg/junit/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This test cannot be run on this machine. Charset is missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public ucs4bigendian()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    :try_start_0
    const-string v0, "UCS-4BE"

    .line 74
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    aput-byte v4, v2, v3

    .line 76
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    new-instance v2, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;

    invoke-direct {v2}, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;-><init>()V

    .line 78
    invoke-interface {v2, v3, v1}, Linfo/monitorenter/cpdetector/io/ICodepageDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lorg/junit/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This test cannot be run on this machine. Charset is missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public ucs4littleendian()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    :try_start_0
    const-string v0, "UCS-4LE"

    .line 96
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, -0x1

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, -0x2

    aput-byte v5, v2, v3

    const/4 v3, 0x2

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    aput-byte v4, v2, v3

    .line 98
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 99
    new-instance v2, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;

    invoke-direct {v2}, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;-><init>()V

    .line 100
    invoke-interface {v2, v3, v1}, Linfo/monitorenter/cpdetector/io/ICodepageDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lorg/junit/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This test cannot be run on this machine. Charset is missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public utf16bigendian()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    :try_start_0
    const-string v0, "UTF-16BE"

    .line 162
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, -0x2

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    const/4 v3, -0x1

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    const/4 v3, 0x2

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    aput-byte v5, v2, v3

    .line 164
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 165
    new-instance v2, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;

    invoke-direct {v2}, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;-><init>()V

    .line 166
    invoke-interface {v2, v3, v1}, Linfo/monitorenter/cpdetector/io/ICodepageDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Lorg/junit/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This test cannot be run on this machine. Charset is missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public utf16littleendian()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    :try_start_0
    const-string v0, "UTF-16LE"

    .line 184
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, -0x1

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    const/4 v3, -0x2

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    const/4 v3, 0x2

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    aput-byte v5, v2, v3

    .line 186
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 187
    new-instance v2, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;

    invoke-direct {v2}, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;-><init>()V

    .line 188
    invoke-interface {v2, v3, v1}, Linfo/monitorenter/cpdetector/io/ICodepageDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 189
    invoke-static {v0, v1}, Lorg/junit/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This test cannot be run on this machine. Charset is missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public utf8()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 206
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/16 v3, -0x11

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    const/4 v3, 0x1

    const/16 v5, -0x45

    aput-byte v5, v2, v3

    const/4 v3, 0x2

    const/16 v5, -0x41

    aput-byte v5, v2, v3

    const/4 v3, 0x3

    aput-byte v4, v2, v3

    .line 208
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 209
    new-instance v2, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;

    invoke-direct {v2}, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;-><init>()V

    .line 210
    invoke-interface {v2, v3, v1}, Linfo/monitorenter/cpdetector/io/ICodepageDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 211
    invoke-static {v0, v1}, Lorg/junit/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This test cannot be run on this machine. Charset is missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
