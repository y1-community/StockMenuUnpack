.class public Lantlr/MakeGrammar;
.super Lantlr/DefineGrammarSymbols;
.source "MakeGrammar.java"


# instance fields
.field protected blocks:Lantlr/collections/Stack;

.field currentExceptionSpec:Lantlr/ExceptionSpec;

.field protected grammarError:Z

.field protected lastRuleRef:Lantlr/RuleRefElement;

.field protected nested:I

.field protected ruleBlock:Lantlr/RuleBlock;

.field protected ruleEnd:Lantlr/RuleEndElement;


# direct methods
.method public constructor <init>(Lantlr/Tool;[Ljava/lang/String;Lantlr/LLkAnalyzer;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lantlr/DefineGrammarSymbols;-><init>(Lantlr/Tool;[Ljava/lang/String;Lantlr/LLkAnalyzer;)V

    .line 16
    new-instance p1, Lantlr/collections/impl/LList;

    invoke-direct {p1}, Lantlr/collections/impl/LList;-><init>()V

    iput-object p1, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lantlr/MakeGrammar;->nested:I

    .line 22
    iput-boolean p1, p0, Lantlr/MakeGrammar;->grammarError:Z

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lantlr/MakeGrammar;->currentExceptionSpec:Lantlr/ExceptionSpec;

    return-void
.end method

.method public static createNextTokenRule(Lantlr/Grammar;Lantlr/collections/impl/Vector;Ljava/lang/String;)Lantlr/RuleBlock;
    .locals 10

    .line 123
    new-instance v0, Lantlr/RuleBlock;

    invoke-direct {v0, p0, p2}, Lantlr/RuleBlock;-><init>(Lantlr/Grammar;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lantlr/Grammar;->getDefaultErrorHandler()Z

    move-result p2

    invoke-virtual {v0, p2}, Lantlr/RuleBlock;->setDefaultErrorHandler(Z)V

    .line 125
    new-instance p2, Lantlr/RuleEndElement;

    invoke-direct {p2, p0}, Lantlr/RuleEndElement;-><init>(Lantlr/Grammar;)V

    .line 126
    invoke-virtual {v0, p2}, Lantlr/RuleBlock;->setEndElement(Lantlr/RuleEndElement;)V

    .line 127
    iput-object v0, p2, Lantlr/RuleEndElement;->block:Lantlr/AlternativeBlock;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 129
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 130
    invoke-virtual {p1, v2}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/RuleSymbol;

    .line 131
    invoke-virtual {v3}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    iget-object v5, p0, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Lexer rule "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v3, Lantlr/RuleSymbol;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " is not defined"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_0
    iget-object v5, v3, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    const-string v6, "public"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    new-instance v5, Lantlr/Alternative;

    invoke-direct {v5}, Lantlr/Alternative;-><init>()V

    .line 137
    invoke-virtual {v3}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v6

    .line 138
    invoke-virtual {v6}, Lantlr/RuleBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 141
    invoke-virtual {v6}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-ne v7, v4, :cond_1

    .line 142
    invoke-virtual {v6, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lantlr/Alternative;

    .line 143
    iget-object v7, v6, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 145
    iget-object v6, v6, Lantlr/Alternative;->semPred:Ljava/lang/String;

    iput-object v6, v5, Lantlr/Alternative;->semPred:Ljava/lang/String;

    .line 154
    :cond_1
    new-instance v6, Lantlr/RuleRefElement;

    new-instance v7, Lantlr/CommonToken;

    const/16 v8, 0x29

    invoke-virtual {v3}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lantlr/CommonToken;-><init>(ILjava/lang/String;)V

    invoke-direct {v6, p0, v7, v4}, Lantlr/RuleRefElement;-><init>(Lantlr/Grammar;Lantlr/Token;I)V

    const-string v7, "theRetToken"

    .line 158
    invoke-virtual {v6, v7}, Lantlr/RuleRefElement;->setLabel(Ljava/lang/String;)V

    const-string v7, "nextToken"

    .line 159
    iput-object v7, v6, Lantlr/RuleRefElement;->enclosingRuleName:Ljava/lang/String;

    .line 160
    iput-object p2, v6, Lantlr/RuleRefElement;->next:Lantlr/AlternativeElement;

    .line 161
    invoke-virtual {v5, v6}, Lantlr/Alternative;->addElement(Lantlr/AlternativeElement;)V

    .line 162
    invoke-virtual {v5, v4}, Lantlr/Alternative;->setAutoGen(Z)V

    .line 163
    invoke-virtual {v0, v5}, Lantlr/RuleBlock;->addAlternative(Lantlr/Alternative;)V

    .line 164
    invoke-virtual {v3, v6}, Lantlr/RuleSymbol;->addReference(Lantlr/RuleRefElement;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 169
    :cond_3
    invoke-virtual {v0, v4}, Lantlr/RuleBlock;->setAutoGen(Z)V

    .line 170
    invoke-virtual {v0}, Lantlr/RuleBlock;->prepareForAnalysis()V

    return-object v0
.end method

.method private createOptionalRuleRef(Ljava/lang/String;Lantlr/Token;)Lantlr/AlternativeBlock;
    .locals 4

    .line 178
    new-instance v0, Lantlr/AlternativeBlock;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lantlr/AlternativeBlock;-><init>(Lantlr/Grammar;Lantlr/Token;Z)V

    .line 181
    invoke-static {p1}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v2, v1}, Lantlr/Grammar;->isDefined(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    iget-object v2, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    new-instance v3, Lantlr/RuleSymbol;

    invoke-direct {v3, v1}, Lantlr/RuleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lantlr/Grammar;->define(Lantlr/RuleSymbol;)V

    .line 188
    :cond_0
    new-instance v1, Lantlr/CommonToken;

    const/16 v2, 0x18

    invoke-direct {v1, v2, p1}, Lantlr/CommonToken;-><init>(ILjava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result p1

    invoke-virtual {v1, p1}, Lantlr/Token;->setLine(I)V

    .line 190
    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p1

    invoke-virtual {v1, p1}, Lantlr/Token;->setLine(I)V

    .line 191
    new-instance p1, Lantlr/RuleRefElement;

    iget-object p2, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    const/4 v2, 0x1

    invoke-direct {p1, p2, v1, v2}, Lantlr/RuleRefElement;-><init>(Lantlr/Grammar;Lantlr/Token;I)V

    .line 194
    iget-object p2, p0, Lantlr/MakeGrammar;->ruleBlock:Lantlr/RuleBlock;

    iget-object p2, p2, Lantlr/RuleBlock;->ruleName:Ljava/lang/String;

    iput-object p2, p1, Lantlr/RuleRefElement;->enclosingRuleName:Ljava/lang/String;

    .line 197
    new-instance p2, Lantlr/BlockEndElement;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {p2, v1}, Lantlr/BlockEndElement;-><init>(Lantlr/Grammar;)V

    .line 198
    iput-object v0, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    .line 201
    new-instance v1, Lantlr/Alternative;

    invoke-direct {v1, p1}, Lantlr/Alternative;-><init>(Lantlr/AlternativeElement;)V

    .line 202
    invoke-virtual {v1, p2}, Lantlr/Alternative;->addElement(Lantlr/AlternativeElement;)V

    .line 205
    invoke-virtual {v0, v1}, Lantlr/AlternativeBlock;->addAlternative(Lantlr/Alternative;)V

    .line 208
    new-instance p1, Lantlr/Alternative;

    invoke-direct {p1}, Lantlr/Alternative;-><init>()V

    .line 209
    invoke-virtual {p1, p2}, Lantlr/Alternative;->addElement(Lantlr/AlternativeElement;)V

    .line 211
    invoke-virtual {v0, p1}, Lantlr/AlternativeBlock;->addAlternative(Lantlr/Alternative;)V

    .line 213
    invoke-virtual {v0}, Lantlr/AlternativeBlock;->prepareForAnalysis()V

    return-object v0
.end method

.method private labelElement(Lantlr/AlternativeElement;Lantlr/Token;)V
    .locals 3

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 385
    :goto_0
    iget-object v1, p0, Lantlr/MakeGrammar;->ruleBlock:Lantlr/RuleBlock;

    iget-object v1, v1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 386
    iget-object v1, p0, Lantlr/MakeGrammar;->ruleBlock:Lantlr/RuleBlock;

    iget-object v1, v1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/AlternativeElement;

    .line 387
    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    iget-object p1, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Label \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' has already been defined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    invoke-virtual {p1, v0, v1, v2, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/AlternativeElement;->setLabel(Ljava/lang/String;)V

    .line 395
    iget-object p2, p0, Lantlr/MakeGrammar;->ruleBlock:Lantlr/RuleBlock;

    iget-object p2, p2, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {p2, p1}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static setBlock(Lantlr/AlternativeBlock;Lantlr/AlternativeBlock;)V
    .locals 1

    .line 738
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/AlternativeBlock;->setAlternatives(Lantlr/collections/impl/Vector;)V

    .line 739
    iget-object v0, p1, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    iput-object v0, p0, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    .line 741
    iget-object v0, p1, Lantlr/AlternativeBlock;->label:Ljava/lang/String;

    iput-object v0, p0, Lantlr/AlternativeBlock;->label:Ljava/lang/String;

    .line 742
    iget-boolean v0, p1, Lantlr/AlternativeBlock;->hasASynPred:Z

    iput-boolean v0, p0, Lantlr/AlternativeBlock;->hasASynPred:Z

    .line 743
    iget-boolean v0, p1, Lantlr/AlternativeBlock;->hasAnAction:Z

    iput-boolean v0, p0, Lantlr/AlternativeBlock;->hasAnAction:Z

    .line 744
    iget-boolean v0, p1, Lantlr/AlternativeBlock;->warnWhenFollowAmbig:Z

    iput-boolean v0, p0, Lantlr/AlternativeBlock;->warnWhenFollowAmbig:Z

    .line 745
    iget-boolean v0, p1, Lantlr/AlternativeBlock;->generateAmbigWarnings:Z

    iput-boolean v0, p0, Lantlr/AlternativeBlock;->generateAmbigWarnings:Z

    .line 746
    iget v0, p1, Lantlr/AlternativeBlock;->line:I

    iput v0, p0, Lantlr/AlternativeBlock;->line:I

    .line 747
    iget-boolean v0, p1, Lantlr/AlternativeBlock;->greedy:Z

    iput-boolean v0, p0, Lantlr/AlternativeBlock;->greedy:Z

    .line 748
    iget-boolean p1, p1, Lantlr/AlternativeBlock;->greedySet:Z

    iput-boolean p1, p0, Lantlr/AlternativeBlock;->greedySet:Z

    return-void
.end method


# virtual methods
.method public abortGrammar()V
    .locals 4

    .line 33
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknown grammar"

    .line 36
    :goto_0
    iget-object v1, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "aborting grammar \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\' due to errors"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lantlr/Tool;->error(Ljava/lang/String;)V

    .line 37
    invoke-super {p0}, Lantlr/DefineGrammarSymbols;->abortGrammar()V

    return-void
.end method

.method protected addElementToCurrentAlt(Lantlr/AlternativeElement;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lantlr/MakeGrammar;->ruleBlock:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->ruleName:Ljava/lang/String;

    iput-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lantlr/BlockContext;->addAlternativeElement(Lantlr/AlternativeElement;)V

    return-void
.end method

.method public beginAlt(Z)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lantlr/DefineGrammarSymbols;->beginAlt(Z)V

    .line 47
    new-instance v0, Lantlr/Alternative;

    invoke-direct {v0}, Lantlr/Alternative;-><init>()V

    .line 48
    invoke-virtual {v0, p1}, Lantlr/Alternative;->setAutoGen(Z)V

    .line 49
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object p1

    iget-object p1, p1, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {p1, v0}, Lantlr/AlternativeBlock;->addAlternative(Lantlr/Alternative;)V

    return-void
.end method

.method public beginChildList()V
    .locals 2

    .line 53
    invoke-super {p0}, Lantlr/DefineGrammarSymbols;->beginChildList()V

    .line 54
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    new-instance v1, Lantlr/Alternative;

    invoke-direct {v1}, Lantlr/Alternative;-><init>()V

    invoke-virtual {v0, v1}, Lantlr/AlternativeBlock;->addAlternative(Lantlr/Alternative;)V

    return-void
.end method

.method public beginExceptionGroup()V
    .locals 2

    .line 59
    invoke-super {p0}, Lantlr/DefineGrammarSymbols;->beginExceptionGroup()V

    .line 60
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    instance-of v0, v0, Lantlr/RuleBlock;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    const-string v1, "beginExceptionGroup called outside of rule block"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beginExceptionSpec(Lantlr/Token;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, " \n\r\t"

    invoke-static {v0, v1}, Lantlr/StringUtils;->stripBack(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lantlr/StringUtils;->stripFront(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Token;->setText(Ljava/lang/String;)V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lantlr/DefineGrammarSymbols;->beginExceptionSpec(Lantlr/Token;)V

    .line 74
    new-instance v0, Lantlr/ExceptionSpec;

    invoke-direct {v0, p1}, Lantlr/ExceptionSpec;-><init>(Lantlr/Token;)V

    iput-object v0, p0, Lantlr/MakeGrammar;->currentExceptionSpec:Lantlr/ExceptionSpec;

    return-void
.end method

.method public beginSubRule(Lantlr/Token;Lantlr/Token;Z)V
    .locals 3

    .line 78
    invoke-super {p0, p1, p2, p3}, Lantlr/DefineGrammarSymbols;->beginSubRule(Lantlr/Token;Lantlr/Token;Z)V

    .line 82
    iget-object v0, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    new-instance v1, Lantlr/BlockContext;

    invoke-direct {v1}, Lantlr/BlockContext;-><init>()V

    invoke-interface {v0, v1}, Lantlr/collections/Stack;->push(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    new-instance v1, Lantlr/AlternativeBlock;

    iget-object v2, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {v1, v2, p2, p3}, Lantlr/AlternativeBlock;-><init>(Lantlr/Grammar;Lantlr/Token;Z)V

    iput-object v1, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    .line 84
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object p2

    const/4 p3, 0x0

    iput p3, p2, Lantlr/BlockContext;->altNum:I

    .line 85
    iget p2, p0, Lantlr/MakeGrammar;->nested:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lantlr/MakeGrammar;->nested:I

    .line 88
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object p2

    new-instance p3, Lantlr/BlockEndElement;

    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {p3, v0}, Lantlr/BlockEndElement;-><init>(Lantlr/Grammar;)V

    iput-object p3, p2, Lantlr/BlockContext;->blockEnd:Lantlr/BlockEndElement;

    .line 90
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object p2

    iget-object p2, p2, Lantlr/BlockContext;->blockEnd:Lantlr/BlockEndElement;

    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object p3

    iget-object p3, p3, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    iput-object p3, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    .line 91
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object p2

    iget-object p2, p2, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-direct {p0, p2, p1}, Lantlr/MakeGrammar;->labelElement(Lantlr/AlternativeElement;Lantlr/Token;)V

    return-void
.end method

.method public beginTree(Lantlr/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/SemanticException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_0

    .line 99
    invoke-super {p0, p1}, Lantlr/DefineGrammarSymbols;->beginTree(Lantlr/Token;)V

    .line 100
    iget-object v0, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    new-instance v1, Lantlr/TreeBlockContext;

    invoke-direct {v1}, Lantlr/TreeBlockContext;-><init>()V

    invoke-interface {v0, v1}, Lantlr/collections/Stack;->push(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    new-instance v1, Lantlr/TreeElement;

    iget-object v2, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {v1, v2, p1}, Lantlr/TreeElement;-><init>(Lantlr/Grammar;Lantlr/Token;)V

    iput-object v1, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    .line 102
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lantlr/BlockContext;->altNum:I

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v3, "Trees only allowed in TreeParser"

    invoke-virtual {v0, v3, v1, v2, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 97
    new-instance p1, Lantlr/SemanticException;

    invoke-direct {p1, v3}, Lantlr/SemanticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public context()Lantlr/BlockContext;
    .locals 1

    .line 106
    iget-object v0, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    invoke-interface {v0}, Lantlr/collections/Stack;->height()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    invoke-interface {v0}, Lantlr/collections/Stack;->top()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/BlockContext;

    return-object v0
.end method

.method public defineRuleName(Lantlr/Token;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/SemanticException;
        }
    .end annotation

    .line 223
    iget v0, p1, Lantlr/Token;->type:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Lexical rule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " defined outside of lexer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v4

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 228
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Token;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Lexical rule names must be upper case, \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' is not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v4

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 236
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Token;->setText(Ljava/lang/String;)V

    .line 240
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lantlr/DefineGrammarSymbols;->defineRuleName(Lantlr/Token;Ljava/lang/String;ZLjava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    .line 243
    iget p4, p1, Lantlr/Token;->type:I

    if-ne p4, v1, :cond_2

    .line 244
    invoke-static {p2}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 246
    :cond_2
    iget-object p4, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {p4, p2}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object p2

    check-cast p2, Lantlr/RuleSymbol;

    .line 247
    new-instance p4, Lantlr/RuleBlock;

    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result p1

    invoke-direct {p4, v0, v1, p1, p3}, Lantlr/RuleBlock;-><init>(Lantlr/Grammar;Ljava/lang/String;IZ)V

    .line 250
    iget-object p1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {p1}, Lantlr/Grammar;->getDefaultErrorHandler()Z

    move-result p1

    invoke-virtual {p4, p1}, Lantlr/RuleBlock;->setDefaultErrorHandler(Z)V

    .line 252
    iput-object p4, p0, Lantlr/MakeGrammar;->ruleBlock:Lantlr/RuleBlock;

    .line 253
    iget-object p1, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    new-instance p3, Lantlr/BlockContext;

    invoke-direct {p3}, Lantlr/BlockContext;-><init>()V

    invoke-interface {p1, p3}, Lantlr/collections/Stack;->push(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object p1

    iput-object p4, p1, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    .line 255
    invoke-virtual {p2, p4}, Lantlr/RuleSymbol;->setBlock(Lantlr/RuleBlock;)V

    .line 256
    new-instance p1, Lantlr/RuleEndElement;

    iget-object p2, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {p1, p2}, Lantlr/RuleEndElement;-><init>(Lantlr/Grammar;)V

    iput-object p1, p0, Lantlr/MakeGrammar;->ruleEnd:Lantlr/RuleEndElement;

    .line 257
    invoke-virtual {p4, p1}, Lantlr/RuleBlock;->setEndElement(Lantlr/RuleEndElement;)V

    const/4 p1, 0x0

    .line 258
    iput p1, p0, Lantlr/MakeGrammar;->nested:I

    return-void
.end method

.method public endAlt()V
    .locals 2

    .line 262
    invoke-super {p0}, Lantlr/DefineGrammarSymbols;->endAlt()V

    .line 263
    iget v0, p0, Lantlr/MakeGrammar;->nested:I

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lantlr/MakeGrammar;->ruleEnd:Lantlr/RuleEndElement;

    invoke-virtual {p0, v0}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->blockEnd:Lantlr/BlockEndElement;

    invoke-virtual {p0, v0}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    .line 269
    :goto_0
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget v1, v0, Lantlr/BlockContext;->altNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lantlr/BlockContext;->altNum:I

    return-void
.end method

.method public endChildList()V
    .locals 2

    .line 273
    invoke-super {p0}, Lantlr/DefineGrammarSymbols;->endChildList()V

    .line 278
    new-instance v0, Lantlr/BlockEndElement;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {v0, v1}, Lantlr/BlockEndElement;-><init>(Lantlr/Grammar;)V

    .line 279
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v1

    iget-object v1, v1, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    iput-object v1, v0, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    .line 280
    invoke-virtual {p0, v0}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    return-void
.end method

.method public endExceptionGroup()V
    .locals 0

    .line 284
    invoke-super {p0}, Lantlr/DefineGrammarSymbols;->endExceptionGroup()V

    return-void
.end method

.method public endExceptionSpec()V
    .locals 5

    .line 288
    invoke-super {p0}, Lantlr/DefineGrammarSymbols;->endExceptionSpec()V

    .line 289
    iget-object v0, p0, Lantlr/MakeGrammar;->currentExceptionSpec:Lantlr/ExceptionSpec;

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    const-string v1, "exception processing internal error -- no active exception spec"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 292
    :cond_0
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    instance-of v0, v0, Lantlr/RuleBlock;

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    check-cast v0, Lantlr/RuleBlock;

    iget-object v1, p0, Lantlr/MakeGrammar;->currentExceptionSpec:Lantlr/ExceptionSpec;

    invoke-virtual {v0, v1}, Lantlr/RuleBlock;->addExceptionSpec(Lantlr/ExceptionSpec;)V

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    invoke-virtual {v0}, Lantlr/BlockContext;->currentAlt()Lantlr/Alternative;

    move-result-object v0

    iget-object v0, v0, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v2

    iget-object v2, v2, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v2}, Lantlr/AlternativeBlock;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v3

    iget-object v3, v3, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v3}, Lantlr/AlternativeBlock;->getColumn()I

    move-result v3

    const-string v4, "Alternative already has an exception specification"

    invoke-virtual {v0, v4, v1, v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    invoke-virtual {v0}, Lantlr/BlockContext;->currentAlt()Lantlr/Alternative;

    move-result-object v0

    iget-object v1, p0, Lantlr/MakeGrammar;->currentExceptionSpec:Lantlr/ExceptionSpec;

    iput-object v1, v0, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    :goto_0
    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Lantlr/MakeGrammar;->currentExceptionSpec:Lantlr/ExceptionSpec;

    return-void
.end method

.method public endGrammar()V
    .locals 1

    .line 310
    iget-boolean v0, p0, Lantlr/MakeGrammar;->grammarError:Z

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lantlr/MakeGrammar;->abortGrammar()V

    goto :goto_0

    .line 314
    :cond_0
    invoke-super {p0}, Lantlr/DefineGrammarSymbols;->endGrammar()V

    :goto_0
    return-void
.end method

.method public endRule(Ljava/lang/String;)V
    .locals 1

    .line 319
    invoke-super {p0, p1}, Lantlr/DefineGrammarSymbols;->endRule(Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    invoke-interface {p1}, Lantlr/collections/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/BlockContext;

    .line 322
    iget-object v0, p0, Lantlr/MakeGrammar;->ruleEnd:Lantlr/RuleEndElement;

    iget-object p1, p1, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    iput-object p1, v0, Lantlr/RuleEndElement;->block:Lantlr/AlternativeBlock;

    .line 323
    iget-object p1, p0, Lantlr/MakeGrammar;->ruleEnd:Lantlr/RuleEndElement;

    iget-object p1, p1, Lantlr/RuleEndElement;->block:Lantlr/AlternativeBlock;

    invoke-virtual {p1}, Lantlr/AlternativeBlock;->prepareForAnalysis()V

    return-void
.end method

.method public endSubRule()V
    .locals 8

    .line 328
    invoke-super {p0}, Lantlr/DefineGrammarSymbols;->endSubRule()V

    .line 329
    iget v0, p0, Lantlr/MakeGrammar;->nested:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lantlr/MakeGrammar;->nested:I

    .line 331
    iget-object v0, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    invoke-interface {v0}, Lantlr/collections/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/BlockContext;

    .line 332
    iget-object v2, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    .line 336
    iget-boolean v3, v2, Lantlr/AlternativeBlock;->not:Z

    if-eqz v3, :cond_0

    instance-of v3, v2, Lantlr/SynPredBlock;

    if-nez v3, :cond_0

    instance-of v3, v2, Lantlr/ZeroOrMoreBlock;

    if-nez v3, :cond_0

    instance-of v3, v2, Lantlr/OneOrMoreBlock;

    if-nez v3, :cond_0

    .line 342
    iget-object v3, p0, Lantlr/MakeGrammar;->analyzer:Lantlr/LLkAnalyzer;

    iget-object v4, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    instance-of v4, v4, Lantlr/LexerGrammar;

    invoke-virtual {v3, v2, v4}, Lantlr/LLkAnalyzer;->subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "line.separator"

    .line 343
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    iget-object v4, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "This subrule cannot be inverted.  Only subrules of the form:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "    (T1|T2|T3...) or"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "    (\'c1\'|\'c2\'|\'c3\'...)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "may be inverted (ranges are also allowed)."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lantlr/AlternativeBlock;->getLine()I

    move-result v6

    invoke-virtual {v2}, Lantlr/AlternativeBlock;->getColumn()I

    move-result v7

    invoke-virtual {v4, v3, v5, v6, v7}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 356
    :cond_0
    instance-of v3, v2, Lantlr/SynPredBlock;

    if-eqz v3, :cond_1

    .line 359
    check-cast v2, Lantlr/SynPredBlock;

    .line 360
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v3

    iget-object v3, v3, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    iput-boolean v1, v3, Lantlr/AlternativeBlock;->hasASynPred:Z

    .line 361
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v3

    invoke-virtual {v3}, Lantlr/BlockContext;->currentAlt()Lantlr/Alternative;

    move-result-object v3

    iput-object v2, v3, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    .line 362
    iget-object v3, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    iput-boolean v1, v3, Lantlr/Grammar;->hasSyntacticPredicate:Z

    .line 363
    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v2, v1}, Lantlr/SynPredBlock;->removeTrackingOfRuleRefs(Lantlr/Grammar;)V

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {p0, v2}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    .line 368
    :goto_0
    iget-object v0, v0, Lantlr/BlockContext;->blockEnd:Lantlr/BlockEndElement;

    iget-object v0, v0, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v0}, Lantlr/AlternativeBlock;->prepareForAnalysis()V

    return-void
.end method

.method public endTree()V
    .locals 1

    .line 372
    invoke-super {p0}, Lantlr/DefineGrammarSymbols;->endTree()V

    .line 373
    iget-object v0, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    invoke-interface {v0}, Lantlr/collections/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/BlockContext;

    .line 374
    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {p0, v0}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    return-void
.end method

.method public hasError()V
    .locals 1

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lantlr/MakeGrammar;->grammarError:Z

    return-void
.end method

.method public noAutoGenSubRule()V
    .locals 2

    .line 400
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lantlr/AlternativeBlock;->setAutoGen(Z)V

    return-void
.end method

.method public oneOrMoreSubRule()V
    .locals 5

    .line 404
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    iget-boolean v0, v0, Lantlr/AlternativeBlock;->not:Z

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v2

    iget-object v2, v2, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v2}, Lantlr/AlternativeBlock;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v3

    iget-object v3, v3, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v3}, Lantlr/AlternativeBlock;->getColumn()I

    move-result v3

    const-string v4, "\'~\' cannot be applied to (...)* subrule"

    invoke-virtual {v0, v4, v1, v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 410
    :cond_0
    new-instance v0, Lantlr/OneOrMoreBlock;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {v0, v1}, Lantlr/OneOrMoreBlock;-><init>(Lantlr/Grammar;)V

    .line 411
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v1

    iget-object v1, v1, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-static {v0, v1}, Lantlr/MakeGrammar;->setBlock(Lantlr/AlternativeBlock;Lantlr/AlternativeBlock;)V

    .line 412
    iget-object v1, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    invoke-interface {v1}, Lantlr/collections/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/BlockContext;

    .line 413
    iget-object v2, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    new-instance v3, Lantlr/BlockContext;

    invoke-direct {v3}, Lantlr/BlockContext;-><init>()V

    invoke-interface {v2, v3}, Lantlr/collections/Stack;->push(Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v2

    iput-object v0, v2, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    .line 415
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v2

    iget-object v1, v1, Lantlr/BlockContext;->blockEnd:Lantlr/BlockEndElement;

    iput-object v1, v2, Lantlr/BlockContext;->blockEnd:Lantlr/BlockEndElement;

    .line 416
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v1

    iget-object v1, v1, Lantlr/BlockContext;->blockEnd:Lantlr/BlockEndElement;

    iput-object v0, v1, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    return-void
.end method

.method public optionalSubRule()V
    .locals 5

    .line 420
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    iget-boolean v0, v0, Lantlr/AlternativeBlock;->not:Z

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v2

    iget-object v2, v2, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v2}, Lantlr/AlternativeBlock;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v3

    iget-object v3, v3, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v3}, Lantlr/AlternativeBlock;->getColumn()I

    move-result v3

    const-string v4, "\'~\' cannot be applied to (...)? subrule"

    invoke-virtual {v0, v4, v1, v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    const/4 v0, 0x0

    .line 425
    invoke-virtual {p0, v0}, Lantlr/MakeGrammar;->beginAlt(Z)V

    .line 426
    invoke-virtual {p0}, Lantlr/MakeGrammar;->endAlt()V

    return-void
.end method

.method public refAction(Lantlr/Token;)V
    .locals 2

    .line 430
    invoke-super {p0, p1}, Lantlr/DefineGrammarSymbols;->refAction(Lantlr/Token;)V

    .line 431
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lantlr/AlternativeBlock;->hasAnAction:Z

    .line 432
    new-instance v0, Lantlr/ActionElement;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {v0, v1, p1}, Lantlr/ActionElement;-><init>(Lantlr/Grammar;Lantlr/Token;)V

    invoke-virtual {p0, v0}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    return-void
.end method

.method public refArgAction(Lantlr/Token;)V
    .locals 1

    .line 441
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    check-cast v0, Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    return-void
.end method

.method public refCharLiteral(Lantlr/Token;Lantlr/Token;ZIZ)V
    .locals 4

    .line 445
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-nez v0, :cond_0

    .line 446
    iget-object p2, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object p3, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {p3}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result p4

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string p5, "Character literal only valid in lexer"

    invoke-virtual {p2, p5, p3, p4, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 449
    :cond_0
    invoke-super/range {p0 .. p5}, Lantlr/DefineGrammarSymbols;->refCharLiteral(Lantlr/Token;Lantlr/Token;ZIZ)V

    .line 450
    new-instance v0, Lantlr/CharLiteralElement;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    check-cast v1, Lantlr/LexerGrammar;

    invoke-direct {v0, v1, p1, p3, p4}, Lantlr/CharLiteralElement;-><init>(Lantlr/LexerGrammar;Lantlr/Token;ZI)V

    .line 453
    iget-object p3, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    check-cast p3, Lantlr/LexerGrammar;

    iget-boolean p3, p3, Lantlr/LexerGrammar;->caseSensitive:Z

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lantlr/CharLiteralElement;->getType()I

    move-result p3

    const/16 p4, 0x80

    if-ge p3, p4, :cond_1

    invoke-virtual {v0}, Lantlr/CharLiteralElement;->getType()I

    move-result p3

    int-to-char p3, p3

    invoke-static {p3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p3

    invoke-virtual {v0}, Lantlr/CharLiteralElement;->getType()I

    move-result p4

    int-to-char p4, p4

    if-eq p3, p4, :cond_1

    .line 457
    iget-object p3, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object p4, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {p4}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result v2

    const-string v3, "Character literal must be lowercase when caseSensitive=false"

    invoke-virtual {p3, v3, p4, v1, v2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 460
    :cond_1
    invoke-virtual {p0, v0}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    .line 461
    invoke-direct {p0, v0, p2}, Lantlr/MakeGrammar;->labelElement(Lantlr/AlternativeElement;Lantlr/Token;)V

    .line 464
    iget-object p2, p0, Lantlr/MakeGrammar;->ruleBlock:Lantlr/RuleBlock;

    invoke-virtual {p2}, Lantlr/RuleBlock;->getIgnoreRule()Ljava/lang/String;

    move-result-object p2

    if-nez p5, :cond_2

    if-eqz p2, :cond_2

    .line 466
    invoke-direct {p0, p2, p1}, Lantlr/MakeGrammar;->createOptionalRuleRef(Ljava/lang/String;Lantlr/Token;)Lantlr/AlternativeBlock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    :cond_2
    return-void
.end method

.method public refCharRange(Lantlr/Token;Lantlr/Token;Lantlr/Token;IZ)V
    .locals 7

    .line 471
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-nez v0, :cond_0

    .line 472
    iget-object p2, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object p3, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {p3}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result p4

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string p5, "Character range only valid in lexer"

    invoke-virtual {p2, p5, p3, p4, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 475
    :cond_0
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lantlr/ANTLRLexer;->tokenTypeForCharLiteral(Ljava/lang/String;)I

    move-result v0

    .line 476
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lantlr/ANTLRLexer;->tokenTypeForCharLiteral(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 478
    iget-object p2, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object p3, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {p3}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result p4

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string p5, "Malformed range."

    invoke-virtual {p2, p5, p3, p4, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 483
    :cond_1
    iget-object v2, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    check-cast v2, Lantlr/LexerGrammar;

    iget-boolean v2, v2, Lantlr/LexerGrammar;->caseSensitive:Z

    if-nez v2, :cond_3

    const-string v2, "Character literal must be lowercase when caseSensitive=false"

    const/16 v3, 0x80

    if-ge v0, v3, :cond_2

    int-to-char v0, v0

    .line 484
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-eq v4, v0, :cond_2

    .line 485
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v4, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v5

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_2
    if-ge v1, v3, :cond_3

    int-to-char v0, v1

    .line 487
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-eq v1, v0, :cond_3

    .line 488
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v3

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 492
    :cond_3
    invoke-super/range {p0 .. p5}, Lantlr/DefineGrammarSymbols;->refCharRange(Lantlr/Token;Lantlr/Token;Lantlr/Token;IZ)V

    .line 493
    new-instance v0, Lantlr/CharRangeElement;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    check-cast v1, Lantlr/LexerGrammar;

    invoke-direct {v0, v1, p1, p2, p4}, Lantlr/CharRangeElement;-><init>(Lantlr/LexerGrammar;Lantlr/Token;Lantlr/Token;I)V

    .line 494
    invoke-virtual {p0, v0}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    .line 495
    invoke-direct {p0, v0, p3}, Lantlr/MakeGrammar;->labelElement(Lantlr/AlternativeElement;Lantlr/Token;)V

    .line 498
    iget-object p2, p0, Lantlr/MakeGrammar;->ruleBlock:Lantlr/RuleBlock;

    invoke-virtual {p2}, Lantlr/RuleBlock;->getIgnoreRule()Ljava/lang/String;

    move-result-object p2

    if-nez p5, :cond_4

    if-eqz p2, :cond_4

    .line 500
    invoke-direct {p0, p2, p1}, Lantlr/MakeGrammar;->createOptionalRuleRef(Ljava/lang/String;Lantlr/Token;)Lantlr/AlternativeBlock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    :cond_4
    return-void
.end method

.method public refElementOption(Lantlr/Token;Lantlr/Token;)V
    .locals 3

    .line 532
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    invoke-virtual {v0}, Lantlr/BlockContext;->currentElement()Lantlr/AlternativeElement;

    move-result-object v0

    .line 533
    instance-of v1, v0, Lantlr/StringLiteralElement;

    if-nez v1, :cond_1

    instance-of v1, v0, Lantlr/TokenRefElement;

    if-nez v1, :cond_1

    instance-of v1, v0, Lantlr/WildcardElement;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    iget-object p2, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "cannot use element option ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ") for this kind of element"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 536
    :cond_1
    :goto_0
    check-cast v0, Lantlr/GrammarAtom;

    invoke-virtual {v0, p1, p2}, Lantlr/GrammarAtom;->setOption(Lantlr/Token;Lantlr/Token;)V

    :goto_1
    return-void
.end method

.method public refExceptionHandler(Lantlr/Token;Lantlr/Token;)V
    .locals 2

    .line 547
    invoke-super {p0, p1, p2}, Lantlr/DefineGrammarSymbols;->refExceptionHandler(Lantlr/Token;Lantlr/Token;)V

    .line 548
    iget-object v0, p0, Lantlr/MakeGrammar;->currentExceptionSpec:Lantlr/ExceptionSpec;

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    const-string v1, "exception handler processing internal error"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 551
    :cond_0
    iget-object v0, p0, Lantlr/MakeGrammar;->currentExceptionSpec:Lantlr/ExceptionSpec;

    new-instance v1, Lantlr/ExceptionHandler;

    invoke-direct {v1, p1, p2}, Lantlr/ExceptionHandler;-><init>(Lantlr/Token;Lantlr/Token;)V

    invoke-virtual {v0, v1}, Lantlr/ExceptionSpec;->addHandler(Lantlr/ExceptionHandler;)V

    return-void
.end method

.method public refInitAction(Lantlr/Token;)V
    .locals 1

    .line 555
    invoke-super {p0, p1}, Lantlr/DefineGrammarSymbols;->refAction(Lantlr/Token;)V

    .line 556
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/AlternativeBlock;->setInitAction(Ljava/lang/String;)V

    return-void
.end method

.method public refMemberAction(Lantlr/Token;)V
    .locals 1

    .line 560
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    iput-object p1, v0, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    return-void
.end method

.method public refPreambleAction(Lantlr/Token;)V
    .locals 0

    .line 564
    invoke-super {p0, p1}, Lantlr/DefineGrammarSymbols;->refPreambleAction(Lantlr/Token;)V

    return-void
.end method

.method public refReturnAction(Lantlr/Token;)V
    .locals 4

    .line 569
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    check-cast v0, Lantlr/RuleBlock;

    invoke-virtual {v0}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 572
    iget-object v0, v0, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    const-string v1, "public"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v3, "public Lexical rules cannot specify return type"

    invoke-virtual {v0, v3, v1, v2, p1}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 577
    :cond_0
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    check-cast v0, Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    return-void
.end method

.method public refRule(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;I)V
    .locals 6

    .line 586
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const/16 v1, 0x18

    if-eqz v0, :cond_1

    .line 588
    iget v0, p2, Lantlr/Token;->type:I

    if-eq v0, v1, :cond_0

    .line 589
    iget-object p1, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Parser rule "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " referenced in lexer"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p5, v0, :cond_1

    .line 593
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v2, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v3

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result v4

    const-string v5, "AST specification ^ not allowed in lexer"

    invoke-virtual {v0, v5, v2, v3, v4}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 597
    :cond_1
    invoke-super/range {p0 .. p5}, Lantlr/DefineGrammarSymbols;->refRule(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;I)V

    .line 598
    new-instance v0, Lantlr/RuleRefElement;

    iget-object v2, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {v0, v2, p2, p5}, Lantlr/RuleRefElement;-><init>(Lantlr/Grammar;Lantlr/Token;I)V

    iput-object v0, p0, Lantlr/MakeGrammar;->lastRuleRef:Lantlr/RuleRefElement;

    if-eqz p4, :cond_2

    .line 600
    invoke-virtual {p4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lantlr/RuleRefElement;->setArgs(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 603
    iget-object p4, p0, Lantlr/MakeGrammar;->lastRuleRef:Lantlr/RuleRefElement;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lantlr/RuleRefElement;->setIdAssign(Ljava/lang/String;)V

    .line 605
    :cond_3
    iget-object p1, p0, Lantlr/MakeGrammar;->lastRuleRef:Lantlr/RuleRefElement;

    invoke-virtual {p0, p1}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    .line 607
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    .line 609
    iget p2, p2, Lantlr/Token;->type:I

    if-ne p2, v1, :cond_4

    .line 610
    invoke-static {p1}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 613
    :cond_4
    iget-object p2, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {p2, p1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object p1

    check-cast p1, Lantlr/RuleSymbol;

    .line 614
    iget-object p2, p0, Lantlr/MakeGrammar;->lastRuleRef:Lantlr/RuleRefElement;

    invoke-virtual {p1, p2}, Lantlr/RuleSymbol;->addReference(Lantlr/RuleRefElement;)V

    .line 615
    iget-object p1, p0, Lantlr/MakeGrammar;->lastRuleRef:Lantlr/RuleRefElement;

    invoke-direct {p0, p1, p3}, Lantlr/MakeGrammar;->labelElement(Lantlr/AlternativeElement;Lantlr/Token;)V

    return-void
.end method

.method public refSemPred(Lantlr/Token;)V
    .locals 2

    .line 620
    invoke-super {p0, p1}, Lantlr/DefineGrammarSymbols;->refSemPred(Lantlr/Token;)V

    .line 622
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    invoke-virtual {v0}, Lantlr/BlockContext;->currentAlt()Lantlr/Alternative;

    move-result-object v0

    invoke-virtual {v0}, Lantlr/Alternative;->atStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    invoke-virtual {v0}, Lantlr/BlockContext;->currentAlt()Lantlr/Alternative;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lantlr/Alternative;->semPred:Ljava/lang/String;

    goto :goto_0

    .line 626
    :cond_0
    new-instance v0, Lantlr/ActionElement;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {v0, v1, p1}, Lantlr/ActionElement;-><init>(Lantlr/Grammar;Lantlr/Token;)V

    const/4 p1, 0x1

    .line 627
    iput-boolean p1, v0, Lantlr/ActionElement;->isSemPred:Z

    .line 628
    invoke-virtual {p0, v0}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    :goto_0
    return-void
.end method

.method public refStringLiteral(Lantlr/Token;Lantlr/Token;IZ)V
    .locals 5

    .line 634
    invoke-super {p0, p1, p2, p3, p4}, Lantlr/DefineGrammarSymbols;->refStringLiteral(Lantlr/Token;Lantlr/Token;IZ)V

    .line 635
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 636
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result v3

    const-string v4, "^ not allowed in here for tree-walker"

    invoke-virtual {v0, v4, v1, v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 638
    :cond_0
    new-instance v0, Lantlr/StringLiteralElement;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {v0, v1, p1, p3}, Lantlr/StringLiteralElement;-><init>(Lantlr/Grammar;Lantlr/Token;I)V

    .line 641
    iget-object p3, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    instance-of p3, p3, Lantlr/LexerGrammar;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    check-cast p3, Lantlr/LexerGrammar;

    iget-boolean p3, p3, Lantlr/LexerGrammar;->caseSensitive:Z

    if-nez p3, :cond_2

    const/4 p3, 0x1

    const/4 v1, 0x1

    .line 642
    :goto_0
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    if-ge v1, v2, :cond_2

    .line 643
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    .line 644
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v3, v2, :cond_1

    .line 645
    iget-object p3, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result v3

    const-string v4, "Characters of string literal must be lowercase when caseSensitive=false"

    invoke-virtual {p3, v4, v1, v2, v3}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    .line 652
    invoke-direct {p0, v0, p2}, Lantlr/MakeGrammar;->labelElement(Lantlr/AlternativeElement;Lantlr/Token;)V

    .line 655
    iget-object p2, p0, Lantlr/MakeGrammar;->ruleBlock:Lantlr/RuleBlock;

    invoke-virtual {p2}, Lantlr/RuleBlock;->getIgnoreRule()Ljava/lang/String;

    move-result-object p2

    if-nez p4, :cond_3

    if-eqz p2, :cond_3

    .line 657
    invoke-direct {p0, p2, p1}, Lantlr/MakeGrammar;->createOptionalRuleRef(Ljava/lang/String;Lantlr/Token;)Lantlr/AlternativeBlock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    :cond_3
    return-void
.end method

.method public refToken(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;ZIZ)V
    .locals 6

    .line 663
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    .line 666
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result v3

    const-string v4, "AST specification ^ not allowed in lexer"

    invoke-virtual {v0, v4, v1, v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    if-eqz p5, :cond_1

    .line 669
    iget-object p5, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result v2

    const-string/jumbo v3, "~TOKEN is not allowed in lexer"

    invoke-virtual {p5, v3, v0, v1, v2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    .line 671
    invoke-virtual/range {v0 .. v5}, Lantlr/MakeGrammar;->refRule(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;I)V

    .line 674
    iget-object p1, p0, Lantlr/MakeGrammar;->ruleBlock:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/RuleBlock;->getIgnoreRule()Ljava/lang/String;

    move-result-object p1

    if-nez p7, :cond_5

    if-eqz p1, :cond_5

    .line 676
    invoke-direct {p0, p1, p2}, Lantlr/MakeGrammar;->createOptionalRuleRef(Ljava/lang/String;Lantlr/Token;)Lantlr/AlternativeBlock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 682
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result v3

    const-string v4, "Assignment from token reference only allowed in lexer"

    invoke-virtual {v0, v4, v1, v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    if-eqz p4, :cond_4

    .line 685
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p4}, Lantlr/Token;->getColumn()I

    move-result v3

    const-string v4, "Token reference arguments only allowed in lexer"

    invoke-virtual {v0, v4, v1, v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 687
    :cond_4
    invoke-super/range {p0 .. p7}, Lantlr/DefineGrammarSymbols;->refToken(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;ZIZ)V

    .line 688
    new-instance p1, Lantlr/TokenRefElement;

    iget-object p4, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {p1, p4, p2, p5, p6}, Lantlr/TokenRefElement;-><init>(Lantlr/Grammar;Lantlr/Token;ZI)V

    .line 689
    invoke-virtual {p0, p1}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    .line 690
    invoke-direct {p0, p1, p3}, Lantlr/MakeGrammar;->labelElement(Lantlr/AlternativeElement;Lantlr/Token;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public refTokenRange(Lantlr/Token;Lantlr/Token;Lantlr/Token;IZ)V
    .locals 1

    .line 695
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_0

    .line 696
    iget-object p2, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object p3, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {p3}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result p4

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string p5, "Token range not allowed in lexer"

    invoke-virtual {p2, p5, p3, p4, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 699
    :cond_0
    invoke-super/range {p0 .. p5}, Lantlr/DefineGrammarSymbols;->refTokenRange(Lantlr/Token;Lantlr/Token;Lantlr/Token;IZ)V

    .line 700
    new-instance p5, Lantlr/TokenRangeElement;

    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {p5, v0, p1, p2, p4}, Lantlr/TokenRangeElement;-><init>(Lantlr/Grammar;Lantlr/Token;Lantlr/Token;I)V

    .line 701
    iget p2, p5, Lantlr/TokenRangeElement;->end:I

    iget p4, p5, Lantlr/TokenRangeElement;->begin:I

    if-ge p2, p4, :cond_1

    .line 702
    iget-object p2, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object p3, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {p3}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result p4

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string p5, "Malformed range."

    invoke-virtual {p2, p5, p3, p4, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 705
    :cond_1
    invoke-virtual {p0, p5}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    .line 706
    invoke-direct {p0, p5, p3}, Lantlr/MakeGrammar;->labelElement(Lantlr/AlternativeElement;Lantlr/Token;)V

    return-void
.end method

.method public refTokensSpecElementOption(Lantlr/Token;Lantlr/Token;Lantlr/Token;)V
    .locals 4

    .line 511
    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v0

    if-nez v0, :cond_0

    .line 514
    iget-object v1, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "cannot find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "in tokens {...}"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 516
    :cond_0
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 517
    invoke-virtual {p3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/TokenSymbol;->setASTNodeType(Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object p1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "invalid tokens {...} element option:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    invoke-virtual {p1, p3, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public refTreeSpecifier(Lantlr/Token;)V
    .locals 1

    .line 710
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    invoke-virtual {v0}, Lantlr/BlockContext;->currentAlt()Lantlr/Alternative;

    move-result-object v0

    iput-object p1, v0, Lantlr/Alternative;->treeSpecifier:Lantlr/Token;

    return-void
.end method

.method public refWildcard(Lantlr/Token;Lantlr/Token;I)V
    .locals 2

    .line 714
    invoke-super {p0, p1, p2, p3}, Lantlr/DefineGrammarSymbols;->refWildcard(Lantlr/Token;Lantlr/Token;I)V

    .line 715
    new-instance v0, Lantlr/WildcardElement;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {v0, v1, p1, p3}, Lantlr/WildcardElement;-><init>(Lantlr/Grammar;Lantlr/Token;I)V

    .line 716
    invoke-virtual {p0, v0}, Lantlr/MakeGrammar;->addElementToCurrentAlt(Lantlr/AlternativeElement;)V

    .line 717
    invoke-direct {p0, v0, p2}, Lantlr/MakeGrammar;->labelElement(Lantlr/AlternativeElement;Lantlr/Token;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 722
    invoke-super {p0}, Lantlr/DefineGrammarSymbols;->reset()V

    .line 723
    new-instance v0, Lantlr/collections/impl/LList;

    invoke-direct {v0}, Lantlr/collections/impl/LList;-><init>()V

    iput-object v0, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    const/4 v0, 0x0

    .line 724
    iput-object v0, p0, Lantlr/MakeGrammar;->lastRuleRef:Lantlr/RuleRefElement;

    .line 725
    iput-object v0, p0, Lantlr/MakeGrammar;->ruleEnd:Lantlr/RuleEndElement;

    .line 726
    iput-object v0, p0, Lantlr/MakeGrammar;->ruleBlock:Lantlr/RuleBlock;

    const/4 v1, 0x0

    .line 727
    iput v1, p0, Lantlr/MakeGrammar;->nested:I

    .line 728
    iput-object v0, p0, Lantlr/MakeGrammar;->currentExceptionSpec:Lantlr/ExceptionSpec;

    .line 729
    iput-boolean v1, p0, Lantlr/MakeGrammar;->grammarError:Z

    return-void
.end method

.method public setArgOfRuleRef(Lantlr/Token;)V
    .locals 1

    .line 733
    invoke-super {p0, p1}, Lantlr/DefineGrammarSymbols;->setArgOfRuleRef(Lantlr/Token;)V

    .line 734
    iget-object v0, p0, Lantlr/MakeGrammar;->lastRuleRef:Lantlr/RuleRefElement;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/RuleRefElement;->setArgs(Ljava/lang/String;)V

    return-void
.end method

.method public setRuleOption(Lantlr/Token;Lantlr/Token;)V
    .locals 1

    .line 753
    iget-object v0, p0, Lantlr/MakeGrammar;->ruleBlock:Lantlr/RuleBlock;

    invoke-virtual {v0, p1, p2}, Lantlr/RuleBlock;->setOption(Lantlr/Token;Lantlr/Token;)V

    return-void
.end method

.method public setSubruleOption(Lantlr/Token;Lantlr/Token;)V
    .locals 1

    .line 757
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v0, p1, p2}, Lantlr/AlternativeBlock;->setOption(Lantlr/Token;Lantlr/Token;)V

    return-void
.end method

.method public setUserExceptions(Ljava/lang/String;)V
    .locals 1

    .line 436
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    check-cast v0, Lantlr/RuleBlock;

    iput-object p1, v0, Lantlr/RuleBlock;->throwsSpec:Ljava/lang/String;

    return-void
.end method

.method public synPred()V
    .locals 5

    .line 761
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    iget-boolean v0, v0, Lantlr/AlternativeBlock;->not:Z

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v2

    iget-object v2, v2, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v2}, Lantlr/AlternativeBlock;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v3

    iget-object v3, v3, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v3}, Lantlr/AlternativeBlock;->getColumn()I

    move-result v3

    const-string v4, "\'~\' cannot be applied to syntactic predicate"

    invoke-virtual {v0, v4, v1, v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 767
    :cond_0
    new-instance v0, Lantlr/SynPredBlock;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {v0, v1}, Lantlr/SynPredBlock;-><init>(Lantlr/Grammar;)V

    .line 768
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v1

    iget-object v1, v1, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-static {v0, v1}, Lantlr/MakeGrammar;->setBlock(Lantlr/AlternativeBlock;Lantlr/AlternativeBlock;)V

    .line 769
    iget-object v1, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    invoke-interface {v1}, Lantlr/collections/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/BlockContext;

    .line 770
    iget-object v2, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    new-instance v3, Lantlr/BlockContext;

    invoke-direct {v3}, Lantlr/BlockContext;-><init>()V

    invoke-interface {v2, v3}, Lantlr/collections/Stack;->push(Ljava/lang/Object;)V

    .line 771
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v2

    iput-object v0, v2, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    .line 772
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v2

    iget-object v1, v1, Lantlr/BlockContext;->blockEnd:Lantlr/BlockEndElement;

    iput-object v1, v2, Lantlr/BlockContext;->blockEnd:Lantlr/BlockEndElement;

    .line 773
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v1

    iget-object v1, v1, Lantlr/BlockContext;->blockEnd:Lantlr/BlockEndElement;

    iput-object v0, v1, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    return-void
.end method

.method public zeroOrMoreSubRule()V
    .locals 5

    .line 777
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v0

    iget-object v0, v0, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    iget-boolean v0, v0, Lantlr/AlternativeBlock;->not:Z

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lantlr/MakeGrammar;->tool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v2

    iget-object v2, v2, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v2}, Lantlr/AlternativeBlock;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v3

    iget-object v3, v3, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v3}, Lantlr/AlternativeBlock;->getColumn()I

    move-result v3

    const-string v4, "\'~\' cannot be applied to (...)+ subrule"

    invoke-virtual {v0, v4, v1, v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 783
    :cond_0
    new-instance v0, Lantlr/ZeroOrMoreBlock;

    iget-object v1, p0, Lantlr/MakeGrammar;->grammar:Lantlr/Grammar;

    invoke-direct {v0, v1}, Lantlr/ZeroOrMoreBlock;-><init>(Lantlr/Grammar;)V

    .line 784
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v1

    iget-object v1, v1, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    invoke-static {v0, v1}, Lantlr/MakeGrammar;->setBlock(Lantlr/AlternativeBlock;Lantlr/AlternativeBlock;)V

    .line 785
    iget-object v1, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    invoke-interface {v1}, Lantlr/collections/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/BlockContext;

    .line 786
    iget-object v2, p0, Lantlr/MakeGrammar;->blocks:Lantlr/collections/Stack;

    new-instance v3, Lantlr/BlockContext;

    invoke-direct {v3}, Lantlr/BlockContext;-><init>()V

    invoke-interface {v2, v3}, Lantlr/collections/Stack;->push(Ljava/lang/Object;)V

    .line 787
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v2

    iput-object v0, v2, Lantlr/BlockContext;->block:Lantlr/AlternativeBlock;

    .line 788
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v2

    iget-object v1, v1, Lantlr/BlockContext;->blockEnd:Lantlr/BlockEndElement;

    iput-object v1, v2, Lantlr/BlockContext;->blockEnd:Lantlr/BlockEndElement;

    .line 789
    invoke-virtual {p0}, Lantlr/MakeGrammar;->context()Lantlr/BlockContext;

    move-result-object v1

    iget-object v1, v1, Lantlr/BlockContext;->blockEnd:Lantlr/BlockEndElement;

    iput-object v0, v1, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    return-void
.end method
