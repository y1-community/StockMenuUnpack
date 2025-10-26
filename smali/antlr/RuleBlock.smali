.class public Lantlr/RuleBlock;
.super Lantlr/AlternativeBlock;
.source "RuleBlock.java"


# instance fields
.field protected argAction:Ljava/lang/String;

.field protected cache:[Lantlr/Lookahead;

.field protected defaultErrorHandler:Z

.field protected endNode:Lantlr/RuleEndElement;

.field exceptionSpecs:Ljava/util/Hashtable;

.field protected ignoreRule:Ljava/lang/String;

.field labeledElements:Lantlr/collections/impl/Vector;

.field protected lock:[Z

.field protected returnAction:Ljava/lang/String;

.field protected ruleName:Ljava/lang/String;

.field protected testLiterals:Z

.field protected throwsSpec:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lantlr/Grammar;Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lantlr/AlternativeBlock;-><init>(Lantlr/Grammar;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lantlr/RuleBlock;->throwsSpec:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lantlr/RuleBlock;->testLiterals:Z

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lantlr/RuleBlock;->defaultErrorHandler:Z

    .line 44
    iput-object v0, p0, Lantlr/RuleBlock;->ignoreRule:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lantlr/RuleBlock;->ruleName:Ljava/lang/String;

    .line 50
    new-instance p2, Lantlr/collections/impl/Vector;

    invoke-direct {p2}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object p2, p0, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    .line 51
    iget p2, p1, Lantlr/Grammar;->maxk:I

    add-int/2addr p2, v1

    new-array p2, p2, [Lantlr/Lookahead;

    iput-object p2, p0, Lantlr/RuleBlock;->cache:[Lantlr/Lookahead;

    .line 52
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    iput-object p2, p0, Lantlr/RuleBlock;->exceptionSpecs:Ljava/util/Hashtable;

    .line 53
    instance-of p1, p1, Lantlr/ParserGrammar;

    invoke-virtual {p0, p1}, Lantlr/RuleBlock;->setAutoGen(Z)V

    return-void
.end method

.method public constructor <init>(Lantlr/Grammar;Ljava/lang/String;IZ)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lantlr/RuleBlock;-><init>(Lantlr/Grammar;Ljava/lang/String;)V

    .line 59
    iput p3, p0, Lantlr/RuleBlock;->line:I

    .line 60
    invoke-virtual {p0, p4}, Lantlr/RuleBlock;->setAutoGen(Z)V

    return-void
.end method


# virtual methods
.method public addExceptionSpec(Lantlr/ExceptionSpec;)V
    .locals 3

    .line 64
    iget-object v0, p1, Lantlr/ExceptionSpec;->label:Lantlr/Token;

    invoke-virtual {p0, v0}, Lantlr/RuleBlock;->findExceptionSpec(Lantlr/Token;)Lantlr/ExceptionSpec;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p1, Lantlr/ExceptionSpec;->label:Lantlr/Token;

    const-string v1, "Rule \'"

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/RuleBlock;->ruleName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' already has an exception handler for label: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p1, Lantlr/ExceptionSpec;->label:Lantlr/Token;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_0
    iget-object p1, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/RuleBlock;->ruleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' already has an exception handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_1
    iget-object v0, p0, Lantlr/RuleBlock;->exceptionSpecs:Ljava/util/Hashtable;

    iget-object v1, p1, Lantlr/ExceptionSpec;->label:Lantlr/Token;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lantlr/ExceptionSpec;->label:Lantlr/Token;

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public findExceptionSpec(Lantlr/Token;)Lantlr/ExceptionSpec;
    .locals 1

    .line 78
    iget-object v0, p0, Lantlr/RuleBlock;->exceptionSpecs:Ljava/util/Hashtable;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/ExceptionSpec;

    return-object p1
.end method

.method public findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;
    .locals 1

    .line 82
    iget-object v0, p0, Lantlr/RuleBlock;->exceptionSpecs:Ljava/util/Hashtable;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/ExceptionSpec;

    return-object p1
.end method

.method public generate()V
    .locals 1

    .line 86
    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->generator:Lantlr/CodeGenerator;

    invoke-virtual {v0, p0}, Lantlr/CodeGenerator;->gen(Lantlr/AlternativeBlock;)V

    return-void
.end method

.method public getDefaultErrorHandler()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lantlr/RuleBlock;->defaultErrorHandler:Z

    return v0
.end method

.method public getEndElement()Lantlr/RuleEndElement;
    .locals 1

    .line 94
    iget-object v0, p0, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    return-object v0
.end method

.method public getIgnoreRule()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lantlr/RuleBlock;->ignoreRule:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lantlr/RuleBlock;->ruleName:Ljava/lang/String;

    return-object v0
.end method

.method public getTestLiterals()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lantlr/RuleBlock;->testLiterals:Z

    return v0
.end method

.method public isLexerAutoGenRule()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lantlr/RuleBlock;->ruleName:Ljava/lang/String;

    const-string v1, "nextToken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public look(I)Lantlr/Lookahead;
    .locals 1

    .line 114
    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p1, p0}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/RuleBlock;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public prepareForAnalysis()V
    .locals 1

    .line 118
    invoke-super {p0}, Lantlr/AlternativeBlock;->prepareForAnalysis()V

    .line 119
    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lantlr/RuleBlock;->lock:[Z

    return-void
.end method

.method public setDefaultErrorHandler(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lantlr/RuleBlock;->defaultErrorHandler:Z

    return-void
.end method

.method public setEndElement(Lantlr/RuleEndElement;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    return-void
.end method

.method public setOption(Lantlr/Token;Lantlr/Token;)V
    .locals 6

    .line 132
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "defaultErrorHandler"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "false"

    const-string v4, "true"

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iput-boolean v2, p0, Lantlr/RuleBlock;->defaultErrorHandler:Z

    goto/16 :goto_0

    .line 136
    :cond_0
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 137
    iput-boolean v1, p0, Lantlr/RuleBlock;->defaultErrorHandler:Z

    goto/16 :goto_0

    .line 140
    :cond_1
    iget-object p2, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v2, "Value for defaultErrorHandler must be true or false"

    invoke-virtual {p2, v2, v0, v1, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 143
    :cond_2
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v5, "testLiterals"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-nez v0, :cond_3

    .line 145
    iget-object p2, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v2, "testLiterals option only valid for lexer rules"

    invoke-virtual {p2, v2, v0, v1, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 148
    :cond_3
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    iput-boolean v2, p0, Lantlr/RuleBlock;->testLiterals:Z

    goto/16 :goto_0

    .line 151
    :cond_4
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 152
    iput-boolean v1, p0, Lantlr/RuleBlock;->testLiterals:Z

    goto/16 :goto_0

    .line 155
    :cond_5
    iget-object p2, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v2, "Value for testLiterals must be true or false"

    invoke-virtual {p2, v2, v0, v1, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 159
    :cond_6
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ignore"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-nez v0, :cond_7

    .line 161
    iget-object p2, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v2, "ignore option only valid for lexer rules"

    invoke-virtual {p2, v2, v0, v1, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 164
    :cond_7
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/RuleBlock;->ignoreRule:Ljava/lang/String;

    goto/16 :goto_0

    .line 167
    :cond_8
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v5, "paraphrase"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 168
    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-nez v0, :cond_9

    .line 169
    iget-object p2, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v2, "paraphrase option only valid for lexer rules"

    invoke-virtual {p2, v2, v0, v1, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 173
    :cond_9
    iget-object p1, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    iget-object v0, p0, Lantlr/RuleBlock;->ruleName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object p1

    if-nez p1, :cond_a

    .line 175
    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "cannot find token associated with rule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/RuleBlock;->ruleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 177
    :cond_a
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/TokenSymbol;->setParaphrase(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_b
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v5, "generateAmbigWarnings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 181
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 182
    iput-boolean v2, p0, Lantlr/RuleBlock;->generateAmbigWarnings:Z

    goto :goto_0

    .line 184
    :cond_c
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 185
    iput-boolean v1, p0, Lantlr/RuleBlock;->generateAmbigWarnings:Z

    goto :goto_0

    .line 188
    :cond_d
    iget-object p2, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v2, "Value for generateAmbigWarnings must be true or false"

    invoke-virtual {p2, v2, v0, v1, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 192
    :cond_e
    iget-object p2, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Invalid rule option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

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
    .locals 7

    .line 198
    iget-object v0, p0, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    iget-object v0, v0, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    .line 199
    iget-object v1, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget v1, v1, Lantlr/Grammar;->maxk:I

    const/4 v2, 0x1

    const-string v3, " FOLLOW={"

    move-object v4, v3

    const/4 v3, 0x1

    :goto_0
    if-gt v2, v1, :cond_2

    .line 202
    aget-object v5, v0, v2

    if-nez v5, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v0, v2

    iget-object v5, p0, Lantlr/RuleBlock;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v5}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v4, v6, v5}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/collections/impl/Vector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-ge v2, v1, :cond_1

    add-int/lit8 v5, v2, 0x1

    .line 205
    aget-object v5, v0, v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object v4, v3

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_3

    const-string v0, ""

    .line 209
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lantlr/RuleBlock;->ruleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Lantlr/AlternativeBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
