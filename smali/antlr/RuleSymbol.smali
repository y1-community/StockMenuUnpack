.class Lantlr/RuleSymbol;
.super Lantlr/GrammarSymbol;
.source "RuleSymbol.java"


# instance fields
.field access:Ljava/lang/String;

.field block:Lantlr/RuleBlock;

.field comment:Ljava/lang/String;

.field defined:Z

.field references:Lantlr/collections/impl/Vector;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lantlr/GrammarSymbol;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance p1, Lantlr/collections/impl/Vector;

    invoke-direct {p1}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object p1, p0, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    return-void
.end method


# virtual methods
.method public addReference(Lantlr/RuleRefElement;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    return-void
.end method

.method public getBlock()Lantlr/RuleBlock;
    .locals 1

    .line 31
    iget-object v0, p0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    return-object v0
.end method

.method public getReference(I)Lantlr/RuleRefElement;
    .locals 1

    .line 35
    iget-object v0, p0, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/RuleRefElement;

    return-object p1
.end method

.method public isDefined()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lantlr/RuleSymbol;->defined:Z

    return v0
.end method

.method public numReferences()I
    .locals 1

    .line 43
    iget-object v0, p0, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    return v0
.end method

.method public setBlock(Lantlr/RuleBlock;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    return-void
.end method

.method public setDefined()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lantlr/RuleSymbol;->defined:Z

    return-void
.end method
