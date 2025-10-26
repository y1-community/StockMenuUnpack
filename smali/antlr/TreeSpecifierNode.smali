.class Lantlr/TreeSpecifierNode;
.super Ljava/lang/Object;
.source "TreeSpecifierNode.java"


# instance fields
.field private firstChild:Lantlr/TreeSpecifierNode;

.field private nextSibling:Lantlr/TreeSpecifierNode;

.field private parent:Lantlr/TreeSpecifierNode;

.field private tok:Lantlr/Token;


# direct methods
.method constructor <init>(Lantlr/Token;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lantlr/TreeSpecifierNode;->parent:Lantlr/TreeSpecifierNode;

    .line 12
    iput-object v0, p0, Lantlr/TreeSpecifierNode;->firstChild:Lantlr/TreeSpecifierNode;

    .line 13
    iput-object v0, p0, Lantlr/TreeSpecifierNode;->nextSibling:Lantlr/TreeSpecifierNode;

    .line 18
    iput-object p1, p0, Lantlr/TreeSpecifierNode;->tok:Lantlr/Token;

    return-void
.end method


# virtual methods
.method public getFirstChild()Lantlr/TreeSpecifierNode;
    .locals 1

    .line 22
    iget-object v0, p0, Lantlr/TreeSpecifierNode;->firstChild:Lantlr/TreeSpecifierNode;

    return-object v0
.end method

.method public getNextSibling()Lantlr/TreeSpecifierNode;
    .locals 1

    .line 26
    iget-object v0, p0, Lantlr/TreeSpecifierNode;->nextSibling:Lantlr/TreeSpecifierNode;

    return-object v0
.end method

.method public getParent()Lantlr/TreeSpecifierNode;
    .locals 1

    .line 31
    iget-object v0, p0, Lantlr/TreeSpecifierNode;->parent:Lantlr/TreeSpecifierNode;

    return-object v0
.end method

.method public getToken()Lantlr/Token;
    .locals 1

    .line 35
    iget-object v0, p0, Lantlr/TreeSpecifierNode;->tok:Lantlr/Token;

    return-object v0
.end method

.method public setFirstChild(Lantlr/TreeSpecifierNode;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lantlr/TreeSpecifierNode;->firstChild:Lantlr/TreeSpecifierNode;

    .line 40
    iput-object p0, p1, Lantlr/TreeSpecifierNode;->parent:Lantlr/TreeSpecifierNode;

    return-void
.end method

.method public setNextSibling(Lantlr/TreeSpecifierNode;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lantlr/TreeSpecifierNode;->nextSibling:Lantlr/TreeSpecifierNode;

    .line 46
    iget-object v0, p0, Lantlr/TreeSpecifierNode;->parent:Lantlr/TreeSpecifierNode;

    iput-object v0, p1, Lantlr/TreeSpecifierNode;->parent:Lantlr/TreeSpecifierNode;

    return-void
.end method
