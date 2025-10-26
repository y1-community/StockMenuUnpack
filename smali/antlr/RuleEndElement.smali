.class Lantlr/RuleEndElement;
.super Lantlr/BlockEndElement;
.source "RuleEndElement.java"


# instance fields
.field protected cache:[Lantlr/Lookahead;

.field protected noFOLLOW:Z


# direct methods
.method public constructor <init>(Lantlr/Grammar;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lantlr/BlockEndElement;-><init>(Lantlr/Grammar;)V

    .line 22
    iget p1, p1, Lantlr/Grammar;->maxk:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Lantlr/Lookahead;

    iput-object p1, p0, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    return-void
.end method


# virtual methods
.method public look(I)Lantlr/Lookahead;
    .locals 1

    .line 26
    iget-object v0, p0, Lantlr/RuleEndElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/RuleEndElement;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
