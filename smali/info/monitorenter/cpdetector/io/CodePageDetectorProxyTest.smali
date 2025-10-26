.class public Linfo/monitorenter/cpdetector/io/CodePageDetectorProxyTest;
.super Ljava/lang/Object;
.source "CodePageDetectorProxyTest.java"


# instance fields
.field private m_detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lorg/junit/Before;
    .end annotation

    .line 82
    invoke-static {}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->getInstance()Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    move-result-object v0

    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/CodePageDetectorProxyTest;->m_detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    .line 83
    new-instance v1, Linfo/monitorenter/cpdetector/io/ParsingDetector;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Linfo/monitorenter/cpdetector/io/ParsingDetector;-><init>(Z)V

    invoke-virtual {v0, v1}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 84
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/CodePageDetectorProxyTest;->m_detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-static {}, Linfo/monitorenter/cpdetector/io/JChardetFacade;->getInstance()Linfo/monitorenter/cpdetector/io/JChardetFacade;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 85
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/CodePageDetectorProxyTest;->m_detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-static {}, Linfo/monitorenter/cpdetector/io/ASCIIDetector;->getInstance()Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    return-void
.end method

.method public tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lorg/junit/After;
    .end annotation

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/CodePageDetectorProxyTest;->m_detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    return-void
.end method

.method public testDetectCodePageInputStream()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v0, 0x0

    .line 109
    :try_start_0
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/CodePageDetectorProxyTest;->m_detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-static {v1}, Lorg/junit/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 110
    new-instance v1, Ljava/io/File;

    const-string v2, "testdocuments/stress/illegalHtmlTag/1111.htm"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Test file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-static {v2, v3}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 112
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x32

    :try_start_1
    new-array v3, v0, [B

    .line 115
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->mark(I)V

    .line 116
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 117
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v4, 0x64

    .line 121
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->mark(I)V

    .line 122
    iget-object v4, p0, Linfo/monitorenter/cpdetector/io/CodePageDetectorProxyTest;->m_detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v1, v5

    invoke-virtual {v4, v2, v1}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 123
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v4, "utf-8"

    .line 124
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/junit/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 129
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 130
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "Modification or stream position error."

    .line 131
    invoke-static {v3, v0, v1}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v0
.end method

.method public testDetectCodePageUrl()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    .line 150
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/CodePageDetectorProxyTest;->m_detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-static {v0}, Lorg/junit/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 151
    new-instance v0, Ljava/io/File;

    const-string v1, "testdocuments/xml.ascc.net/test/wf/big5/text_xml/zh-big5-0.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 154
    iget-object v2, p0, Linfo/monitorenter/cpdetector/io/CodePageDetectorProxyTest;->m_detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-virtual {v2, v1}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 155
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "Big5"

    .line 156
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/junit/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    invoke-static {v0}, Linfo/monitorenter/util/FileUtil;->readRAM(Ljava/io/File;)[B

    move-result-object v1

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (has a lock?)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 162
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 163
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 164
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 165
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " seems to be locked (open InputStream) after detection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    invoke-static {v1, v0}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method public testMark()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    .line 184
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/CodePageDetectorProxyTest;->m_detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-static {v0}, Lorg/junit/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 185
    new-instance v0, Ljava/io/File;

    const-string v1, "testdocuments/voiddocument/Voiderror.htm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 188
    iget-object v1, p0, Linfo/monitorenter/cpdetector/io/CodePageDetectorProxyTest;->m_detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v2, 0xc8

    invoke-virtual {v1, v0, v2}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    return-void
.end method
