.class public Lorg/mozilla/intl/chardet/HtmlCharsetDetector;
.super Ljava/lang/Object;
.source "HtmlCharsetDetector.java"


# static fields
.field public static found:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    array-length v0, p0

    if-eq v0, v1, :cond_0

    .line 42
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Usage: HtmlCharsetDetector <url> [<languageHint>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Where <url> is http://..."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "For optional <languageHint>. Use following..."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\t\t1 => Japanese"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\t\t2 => Chinese"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\t\t3 => Simplified Chinese"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\t\t4 => Traditional Chinese"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\t\t5 => Korean"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\t\t6 => Dont know (default)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 60
    :cond_0
    array-length v0, p0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 62
    :goto_0
    new-instance v1, Lorg/mozilla/intl/chardet/nsDetector;

    invoke-direct {v1, v0}, Lorg/mozilla/intl/chardet/nsDetector;-><init>(I)V

    .line 67
    new-instance v0, Lorg/mozilla/intl/chardet/HtmlCharsetDetector$1;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/HtmlCharsetDetector$1;-><init>()V

    invoke-virtual {v1, v0}, Lorg/mozilla/intl/chardet/nsDetector;->Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V

    .line 74
    new-instance v0, Ljava/net/URL;

    aget-object p0, p0, v3

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    new-array v4, v0, [B

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 82
    :cond_2
    :goto_1
    invoke-virtual {p0, v4, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 92
    invoke-virtual {v1}, Lorg/mozilla/intl/chardet/nsDetector;->DataEnd()V

    if-eqz v5, :cond_3

    .line 95
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "CHARSET = ASCII"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    sput-boolean v2, Lorg/mozilla/intl/chardet/HtmlCharsetDetector;->found:Z

    .line 99
    :cond_3
    sget-boolean p0, Lorg/mozilla/intl/chardet/HtmlCharsetDetector;->found:Z

    if-nez p0, :cond_5

    .line 100
    invoke-virtual {v1}, Lorg/mozilla/intl/chardet/nsDetector;->getProbableCharsets()[Ljava/lang/String;

    move-result-object p0

    .line 101
    :goto_2
    array-length v0, p0

    if-lt v3, v0, :cond_4

    goto :goto_3

    .line 102
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Probable Charset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void

    :cond_6
    if-eqz v5, :cond_7

    .line 86
    invoke-virtual {v1, v4, v7}, Lorg/mozilla/intl/chardet/nsDetector;->isAscii([BI)Z

    move-result v5

    :cond_7
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    .line 90
    invoke-virtual {v1, v4, v7, v3}, Lorg/mozilla/intl/chardet/nsDetector;->DoIt([BIZ)Z

    move-result v6

    goto :goto_1
.end method
