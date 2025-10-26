.class Lantlr/CharLiteralElement;
.super Lantlr/GrammarAtom;
.source "CharLiteralElement.java"


# direct methods
.method public constructor <init>(Lantlr/LexerGrammar;Lantlr/Token;ZI)V
    .locals 1

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lantlr/GrammarAtom;-><init>(Lantlr/Grammar;Lantlr/Token;I)V

    .line 15
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lantlr/ANTLRLexer;->tokenTypeForCharLiteral(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lantlr/CharLiteralElement;->tokenType:I

    .line 16
    iget-object p1, p1, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    iget v0, p0, Lantlr/CharLiteralElement;->tokenType:I

    invoke-virtual {p1, v0}, Lantlr/collections/impl/BitSet;->add(I)V

    .line 17
    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result p1

    iput p1, p0, Lantlr/CharLiteralElement;->line:I

    .line 18
    iput-boolean p3, p0, Lantlr/CharLiteralElement;->not:Z

    .line 19
    iput p4, p0, Lantlr/CharLiteralElement;->autoGenType:I

    return-void
.end method


# virtual methods
.method public generate()V
    .locals 1

    .line 23
    iget-object v0, p0, Lantlr/CharLiteralElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/CharLiteralElement;)V

    return-void
.end method

.method public look(I)Lantlr/Lookahead;
    .locals 1

    .line 27
    iget-object v0, p0, Lantlr/CharLiteralElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/CharLiteralElement;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method
