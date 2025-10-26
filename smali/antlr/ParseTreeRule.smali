.class public Lantlr/ParseTreeRule;
.super Lantlr/ParseTree;
.source "ParseTreeRule.java"


# static fields
.field public static final INVALID_ALT:I = -0x1


# instance fields
.field protected altNumber:I

.field protected ruleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 18
    invoke-direct {p0, p1, v0}, Lantlr/ParseTreeRule;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lantlr/ParseTree;-><init>()V

    .line 22
    iput-object p1, p0, Lantlr/ParseTreeRule;->ruleName:Ljava/lang/String;

    .line 23
    iput p2, p0, Lantlr/ParseTreeRule;->altNumber:I

    return-void
.end method


# virtual methods
.method protected getLeftmostDerivation(Ljava/lang/StringBuffer;I)I
    .locals 5

    const/16 v0, 0x20

    if-gtz p2, :cond_0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {p0}, Lantlr/ParseTreeRule;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    return p1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lantlr/ParseTreeRule;->getFirstChild()Lantlr/collections/AST;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    if-eqz v1, :cond_3

    if-ge v2, p2, :cond_2

    .line 45
    instance-of v3, v1, Lantlr/ParseTreeToken;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sub-int v3, p2, v2

    .line 52
    move-object v4, v1

    check-cast v4, Lantlr/ParseTree;

    invoke-virtual {v4, p1, v3}, Lantlr/ParseTree;->getLeftmostDerivation(Ljava/lang/StringBuffer;I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :goto_2
    invoke-interface {v1}, Lantlr/collections/AST;->getNextSibling()Lantlr/collections/AST;

    move-result-object v1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public getRuleName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lantlr/ParseTreeRule;->ruleName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 62
    iget v0, p0, Lantlr/ParseTreeRule;->altNumber:I

    const/16 v1, 0x3c

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/ParseTreeRule;->ruleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/ParseTreeRule;->ruleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lantlr/ParseTreeRule;->altNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
