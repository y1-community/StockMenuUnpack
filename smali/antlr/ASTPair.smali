.class public Lantlr/ASTPair;
.super Ljava/lang/Object;
.source "ASTPair.java"


# instance fields
.field public child:Lantlr/collections/AST;

.field public root:Lantlr/collections/AST;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final advanceChildToEnd()V
    .locals 1

    .line 23
    iget-object v0, p0, Lantlr/ASTPair;->child:Lantlr/collections/AST;

    if-eqz v0, :cond_0

    .line 24
    :goto_0
    iget-object v0, p0, Lantlr/ASTPair;->child:Lantlr/collections/AST;

    invoke-interface {v0}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lantlr/ASTPair;->child:Lantlr/collections/AST;

    invoke-interface {v0}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v0

    iput-object v0, p0, Lantlr/ASTPair;->child:Lantlr/collections/AST;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public copy()Lantlr/ASTPair;
    .locals 2

    .line 32
    new-instance v0, Lantlr/ASTPair;

    invoke-direct {v0}, Lantlr/ASTPair;-><init>()V

    .line 33
    iget-object v1, p0, Lantlr/ASTPair;->root:Lantlr/collections/AST;

    iput-object v1, v0, Lantlr/ASTPair;->root:Lantlr/collections/AST;

    .line 34
    iget-object v1, p0, Lantlr/ASTPair;->child:Lantlr/collections/AST;

    iput-object v1, v0, Lantlr/ASTPair;->child:Lantlr/collections/AST;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 39
    iget-object v0, p0, Lantlr/ASTPair;->root:Lantlr/collections/AST;

    const-string v1, "null"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lantlr/collections/AST;->getText()Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_0
    iget-object v2, p0, Lantlr/ASTPair;->child:Lantlr/collections/AST;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lantlr/collections/AST;->getText()Ljava/lang/String;

    move-result-object v1

    .line 41
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
