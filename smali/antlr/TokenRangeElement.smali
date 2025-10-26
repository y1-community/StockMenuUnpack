.class Lantlr/TokenRangeElement;
.super Lantlr/AlternativeElement;
.source "TokenRangeElement.java"


# instance fields
.field protected begin:I

.field protected beginText:Ljava/lang/String;

.field protected end:I

.field protected endText:Ljava/lang/String;

.field label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lantlr/Grammar;Lantlr/Token;Lantlr/Token;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p4}, Lantlr/AlternativeElement;-><init>(Lantlr/Grammar;Lantlr/Token;I)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lantlr/TokenRangeElement;->begin:I

    .line 13
    iput p1, p0, Lantlr/TokenRangeElement;->end:I

    .line 19
    iget-object p1, p0, Lantlr/TokenRangeElement;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object p1

    invoke-virtual {p1}, Lantlr/TokenSymbol;->getTokenType()I

    move-result p1

    iput p1, p0, Lantlr/TokenRangeElement;->begin:I

    .line 20
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/TokenRangeElement;->beginText:Ljava/lang/String;

    .line 21
    iget-object p1, p0, Lantlr/TokenRangeElement;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-virtual {p3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object p1

    invoke-virtual {p1}, Lantlr/TokenSymbol;->getTokenType()I

    move-result p1

    iput p1, p0, Lantlr/TokenRangeElement;->end:I

    .line 22
    invoke-virtual {p3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/TokenRangeElement;->endText:Ljava/lang/String;

    .line 23
    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result p1

    iput p1, p0, Lantlr/TokenRangeElement;->line:I

    return-void
.end method


# virtual methods
.method public generate()V
    .locals 1

    .line 27
    iget-object v0, p0, Lantlr/TokenRangeElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/TokenRangeElement;)V

    return-void
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lantlr/TokenRangeElement;->label:Ljava/lang/String;

    return-object v0
.end method

.method public look(I)Lantlr/Lookahead;
    .locals 1

    .line 35
    iget-object v0, p0, Lantlr/TokenRangeElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/TokenRangeElement;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lantlr/TokenRangeElement;->label:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    iget-object v0, p0, Lantlr/TokenRangeElement;->label:Ljava/lang/String;

    const-string v1, ".."

    const-string v2, " "

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/TokenRangeElement;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/TokenRangeElement;->beginText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/TokenRangeElement;->endText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/TokenRangeElement;->beginText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/TokenRangeElement;->endText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
