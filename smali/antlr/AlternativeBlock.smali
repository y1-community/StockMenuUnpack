.class Lantlr/AlternativeBlock;
.super Lantlr/AlternativeElement;
.source "AlternativeBlock.java"


# static fields
.field protected static nblks:I


# instance fields
.field protected ID:I

.field protected alternatives:Lantlr/collections/impl/Vector;

.field protected alti:I

.field protected altj:I

.field protected analysisAlt:I

.field protected doAutoGen:Z

.field protected generateAmbigWarnings:Z

.field greedy:Z

.field greedySet:Z

.field protected hasASynPred:Z

.field protected hasAnAction:Z

.field protected initAction:Ljava/lang/String;

.field protected label:Ljava/lang/String;

.field not:Z

.field protected warnWhenFollowAmbig:Z


# direct methods
.method public constructor <init>(Lantlr/Grammar;)V
    .locals 3

    .line 43
    invoke-direct {p0, p1}, Lantlr/AlternativeElement;-><init>(Lantlr/Grammar;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lantlr/AlternativeBlock;->hasAnAction:Z

    .line 24
    iput-boolean p1, p0, Lantlr/AlternativeBlock;->hasASynPred:Z

    .line 26
    iput p1, p0, Lantlr/AlternativeBlock;->ID:I

    .line 28
    iput-boolean p1, p0, Lantlr/AlternativeBlock;->not:Z

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lantlr/AlternativeBlock;->greedy:Z

    .line 31
    iput-boolean p1, p0, Lantlr/AlternativeBlock;->greedySet:Z

    .line 33
    iput-boolean v0, p0, Lantlr/AlternativeBlock;->doAutoGen:Z

    .line 35
    iput-boolean v0, p0, Lantlr/AlternativeBlock;->warnWhenFollowAmbig:Z

    .line 37
    iput-boolean v0, p0, Lantlr/AlternativeBlock;->generateAmbigWarnings:Z

    .line 44
    new-instance v1, Lantlr/collections/impl/Vector;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lantlr/collections/impl/Vector;-><init>(I)V

    iput-object v1, p0, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    .line 45
    iput-boolean p1, p0, Lantlr/AlternativeBlock;->not:Z

    .line 46
    sget p1, Lantlr/AlternativeBlock;->nblks:I

    add-int/2addr p1, v0

    sput p1, Lantlr/AlternativeBlock;->nblks:I

    .line 47
    iput p1, p0, Lantlr/AlternativeBlock;->ID:I

    return-void
.end method

.method public constructor <init>(Lantlr/Grammar;Lantlr/Token;Z)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2}, Lantlr/AlternativeElement;-><init>(Lantlr/Grammar;Lantlr/Token;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lantlr/AlternativeBlock;->hasAnAction:Z

    .line 24
    iput-boolean p1, p0, Lantlr/AlternativeBlock;->hasASynPred:Z

    .line 26
    iput p1, p0, Lantlr/AlternativeBlock;->ID:I

    .line 28
    iput-boolean p1, p0, Lantlr/AlternativeBlock;->not:Z

    const/4 p2, 0x1

    .line 30
    iput-boolean p2, p0, Lantlr/AlternativeBlock;->greedy:Z

    .line 31
    iput-boolean p1, p0, Lantlr/AlternativeBlock;->greedySet:Z

    .line 33
    iput-boolean p2, p0, Lantlr/AlternativeBlock;->doAutoGen:Z

    .line 35
    iput-boolean p2, p0, Lantlr/AlternativeBlock;->warnWhenFollowAmbig:Z

    .line 37
    iput-boolean p2, p0, Lantlr/AlternativeBlock;->generateAmbigWarnings:Z

    .line 52
    new-instance p1, Lantlr/collections/impl/Vector;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lantlr/collections/impl/Vector;-><init>(I)V

    iput-object p1, p0, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    .line 55
    iput-boolean p3, p0, Lantlr/AlternativeBlock;->not:Z

    .line 56
    sget p1, Lantlr/AlternativeBlock;->nblks:I

    add-int/2addr p1, p2

    sput p1, Lantlr/AlternativeBlock;->nblks:I

    .line 57
    iput p1, p0, Lantlr/AlternativeBlock;->ID:I

    return-void
.end method


# virtual methods
.method public addAlternative(Lantlr/Alternative;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    return-void
.end method

.method public generate()V
    .locals 1

    .line 65
    iget-object v0, p0, Lantlr/AlternativeBlock;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/AlternativeBlock;)V

    return-void
.end method

.method public getAlternativeAt(I)Lantlr/Alternative;
    .locals 1

    .line 69
    iget-object v0, p0, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/Alternative;

    return-object p1
.end method

.method public getAlternatives()Lantlr/collections/impl/Vector;
    .locals 1

    .line 73
    iget-object v0, p0, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    return-object v0
.end method

.method public getAutoGen()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lantlr/AlternativeBlock;->doAutoGen:Z

    return v0
.end method

.method public getInitAction()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lantlr/AlternativeBlock;->label:Ljava/lang/String;

    return-object v0
.end method

.method public look(I)Lantlr/Lookahead;
    .locals 1

    .line 89
    iget-object v0, p0, Lantlr/AlternativeBlock;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public prepareForAnalysis()V
    .locals 3

    const/4 v0, 0x0

    .line 93
    :goto_0
    iget-object v1, p0, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Alternative;

    .line 96
    iget-object v2, p0, Lantlr/AlternativeBlock;->grammar:Lantlr/Grammar;

    iget v2, v2, Lantlr/Grammar;->maxk:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Lantlr/Lookahead;

    iput-object v2, v1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    const/4 v2, -0x1

    .line 97
    iput v2, v1, Lantlr/Alternative;->lookaheadDepth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTrackingOfRuleRefs(Lantlr/Grammar;)V
    .locals 6

    const/4 v0, 0x0

    .line 106
    :goto_0
    iget-object v1, p0, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 107
    invoke-virtual {p0, v0}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    .line 108
    iget-object v1, v1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    :goto_1
    if-eqz v1, :cond_3

    .line 110
    instance-of v2, v1, Lantlr/RuleRefElement;

    if-eqz v2, :cond_1

    .line 111
    move-object v2, v1

    check-cast v2, Lantlr/RuleRefElement;

    .line 112
    iget-object v3, v2, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v3

    check-cast v3, Lantlr/RuleSymbol;

    if-nez v3, :cond_0

    .line 114
    iget-object v3, p0, Lantlr/AlternativeBlock;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "rule "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v2, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " referenced in (...)=>, but not defined"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 117
    :cond_0
    iget-object v3, v3, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v3, v2}, Lantlr/collections/impl/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_2

    .line 120
    :cond_1
    instance-of v2, v1, Lantlr/AlternativeBlock;

    if-eqz v2, :cond_2

    .line 121
    move-object v2, v1

    check-cast v2, Lantlr/AlternativeBlock;

    invoke-virtual {v2, p1}, Lantlr/AlternativeBlock;->removeTrackingOfRuleRefs(Lantlr/Grammar;)V

    .line 123
    :cond_2
    :goto_2
    iget-object v1, v1, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setAlternatives(Lantlr/collections/impl/Vector;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    return-void
.end method

.method public setAutoGen(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lantlr/AlternativeBlock;->doAutoGen:Z

    return-void
.end method

.method public setInitAction(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lantlr/AlternativeBlock;->label:Ljava/lang/String;

    return-void
.end method

.method public setOption(Lantlr/Token;Lantlr/Token;)V
    .locals 6

    .line 145
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "warnWhenFollowAmbig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "false"

    const-string v3, "true"

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iput-boolean v4, p0, Lantlr/AlternativeBlock;->warnWhenFollowAmbig:Z

    goto/16 :goto_0

    .line 149
    :cond_0
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 150
    iput-boolean v1, p0, Lantlr/AlternativeBlock;->warnWhenFollowAmbig:Z

    goto/16 :goto_0

    .line 153
    :cond_1
    iget-object p2, p0, Lantlr/AlternativeBlock;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/AlternativeBlock;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v2, "Value for warnWhenFollowAmbig must be true or false"

    invoke-virtual {p2, v2, v0, v1, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 156
    :cond_2
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v5, "generateAmbigWarnings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    iput-boolean v4, p0, Lantlr/AlternativeBlock;->generateAmbigWarnings:Z

    goto/16 :goto_0

    .line 160
    :cond_3
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 161
    iput-boolean v1, p0, Lantlr/AlternativeBlock;->generateAmbigWarnings:Z

    goto/16 :goto_0

    .line 164
    :cond_4
    iget-object p2, p0, Lantlr/AlternativeBlock;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/AlternativeBlock;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v2, "Value for generateAmbigWarnings must be true or false"

    invoke-virtual {p2, v2, v0, v1, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 167
    :cond_5
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v5, "greedy"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 168
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    iput-boolean v4, p0, Lantlr/AlternativeBlock;->greedy:Z

    .line 170
    iput-boolean v4, p0, Lantlr/AlternativeBlock;->greedySet:Z

    goto :goto_0

    .line 172
    :cond_6
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 173
    iput-boolean v1, p0, Lantlr/AlternativeBlock;->greedy:Z

    .line 174
    iput-boolean v4, p0, Lantlr/AlternativeBlock;->greedySet:Z

    goto :goto_0

    .line 177
    :cond_7
    iget-object p2, p0, Lantlr/AlternativeBlock;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/AlternativeBlock;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v2, "Value for greedy must be true or false"

    invoke-virtual {p2, v2, v0, v1, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 181
    :cond_8
    iget-object p2, p0, Lantlr/AlternativeBlock;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Invalid subrule option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lantlr/AlternativeBlock;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 187
    iget-object v0, p0, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    const-string v1, " ("

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    iget-object v2, p0, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 191
    invoke-virtual {p0, v0}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    .line 192
    iget-object v3, v2, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    .line 193
    iget v4, v2, Lantlr/Alternative;->lookaheadDepth:I

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    :cond_1
    const v5, 0x7fffffff

    if-ne v4, v5, :cond_2

    .line 198
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "{?}:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 201
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " {"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    :goto_1
    if-gt v5, v4, :cond_4

    .line 203
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, v3, v5

    iget-object v8, p0, Lantlr/AlternativeBlock;->grammar:Lantlr/Grammar;

    iget-object v8, v8, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v8}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v1, v9, v8}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/collections/impl/Vector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    if-ge v5, v4, :cond_3

    add-int/lit8 v7, v5, 0x1

    .line 204
    aget-object v7, v3, v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 206
    :cond_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    :goto_2
    iget-object v3, v2, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 210
    iget-object v2, v2, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 212
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 215
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    iget-object v3, v3, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_3

    .line 218
    :cond_6
    iget-object v2, p0, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v6

    if-ge v0, v2, :cond_7

    .line 219
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " |"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 222
    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
