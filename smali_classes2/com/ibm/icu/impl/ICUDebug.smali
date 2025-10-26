.class public final Lcom/ibm/icu/impl/ICUDebug;
.super Ljava/lang/Object;
.source "ICUDebug.java"


# static fields
.field private static debug:Z

.field private static help:Z

.field private static params:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "ICUDebug"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 20
    :goto_0
    sget-object v0, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    sput-boolean v3, Lcom/ibm/icu/impl/ICUDebug;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, ""

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    const-string v3, "help"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_2
    sput-boolean v1, Lcom/ibm/icu/impl/ICUDebug;->help:Z

    .line 24
    sget-boolean v0, Lcom/ibm/icu/impl/ICUDebug;->debug:Z

    if-eqz v0, :cond_3

    .line 25
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nICUDebug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enabled()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/ibm/icu/impl/ICUDebug;->debug:Z

    return v0
.end method

.method public static enabled(Ljava/lang/String;)Z
    .locals 4

    .line 34
    sget-boolean v0, Lcom/ibm/icu/impl/ICUDebug;->debug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    .line 36
    :cond_0
    sget-boolean v0, Lcom/ibm/icu/impl/ICUDebug;->help:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nICUDebug.enabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public static value(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 44
    sget-boolean v0, Lcom/ibm/icu/impl/ICUDebug;->debug:Z

    const-string v1, "false"

    if-eqz v0, :cond_3

    .line 45
    sget-object v0, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    sget-object v1, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    sget-object v1, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 50
    sget-object v1, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 51
    sget-object v3, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "true"

    :goto_0
    move-object v1, v0

    .line 57
    :cond_2
    sget-boolean v0, Lcom/ibm/icu/impl/ICUDebug;->help:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nICUDebug.value("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method
