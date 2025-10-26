.class public final Linfo/monitorenter/util/ExceptionUtil;
.super Ljava/lang/Object;
.source "ExceptionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/monitorenter/util/ExceptionUtil$InputStreamTracer;
    }
.end annotation


# static fields
.field private static instance:Linfo/monitorenter/util/ExceptionUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureSystemOutForDebuggingPurposesOnly(Z)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    .line 118
    new-instance v1, Ljava/io/PipedInputStream;

    invoke-direct {v1, v0}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    if-eqz p0, :cond_0

    .line 121
    new-instance p0, Linfo/monitorenter/io/MultiplexingOutputStream;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v2, v0}, Linfo/monitorenter/io/MultiplexingOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v0, p0

    .line 123
    :cond_0
    new-instance p0, Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 124
    invoke-static {p0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    return-object v1
.end method

.method public static findMatchInSystemOut(Ljava/lang/String;)Linfo/monitorenter/util/ExceptionUtil$InputStreamTracer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 146
    invoke-static {v0}, Linfo/monitorenter/util/ExceptionUtil;->captureSystemOutForDebuggingPurposesOnly(Z)Ljava/io/InputStream;

    move-result-object v1

    .line 147
    new-instance v2, Linfo/monitorenter/util/ExceptionUtil$InputStreamTracer;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v1, p0, v3}, Linfo/monitorenter/util/ExceptionUtil$InputStreamTracer;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 149
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 151
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object v2
.end method
