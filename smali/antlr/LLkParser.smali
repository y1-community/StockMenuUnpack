.class public Lantlr/LLkParser;
.super Lantlr/Parser;
.source "LLkParser.java"


# instance fields
.field k:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lantlr/Parser;-><init>()V

    .line 21
    iput p1, p0, Lantlr/LLkParser;->k:I

    return-void
.end method

.method public constructor <init>(Lantlr/ParserSharedInputState;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lantlr/Parser;-><init>(Lantlr/ParserSharedInputState;)V

    .line 26
    iput p2, p0, Lantlr/LLkParser;->k:I

    return-void
.end method

.method public constructor <init>(Lantlr/TokenBuffer;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lantlr/Parser;-><init>()V

    .line 30
    iput p2, p0, Lantlr/LLkParser;->k:I

    .line 31
    invoke-virtual {p0, p1}, Lantlr/LLkParser;->setTokenBuffer(Lantlr/TokenBuffer;)V

    return-void
.end method

.method public constructor <init>(Lantlr/TokenStream;I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lantlr/Parser;-><init>()V

    .line 35
    iput p2, p0, Lantlr/LLkParser;->k:I

    .line 36
    new-instance p2, Lantlr/TokenBuffer;

    invoke-direct {p2, p1}, Lantlr/TokenBuffer;-><init>(Lantlr/TokenStream;)V

    .line 37
    invoke-virtual {p0, p2}, Lantlr/LLkParser;->setTokenBuffer(Lantlr/TokenBuffer;)V

    return-void
.end method

.method private trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lantlr/LLkParser;->traceIndent()V

    .line 61
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lantlr/LLkParser;->inputState:Lantlr/ParserSharedInputState;

    iget p1, p1, Lantlr/ParserSharedInputState;->guessing:I

    if-lez p1, :cond_0

    const-string p1, "; [guessing]"

    goto :goto_0

    :cond_0
    const-string p1, "; "

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x1

    .line 62
    :goto_1
    iget v0, p0, Lantlr/LLkParser;->k:I

    if-gt p2, v0, :cond_3

    if-eq p2, p1, :cond_1

    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 66
    :cond_1
    invoke-virtual {p0, p2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v0

    const-string v1, "LA("

    if-eqz v0, :cond_2

    .line 67
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ")=="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lantlr/LLkParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 70
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ")==null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 73
    :cond_3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public LA(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lantlr/LLkParser;->inputState:Lantlr/ParserSharedInputState;

    iget-object v0, v0, Lantlr/ParserSharedInputState;->input:Lantlr/TokenBuffer;

    invoke-virtual {v0, p1}, Lantlr/TokenBuffer;->LA(I)I

    move-result p1

    return p1
.end method

.method public LT(I)Lantlr/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lantlr/LLkParser;->inputState:Lantlr/ParserSharedInputState;

    iget-object v0, v0, Lantlr/ParserSharedInputState;->input:Lantlr/TokenBuffer;

    invoke-virtual {v0, p1}, Lantlr/TokenBuffer;->LT(I)Lantlr/Token;

    move-result-object p1

    return-object p1
.end method

.method public consume()V
    .locals 1

    .line 48
    iget-object v0, p0, Lantlr/LLkParser;->inputState:Lantlr/ParserSharedInputState;

    iget-object v0, v0, Lantlr/ParserSharedInputState;->input:Lantlr/TokenBuffer;

    invoke-virtual {v0}, Lantlr/TokenBuffer;->consume()V

    return-void
.end method

.method public traceIn(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 77
    iget v0, p0, Lantlr/LLkParser;->traceDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/LLkParser;->traceDepth:I

    const-string v0, "> "

    .line 78
    invoke-direct {p0, v0, p1}, Lantlr/LLkParser;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public traceOut(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    const-string v0, "< "

    .line 82
    invoke-direct {p0, v0, p1}, Lantlr/LLkParser;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget p1, p0, Lantlr/LLkParser;->traceDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/LLkParser;->traceDepth:I

    return-void
.end method
