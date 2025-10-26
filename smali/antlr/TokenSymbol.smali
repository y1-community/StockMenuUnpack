.class Lantlr/TokenSymbol;
.super Lantlr/GrammarSymbol;
.source "TokenSymbol.java"


# instance fields
.field protected ASTNodeType:Ljava/lang/String;

.field protected paraphrase:Ljava/lang/String;

.field protected ttype:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lantlr/GrammarSymbol;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lantlr/TokenSymbol;->paraphrase:Ljava/lang/String;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lantlr/TokenSymbol;->ttype:I

    return-void
.end method


# virtual methods
.method public getASTNodeType()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lantlr/TokenSymbol;->ASTNodeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParaphrase()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lantlr/TokenSymbol;->paraphrase:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()I
    .locals 1

    .line 36
    iget v0, p0, Lantlr/TokenSymbol;->ttype:I

    return v0
.end method

.method public setASTNodeType(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lantlr/TokenSymbol;->ASTNodeType:Ljava/lang/String;

    return-void
.end method

.method public setParaphrase(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lantlr/TokenSymbol;->paraphrase:Ljava/lang/String;

    return-void
.end method

.method public setTokenType(I)V
    .locals 0

    .line 44
    iput p1, p0, Lantlr/TokenSymbol;->ttype:I

    return-void
.end method
