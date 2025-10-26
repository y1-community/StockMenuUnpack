.class public abstract Lantlr/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field protected astFactory:Lantlr/ASTFactory;

.field private ignoreInvalidDebugCalls:Z

.field protected inputState:Lantlr/ParserSharedInputState;

.field protected returnAST:Lantlr/collections/AST;

.field protected tokenNames:[Ljava/lang/String;

.field protected tokenTypeToASTClassMap:Ljava/util/Hashtable;

.field protected traceDepth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    new-instance v0, Lantlr/ParserSharedInputState;

    invoke-direct {v0}, Lantlr/ParserSharedInputState;-><init>()V

    invoke-direct {p0, v0}, Lantlr/Parser;-><init>(Lantlr/ParserSharedInputState;)V

    return-void
.end method

.method public constructor <init>(Lantlr/ParserSharedInputState;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lantlr/Parser;->astFactory:Lantlr/ASTFactory;

    .line 81
    iput-object v0, p0, Lantlr/Parser;->tokenTypeToASTClassMap:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    .line 86
    iput v0, p0, Lantlr/Parser;->traceDepth:I

    .line 93
    iput-object p1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    return-void
.end method

.method public static panic()V
    .locals 2

    .line 247
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Parser: panic"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 248
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public abstract LA(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation
.end method

.method public abstract LT(I)Lantlr/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation
.end method

.method public addMessageListener(Lantlr/debug/MessageListener;)V
    .locals 1

    .line 105
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addMessageListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addParserListener(Lantlr/debug/ParserListener;)V
    .locals 1

    .line 110
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addParserListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addParserMatchListener(Lantlr/debug/ParserMatchListener;)V
    .locals 1

    .line 115
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addParserMatchListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addParserTokenListener(Lantlr/debug/ParserTokenListener;)V
    .locals 1

    .line 120
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addParserTokenListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addSemanticPredicateListener(Lantlr/debug/SemanticPredicateListener;)V
    .locals 1

    .line 125
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addSemanticPredicateListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addSyntacticPredicateListener(Lantlr/debug/SyntacticPredicateListener;)V
    .locals 1

    .line 130
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addSyntacticPredicateListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTraceListener(Lantlr/debug/TraceListener;)V
    .locals 1

    .line 135
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addTraceListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract consume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation
.end method

.method public consumeUntil(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0, v0}, Lantlr/Parser;->LA(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lantlr/Parser;->LA(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lantlr/Parser;->consume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public consumeUntil(Lantlr/collections/impl/BitSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0, v0}, Lantlr/Parser;->LA(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lantlr/Parser;->LA(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lantlr/Parser;->consume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected defaultDebuggingSetup(Lantlr/TokenStream;Lantlr/TokenBuffer;)V
    .locals 0

    return-void
.end method

.method public getAST()Lantlr/collections/AST;
    .locals 1

    .line 162
    iget-object v0, p0, Lantlr/Parser;->returnAST:Lantlr/collections/AST;

    return-object v0
.end method

.method public getASTFactory()Lantlr/ASTFactory;
    .locals 1

    .line 166
    iget-object v0, p0, Lantlr/Parser;->astFactory:Lantlr/ASTFactory;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget-object v0, v0, Lantlr/ParserSharedInputState;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputState()Lantlr/ParserSharedInputState;
    .locals 1

    .line 174
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    return-object v0
.end method

.method public getTokenName(I)Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lantlr/Parser;->tokenNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTokenNames()[Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lantlr/Parser;->tokenNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getTokenTypeToASTClassMap()Ljava/util/Hashtable;
    .locals 1

    .line 101
    iget-object v0, p0, Lantlr/Parser;->tokenTypeToASTClassMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method public isDebugMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mark()I
    .locals 1

    .line 204
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget-object v0, v0, Lantlr/ParserSharedInputState;->input:Lantlr/TokenBuffer;

    invoke-virtual {v0}, Lantlr/TokenBuffer;->mark()I

    move-result v0

    return v0
.end method

.method public match(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedTokenException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, v0}, Lantlr/Parser;->LA(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lantlr/Parser;->consume()V

    return-void

    .line 213
    :cond_0
    new-instance v1, Lantlr/MismatchedTokenException;

    iget-object v3, p0, Lantlr/Parser;->tokenNames:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/Parser;->LT(I)Lantlr/Token;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move v5, p1

    invoke-direct/range {v2 .. v7}, Lantlr/MismatchedTokenException;-><init>([Ljava/lang/String;Lantlr/Token;IZLjava/lang/String;)V

    throw v1
.end method

.method public match(Lantlr/collections/impl/BitSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedTokenException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, v0}, Lantlr/Parser;->LA(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lantlr/Parser;->consume()V

    return-void

    .line 225
    :cond_0
    new-instance v1, Lantlr/MismatchedTokenException;

    iget-object v3, p0, Lantlr/Parser;->tokenNames:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/Parser;->LT(I)Lantlr/Token;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lantlr/MismatchedTokenException;-><init>([Ljava/lang/String;Lantlr/Token;Lantlr/collections/impl/BitSet;ZLjava/lang/String;)V

    throw v1
.end method

.method public matchNot(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedTokenException;,
            Lantlr/TokenStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 232
    invoke-virtual {p0, v0}, Lantlr/Parser;->LA(I)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 237
    invoke-virtual {p0}, Lantlr/Parser;->consume()V

    return-void

    .line 234
    :cond_0
    new-instance v1, Lantlr/MismatchedTokenException;

    iget-object v3, p0, Lantlr/Parser;->tokenNames:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/Parser;->LT(I)Lantlr/Token;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move v5, p1

    invoke-direct/range {v2 .. v7}, Lantlr/MismatchedTokenException;-><init>([Ljava/lang/String;Lantlr/Token;IZLjava/lang/String;)V

    throw v1
.end method

.method public removeMessageListener(Lantlr/debug/MessageListener;)V
    .locals 1

    .line 252
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 253
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "removeMessageListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeParserListener(Lantlr/debug/ParserListener;)V
    .locals 1

    .line 257
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 258
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "removeParserListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeParserMatchListener(Lantlr/debug/ParserMatchListener;)V
    .locals 1

    .line 262
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 263
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "removeParserMatchListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeParserTokenListener(Lantlr/debug/ParserTokenListener;)V
    .locals 1

    .line 267
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 268
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "removeParserTokenListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeSemanticPredicateListener(Lantlr/debug/SemanticPredicateListener;)V
    .locals 1

    .line 272
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 273
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "removeSemanticPredicateListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeSyntacticPredicateListener(Lantlr/debug/SyntacticPredicateListener;)V
    .locals 1

    .line 277
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 278
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "removeSyntacticPredicateListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTraceListener(Lantlr/debug/TraceListener;)V
    .locals 1

    .line 282
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 283
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "removeTraceListener() is only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportError(Lantlr/RecognitionException;)V
    .locals 1

    .line 288
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 3

    .line 293
    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 294
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reportWarning(Ljava/lang/String;)V
    .locals 3

    .line 303
    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lantlr/Parser;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public rewind(I)V
    .locals 1

    .line 312
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget-object v0, v0, Lantlr/ParserSharedInputState;->input:Lantlr/TokenBuffer;

    invoke-virtual {v0, p1}, Lantlr/TokenBuffer;->rewind(I)V

    return-void
.end method

.method public setASTFactory(Lantlr/ASTFactory;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lantlr/Parser;->astFactory:Lantlr/ASTFactory;

    return-void
.end method

.method public setASTNodeClass(Ljava/lang/String;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lantlr/Parser;->astFactory:Lantlr/ASTFactory;

    invoke-virtual {v0, p1}, Lantlr/ASTFactory;->setASTNodeType(Ljava/lang/String;)V

    return-void
.end method

.method public setASTNodeType(Ljava/lang/String;)V
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lantlr/Parser;->setASTNodeClass(Ljava/lang/String;)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 1

    .line 336
    iget-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    if-eqz p1, :cond_0

    return-void

    .line 337
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "setDebugMode() only valid if parser built for debugging"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iput-object p1, v0, Lantlr/ParserSharedInputState;->filename:Ljava/lang/String;

    return-void
.end method

.method public setIgnoreInvalidDebugCalls(Z)V
    .locals 0

    .line 345
    iput-boolean p1, p0, Lantlr/Parser;->ignoreInvalidDebugCalls:Z

    return-void
.end method

.method public setInputState(Lantlr/ParserSharedInputState;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    return-void
.end method

.method public setTokenBuffer(Lantlr/TokenBuffer;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iput-object p1, v0, Lantlr/ParserSharedInputState;->input:Lantlr/TokenBuffer;

    return-void
.end method

.method public traceIn(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 359
    iget v0, p0, Lantlr/Parser;->traceDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/Parser;->traceDepth:I

    .line 360
    invoke-virtual {p0}, Lantlr/Parser;->traceIndent()V

    .line 361
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "; LA(1)=="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Lantlr/Parser;->LT(I)Lantlr/Token;

    move-result-object p1

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget p1, p1, Lantlr/ParserSharedInputState;->guessing:I

    if-lez p1, :cond_0

    const-string p1, " [guessing]"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public traceIndent()V
    .locals 3

    const/4 v0, 0x0

    .line 354
    :goto_0
    iget v1, p0, Lantlr/Parser;->traceDepth:I

    if-ge v0, v1, :cond_0

    .line 355
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public traceOut(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Lantlr/Parser;->traceIndent()V

    .line 367
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "; LA(1)=="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lantlr/Parser;->LT(I)Lantlr/Token;

    move-result-object v2

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/Parser;->inputState:Lantlr/ParserSharedInputState;

    iget v2, v2, Lantlr/ParserSharedInputState;->guessing:I

    if-lez v2, :cond_0

    const-string v2, " [guessing]"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    iget v0, p0, Lantlr/Parser;->traceDepth:I

    sub-int/2addr v0, p1

    iput v0, p0, Lantlr/Parser;->traceDepth:I

    return-void
.end method
