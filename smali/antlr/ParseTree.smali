.class public abstract Lantlr/ParseTree;
.super Lantlr/BaseAST;
.source "ParseTree.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lantlr/BaseAST;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getLeftmostDerivation(Ljava/lang/StringBuffer;I)I
.end method

.method public getLeftmostDerivation(I)Ljava/lang/String;
    .locals 4

    .line 27
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 28
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/ParseTree;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p1, :cond_0

    const-string v3, " =>"

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual {p0, v2}, Lantlr/ParseTree;->getLeftmostDerivationStep(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLeftmostDerivationStep(I)Ljava/lang/String;
    .locals 2

    if-gtz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lantlr/ParseTree;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 22
    invoke-virtual {p0, v0, p1}, Lantlr/ParseTree;->getLeftmostDerivation(Ljava/lang/StringBuffer;I)I

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initialize(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public initialize(Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public initialize(Lantlr/collections/AST;)V
    .locals 0

    return-void
.end method
