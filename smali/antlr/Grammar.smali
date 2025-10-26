.class public abstract Lantlr/Grammar;
.super Ljava/lang/Object;
.source "Grammar.java"


# instance fields
.field protected analyzerDebug:Z

.field protected antlrTool:Lantlr/Tool;

.field protected buildAST:Z

.field protected classMemberAction:Lantlr/Token;

.field protected className:Ljava/lang/String;

.field protected comment:Ljava/lang/String;

.field protected debuggingOutput:Z

.field protected defaultErrorHandler:Z

.field protected exportVocab:Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field protected generator:Lantlr/CodeGenerator;

.field protected hasSyntacticPredicate:Z

.field protected hasUserErrorHandling:Z

.field protected importVocab:Ljava/lang/String;

.field protected interactive:Z

.field protected maxk:I

.field protected options:Ljava/util/Hashtable;

.field protected preambleAction:Lantlr/Token;

.field protected rules:Lantlr/collections/impl/Vector;

.field protected superClass:Ljava/lang/String;

.field protected symbols:Ljava/util/Hashtable;

.field protected theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

.field protected tokenManager:Lantlr/TokenManager;

.field protected traceRules:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lantlr/Tool;Ljava/lang/String;)V
    .locals 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lantlr/Grammar;->buildAST:Z

    .line 27
    iput-boolean v0, p0, Lantlr/Grammar;->analyzerDebug:Z

    .line 28
    iput-boolean v0, p0, Lantlr/Grammar;->interactive:Z

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lantlr/Grammar;->superClass:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    .line 52
    new-instance v2, Lantlr/CommonToken;

    const-string v3, ""

    invoke-direct {v2, v0, v3}, Lantlr/CommonToken;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    .line 53
    iput-object v1, p0, Lantlr/Grammar;->className:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lantlr/Grammar;->fileName:Ljava/lang/String;

    .line 55
    new-instance v2, Lantlr/CommonToken;

    invoke-direct {v2, v0, v3}, Lantlr/CommonToken;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    .line 56
    iput-boolean v0, p0, Lantlr/Grammar;->hasSyntacticPredicate:Z

    .line 57
    iput-boolean v0, p0, Lantlr/Grammar;->hasUserErrorHandling:Z

    const/4 v2, 0x1

    .line 60
    iput v2, p0, Lantlr/Grammar;->maxk:I

    .line 63
    iput-boolean v0, p0, Lantlr/Grammar;->traceRules:Z

    .line 64
    iput-boolean v0, p0, Lantlr/Grammar;->debuggingOutput:Z

    .line 65
    iput-boolean v2, p0, Lantlr/Grammar;->defaultErrorHandler:Z

    .line 67
    iput-object v1, p0, Lantlr/Grammar;->comment:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lantlr/Grammar;->className:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    .line 72
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lantlr/Grammar;->symbols:Ljava/util/Hashtable;

    .line 73
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    .line 74
    new-instance p1, Lantlr/collections/impl/Vector;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Lantlr/collections/impl/Vector;-><init>(I)V

    iput-object p1, p0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    .line 75
    iput-object p3, p0, Lantlr/Grammar;->superClass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public define(Lantlr/RuleSymbol;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lantlr/Grammar;->symbols:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract generate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lantlr/Grammar;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultErrorHandler()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lantlr/Grammar;->defaultErrorHandler:Z

    return v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lantlr/Grammar;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntegerOption(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/Token;

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Lantlr/Token;->getType()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1
.end method

.method public getOption(Ljava/lang/String;)Lantlr/Token;
    .locals 1

    .line 122
    iget-object v0, p0, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/Token;

    return-object p1
.end method

.method protected abstract getSuperClass()Ljava/lang/String;
.end method

.method public getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;
    .locals 1

    .line 129
    iget-object v0, p0, Lantlr/Grammar;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/GrammarSymbol;

    return-object p1
.end method

.method public getSymbols()Ljava/util/Enumeration;
    .locals 1

    .line 133
    iget-object v0, p0, Lantlr/Grammar;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hasOption(Ljava/lang/String;)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isDefined(Ljava/lang/String;)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lantlr/Grammar;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract processArguments([Ljava/lang/String;)V
.end method

.method public setCodeGenerator(Lantlr/CodeGenerator;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lantlr/Grammar;->generator:Lantlr/CodeGenerator;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lantlr/Grammar;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setGrammarAnalyzer(Lantlr/LLkGrammarAnalyzer;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    return-void
.end method

.method public setOption(Ljava/lang/String;Lantlr/Token;)Z
    .locals 6

    const-string v0, ")"

    .line 175
    iget-object v1, p0, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "k"

    .line 178
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 180
    :try_start_0
    invoke-virtual {p0, v2}, Lantlr/Grammar;->getIntegerOption(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lantlr/Grammar;->maxk:I

    if-gtz p1, :cond_0

    .line 182
    iget-object p1, p0, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "option \'k\' must be greater than 0 (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v3

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result v5

    invoke-virtual {p1, v1, v2, v3, v5}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 187
    iput v4, p0, Lantlr/Grammar;->maxk:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    iget-object p1, p0, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "option \'k\' must be an integer (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    invoke-virtual {p1, v0, v1, v2, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v0, "codeGenMakeSwitchThreshold"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    :try_start_1
    invoke-virtual {p0, v0}, Lantlr/Grammar;->getIntegerOption(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 200
    :catch_1
    iget-object p1, p0, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v2, "option \'codeGenMakeSwitchThreshold\' must be an integer"

    invoke-virtual {p1, v2, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_1
    return v4

    :cond_2
    const-string v0, "codeGenBitsetTestThreshold"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    :try_start_2
    invoke-virtual {p0, v0}, Lantlr/Grammar;->getIntegerOption(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 209
    :catch_2
    iget-object p1, p0, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v2, "option \'codeGenBitsetTestThreshold\' must be an integer"

    invoke-virtual {p1, v2, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_2
    return v4

    :cond_3
    const-string v0, "defaultErrorHandler"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "false"

    const-string v3, "true"

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    .line 214
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 215
    iput-boolean v4, p0, Lantlr/Grammar;->defaultErrorHandler:Z

    goto :goto_3

    .line 217
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 218
    iput-boolean v5, p0, Lantlr/Grammar;->defaultErrorHandler:Z

    goto :goto_3

    .line 221
    :cond_5
    iget-object p1, p0, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v2, "Value for defaultErrorHandler must be true or false"

    invoke-virtual {p1, v2, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_3
    return v4

    :cond_6
    const-string v0, "analyzerDebug"

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 227
    iput-boolean v4, p0, Lantlr/Grammar;->analyzerDebug:Z

    goto :goto_4

    .line 229
    :cond_7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 230
    iput-boolean v5, p0, Lantlr/Grammar;->analyzerDebug:Z

    goto :goto_4

    .line 233
    :cond_8
    iget-object p1, p0, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v2, "option \'analyzerDebug\' must be true or false"

    invoke-virtual {p1, v2, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_4
    return v4

    :cond_9
    const-string v0, "codeGenDebug"

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 238
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 239
    iput-boolean v4, p0, Lantlr/Grammar;->analyzerDebug:Z

    goto :goto_5

    .line 241
    :cond_a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 242
    iput-boolean v5, p0, Lantlr/Grammar;->analyzerDebug:Z

    goto :goto_5

    .line 245
    :cond_b
    iget-object p1, p0, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v2, "option \'codeGenDebug\' must be true or false"

    invoke-virtual {p1, v2, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_5
    return v4

    :cond_c
    const-string p2, "classHeaderSuffix"

    .line 249
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    return v4

    :cond_d
    const-string p2, "classHeaderPrefix"

    .line 252
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    return v4

    :cond_e
    const-string p2, "namespaceAntlr"

    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    return v4

    :cond_f
    const-string p2, "namespaceStd"

    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    return v4

    :cond_10
    const-string p2, "genHashLines"

    .line 261
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    return v4

    :cond_11
    const-string p2, "noConstructors"

    .line 264
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    return v4

    :cond_12
    return v5
.end method

.method public setTokenManager(Lantlr/TokenManager;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 276
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 277
    iget-object v1, p0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 278
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/RuleSymbol;

    .line 280
    iget-object v3, v2, Lantlr/RuleSymbol;->id:Ljava/lang/String;

    const-string v4, "mnextToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    invoke-virtual {v2}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v2

    invoke-virtual {v2}, Lantlr/RuleBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n\n"

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
