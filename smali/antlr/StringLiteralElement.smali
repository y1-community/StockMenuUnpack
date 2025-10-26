.class Lantlr/StringLiteralElement;
.super Lantlr/GrammarAtom;
.source "StringLiteralElement.java"


# instance fields
.field protected processedAtomText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lantlr/Grammar;Lantlr/Token;I)V
    .locals 5

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lantlr/GrammarAtom;-><init>(Lantlr/Grammar;Lantlr/Token;I)V

    .line 17
    instance-of p3, p1, Lantlr/LexerGrammar;

    if-nez p3, :cond_1

    .line 19
    iget-object v0, p0, Lantlr/StringLiteralElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    iget-object v1, p0, Lantlr/StringLiteralElement;->atomText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p1, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Undefined literal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/StringLiteralElement;->atomText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/StringLiteralElement;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v3

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lantlr/TokenSymbol;->getTokenType()I

    move-result v0

    iput v0, p0, Lantlr/StringLiteralElement;->tokenType:I

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result p2

    iput p2, p0, Lantlr/StringLiteralElement;->line:I

    .line 31
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2}, Ljava/lang/String;-><init>()V

    iput-object p2, p0, Lantlr/StringLiteralElement;->processedAtomText:Ljava/lang/String;

    const/4 p2, 0x1

    const/4 v0, 0x1

    .line 32
    :goto_1
    iget-object v1, p0, Lantlr/StringLiteralElement;->atomText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_7

    .line 33
    iget-object v1, p0, Lantlr/StringLiteralElement;->atomText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_5

    add-int/lit8 v2, v0, 0x1

    .line 35
    iget-object v3, p0, Lantlr/StringLiteralElement;->atomText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p2

    if-ge v2, v3, :cond_5

    .line 37
    iget-object v0, p0, Lantlr/StringLiteralElement;->atomText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_4

    const/16 v0, 0x72

    if-eq v1, v0, :cond_3

    const/16 v0, 0x74

    if-eq v1, v0, :cond_2

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_2
    const/16 v1, 0x9

    goto :goto_2

    :cond_3
    const/16 v1, 0xd

    goto :goto_2

    :cond_4
    const/16 v1, 0xa

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz p3, :cond_6

    .line 52
    move-object v2, p1

    check-cast v2, Lantlr/LexerGrammar;

    iget-object v2, v2, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {v2, v1}, Lantlr/collections/impl/BitSet;->add(I)V

    .line 54
    :cond_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/StringLiteralElement;->processedAtomText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lantlr/StringLiteralElement;->processedAtomText:Ljava/lang/String;

    add-int/2addr v0, p2

    goto :goto_1

    :cond_7
    return-void
.end method


# virtual methods
.method public generate()V
    .locals 1

    .line 59
    iget-object v0, p0, Lantlr/StringLiteralElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/StringLiteralElement;)V

    return-void
.end method

.method public look(I)Lantlr/Lookahead;
    .locals 1

    .line 63
    iget-object v0, p0, Lantlr/StringLiteralElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/StringLiteralElement;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method
