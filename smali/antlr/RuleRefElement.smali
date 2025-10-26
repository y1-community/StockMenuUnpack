.class Lantlr/RuleRefElement;
.super Lantlr/AlternativeElement;
.source "RuleRefElement.java"


# instance fields
.field protected args:Ljava/lang/String;

.field protected idAssign:Ljava/lang/String;

.field protected label:Ljava/lang/String;

.field protected targetRule:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lantlr/Grammar;Lantlr/Token;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lantlr/AlternativeElement;-><init>(Lantlr/Grammar;Lantlr/Token;I)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    .line 21
    iget p1, p2, Lantlr/Token;->type:I

    const/16 p2, 0x18

    if-ne p1, p2, :cond_0

    .line 22
    iget-object p1, p0, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-static {p1}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public generate()V
    .locals 1

    .line 36
    iget-object v0, p0, Lantlr/RuleRefElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/RuleRefElement;)V

    return-void
.end method

.method public getArgs()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    return-object v0
.end method

.method public getIdAssign()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lantlr/RuleRefElement;->label:Ljava/lang/String;

    return-object v0
.end method

.method public look(I)Lantlr/Lookahead;
    .locals 1

    .line 52
    iget-object v0, p0, Lantlr/RuleRefElement;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/RuleRefElement;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public setArgs(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    return-void
.end method

.method public setIdAssign(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lantlr/RuleRefElement;->label:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
