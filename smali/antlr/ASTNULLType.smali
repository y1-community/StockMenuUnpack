.class public Lantlr/ASTNULLType;
.super Ljava/lang/Object;
.source "ASTNULLType.java"

# interfaces
.implements Lantlr/collections/AST;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(Lantlr/collections/AST;)V
    .locals 0

    return-void
.end method

.method public equals(Lantlr/collections/AST;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public equalsList(Lantlr/collections/AST;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public equalsListPartial(Lantlr/collections/AST;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public equalsTree(Lantlr/collections/AST;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public equalsTreePartial(Lantlr/collections/AST;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public findAll(Lantlr/collections/AST;)Lantlr/collections/ASTEnumeration;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findAllPartial(Lantlr/collections/AST;)Lantlr/collections/ASTEnumeration;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumn()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstChild()Lantlr/collections/AST;
    .locals 0

    return-object p0
.end method

.method public getLine()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNextSibling()Lantlr/collections/AST;
    .locals 0

    return-object p0
.end method

.method public getNumberOfChildren()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const-string v0, "<ASTNULL>"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
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

.method public setFirstChild(Lantlr/collections/AST;)V
    .locals 0

    return-void
.end method

.method public setNextSibling(Lantlr/collections/AST;)V
    .locals 0

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setType(I)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lantlr/ASTNULLType;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringList()Ljava/lang/String;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lantlr/ASTNULLType;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringTree()Ljava/lang/String;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lantlr/ASTNULLType;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
