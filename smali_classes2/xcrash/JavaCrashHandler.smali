.class Lxcrash/JavaCrashHandler;
.super Ljava/lang/Object;
.source "JavaCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final instance:Lxcrash/JavaCrashHandler;


# instance fields
.field private appId:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private callback:Lxcrash/ICrashCallback;

.field private defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private dumpAllThreads:Z

.field private dumpAllThreadsCountMax:I

.field private dumpAllThreadsWhiteList:[Ljava/lang/String;

.field private dumpFds:Z

.field private dumpNetworkInfo:Z

.field private logDir:Ljava/lang/String;

.field private logcatEventsLines:I

.field private logcatMainLines:I

.field private logcatSystemLines:I

.field private pid:I

.field private processName:Ljava/lang/String;

.field private rethrow:Z

.field private final startTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lxcrash/JavaCrashHandler;

    invoke-direct {v0}, Lxcrash/JavaCrashHandler;-><init>()V

    sput-object v0, Lxcrash/JavaCrashHandler;->instance:Lxcrash/JavaCrashHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lxcrash/JavaCrashHandler;->startTime:Ljava/util/Date;

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lxcrash/JavaCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private getBuildId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "UnsatisfiedLinkError"

    .line 233
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const-string v2, "\""

    .line 236
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 237
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 238
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x2f

    .line 241
    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lxcrash/XCrash;->nativeLibDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/vendor/lib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/vendor/lib64/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/lib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/lib64/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-direct {p0, v0}, Lxcrash/JavaCrashHandler;->getLibInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 252
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "build id:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method private getEmergency(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    .line 264
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 265
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 266
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 267
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lxcrash/JavaCrashHandler;->startTime:Ljava/util/Date;

    iget-object v2, p0, Lxcrash/JavaCrashHandler;->appId:Ljava/lang/String;

    iget-object v3, p0, Lxcrash/JavaCrashHandler;->appVersion:Ljava/lang/String;

    const-string v4, "java"

    invoke-static {v1, p1, v4, v2, v3}, Lxcrash/Util;->getLogHeader(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lxcrash/JavaCrashHandler;->pid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", name: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  >>> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lxcrash/JavaCrashHandler;->processName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " <<<\n\njava stacktrace:\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-direct {p0, p3}, Lxcrash/JavaCrashHandler;->getBuildId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static getInstance()Lxcrash/JavaCrashHandler;
    .locals 1

    .line 71
    sget-object v0, Lxcrash/JavaCrashHandler;->instance:Lxcrash/JavaCrashHandler;

    return-object v0
.end method

.method private getLibInfo(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 212
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "    "

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    invoke-static {v2}, Lxcrash/Util;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 216
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 217
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 219
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(BuildId: unknown. FileSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ". LastModified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". MD5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Not found)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getOtherThreadsInfo(Ljava/lang/Thread;)Ljava/lang/String;
    .locals 14

    .line 286
    iget-object v0, p0, Lxcrash/JavaCrashHandler;->dumpAllThreadsWhiteList:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v2, p0, Lxcrash/JavaCrashHandler;->dumpAllThreadsWhiteList:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 290
    :try_start_0
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 292
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v6

    const-string v7, "xcrash"

    const-string v8, "JavaCrashHandler pattern compile failed"

    invoke-interface {v6, v7, v8, v5}, Lxcrash/ILogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 297
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v3

    .line 299
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    const-string v10, "\n"

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Thread;

    .line 302
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/StackTraceElement;

    .line 305
    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 308
    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v0, v12}, Lxcrash/JavaCrashHandler;->matchThreadName(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 312
    iget v12, p0, Lxcrash/JavaCrashHandler;->dumpAllThreadsCountMax:I

    if-lez v12, :cond_4

    if-lt v5, v12, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 317
    :cond_4
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "pid: "

    .line 318
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lxcrash/JavaCrashHandler;->pid:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", tid: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", name: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  >>> "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lxcrash/JavaCrashHandler;->processName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " <<<\n"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "java stacktrace:\n"

    .line 320
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    array-length v9, v8

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v9, :cond_5

    aget-object v12, v8, v11

    const-string v13, "    at "

    .line 322
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 324
    :cond_5
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 329
    :cond_6
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_a

    if-nez v5, :cond_7

    .line 331
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string p1, "total JVM threads (exclude the crashed thread): "

    .line 334
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    const-string p1, "JVM threads matched whitelist: "

    .line 336
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_8
    iget p1, p0, Lxcrash/JavaCrashHandler;->dumpAllThreadsCountMax:I

    if-lez p1, :cond_9

    const-string p1, "JVM threads ignored by max count limit: "

    .line 339
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string p1, "dumped JVM threads:"

    .line 341
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "+++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++ +++\n"

    .line 342
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    const-string v0, "xcrash"

    .line 126
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 129
    invoke-static {}, Lxcrash/NativeHandler;->getInstance()Lxcrash/NativeHandler;

    move-result-object v2

    invoke-virtual {v2}, Lxcrash/NativeHandler;->notifyJavaCrashed()V

    .line 130
    invoke-static {}, Lxcrash/AnrHandler;->getInstance()Lxcrash/AnrHandler;

    move-result-object v2

    invoke-virtual {v2}, Lxcrash/AnrHandler;->notifyJavaCrashed()V

    const/4 v2, 0x0

    .line 135
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s/%s_%020d_%s__%s%s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lxcrash/JavaCrashHandler;->logDir:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "tombstone"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lxcrash/JavaCrashHandler;->startTime:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lxcrash/JavaCrashHandler;->appVersion:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lxcrash/JavaCrashHandler;->processName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, ".java.xcrash"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {}, Lxcrash/FileManager;->getInstance()Lxcrash/FileManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lxcrash/FileManager;->createLogFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 138
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v4

    const-string v5, "JavaCrashHandler createLogFile failed"

    invoke-interface {v4, v0, v5, v3}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v2

    .line 144
    :goto_0
    :try_start_1
    invoke-direct {p0, v1, p1, p2}, Lxcrash/JavaCrashHandler;->getEmergency(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 146
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v1

    const-string v4, "JavaCrashHandler getEmergency failed"

    invoke-interface {v1, v0, v4, p2}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p2, v2

    :goto_1
    if-eqz v3, :cond_8

    .line 153
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "rws"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "UTF-8"

    if-eqz p2, :cond_0

    .line 157
    :try_start_3
    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_2
    move-exception p1

    goto/16 :goto_4

    .line 164
    :cond_0
    :goto_2
    :try_start_4
    iget p2, p0, Lxcrash/JavaCrashHandler;->logcatMainLines:I

    if-gtz p2, :cond_1

    iget v5, p0, Lxcrash/JavaCrashHandler;->logcatSystemLines:I

    if-gtz v5, :cond_1

    iget v5, p0, Lxcrash/JavaCrashHandler;->logcatEventsLines:I

    if-lez v5, :cond_2

    .line 165
    :cond_1
    iget v5, p0, Lxcrash/JavaCrashHandler;->logcatSystemLines:I

    iget v6, p0, Lxcrash/JavaCrashHandler;->logcatEventsLines:I

    invoke-static {p2, v5, v6}, Lxcrash/Util;->getLogcat(III)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 169
    :cond_2
    iget-boolean p2, p0, Lxcrash/JavaCrashHandler;->dumpFds:Z

    if-eqz p2, :cond_3

    .line 170
    invoke-static {}, Lxcrash/Util;->getFds()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 174
    :cond_3
    iget-boolean p2, p0, Lxcrash/JavaCrashHandler;->dumpNetworkInfo:Z

    if-eqz p2, :cond_4

    .line 175
    invoke-static {}, Lxcrash/Util;->getNetworkInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 179
    :cond_4
    invoke-static {}, Lxcrash/Util;->getMemoryInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "foreground:\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lxcrash/ActivityMonitor;->getInstance()Lxcrash/ActivityMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lxcrash/ActivityMonitor;->isApplicationForeground()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "yes"

    goto :goto_3

    :cond_5
    const-string v5, "no"

    :goto_3
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 185
    iget-boolean p2, p0, Lxcrash/JavaCrashHandler;->dumpAllThreads:Z

    if-eqz p2, :cond_6

    .line 186
    invoke-direct {p0, p1}, Lxcrash/JavaCrashHandler;->getOtherThreadsInfo(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 193
    :cond_6
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-object p2, v2

    goto :goto_6

    :catch_4
    move-exception p1

    move-object p2, v2

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception p1

    move-object v1, v2

    .line 189
    :goto_4
    :try_start_6
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v4

    const-string v5, "JavaCrashHandler write log file failed"

    invoke-interface {v4, v0, v5, p1}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_8

    .line 193
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    nop

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 197
    :catch_7
    :cond_7
    throw p1

    .line 201
    :cond_8
    :goto_6
    iget-object p1, p0, Lxcrash/JavaCrashHandler;->callback:Lxcrash/ICrashCallback;

    if-eqz p1, :cond_a

    if-nez v3, :cond_9

    goto :goto_7

    .line 203
    :cond_9
    :try_start_9
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-interface {p1, v2, p2}, Lxcrash/ICrashCallback;->onCrash(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_a
    return-void
.end method

.method private matchThreadName(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 349
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 350
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method initialize(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZZZI[Ljava/lang/String;Lxcrash/ICrashCallback;)V
    .locals 0

    .line 78
    iput p1, p0, Lxcrash/JavaCrashHandler;->pid:I

    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p2, "unknown"

    :cond_0
    iput-object p2, p0, Lxcrash/JavaCrashHandler;->processName:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lxcrash/JavaCrashHandler;->appId:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lxcrash/JavaCrashHandler;->appVersion:Ljava/lang/String;

    .line 82
    iput-boolean p6, p0, Lxcrash/JavaCrashHandler;->rethrow:Z

    .line 83
    iput-object p5, p0, Lxcrash/JavaCrashHandler;->logDir:Ljava/lang/String;

    .line 84
    iput p7, p0, Lxcrash/JavaCrashHandler;->logcatSystemLines:I

    .line 85
    iput p8, p0, Lxcrash/JavaCrashHandler;->logcatEventsLines:I

    .line 86
    iput p9, p0, Lxcrash/JavaCrashHandler;->logcatMainLines:I

    .line 87
    iput-boolean p10, p0, Lxcrash/JavaCrashHandler;->dumpFds:Z

    .line 88
    iput-boolean p11, p0, Lxcrash/JavaCrashHandler;->dumpNetworkInfo:Z

    .line 89
    iput-boolean p12, p0, Lxcrash/JavaCrashHandler;->dumpAllThreads:Z

    .line 90
    iput p13, p0, Lxcrash/JavaCrashHandler;->dumpAllThreadsCountMax:I

    .line 91
    iput-object p14, p0, Lxcrash/JavaCrashHandler;->dumpAllThreadsWhiteList:[Ljava/lang/String;

    .line 92
    iput-object p15, p0, Lxcrash/JavaCrashHandler;->callback:Lxcrash/ICrashCallback;

    .line 93
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lxcrash/JavaCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 96
    :try_start_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 98
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object p2

    const-string p3, "xcrash"

    const-string p4, "JavaCrashHandler setDefaultUncaughtExceptionHandler failed"

    invoke-interface {p2, p3, p4, p1}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 104
    iget-object v0, p0, Lxcrash/JavaCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 109
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lxcrash/JavaCrashHandler;->handleException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-static {}, Lxcrash/XCrash;->getLogger()Lxcrash/ILogger;

    move-result-object v1

    const-string v2, "xcrash"

    const-string v3, "JavaCrashHandler handleException failed"

    invoke-interface {v1, v2, v3, v0}, Lxcrash/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :goto_0
    iget-boolean v0, p0, Lxcrash/JavaCrashHandler;->rethrow:Z

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lxcrash/JavaCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 119
    :cond_1
    invoke-static {}, Lxcrash/ActivityMonitor;->getInstance()Lxcrash/ActivityMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lxcrash/ActivityMonitor;->finishAllActivities()V

    .line 120
    iget p1, p0, Lxcrash/JavaCrashHandler;->pid:I

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/16 p1, 0xa

    .line 121
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_2
    :goto_1
    return-void
.end method
