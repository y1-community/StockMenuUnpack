.class public Linfo/monitorenter/cpdetector/CharsetPrinter;
.super Ljava/lang/Object;
.source "CharsetPrinter.java"


# instance fields
.field private final detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->getInstance()Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    move-result-object v0

    iput-object v0, p0, Linfo/monitorenter/cpdetector/CharsetPrinter;->detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    .line 67
    new-instance v1, Linfo/monitorenter/cpdetector/io/ParsingDetector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Linfo/monitorenter/cpdetector/io/ParsingDetector;-><init>(Z)V

    invoke-virtual {v0, v1}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 68
    invoke-static {}, Linfo/monitorenter/cpdetector/io/JChardetFacade;->getInstance()Linfo/monitorenter/cpdetector/io/JChardetFacade;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 69
    invoke-static {}, Linfo/monitorenter/cpdetector/io/ASCIIDetector;->getInstance()Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    .line 82
    new-instance v0, Linfo/monitorenter/cpdetector/CharsetPrinter;

    invoke-direct {v0}, Linfo/monitorenter/cpdetector/CharsetPrinter;-><init>()V

    .line 84
    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 85
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Please provide one or more files to examine on the command line after the command."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 92
    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 93
    new-instance v2, Ljava/io/File;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " appears to be "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Linfo/monitorenter/cpdetector/CharsetPrinter;->guessEncoding(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not a file, does not exists or is not readable at this time."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " appears to be UNKNOWN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 106
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Problem reading from file"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 104
    :catch_1
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "The filename makes no sense."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public guessEncoding(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Linfo/monitorenter/cpdetector/CharsetPrinter;->detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-virtual {p1}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 78
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
