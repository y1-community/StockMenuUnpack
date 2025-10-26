.class Lantlr/WildcardElement;
.super Lantlr/GrammarAtom;
.source "WildcardElement.java"


# instance fields
.field protected label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lantlr/Grammar;Lantlr/Token;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lantlr/GrammarAtom;-><init>(Lantlr/Grammar;Lantlr/Token;I)V

    .line 15
    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result p1

    iput p1, p0, Lantlr/WildcardElement;->line:I

    return-void
.end method


# virtual methods
.method public generate()V
    .locals 1

    .line 19
    iget-object v0, p0, Lantlr/WildcardElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/WildcardElement;)V

    return-void
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lantlr/WildcardElement;->label:Ljava/lang/String;

    return-object v0
.end method

.method public look(I)Lantlr/Lookahead;
    .locals 1

    .line 27
    iget-object v0, p0, Lantlr/WildcardElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/WildcardElement;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lantlr/WildcardElement;->label:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, Lantlr/WildcardElement;->label:Ljava/lang/String;

    const-string v1, " "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/WildcardElement;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
