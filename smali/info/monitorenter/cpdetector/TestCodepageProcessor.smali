.class public Linfo/monitorenter/cpdetector/TestCodepageProcessor;
.super Ljava/lang/Object;
.source "TestCodepageProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public testIllegalCharsetError()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-m"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-r"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "testdocuments/invalidcharsetdocument/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "-o"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "testoutput/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-t"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "utf-8"

    aput-object v2, v0, v1

    const-string v1, "valid"

    .line 104
    invoke-static {v1}, Linfo/monitorenter/util/ExceptionUtil;->findMatchInSystemOut(Ljava/lang/String;)Linfo/monitorenter/util/ExceptionUtil$InputStreamTracer;

    move-result-object v2

    .line 106
    invoke-static {v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->main([Ljava/lang/String;)V

    .line 108
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 109
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    const-wide/16 v3, 0x1388

    .line 110
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 111
    invoke-virtual {v2}, Linfo/monitorenter/util/ExceptionUtil$InputStreamTracer;->isMatched()Z

    move-result v0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" in system out."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method public testVoidError()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-m"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-r"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "testdocuments/voiddocument/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "-o"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "testoutput/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-t"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "utf-8"

    aput-object v2, v0, v1

    const-string v1, "Skipping transformation of document /home/achim/workspace/cpdetector/testdocuments/voiddocument/Voiderror.htm because it\'s charset could not be detected."

    .line 75
    invoke-static {v1}, Linfo/monitorenter/util/ExceptionUtil;->findMatchInSystemOut(Ljava/lang/String;)Linfo/monitorenter/util/ExceptionUtil$InputStreamTracer;

    move-result-object v2

    .line 77
    invoke-static {v0}, Linfo/monitorenter/cpdetector/CodepageProcessor;->main([Ljava/lang/String;)V

    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 80
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    const-wide/16 v3, 0x1388

    .line 81
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 82
    invoke-virtual {v2}, Linfo/monitorenter/util/ExceptionUtil$InputStreamTracer;->isMatched()Z

    move-result v0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" in system out."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method
