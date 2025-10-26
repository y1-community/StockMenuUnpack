.class public Lantlr/debug/ParseTreeDebugParser;
.super Lantlr/LLkParser;
.source "ParseTreeDebugParser.java"


# instance fields
.field protected currentParseTreeRoot:Ljava/util/Stack;

.field protected mostRecentParseTreeRoot:Lantlr/ParseTreeRule;

.field protected numberOfDerivationSteps:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lantlr/LLkParser;-><init>(I)V

    .line 23
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->currentParseTreeRoot:Ljava/util/Stack;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->mostRecentParseTreeRoot:Lantlr/ParseTreeRule;

    const/4 p1, 0x1

    .line 31
    iput p1, p0, Lantlr/debug/ParseTreeDebugParser;->numberOfDerivationSteps:I

    return-void
.end method

.method public constructor <init>(Lantlr/ParserSharedInputState;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/ParserSharedInputState;I)V

    .line 23
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->currentParseTreeRoot:Ljava/util/Stack;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->mostRecentParseTreeRoot:Lantlr/ParseTreeRule;

    const/4 p1, 0x1

    .line 31
    iput p1, p0, Lantlr/debug/ParseTreeDebugParser;->numberOfDerivationSteps:I

    return-void
.end method

.method public constructor <init>(Lantlr/TokenBuffer;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenBuffer;I)V

    .line 23
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->currentParseTreeRoot:Ljava/util/Stack;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->mostRecentParseTreeRoot:Lantlr/ParseTreeRule;

    const/4 p1, 0x1

    .line 31
    iput p1, p0, Lantlr/debug/ParseTreeDebugParser;->numberOfDerivationSteps:I

    return-void
.end method

.method public constructor <init>(Lantlr/TokenStream;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenStream;I)V

    .line 23
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->currentParseTreeRoot:Ljava/util/Stack;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->mostRecentParseTreeRoot:Lantlr/ParseTreeRule;

    const/4 p1, 0x1

    .line 31
    iput p1, p0, Lantlr/debug/ParseTreeDebugParser;->numberOfDerivationSteps:I

    return-void
.end method


# virtual methods
.method protected addCurrentTokenToParseTree()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lantlr/debug/ParseTreeDebugParser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-lez v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lantlr/debug/ParseTreeDebugParser;->currentParseTreeRoot:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/ParseTreeRule;

    const/4 v1, 0x1

    .line 85
    invoke-virtual {p0, v1}, Lantlr/debug/ParseTreeDebugParser;->LA(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 86
    new-instance v1, Lantlr/ParseTreeToken;

    new-instance v2, Lantlr/CommonToken;

    const-string v3, "EOF"

    invoke-direct {v2, v3}, Lantlr/CommonToken;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lantlr/ParseTreeToken;-><init>(Lantlr/Token;)V

    goto :goto_0

    .line 89
    :cond_1
    new-instance v2, Lantlr/ParseTreeToken;

    invoke-virtual {p0, v1}, Lantlr/debug/ParseTreeDebugParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-direct {v2, v1}, Lantlr/ParseTreeToken;-><init>(Lantlr/Token;)V

    move-object v1, v2

    .line 91
    :goto_0
    invoke-virtual {v0, v1}, Lantlr/ParseTreeRule;->addChild(Lantlr/collections/AST;)V

    return-void
.end method

.method public getNumberOfDerivationSteps()I
    .locals 1

    .line 54
    iget v0, p0, Lantlr/debug/ParseTreeDebugParser;->numberOfDerivationSteps:I

    return v0
.end method

.method public getParseTree()Lantlr/ParseTree;
    .locals 1

    .line 50
    iget-object v0, p0, Lantlr/debug/ParseTreeDebugParser;->mostRecentParseTreeRoot:Lantlr/ParseTreeRule;

    return-object v0
.end method

.method public match(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedTokenException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lantlr/debug/ParseTreeDebugParser;->addCurrentTokenToParseTree()V

    .line 59
    invoke-super {p0, p1}, Lantlr/LLkParser;->match(I)V

    return-void
.end method

.method public match(Lantlr/collections/impl/BitSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedTokenException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lantlr/debug/ParseTreeDebugParser;->addCurrentTokenToParseTree()V

    .line 64
    invoke-super {p0, p1}, Lantlr/LLkParser;->match(Lantlr/collections/impl/BitSet;)V

    return-void
.end method

.method public matchNot(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedTokenException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lantlr/debug/ParseTreeDebugParser;->addCurrentTokenToParseTree()V

    .line 69
    invoke-super {p0, p1}, Lantlr/LLkParser;->matchNot(I)V

    return-void
.end method

.method public traceIn(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lantlr/debug/ParseTreeDebugParser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-lez v0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Lantlr/ParseTreeRule;

    invoke-direct {v0, p1}, Lantlr/ParseTreeRule;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->currentParseTreeRoot:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 101
    iget-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->currentParseTreeRoot:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/ParseTreeRule;

    .line 102
    invoke-virtual {p1, v0}, Lantlr/ParseTreeRule;->addChild(Lantlr/collections/AST;)V

    .line 104
    :cond_1
    iget-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->currentParseTreeRoot:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget p1, p0, Lantlr/debug/ParseTreeDebugParser;->numberOfDerivationSteps:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/debug/ParseTreeDebugParser;->numberOfDerivationSteps:I

    return-void
.end method

.method public traceOut(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 110
    iget-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->inputState:Lantlr/ParserSharedInputState;

    iget p1, p1, Lantlr/ParserSharedInputState;->guessing:I

    if-lez p1, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->currentParseTreeRoot:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/ParseTreeRule;

    iput-object p1, p0, Lantlr/debug/ParseTreeDebugParser;->mostRecentParseTreeRoot:Lantlr/ParseTreeRule;

    return-void
.end method
