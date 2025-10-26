.class Lantlr/OneOrMoreBlock;
.super Lantlr/BlockWithImpliedExitPath;
.source "OneOrMoreBlock.java"


# direct methods
.method public constructor <init>(Lantlr/Grammar;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lantlr/BlockWithImpliedExitPath;-><init>(Lantlr/Grammar;)V

    return-void
.end method

.method public constructor <init>(Lantlr/Grammar;Lantlr/Token;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lantlr/BlockWithImpliedExitPath;-><init>(Lantlr/Grammar;Lantlr/Token;)V

    return-void
.end method


# virtual methods
.method public generate()V
    .locals 1

    .line 21
    iget-object v0, p0, Lantlr/OneOrMoreBlock;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/OneOrMoreBlock;)V

    return-void
.end method

.method public look(I)Lantlr/Lookahead;
    .locals 1

    .line 25
    iget-object v0, p0, Lantlr/OneOrMoreBlock;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/OneOrMoreBlock;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Lantlr/BlockWithImpliedExitPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
