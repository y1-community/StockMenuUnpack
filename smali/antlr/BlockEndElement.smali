.class Lantlr/BlockEndElement;
.super Lantlr/AlternativeElement;
.source "BlockEndElement.java"


# instance fields
.field protected block:Lantlr/AlternativeBlock;

.field protected lock:[Z


# direct methods
.method public constructor <init>(Lantlr/Grammar;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lantlr/AlternativeElement;-><init>(Lantlr/Grammar;)V

    .line 20
    iget p1, p1, Lantlr/Grammar;->maxk:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Z

    iput-object p1, p0, Lantlr/BlockEndElement;->lock:[Z

    return-void
.end method


# virtual methods
.method public look(I)Lantlr/Lookahead;
    .locals 1

    .line 24
    iget-object v0, p0, Lantlr/BlockEndElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/BlockEndElement;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
