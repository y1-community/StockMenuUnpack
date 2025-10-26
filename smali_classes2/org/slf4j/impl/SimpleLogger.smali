.class public Lorg/slf4j/impl/SimpleLogger;
.super Lorg/slf4j/helpers/MarkerIgnoringBase;
.source "SimpleLogger.java"


# static fields
.field private static ERROR_STR:Ljava/lang/String; = null

.field private static INFO_STR:Ljava/lang/String; = null

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field private static WARN_STR:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x5b0aab4c5b90a98dL

.field private static startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/slf4j/impl/SimpleLogger;->startTime:J

    const-string v0, "line.separator"

    .line 73
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/slf4j/impl/SimpleLogger;->LINE_SEPARATOR:Ljava/lang/String;

    const-string v0, "INFO"

    .line 75
    sput-object v0, Lorg/slf4j/impl/SimpleLogger;->INFO_STR:Ljava/lang/String;

    const-string v0, "WARN"

    .line 76
    sput-object v0, Lorg/slf4j/impl/SimpleLogger;->WARN_STR:Ljava/lang/String;

    const-string v0, "ERROR"

    .line 77
    sput-object v0, Lorg/slf4j/impl/SimpleLogger;->ERROR_STR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/slf4j/impl/SimpleLogger;->name:Ljava/lang/String;

    return-void
.end method

.method private formatAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 222
    invoke-static {p2, p3, p4}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p2

    .line 223
    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lorg/slf4j/impl/SimpleLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private formatAndLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 234
    invoke-static {p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p2

    .line 235
    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lorg/slf4j/impl/SimpleLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 189
    sget-wide v3, Lorg/slf4j/impl/SimpleLogger;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, " ["

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "] "

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " "

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    iget-object p1, p0, Lorg/slf4j/impl/SimpleLogger;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " - "

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    sget-object p1, Lorg/slf4j/impl/SimpleLogger;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 207
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 209
    :cond_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2

    .line 342
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->ERROR_STR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/SimpleLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 350
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->ERROR_STR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 358
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->ERROR_STR:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 373
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->ERROR_STR:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 366
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->ERROR_STR:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 2

    .line 250
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->INFO_STR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/SimpleLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 258
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->INFO_STR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 266
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->INFO_STR:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 281
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->INFO_STR:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 274
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->INFO_STR:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2

    .line 296
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->WARN_STR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/SimpleLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 304
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->WARN_STR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 312
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->WARN_STR:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 327
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->WARN_STR:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 320
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->WARN_STR:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
