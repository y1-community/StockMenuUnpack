.class public Lantlr/debug/misc/JTreeASTModel;
.super Ljava/lang/Object;
.source "JTreeASTModel.java"

# interfaces
.implements Ljavax/swing/tree/TreeModel;


# instance fields
.field root:Lantlr/collections/AST;


# direct methods
.method public constructor <init>(Lantlr/collections/AST;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lantlr/debug/misc/JTreeASTModel;->root:Lantlr/collections/AST;

    if-eqz p1, :cond_0

    .line 24
    iput-object p1, p0, Lantlr/debug/misc/JTreeASTModel;->root:Lantlr/collections/AST;

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "root is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .locals 0

    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    check-cast p1, Lantlr/collections/AST;

    .line 35
    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-ge v0, p2, :cond_1

    .line 41
    invoke-interface {p1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "node has no children"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 51
    check-cast p1, Lantlr/collections/AST;

    .line 52
    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "root is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getIndexOfChild(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 65
    check-cast p1, Lantlr/collections/AST;

    .line 66
    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    if-eq p1, p2, :cond_0

    .line 72
    invoke-interface {p1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    return v0

    .line 78
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "node is not a child"

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "node has no children"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "root or child is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 1

    .line 82
    iget-object v0, p0, Lantlr/debug/misc/JTreeASTModel;->root:Lantlr/collections/AST;

    return-object v0
.end method

.method public isLeaf(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 89
    check-cast p1, Lantlr/collections/AST;

    .line 90
    invoke-interface {p1}, Lantlr/collections/AST;->getFirstChild()Lantlr/collections/AST;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "node is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .locals 0

    return-void
.end method

.method public valueForPathChanged(Ljavax/swing/tree/TreePath;Ljava/lang/Object;)V
    .locals 0

    .line 97
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "heh, who is calling this mystery method?"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
