.class public Lantlr/TreeParser;
.super Ljava/lang/Object;
.source "TreeParser.java"


# static fields
.field public static ASTNULL:Lantlr/ASTNULLType;


# instance fields
.field protected _retTree:Lantlr/collections/AST;

.field protected astFactory:Lantlr/ASTFactory;

.field protected inputState:Lantlr/TreeParserSharedInputState;

.field protected returnAST:Lantlr/collections/AST;

.field protected tokenNames:[Ljava/lang/String;

.field protected traceDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lantlr/ASTNULLType;

    invoke-direct {v0}, Lantlr/ASTNULLType;-><init>()V

    sput-object v0, Lantlr/TreeParser;->ASTNULL:Lantlr/ASTNULLType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lantlr/ASTFactory;

    invoke-direct {v0}, Lantlr/ASTFactory;-><init>()V

    iput-object v0, p0, Lantlr/TreeParser;->astFactory:Lantlr/ASTFactory;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lantlr/TreeParser;->traceDepth:I

    .line 47
    new-instance v0, Lantlr/TreeParserSharedInputState;

    invoke-direct {v0}, Lantlr/TreeParserSharedInputState;-><init>()V

    iput-object v0, p0, Lantlr/TreeParser;->inputState:Lantlr/TreeParserSharedInputState;

    return-void
.end method

.method public static panic()V
    .locals 2

    .line 98
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TreeWalker: panic"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 99
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public getAST()Lantlr/collections/AST;
    .locals 1

    .line 52
    iget-object v0, p0, Lantlr/TreeParser;->returnAST:Lantlr/collections/AST;

    return-object v0
.end method

.method public getASTFactory()Lantlr/ASTFactory;
    .locals 1

    .line 56
    iget-object v0, p0, Lantlr/TreeParser;->astFactory:Lantlr/ASTFactory;

    return-object v0
.end method

.method public getTokenName(I)Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lantlr/TreeParser;->tokenNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTokenNames()[Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lantlr/TreeParser;->tokenNames:[Ljava/lang/String;

    return-object v0
.end method

.method protected match(Lantlr/collections/AST;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedTokenException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 69
    sget-object v0, Lantlr/TreeParser;->ASTNULL:Lantlr/ASTNULLType;

    if-eq p1, v0, :cond_0

    invoke-interface {p1}, Lantlr/collections/AST;->getType()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance v0, Lantlr/MismatchedTokenException;

    invoke-virtual {p0}, Lantlr/TreeParser;->getTokenNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lantlr/MismatchedTokenException;-><init>([Ljava/lang/String;Lantlr/collections/AST;IZ)V

    throw v0
.end method

.method public match(Lantlr/collections/AST;Lantlr/collections/impl/BitSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedTokenException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 79
    sget-object v0, Lantlr/TreeParser;->ASTNULL:Lantlr/ASTNULLType;

    if-eq p1, v0, :cond_0

    invoke-interface {p1}, Lantlr/collections/AST;->getType()I

    move-result v0

    invoke-virtual {p2, v0}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v0, Lantlr/MismatchedTokenException;

    invoke-virtual {p0}, Lantlr/TreeParser;->getTokenNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lantlr/MismatchedTokenException;-><init>([Ljava/lang/String;Lantlr/collections/AST;Lantlr/collections/impl/BitSet;Z)V

    throw v0
.end method

.method protected matchNot(Lantlr/collections/AST;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedTokenException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 86
    sget-object v0, Lantlr/TreeParser;->ASTNULL:Lantlr/ASTNULLType;

    if-eq p1, v0, :cond_0

    invoke-interface {p1}, Lantlr/collections/AST;->getType()I

    move-result v0

    if-eq v0, p2, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance v0, Lantlr/MismatchedTokenException;

    invoke-virtual {p0}, Lantlr/TreeParser;->getTokenNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, p2, v2}, Lantlr/MismatchedTokenException;-><init>([Ljava/lang/String;Lantlr/collections/AST;IZ)V

    throw v0
.end method

.method public reportError(Lantlr/RecognitionException;)V
    .locals 1

    .line 104
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lantlr/RecognitionException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 3

    .line 109
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public reportWarning(Ljava/lang/String;)V
    .locals 3

    .line 114
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setASTFactory(Lantlr/ASTFactory;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lantlr/TreeParser;->astFactory:Lantlr/ASTFactory;

    return-void
.end method

.method public setASTNodeClass(Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lantlr/TreeParser;->astFactory:Lantlr/ASTFactory;

    invoke-virtual {v0, p1}, Lantlr/ASTFactory;->setASTNodeType(Ljava/lang/String;)V

    return-void
.end method

.method public setASTNodeType(Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lantlr/TreeParser;->setASTNodeClass(Ljava/lang/String;)V

    return-void
.end method

.method public traceIn(Ljava/lang/String;Lantlr/collections/AST;)V
    .locals 3

    .line 143
    iget v0, p0, Lantlr/TreeParser;->traceDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/TreeParser;->traceDepth:I

    .line 144
    invoke-virtual {p0}, Lantlr/TreeParser;->traceIndent()V

    .line 145
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lantlr/TreeParser;->inputState:Lantlr/TreeParserSharedInputState;

    iget p1, p1, Lantlr/TreeParserSharedInputState;->guessing:I

    if-lez p1, :cond_1

    const-string p1, " [guessing]"

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public traceIndent()V
    .locals 3

    const/4 v0, 0x0

    .line 138
    :goto_0
    iget v1, p0, Lantlr/TreeParser;->traceDepth:I

    if-ge v0, v1, :cond_0

    .line 139
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public traceOut(Ljava/lang/String;Lantlr/collections/AST;)V
    .locals 3

    .line 151
    invoke-virtual {p0}, Lantlr/TreeParser;->traceIndent()V

    .line 152
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lantlr/TreeParser;->inputState:Lantlr/TreeParserSharedInputState;

    iget p1, p1, Lantlr/TreeParserSharedInputState;->guessing:I

    if-lez p1, :cond_1

    const-string p1, " [guessing]"

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    iget p1, p0, Lantlr/TreeParser;->traceDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/TreeParser;->traceDepth:I

    return-void
.end method
