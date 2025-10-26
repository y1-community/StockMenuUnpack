.class Lantlr/ActionElement;
.super Lantlr/AlternativeElement;
.source "ActionElement.java"


# instance fields
.field protected actionText:Ljava/lang/String;

.field protected isSemPred:Z


# direct methods
.method public constructor <init>(Lantlr/Grammar;Lantlr/Token;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lantlr/AlternativeElement;-><init>(Lantlr/Grammar;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lantlr/ActionElement;->isSemPred:Z

    .line 17
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/ActionElement;->actionText:Ljava/lang/String;

    .line 18
    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result p1

    iput p1, p0, Lantlr/ActionElement;->line:I

    .line 19
    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p1

    iput p1, p0, Lantlr/ActionElement;->column:I

    return-void
.end method


# virtual methods
.method public generate()V
    .locals 1

    .line 23
    iget-object v0, p0, Lantlr/ActionElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/ActionElement;)V

    return-void
.end method

.method public look(I)Lantlr/Lookahead;
    .locals 1

    .line 27
    iget-object v0, p0, Lantlr/ActionElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/ActionElement;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/ActionElement;->actionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lantlr/ActionElement;->isSemPred:Z

    if-eqz v1, :cond_0

    const-string v1, "?"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
