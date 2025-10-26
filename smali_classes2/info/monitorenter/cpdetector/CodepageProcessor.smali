.class public Linfo/monitorenter/cpdetector/CodepageProcessor;
.super Linfo/monitorenter/cpdetector/ACmdLineArgsInheritor;
.source "CodepageProcessor.java"


# static fields
.field private static fileseparator:Ljava/lang/String;

.field private static rawtransportBuffer:[B

.field private static transcodeBuffer:[C


# instance fields
.field protected collectionRoot:Ljava/io/File;

.field protected detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

.field private extensionFilter:Ljava/io/FileFilter;

.field private moveUnknown:Z

.field private outputDir:Ljava/io/File;

.field private parseCodepages:[Ljava/nio/charset/Charset;

.field private printCharsets:Z

.field private targetCodepage:Ljava/nio/charset/Charset;

.field private verbose:Z

.field private wait:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "file.separator"

    .line 147
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linfo/monitorenter/cpdetector/CodepageProcessor;->fileseparator:Ljava/lang/String;

    const/16 v0, 0x400

    new-array v1, v0, [C

    .line 184
    sput-object v1, Linfo/monitorenter/cpdetector/CodepageProcessor;->transcodeBuffer:[C

    new-array v0, v0, [B

    .line 189
    sput-object v0, Linfo/monitorenter/cpdetector/CodepageProcessor;->rawtransportBuffer:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 192
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/ACmdLineArgsInheritor;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->collectionRoot:Ljava/io/File;

    const/4 v1, 0x0

    .line 162
    iput-boolean v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->moveUnknown:Z

    .line 165
    iput-boolean v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->printCharsets:Z

    .line 167
    iput-boolean v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    const-wide/16 v1, 0x0

    .line 172
    iput-wide v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->wait:J

    .line 179
    iput-object v0, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->targetCodepage:Ljava/nio/charset/Charset;

    .line 193
    invoke-static {}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->getInstance()Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    move-result-object v0

    iput-object v0, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    .line 195
    new-instance v0, Ljargs/gnu/CmdLineParser$Option$StringOption;

    const/16 v1, 0x72

    const-string v2, "documents"

    invoke-direct {v0, v1, v2}, Ljargs/gnu/CmdLineParser$Option$StringOption;-><init>(CLjava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->addCmdLineOption(Ljava/lang/String;Ljargs/gnu/CmdLineParser$Option;)V

    .line 196
    new-instance v0, Ljargs/gnu/CmdLineParser$Option$StringOption;

    const/16 v1, 0x65

    const-string v2, "extensions"

    invoke-direct {v0, v1, v2}, Ljargs/gnu/CmdLineParser$Option$StringOption;-><init>(CLjava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->addCmdLineOption(Ljava/lang/String;Ljargs/gnu/CmdLineParser$Option;)V

    .line 197
    new-instance v0, Ljargs/gnu/CmdLineParser$Option$StringOption;

    const/16 v1, 0x6f

    const-string v2, "outputDir"

    invoke-direct {v0, v1, v2}, Ljargs/gnu/CmdLineParser$Option$StringOption;-><init>(CLjava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->addCmdLineOption(Ljava/lang/String;Ljargs/gnu/CmdLineParser$Option;)V

    .line 198
    new-instance v0, Ljargs/gnu/CmdLineParser$Option$BooleanOption;

    const/16 v1, 0x6d

    const-string v2, "moveUnknown"

    invoke-direct {v0, v1, v2}, Ljargs/gnu/CmdLineParser$Option$BooleanOption;-><init>(CLjava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->addCmdLineOption(Ljava/lang/String;Ljargs/gnu/CmdLineParser$Option;)V

    .line 199
    new-instance v0, Ljargs/gnu/CmdLineParser$Option$BooleanOption;

    const/16 v1, 0x76

    const-string v2, "verbose"

    invoke-direct {v0, v1, v2}, Ljargs/gnu/CmdLineParser$Option$BooleanOption;-><init>(CLjava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->addCmdLineOption(Ljava/lang/String;Ljargs/gnu/CmdLineParser$Option;)V

    .line 200
    new-instance v0, Ljargs/gnu/CmdLineParser$Option$IntegerOption;

    const/16 v1, 0x77

    const-string v2, "wait"

    invoke-direct {v0, v1, v2}, Ljargs/gnu/CmdLineParser$Option$IntegerOption;-><init>(CLjava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->addCmdLineOption(Ljava/lang/String;Ljargs/gnu/CmdLineParser$Option;)V

    .line 201
    new-instance v0, Ljargs/gnu/CmdLineParser$Option$StringOption;

    const/16 v1, 0x74

    const-string v2, "transform"

    invoke-direct {v0, v1, v2}, Ljargs/gnu/CmdLineParser$Option$StringOption;-><init>(CLjava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->addCmdLineOption(Ljava/lang/String;Ljargs/gnu/CmdLineParser$Option;)V

    .line 202
    new-instance v0, Ljargs/gnu/CmdLineParser$Option$StringOption;

    const/16 v1, 0x64

    const-string v2, "detectors"

    invoke-direct {v0, v1, v2}, Ljargs/gnu/CmdLineParser$Option$StringOption;-><init>(CLjava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->addCmdLineOption(Ljava/lang/String;Ljargs/gnu/CmdLineParser$Option;)V

    .line 203
    new-instance v0, Ljargs/gnu/CmdLineParser$Option$BooleanOption;

    const/16 v1, 0x63

    const-string v2, "charsets"

    invoke-direct {v0, v1, v2}, Ljargs/gnu/CmdLineParser$Option$BooleanOption;-><init>(CLjava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->addCmdLineOption(Ljava/lang/String;Ljargs/gnu/CmdLineParser$Option;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 658
    new-instance v0, Linfo/monitorenter/cpdetector/CodepageProcessor;

    invoke-direct {v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;-><init>()V

    .line 659
    invoke-virtual {v0, p0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->parseArgs([Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->process()V

    return-void
.end method

.method private final parseCSVList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 331
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 332
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";,"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 334
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private printCharsets()V
    .locals 5

    .line 312
    iget-object v0, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->parseCodepages:[Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 313
    :cond_0
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->loadCodepages()V

    :cond_1
    const/4 v0, 0x0

    .line 316
    :goto_0
    iget-object v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->parseCodepages:[Ljava/nio/charset/Charset;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 317
    aget-object v1, v1, v0

    .line 318
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v1

    .line 320
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 321
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private process(Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 426
    :try_start_0
    iget-wide v0, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->wait:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 434
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/monitorenter/util/FileUtil;->cutDirectoryInformation(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 435
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 436
    sget-object v2, Linfo/monitorenter/cpdetector/CodepageProcessor;->fileseparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 437
    iget-object v3, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->collectionRoot:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_0

    const-string v1, ""

    goto :goto_1

    .line 441
    :cond_0
    iget-object v3, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->collectionRoot:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 443
    :goto_1
    iget-boolean v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    const-string v3, "/"

    if-eqz v2, :cond_1

    .line 444
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing document: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    :cond_1
    iget-object v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-virtual {p1}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v2, v4}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 448
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnknownCharset;->getInstance()Ljava/nio/charset/Charset;

    move-result-object v4

    if-ne v2, v4, :cond_6

    .line 449
    :cond_2
    iget-boolean v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    if-eqz v2, :cond_3

    .line 450
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "  Charset not detected."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    :cond_3
    iget-boolean v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->moveUnknown:Z

    if-nez v2, :cond_5

    .line 453
    iget-boolean p1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    if-eqz p1, :cond_4

    .line 454
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "  Dropping document."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 459
    :cond_5
    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnknownCharset;->getInstance()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 463
    :cond_6
    iget-object v4, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->targetCodepage:Ljava/nio/charset/Charset;

    const-string v5, "\"."

    const-string v6, "  Moving to \""

    if-eqz v4, :cond_c

    if-eqz v2, :cond_c

    invoke-static {}, Linfo/monitorenter/cpdetector/io/UnknownCharset;->getInstance()Ljava/nio/charset/Charset;

    move-result-object v4

    if-eq v4, v2, :cond_c

    .line 467
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 468
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->outputDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->targetCodepage:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 471
    :cond_7
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->outputDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->targetCodepage:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 474
    iget-boolean v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    if-eqz v1, :cond_8

    .line 475
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Created directory : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 478
    :cond_8
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    iget-boolean v0, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    if-eqz v0, :cond_9

    .line 480
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 482
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_a

    .line 483
    iget-boolean p1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    if-eqz p1, :cond_11

    .line 484
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "  File already exists and has same size. Skipping move."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 487
    :cond_a
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 488
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 490
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->targetCodepage:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 494
    sget-object v1, Linfo/monitorenter/cpdetector/CodepageProcessor;->transcodeBuffer:[C

    array-length v1, v1

    .line 496
    :goto_3
    sget-object v2, Linfo/monitorenter/cpdetector/CodepageProcessor;->transcodeBuffer:[C

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_b

    .line 497
    sget-object v4, Linfo/monitorenter/cpdetector/CodepageProcessor;->transcodeBuffer:[C

    invoke-virtual {p1, v4, v3, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 499
    :cond_b
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 500
    invoke-virtual {p1}, Ljava/io/Writer;->close()V

    goto/16 :goto_5

    .line 503
    :cond_c
    iget-object v4, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->targetCodepage:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_d

    .line 504
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping transformation of document "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " because it\'s charset could not be detected."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 507
    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e

    .line 508
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->outputDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 511
    :cond_e
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->outputDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    :goto_4
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 515
    iget-boolean v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    if-eqz v1, :cond_f

    .line 516
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Created directory : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 519
    :cond_f
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 520
    iget-boolean v0, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    if-eqz v0, :cond_10

    .line 522
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    :cond_10
    invoke-direct {p0, p1, v1}, Linfo/monitorenter/cpdetector/CodepageProcessor;->rawCopy(Ljava/io/File;Ljava/io/File;)V

    :cond_11
    :goto_5
    return-void
.end method

.method private processRecursive(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 358
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 363
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 364
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Linfo/monitorenter/cpdetector/CodepageProcessor;->processRecursive(Ljava/io/File;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->extensionFilter:Ljava/io/FileFilter;

    invoke-interface {v0, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-direct {p0, p1}, Linfo/monitorenter/cpdetector/CodepageProcessor;->process(Ljava/io/File;)V

    :cond_1
    return-void

    .line 359
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File argument is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private rawCopy(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-void

    .line 534
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 540
    :cond_1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 541
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 544
    sget-object p2, Linfo/monitorenter/cpdetector/CodepageProcessor;->rawtransportBuffer:[B

    array-length p2, p2

    .line 546
    :goto_0
    sget-object v1, Linfo/monitorenter/cpdetector/CodepageProcessor;->rawtransportBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 547
    sget-object v3, Linfo/monitorenter/cpdetector/CodepageProcessor;->rawtransportBuffer:[B

    invoke-virtual {p1, v3, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 549
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 550
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method


# virtual methods
.method protected describe()V
    .locals 4

    .line 554
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Setup:\n"

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "  Collection-Root        : "

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    iget-object v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->collectionRoot:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  Output-Dir             : "

    .line 559
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    iget-object v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->outputDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  Move unknown           : "

    .line 562
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    iget-boolean v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->moveUnknown:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  verbose                : "

    .line 565
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    iget-boolean v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  wait                   : "

    .line 568
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    iget-wide v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->wait:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    iget-object v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->targetCodepage:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_0

    const-string v2, "  transform to codepage  : "

    .line 572
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    iget-object v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->targetCodepage:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v2, "  detection algorithm    : "

    .line 576
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    iget-object v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-virtual {v1}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method loadCodepages()V
    .locals 7

    .line 621
    invoke-static {}, Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;

    move-result-object v0

    .line 622
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 627
    iget-boolean v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    if-eqz v2, :cond_0

    .line 628
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Loading system codepages..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 630
    :cond_0
    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/charset/Charset;

    iput-object v0, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->parseCodepages:[Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    .line 632
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 633
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 634
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/Charset;

    .line 635
    iget-boolean v3, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    if-eqz v3, :cond_1

    .line 636
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Charset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v3

    .line 638
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "  Aliases: "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 639
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 640
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 641
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 644
    :cond_1
    iget-object v3, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->parseCodepages:[Ljava/nio/charset/Charset;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public parseArgs([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    invoke-super {p0, p1}, Linfo/monitorenter/cpdetector/ACmdLineArgsInheritor;->parseArgs([Ljava/lang/String;)V

    const-string p1, "documents"

    .line 209
    invoke-virtual {p0, p1}, Linfo/monitorenter/cpdetector/CodepageProcessor;->getParsedCmdLineOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "extensions"

    .line 210
    invoke-virtual {p0, v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->getParsedCmdLineOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "outputDir"

    .line 211
    invoke-virtual {p0, v1}, Linfo/monitorenter/cpdetector/CodepageProcessor;->getParsedCmdLineOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "moveUnknown"

    .line 212
    invoke-virtual {p0, v2}, Linfo/monitorenter/cpdetector/CodepageProcessor;->getParsedCmdLineOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "verbose"

    .line 213
    invoke-virtual {p0, v3}, Linfo/monitorenter/cpdetector/CodepageProcessor;->getParsedCmdLineOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "wait"

    .line 214
    invoke-virtual {p0, v4}, Linfo/monitorenter/cpdetector/CodepageProcessor;->getParsedCmdLineOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "transform"

    .line 215
    invoke-virtual {p0, v5}, Linfo/monitorenter/cpdetector/CodepageProcessor;->getParsedCmdLineOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "detectors"

    .line 216
    invoke-virtual {p0, v6}, Linfo/monitorenter/cpdetector/CodepageProcessor;->getParsedCmdLineOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "charsets"

    .line 217
    invoke-virtual {p0, v7}, Linfo/monitorenter/cpdetector/CodepageProcessor;->getParsedCmdLineOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 220
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->printCharsets:Z

    goto/16 :goto_5

    :cond_0
    const-string v7, "String"

    if-eqz p1, :cond_c

    .line 228
    new-instance v8, Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->collectionRoot:Ljava/io/File;

    if-eqz v1, :cond_b

    .line 234
    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->outputDir:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 236
    new-instance p1, Linfo/monitorenter/cpdetector/io/FileFilterExtensions;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->parseCSVList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Linfo/monitorenter/cpdetector/io/FileFilterExtensions;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->extensionFilter:Ljava/io/FileFilter;

    goto :goto_0

    .line 240
    :cond_1
    new-instance p1, Linfo/monitorenter/cpdetector/CodepageProcessor$1;

    invoke-direct {p1, p0}, Linfo/monitorenter/cpdetector/CodepageProcessor$1;-><init>(Linfo/monitorenter/cpdetector/CodepageProcessor;)V

    iput-object p1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->extensionFilter:Ljava/io/FileFilter;

    :goto_0
    const/4 p1, 0x1

    if-eqz v2, :cond_2

    .line 247
    iput-boolean p1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->moveUnknown:Z

    :cond_2
    if-eqz v3, :cond_3

    .line 250
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    iput-boolean p1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    :cond_3
    if-eqz v4, :cond_4

    .line 255
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->wait:J

    :cond_4
    const/4 p1, 0x0

    if-eqz v5, :cond_6

    .line 258
    check-cast v5, Ljava/lang/String;

    .line 260
    :try_start_0
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->targetCodepage:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Given charset name: \""

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\" for option -t is illegal: \n"

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  "

    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "   Legal values are: \n"

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    :goto_1
    iget-object v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->parseCodepages:[Ljava/nio/charset/Charset;

    array-length v2, v2

    if-ge p1, v2, :cond_5

    const-string v2, "    "

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    iget-object v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->parseCodepages:[Ljava/nio/charset/Charset;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 275
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    if-eqz v6, :cond_9

    .line 279
    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Linfo/monitorenter/cpdetector/CodepageProcessor;->parseCSVList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 280
    array-length v1, v0

    if-eqz v1, :cond_8

    .line 288
    :goto_3
    array-length v1, v0

    if-ge p1, v1, :cond_a

    .line 290
    :try_start_1
    invoke-static {}, Linfo/monitorenter/cpdetector/reflect/SingletonLoader;->getInstance()Linfo/monitorenter/cpdetector/reflect/SingletonLoader;

    move-result-object v1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Linfo/monitorenter/cpdetector/reflect/SingletonLoader;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/monitorenter/cpdetector/io/ICodepageDetector;

    if-eqz v1, :cond_7

    .line 293
    iget-object v2, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-virtual {v2, v1}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 296
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not instantiate custom ICodepageDetector: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (argument \"-c\"): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 281
    :cond_8
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "You specified the codepage detector argument \"-d\" but ommited any comma-separated fully qualified class-name."

    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_9
    iget-object p1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    new-instance v0, Linfo/monitorenter/cpdetector/io/ParsingDetector;

    iget-boolean v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->verbose:Z

    invoke-direct {v0, v1}, Linfo/monitorenter/cpdetector/io/ParsingDetector;-><init>(Z)V

    invoke-virtual {p1, v0}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 305
    iget-object p1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->detector:Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;

    invoke-static {}, Linfo/monitorenter/cpdetector/io/JChardetFacade;->getInstance()Linfo/monitorenter/cpdetector/io/JChardetFacade;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/monitorenter/cpdetector/io/CodepageDetectorProxy;->add(Linfo/monitorenter/cpdetector/io/ICodepageDetector;)Z

    .line 307
    :cond_a
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->loadCodepages()V

    :goto_5
    return-void

    .line 230
    :cond_b
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->usage()V

    .line 231
    new-instance p1, Ljava/util/MissingResourceException;

    const-string v0, "Parameter for output directory is missing."

    const-string v1, "-o"

    invoke-direct {p1, v0, v7, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_c
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->usage()V

    .line 225
    new-instance p1, Ljava/util/MissingResourceException;

    const-string v0, "Parameter for collection root directory is missing."

    const-string v1, "-r"

    invoke-direct {p1, v0, v7, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public final process()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    iget-boolean v0, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->printCharsets:Z

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->printCharsets()V

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->verifyFiles()V

    .line 376
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->describe()V

    .line 377
    iget-object v0, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->collectionRoot:Ljava/io/File;

    invoke-direct {p0, v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->processRecursive(Ljava/io/File;)V

    .line 379
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No exceptional program flow occured!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected usage()V
    .locals 2

    .line 587
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "usage: java -cp jargs-1.0.jar"

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "cpdetector_1.0.9.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-char v1, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "antlr-2.7.4.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-char v1, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "chardet.jar info.monitorenter.cpdetector.CodepageProcessor -r <testdocumentdir> -o <testoutputdir> [options]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "options: \n"

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n  Optional:\n"

    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "  -c              : Only print available charsets on this system.\n"

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "  -e <extensions> : A comma- or semicolon- separated string for document extensions like \"-e txt,dat\" (without dot or space!).\n"

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "  -m              : Move files with unknown charset to directory \"unknown\".\n"

    .line 602
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "  -v              : Verbose output.\n"

    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "  -w <int>        : Wait <int> seconds before trying next document (good, if you want to work on the very same machine).\n"

    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "  -t <charset>    : Try to transform the document to given charset (codepage) name. \n"

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "                    This is only possible for documents that are detected to have a  \n"

    .line 606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "                    codepage that is supported by the current java VM. If not possible \n"

    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "                    sorting will be done as normal. \n"

    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "  -d              : Semicolon-separated list of fully qualified classnames. \n"

    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "                    These classes will be casted to ICodepageDetector instances \n"

    .line 610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "                    and used in the order specified.\n"

    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "                    If this argument is ommited, a HTMLCodepageDetector followed by .\n"

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "                    a JChardetFacade is used by default.\n"

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "  Mandatory (if no -c option given) :\n"

    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "  -r            : Root directory containing the collection (recursive).\n"

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "  -o            : Output directory containing the sorted collection.\n"

    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method protected verifyFiles()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 395
    iget-object v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->collectionRoot:Ljava/io/File;

    if-nez v1, :cond_0

    const-string v1, "-> Collection root directory is null!\n"

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-> Collection root directory:\""

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    iget-object v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->collectionRoot:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" does not exist!\n"

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    :cond_1
    :goto_0
    iget-object v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->outputDir:Ljava/io/File;

    if-nez v1, :cond_2

    const-string v1, "-> Output directory is null!\n"

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 407
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 408
    iget-object v1, p0, Linfo/monitorenter/cpdetector/CodepageProcessor;->outputDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "-> Output directory has to be a directory, no File!\n"

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gtz v1, :cond_4

    .line 416
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "All parameters are valid."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 414
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
