.class public Linfo/monitorenter/cpdetector/io/ParsingDetector;
.super Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;
.source "ParsingDetector.java"


# instance fields
.field private m_verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Linfo/monitorenter/cpdetector/io/ParsingDetector;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 120
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;-><init>()V

    .line 121
    iput-boolean p1, p0, Linfo/monitorenter/cpdetector/io/ParsingDetector;->m_verbose:Z

    return-void
.end method


# virtual methods
.method public detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    new-instance v0, Linfo/monitorenter/io/LimitedInputStream;

    invoke-direct {v0, p1, p2}, Linfo/monitorenter/io/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 135
    iget-boolean p1, p0, Linfo/monitorenter/cpdetector/io/ParsingDetector;->m_verbose:Z

    if-eqz p1, :cond_0

    .line 136
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "  parsing for html-charset/xml-encoding attribute with codepage: US-ASCII"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 140
    :try_start_0
    new-instance p2, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Linfo/monitorenter/cpdetector/io/parser/EncodingLexer;-><init>(Ljava/io/Reader;)V

    .line 141
    new-instance v0, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;

    invoke-direct {v0, p2}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;-><init>(Lantlr/TokenStream;)V

    .line 142
    invoke-virtual {v0}, Linfo/monitorenter/cpdetector/io/parser/EncodingParser;->htmlDocument()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lantlr/ANTLRException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p2, :cond_1

    .line 148
    :try_start_1
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lantlr/ANTLRException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 150
    :catch_0
    :try_start_2
    invoke-static {p2}, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_1

    .line 153
    :cond_1
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnknownCharset;->getInstance()Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_2
    .catch Lantlr/ANTLRException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p2

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    .line 160
    :goto_0
    iget-boolean v0, p0, Linfo/monitorenter/cpdetector/io/ParsingDetector;->m_verbose:Z

    if-eqz v0, :cond_2

    .line 161
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Decoding Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (unsupported java charset)."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 166
    invoke-static {p2}, Linfo/monitorenter/cpdetector/io/UnsupportedCharset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_1

    .line 168
    :cond_3
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnknownCharset;->getInstance()Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_1

    :catch_3
    move-exception p2

    .line 156
    iget-boolean v0, p0, Linfo/monitorenter/cpdetector/io/ParsingDetector;->m_verbose:Z

    if-eqz v0, :cond_4

    .line 157
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ANTLR parser exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lantlr/ANTLRException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-object p1
.end method
