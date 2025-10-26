.class Lantlr/TokenRefElement;
.super Lantlr/GrammarAtom;
.source "TokenRefElement.java"


# direct methods
.method public constructor <init>(Lantlr/Grammar;Lantlr/Token;ZI)V
    .locals 2

    .line 16
    invoke-direct {p0, p1, p2, p4}, Lantlr/GrammarAtom;-><init>(Lantlr/Grammar;Lantlr/Token;I)V

    .line 17
    iput-boolean p3, p0, Lantlr/TokenRefElement;->not:Z

    .line 18
    iget-object p3, p0, Lantlr/TokenRefElement;->grammar:Lantlr/Grammar;

    iget-object p3, p3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    iget-object p4, p0, Lantlr/TokenRefElement;->atomText:Ljava/lang/String;

    invoke-interface {p3, p4}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object p3

    if-nez p3, :cond_0

    .line 20
    iget-object p1, p1, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Undefined token symbol: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lantlr/TokenRefElement;->atomText:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lantlr/TokenRefElement;->grammar:Lantlr/Grammar;

    invoke-virtual {p4}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result v1

    invoke-virtual {p1, p3, p4, v0, v1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p3}, Lantlr/TokenSymbol;->getTokenType()I

    move-result p1

    iput p1, p0, Lantlr/TokenRefElement;->tokenType:I

    .line 28
    invoke-virtual {p3}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/TokenRefElement;->setASTNodeType(Ljava/lang/String;)V

    .line 30
    :goto_0
    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result p1

    iput p1, p0, Lantlr/TokenRefElement;->line:I

    return-void
.end method


# virtual methods
.method public generate()V
    .locals 1

    .line 34
    iget-object v0, p0, Lantlr/TokenRefElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/TokenRefElement;)V

    return-void
.end method

.method public look(I)Lantlr/Lookahead;
    .locals 1

    .line 38
    iget-object v0, p0, Lantlr/TokenRefElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/GrammarAtom;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method
