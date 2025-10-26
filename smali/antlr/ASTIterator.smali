.class public Lantlr/ASTIterator;
.super Ljava/lang/Object;
.source "ASTIterator.java"


# instance fields
.field protected cursor:Lantlr/collections/AST;

.field protected original:Lantlr/collections/AST;


# direct methods
.method public constructor <init>(Lantlr/collections/AST;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lantlr/ASTIterator;->cursor:Lantlr/collections/AST;

    iput-object p1, p0, Lantlr/ASTIterator;->original:Lantlr/collections/AST;

    return-void
.end method


# virtual methods
.method public isSubtree(Lantlr/collections/AST;Lantlr/collections/AST;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    :goto_0
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 41
    invoke-interface {p1}, Lantlr/collections/AST;->getType()I

    move-result v2

    invoke-interface {p2}, Lantlr/collections/AST;->getType()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    .line 43
    :cond_3
    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 44
    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v2

    invoke-interface {p2}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lantlr/ASTIterator;->isSubtree(Lantlr/collections/AST;Lantlr/collections/AST;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 39
    :cond_4
    invoke-interface {p1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object p1

    invoke-interface {p2}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object p2

    goto :goto_0

    :cond_5
    return v0
.end method

.method public next(Lantlr/collections/AST;)Lantlr/collections/AST;
    .locals 3

    .line 57
    iget-object v0, p0, Lantlr/ASTIterator;->cursor:Lantlr/collections/AST;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lantlr/ASTIterator;->cursor:Lantlr/collections/AST;

    if-eqz v0, :cond_2

    .line 64
    invoke-interface {v0}, Lantlr/collections/AST;->getType()I

    move-result v0

    invoke-interface {p1}, Lantlr/collections/AST;->getType()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 66
    iget-object v0, p0, Lantlr/ASTIterator;->cursor:Lantlr/collections/AST;

    invoke-interface {v0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lantlr/ASTIterator;->cursor:Lantlr/collections/AST;

    invoke-interface {v0}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v0

    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lantlr/ASTIterator;->isSubtree(Lantlr/collections/AST;Lantlr/collections/AST;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object p1, p0, Lantlr/ASTIterator;->cursor:Lantlr/collections/AST;

    return-object p1

    .line 62
    :cond_1
    iget-object v0, p0, Lantlr/ASTIterator;->cursor:Lantlr/collections/AST;

    invoke-interface {v0}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v0

    iput-object v0, p0, Lantlr/ASTIterator;->cursor:Lantlr/collections/AST;

    goto :goto_0

    :cond_2
    return-object v1
.end method
