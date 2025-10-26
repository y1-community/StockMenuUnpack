.class Lantlr/CharRangeElement;
.super Lantlr/AlternativeElement;
.source "CharRangeElement.java"


# instance fields
.field protected begin:C

.field protected beginText:Ljava/lang/String;

.field protected end:C

.field protected endText:Ljava/lang/String;

.field label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lantlr/LexerGrammar;Lantlr/Token;Lantlr/Token;I)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Lantlr/AlternativeElement;-><init>(Lantlr/Grammar;)V

    const/4 v0, 0x0

    .line 12
    iput-char v0, p0, Lantlr/CharRangeElement;->begin:C

    .line 13
    iput-char v0, p0, Lantlr/CharRangeElement;->end:C

    .line 20
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lantlr/ANTLRLexer;->tokenTypeForCharLiteral(Ljava/lang/String;)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lantlr/CharRangeElement;->begin:C

    .line 21
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CharRangeElement;->beginText:Ljava/lang/String;

    .line 22
    invoke-virtual {p3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lantlr/ANTLRLexer;->tokenTypeForCharLiteral(Ljava/lang/String;)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lantlr/CharRangeElement;->end:C

    .line 23
    invoke-virtual {p3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lantlr/CharRangeElement;->endText:Ljava/lang/String;

    .line 24
    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result p2

    iput p2, p0, Lantlr/CharRangeElement;->line:I

    .line 26
    iget-char p2, p0, Lantlr/CharRangeElement;->begin:C

    :goto_0
    iget-char p3, p0, Lantlr/CharRangeElement;->end:C

    if-gt p2, p3, :cond_0

    .line 27
    iget-object p3, p1, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {p3, p2}, Lantlr/collections/impl/BitSet;->add(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 29
    :cond_0
    iput p4, p0, Lantlr/CharRangeElement;->autoGenType:I

    return-void
.end method


# virtual methods
.method public generate()V
    .locals 1

    .line 33
    iget-object v0, p0, Lantlr/CharRangeElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/CharRangeElement;)V

    return-void
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lantlr/CharRangeElement;->label:Ljava/lang/String;

    return-object v0
.end method

.method public look(I)Lantlr/Lookahead;
    .locals 1

    .line 41
    iget-object v0, p0, Lantlr/CharRangeElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/CharRangeElement;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lantlr/CharRangeElement;->label:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 49
    iget-object v0, p0, Lantlr/CharRangeElement;->label:Ljava/lang/String;

    const-string v1, ".."

    const-string v2, " "

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CharRangeElement;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CharRangeElement;->beginText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CharRangeElement;->endText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CharRangeElement;->beginText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CharRangeElement;->endText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
