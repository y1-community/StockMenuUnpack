.class public Lantlr/debug/LLkDebuggingParser;
.super Lantlr/LLkParser;
.source "LLkDebuggingParser.java"

# interfaces
.implements Lantlr/debug/DebuggingParser;


# static fields
.field static synthetic class$antlr$TokenBuffer:Ljava/lang/Class;

.field static synthetic class$antlr$TokenStream:Ljava/lang/Class;

.field static synthetic class$antlr$debug$LLkDebuggingParser:Ljava/lang/Class;


# instance fields
.field private _notDebugMode:Z

.field protected parserEventSupport:Lantlr/debug/ParserEventSupport;

.field protected ruleNames:[Ljava/lang/String;

.field protected semPredNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lantlr/LLkParser;-><init>(I)V

    .line 19
    new-instance p1, Lantlr/debug/ParserEventSupport;

    invoke-direct {p1, p0}, Lantlr/debug/ParserEventSupport;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lantlr/debug/LLkDebuggingParser;->_notDebugMode:Z

    return-void
.end method

.method public constructor <init>(Lantlr/ParserSharedInputState;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/ParserSharedInputState;I)V

    .line 19
    new-instance p1, Lantlr/debug/ParserEventSupport;

    invoke-direct {p1, p0}, Lantlr/debug/ParserEventSupport;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lantlr/debug/LLkDebuggingParser;->_notDebugMode:Z

    return-void
.end method

.method public constructor <init>(Lantlr/TokenBuffer;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenBuffer;I)V

    .line 19
    new-instance p1, Lantlr/debug/ParserEventSupport;

    invoke-direct {p1, p0}, Lantlr/debug/ParserEventSupport;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lantlr/debug/LLkDebuggingParser;->_notDebugMode:Z

    return-void
.end method

.method public constructor <init>(Lantlr/TokenStream;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lantlr/LLkParser;-><init>(Lantlr/TokenStream;I)V

    .line 19
    new-instance p1, Lantlr/debug/ParserEventSupport;

    invoke-direct {p1, p0}, Lantlr/debug/ParserEventSupport;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lantlr/debug/LLkDebuggingParser;->_notDebugMode:Z

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 223
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public LA(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 114
    invoke-super {p0, p1}, Lantlr/LLkParser;->LA(I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v1, p1, v0}, Lantlr/debug/ParserEventSupport;->fireLA(II)V

    return v0
.end method

.method public addMessageListener(Lantlr/debug/MessageListener;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->addMessageListener(Lantlr/debug/MessageListener;)V

    return-void
.end method

.method public addParserListener(Lantlr/debug/ParserListener;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->addParserListener(Lantlr/debug/ParserListener;)V

    return-void
.end method

.method public addParserMatchListener(Lantlr/debug/ParserMatchListener;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->addParserMatchListener(Lantlr/debug/ParserMatchListener;)V

    return-void
.end method

.method public addParserTokenListener(Lantlr/debug/ParserTokenListener;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->addParserTokenListener(Lantlr/debug/ParserTokenListener;)V

    return-void
.end method

.method public addSemanticPredicateListener(Lantlr/debug/SemanticPredicateListener;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->addSemanticPredicateListener(Lantlr/debug/SemanticPredicateListener;)V

    return-void
.end method

.method public addSyntacticPredicateListener(Lantlr/debug/SyntacticPredicateListener;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->addSyntacticPredicateListener(Lantlr/debug/SyntacticPredicateListener;)V

    return-void
.end method

.method public addTraceListener(Lantlr/debug/TraceListener;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->addTraceListener(Lantlr/debug/TraceListener;)V

    return-void
.end method

.method public consume()V
    .locals 2

    const/4 v0, 0x1

    .line 62
    :try_start_0
    invoke-virtual {p0, v0}, Lantlr/debug/LLkDebuggingParser;->LA(I)I

    move-result v0
    :try_end_0
    .catch Lantlr/TokenStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, -0x63

    .line 64
    :goto_0
    invoke-super {p0}, Lantlr/LLkParser;->consume()V

    .line 65
    iget-object v1, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v1, v0}, Lantlr/debug/ParserEventSupport;->fireConsume(I)V

    return-void
.end method

.method protected fireEnterRule(II)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lantlr/debug/LLkDebuggingParser;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    iget-object v1, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    invoke-virtual {v0, p1, v1, p2}, Lantlr/debug/ParserEventSupport;->fireEnterRule(III)V

    :cond_0
    return-void
.end method

.method protected fireExitRule(II)V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lantlr/debug/LLkDebuggingParser;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    iget-object v1, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    invoke-virtual {v0, p1, v1, p2}, Lantlr/debug/ParserEventSupport;->fireExitRule(III)V

    :cond_0
    return-void
.end method

.method protected fireSemanticPredicateEvaluated(IIZ)Z
    .locals 2

    .line 76
    invoke-virtual {p0}, Lantlr/debug/LLkDebuggingParser;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    iget-object v1, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lantlr/debug/ParserEventSupport;->fireSemanticPredicateEvaluated(IIZI)Z

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method protected fireSyntacticPredicateFailed()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lantlr/debug/LLkDebuggingParser;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    iget-object v1, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    invoke-virtual {v0, v1}, Lantlr/debug/ParserEventSupport;->fireSyntacticPredicateFailed(I)V

    :cond_0
    return-void
.end method

.method protected fireSyntacticPredicateStarted()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lantlr/debug/LLkDebuggingParser;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    iget-object v1, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    invoke-virtual {v0, v1}, Lantlr/debug/ParserEventSupport;->fireSyntacticPredicateStarted(I)V

    :cond_0
    return-void
.end method

.method protected fireSyntacticPredicateSucceeded()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lantlr/debug/LLkDebuggingParser;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    iget-object v1, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v1, v1, Lantlr/ParserSharedInputState;->guessing:I

    invoke-virtual {v0, v1}, Lantlr/debug/ParserEventSupport;->fireSyntacticPredicateSucceeded(I)V

    :cond_0
    return-void
.end method

.method public getRuleName(I)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->ruleNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSemPredName(I)Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->semPredNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public declared-synchronized goToSleep()V
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :catch_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public isDebugMode()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lantlr/debug/LLkDebuggingParser;->_notDebugMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isGuessing()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v0, v0, Lantlr/ParserSharedInputState;->guessing:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public match(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedTokenException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lantlr/debug/LLkDebuggingParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p0, v0}, Lantlr/debug/LLkDebuggingParser;->LA(I)I

    move-result v0

    .line 126
    :try_start_0
    invoke-super {p0, p1}, Lantlr/LLkParser;->match(I)V

    .line 127
    iget-object v2, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    iget-object v3, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    invoke-virtual {v2, p1, v1, v3}, Lantlr/debug/ParserEventSupport;->fireMatch(ILjava/lang/String;I)V
    :try_end_0
    .catch Lantlr/MismatchedTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 130
    iget-object v3, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_0

    .line 131
    iget-object v3, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    iget-object v4, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v4, v4, Lantlr/ParserSharedInputState;->guessing:I

    invoke-virtual {v3, v0, p1, v1, v4}, Lantlr/debug/ParserEventSupport;->fireMismatch(IILjava/lang/String;I)V

    .line 132
    :cond_0
    throw v2
.end method

.method public match(Lantlr/collections/impl/BitSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedTokenException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, v0}, Lantlr/debug/LLkDebuggingParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {p0, v0}, Lantlr/debug/LLkDebuggingParser;->LA(I)I

    move-result v0

    .line 143
    :try_start_0
    invoke-super {p0, p1}, Lantlr/LLkParser;->match(Lantlr/collections/impl/BitSet;)V

    .line 144
    iget-object v2, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    iget-object v3, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    invoke-virtual {v2, v0, p1, v1, v3}, Lantlr/debug/ParserEventSupport;->fireMatch(ILantlr/collections/impl/BitSet;Ljava/lang/String;I)V
    :try_end_0
    .catch Lantlr/MismatchedTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 147
    iget-object v3, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_0

    .line 148
    iget-object v3, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    iget-object v4, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v4, v4, Lantlr/ParserSharedInputState;->guessing:I

    invoke-virtual {v3, v0, p1, v1, v4}, Lantlr/debug/ParserEventSupport;->fireMismatch(ILantlr/collections/impl/BitSet;Ljava/lang/String;I)V

    .line 149
    :cond_0
    throw v2
.end method

.method public matchNot(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedTokenException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0, v0}, Lantlr/debug/LLkDebuggingParser;->LT(I)Lantlr/Token;

    move-result-object v1

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p0, v0}, Lantlr/debug/LLkDebuggingParser;->LA(I)I

    move-result v0

    .line 156
    :try_start_0
    invoke-super {p0, p1}, Lantlr/LLkParser;->matchNot(I)V

    .line 157
    iget-object v2, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    iget-object v3, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    invoke-virtual {v2, v0, p1, v1, v3}, Lantlr/debug/ParserEventSupport;->fireMatchNot(IILjava/lang/String;I)V
    :try_end_0
    .catch Lantlr/MismatchedTokenException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 160
    iget-object v3, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v3, v3, Lantlr/ParserSharedInputState;->guessing:I

    if-nez v3, :cond_0

    .line 161
    iget-object v3, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    iget-object v4, p0, Lantlr/debug/LLkDebuggingParser;->inputState:Lantlr/ParserSharedInputState;

    iget v4, v4, Lantlr/ParserSharedInputState;->guessing:I

    invoke-virtual {v3, v0, p1, v1, v4}, Lantlr/debug/ParserEventSupport;->fireMismatchNot(IILjava/lang/String;I)V

    .line 162
    :cond_0
    throw v2
.end method

.method public removeMessageListener(Lantlr/debug/MessageListener;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->removeMessageListener(Lantlr/debug/MessageListener;)V

    return-void
.end method

.method public removeParserListener(Lantlr/debug/ParserListener;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->removeParserListener(Lantlr/debug/ParserListener;)V

    return-void
.end method

.method public removeParserMatchListener(Lantlr/debug/ParserMatchListener;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->removeParserMatchListener(Lantlr/debug/ParserMatchListener;)V

    return-void
.end method

.method public removeParserTokenListener(Lantlr/debug/ParserTokenListener;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->removeParserTokenListener(Lantlr/debug/ParserTokenListener;)V

    return-void
.end method

.method public removeSemanticPredicateListener(Lantlr/debug/SemanticPredicateListener;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->removeSemanticPredicateListener(Lantlr/debug/SemanticPredicateListener;)V

    return-void
.end method

.method public removeSyntacticPredicateListener(Lantlr/debug/SyntacticPredicateListener;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->removeSyntacticPredicateListener(Lantlr/debug/SyntacticPredicateListener;)V

    return-void
.end method

.method public removeTraceListener(Lantlr/debug/TraceListener;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->removeTraceListener(Lantlr/debug/TraceListener;)V

    return-void
.end method

.method public reportError(Lantlr/RecognitionException;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->fireReportError(Ljava/lang/Exception;)V

    .line 189
    invoke-super {p0, p1}, Lantlr/LLkParser;->reportError(Lantlr/RecognitionException;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->fireReportError(Ljava/lang/String;)V

    .line 194
    invoke-super {p0, p1}, Lantlr/LLkParser;->reportError(Ljava/lang/String;)V

    return-void
.end method

.method public reportWarning(Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lantlr/debug/LLkDebuggingParser;->parserEventSupport:Lantlr/debug/ParserEventSupport;

    invoke-virtual {v0, p1}, Lantlr/debug/ParserEventSupport;->fireReportWarning(Ljava/lang/String;)V

    .line 199
    invoke-super {p0, p1}, Lantlr/LLkParser;->reportWarning(Ljava/lang/String;)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 202
    iput-boolean p1, p0, Lantlr/debug/LLkDebuggingParser;->_notDebugMode:Z

    return-void
.end method

.method public setupDebugging(Lantlr/TokenBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0, p1}, Lantlr/debug/LLkDebuggingParser;->setupDebugging(Lantlr/TokenStream;Lantlr/TokenBuffer;)V

    return-void
.end method

.method public setupDebugging(Lantlr/TokenStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, p1, v0}, Lantlr/debug/LLkDebuggingParser;->setupDebugging(Lantlr/TokenStream;Lantlr/TokenBuffer;)V

    return-void
.end method

.method protected setupDebugging(Lantlr/TokenStream;Lantlr/TokenBuffer;)V
    .locals 7

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, v0}, Lantlr/debug/LLkDebuggingParser;->setDebugMode(Z)V

    :try_start_0
    const-string v1, "javax.swing.JButton"

    .line 216
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 219
    :catch_1
    :try_start_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Swing is required to use ParseView, but is not present in your CLASSPATH"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    const-string v1, "antlr.parseview.ParseView"

    .line 222
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    .line 223
    sget-object v4, Lantlr/debug/LLkDebuggingParser;->class$antlr$debug$LLkDebuggingParser:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "antlr.debug.LLkDebuggingParser"

    invoke-static {v4}, Lantlr/debug/LLkDebuggingParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lantlr/debug/LLkDebuggingParser;->class$antlr$debug$LLkDebuggingParser:Ljava/lang/Class;

    :cond_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lantlr/debug/LLkDebuggingParser;->class$antlr$TokenStream:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "antlr.TokenStream"

    invoke-static {v4}, Lantlr/debug/LLkDebuggingParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lantlr/debug/LLkDebuggingParser;->class$antlr$TokenStream:Ljava/lang/Class;

    :cond_1
    aput-object v4, v3, v0

    sget-object v4, Lantlr/debug/LLkDebuggingParser;->class$antlr$TokenBuffer:Ljava/lang/Class;

    if-nez v4, :cond_2

    const-string v4, "antlr.TokenBuffer"

    invoke-static {v4}, Lantlr/debug/LLkDebuggingParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lantlr/debug/LLkDebuggingParser;->class$antlr$TokenBuffer:Ljava/lang/Class;

    :cond_2
    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v0

    aput-object p2, v2, v6

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 227
    :goto_1
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error initializing ParseView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "Please report this to Scott Stanchfield, thetick@magelang.com"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_2
    return-void
.end method

.method public declared-synchronized wakeUp()V
    .locals 1

    monitor-enter p0

    .line 233
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
