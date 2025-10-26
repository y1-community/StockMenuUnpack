.class Lantlr/preprocessor/Grammar;
.super Ljava/lang/Object;
.source "Grammar.java"


# instance fields
.field protected alreadyExpanded:Z

.field protected antlrTool:Lantlr/Tool;

.field protected exportVocab:Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field protected hier:Lantlr/preprocessor/Hierarchy;

.field protected importVocab:Ljava/lang/String;

.field protected memberAction:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected options:Lantlr/collections/impl/IndexedVector;

.field protected preambleAction:Ljava/lang/String;

.field protected predefined:Z

.field protected rules:Lantlr/collections/impl/IndexedVector;

.field protected specifiedVocabulary:Z

.field protected superClass:Ljava/lang/String;

.field protected superGrammar:Ljava/lang/String;

.field protected tokenSection:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lantlr/Tool;Ljava/lang/String;Ljava/lang/String;Lantlr/collections/impl/IndexedVector;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lantlr/preprocessor/Grammar;->predefined:Z

    .line 28
    iput-boolean v0, p0, Lantlr/preprocessor/Grammar;->alreadyExpanded:Z

    .line 29
    iput-boolean v0, p0, Lantlr/preprocessor/Grammar;->specifiedVocabulary:Z

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lantlr/preprocessor/Grammar;->superClass:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lantlr/preprocessor/Grammar;->importVocab:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lantlr/preprocessor/Grammar;->exportVocab:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lantlr/preprocessor/Grammar;->name:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lantlr/preprocessor/Grammar;->superGrammar:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lantlr/preprocessor/Grammar;->rules:Lantlr/collections/impl/IndexedVector;

    .line 44
    iput-object p1, p0, Lantlr/preprocessor/Grammar;->antlrTool:Lantlr/Tool;

    return-void
.end method


# virtual methods
.method public addOption(Lantlr/preprocessor/Option;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lantlr/preprocessor/Grammar;->options:Lantlr/collections/impl/IndexedVector;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lantlr/collections/impl/IndexedVector;

    invoke-direct {v0}, Lantlr/collections/impl/IndexedVector;-><init>()V

    iput-object v0, p0, Lantlr/preprocessor/Grammar;->options:Lantlr/collections/impl/IndexedVector;

    .line 51
    :cond_0
    iget-object v0, p0, Lantlr/preprocessor/Grammar;->options:Lantlr/collections/impl/IndexedVector;

    invoke-virtual {p1}, Lantlr/preprocessor/Option;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lantlr/collections/impl/IndexedVector;->appendElement(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addRule(Lantlr/preprocessor/Rule;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lantlr/preprocessor/Grammar;->rules:Lantlr/collections/impl/IndexedVector;

    invoke-virtual {p1}, Lantlr/preprocessor/Rule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lantlr/collections/impl/IndexedVector;->appendElement(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public expandInPlace()V
    .locals 6

    .line 65
    iget-boolean v0, p0, Lantlr/preprocessor/Grammar;->alreadyExpanded:Z

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lantlr/preprocessor/Grammar;->getSuperGrammar()Lantlr/preprocessor/Grammar;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lantlr/preprocessor/Grammar;->exportVocab:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 75
    invoke-virtual {p0}, Lantlr/preprocessor/Grammar;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lantlr/preprocessor/Grammar;->exportVocab:Ljava/lang/String;

    .line 77
    :cond_2
    invoke-virtual {v0}, Lantlr/preprocessor/Grammar;->isPredefined()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 79
    :cond_3
    invoke-virtual {v0}, Lantlr/preprocessor/Grammar;->expandInPlace()V

    const/4 v1, 0x1

    .line 82
    iput-boolean v1, p0, Lantlr/preprocessor/Grammar;->alreadyExpanded:Z

    .line 84
    iget-object v2, p0, Lantlr/preprocessor/Grammar;->hier:Lantlr/preprocessor/Hierarchy;

    invoke-virtual {p0}, Lantlr/preprocessor/Grammar;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lantlr/preprocessor/Hierarchy;->getFile(Ljava/lang/String;)Lantlr/preprocessor/GrammarFile;

    move-result-object v2

    .line 85
    invoke-virtual {v2, v1}, Lantlr/preprocessor/GrammarFile;->setExpanded(Z)V

    .line 88
    invoke-virtual {v0}, Lantlr/preprocessor/Grammar;->getRules()Lantlr/collections/impl/IndexedVector;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lantlr/collections/impl/IndexedVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/preprocessor/Rule;

    .line 91
    invoke-virtual {p0, v2, v0}, Lantlr/preprocessor/Grammar;->inherit(Lantlr/preprocessor/Rule;Lantlr/preprocessor/Grammar;)V

    goto :goto_0

    .line 96
    :cond_4
    invoke-virtual {v0}, Lantlr/preprocessor/Grammar;->getOptions()Lantlr/collections/impl/IndexedVector;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 98
    invoke-virtual {v1}, Lantlr/collections/impl/IndexedVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 99
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/preprocessor/Option;

    .line 100
    invoke-virtual {p0, v2, v0}, Lantlr/preprocessor/Grammar;->inherit(Lantlr/preprocessor/Option;Lantlr/preprocessor/Grammar;)V

    goto :goto_1

    .line 105
    :cond_5
    iget-object v1, p0, Lantlr/preprocessor/Grammar;->options:Lantlr/collections/impl/IndexedVector;

    const-string v2, "importVocab"

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Lantlr/collections/impl/IndexedVector;->getElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lantlr/preprocessor/Grammar;->options:Lantlr/collections/impl/IndexedVector;

    if-nez v1, :cond_9

    .line 107
    :cond_7
    new-instance v1, Lantlr/preprocessor/Option;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, v0, Lantlr/preprocessor/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lantlr/preprocessor/Option;-><init>(Ljava/lang/String;Ljava/lang/String;Lantlr/preprocessor/Grammar;)V

    .line 108
    invoke-virtual {p0, v1}, Lantlr/preprocessor/Grammar;->addOption(Lantlr/preprocessor/Option;)V

    .line 110
    invoke-virtual {v0}, Lantlr/preprocessor/Grammar;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lantlr/preprocessor/Grammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {v2, v1}, Lantlr/Tool;->pathToFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lantlr/preprocessor/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lantlr/CodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lantlr/preprocessor/Grammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {v3, v2}, Lantlr/Tool;->fileMinusPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "file.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 122
    :cond_8
    :try_start_0
    iget-object v1, p0, Lantlr/preprocessor/Grammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, v2, v3}, Lantlr/Tool;->copyFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 125
    :catch_0
    iget-object v0, p0, Lantlr/preprocessor/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "cannot find/copy importVocab file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->toolError(Ljava/lang/String;)V

    return-void

    .line 132
    :cond_9
    :goto_2
    iget-object v1, v0, Lantlr/preprocessor/Grammar;->memberAction:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lantlr/preprocessor/Grammar;->inherit(Ljava/lang/String;Lantlr/preprocessor/Grammar;)V

    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lantlr/preprocessor/Grammar;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lantlr/preprocessor/Grammar;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lantlr/collections/impl/IndexedVector;
    .locals 1

    .line 144
    iget-object v0, p0, Lantlr/preprocessor/Grammar;->options:Lantlr/collections/impl/IndexedVector;

    return-object v0
.end method

.method public getRules()Lantlr/collections/impl/IndexedVector;
    .locals 1

    .line 148
    iget-object v0, p0, Lantlr/preprocessor/Grammar;->rules:Lantlr/collections/impl/IndexedVector;

    return-object v0
.end method

.method public getSuperGrammar()Lantlr/preprocessor/Grammar;
    .locals 2

    .line 152
    iget-object v0, p0, Lantlr/preprocessor/Grammar;->superGrammar:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    iget-object v1, p0, Lantlr/preprocessor/Grammar;->hier:Lantlr/preprocessor/Hierarchy;

    invoke-virtual {v1, v0}, Lantlr/preprocessor/Hierarchy;->getGrammar(Ljava/lang/String;)Lantlr/preprocessor/Grammar;

    move-result-object v0

    return-object v0
.end method

.method public getSuperGrammarName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lantlr/preprocessor/Grammar;->superGrammar:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lantlr/preprocessor/Grammar;->type:Ljava/lang/String;

    return-object v0
.end method

.method public inherit(Lantlr/preprocessor/Option;Lantlr/preprocessor/Grammar;)V
    .locals 1

    .line 167
    invoke-virtual {p1}, Lantlr/preprocessor/Option;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "importVocab"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lantlr/preprocessor/Option;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "exportVocab"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 173
    iget-object v0, p0, Lantlr/preprocessor/Grammar;->options:Lantlr/collections/impl/IndexedVector;

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p1}, Lantlr/preprocessor/Option;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lantlr/collections/impl/IndexedVector;->getElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lantlr/preprocessor/Option;

    :cond_1
    if-nez p2, :cond_2

    .line 178
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Grammar;->addOption(Lantlr/preprocessor/Option;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public inherit(Lantlr/preprocessor/Rule;Lantlr/preprocessor/Grammar;)V
    .locals 4

    .line 184
    iget-object v0, p0, Lantlr/preprocessor/Grammar;->rules:Lantlr/collections/impl/IndexedVector;

    invoke-virtual {p1}, Lantlr/preprocessor/Rule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/collections/impl/IndexedVector;->getElement(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/preprocessor/Rule;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Lantlr/preprocessor/Rule;->sameSignature(Lantlr/preprocessor/Rule;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 189
    iget-object p1, p0, Lantlr/preprocessor/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "rule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/preprocessor/Grammar;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lantlr/preprocessor/Rule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " has different signature than "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/preprocessor/Grammar;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lantlr/preprocessor/Rule;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/preprocessor/Grammar;->addRule(Lantlr/preprocessor/Rule;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public inherit(Ljava/lang/String;Lantlr/preprocessor/Grammar;)V
    .locals 0

    .line 200
    iget-object p2, p0, Lantlr/preprocessor/Grammar;->memberAction:Ljava/lang/String;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 202
    iput-object p1, p0, Lantlr/preprocessor/Grammar;->memberAction:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public isPredefined()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lantlr/preprocessor/Grammar;->predefined:Z

    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lantlr/preprocessor/Grammar;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setHierarchy(Lantlr/preprocessor/Hierarchy;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lantlr/preprocessor/Grammar;->hier:Lantlr/preprocessor/Hierarchy;

    return-void
.end method

.method public setMemberAction(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lantlr/preprocessor/Grammar;->memberAction:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Lantlr/collections/impl/IndexedVector;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lantlr/preprocessor/Grammar;->options:Lantlr/collections/impl/IndexedVector;

    return-void
.end method

.method public setPreambleAction(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lantlr/preprocessor/Grammar;->preambleAction:Ljava/lang/String;

    return-void
.end method

.method public setPredefined(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lantlr/preprocessor/Grammar;->predefined:Z

    return-void
.end method

.method public setTokenSection(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lantlr/preprocessor/Grammar;->tokenSection:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lantlr/preprocessor/Grammar;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 243
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 244
    iget-object v1, p0, Lantlr/preprocessor/Grammar;->preambleAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    :cond_0
    iget-object v1, p0, Lantlr/preprocessor/Grammar;->superGrammar:Ljava/lang/String;

    const-string v2, ";"

    const-string v3, "class "

    if-nez v1, :cond_1

    .line 248
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/preprocessor/Grammar;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :cond_1
    iget-object v1, p0, Lantlr/preprocessor/Grammar;->superClass:Ljava/lang/String;

    const-string v4, " extends "

    if-eqz v1, :cond_2

    .line 253
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/preprocessor/Grammar;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/preprocessor/Grammar;->superClass:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 256
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/preprocessor/Grammar;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/preprocessor/Grammar;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    iget-object v1, p0, Lantlr/preprocessor/Grammar;->options:Lantlr/collections/impl/IndexedVector;

    if-eqz v1, :cond_3

    .line 262
    invoke-static {v1}, Lantlr/preprocessor/Hierarchy;->optionsToString(Lantlr/collections/impl/IndexedVector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    :cond_3
    iget-object v1, p0, Lantlr/preprocessor/Grammar;->tokenSection:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 265
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/preprocessor/Grammar;->tokenSection:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    :cond_4
    iget-object v1, p0, Lantlr/preprocessor/Grammar;->memberAction:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 268
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/preprocessor/Grammar;->memberAction:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const/4 v1, 0x0

    .line 270
    :goto_1
    iget-object v3, p0, Lantlr/preprocessor/Grammar;->rules:Lantlr/collections/impl/IndexedVector;

    invoke-virtual {v3}, Lantlr/collections/impl/IndexedVector;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 271
    iget-object v3, p0, Lantlr/preprocessor/Grammar;->rules:Lantlr/collections/impl/IndexedVector;

    invoke-virtual {v3, v1}, Lantlr/collections/impl/IndexedVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/preprocessor/Rule;

    .line 272
    invoke-virtual {p0}, Lantlr/preprocessor/Grammar;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lantlr/preprocessor/Rule;->enclosingGrammar:Lantlr/preprocessor/Grammar;

    invoke-virtual {v5}, Lantlr/preprocessor/Grammar;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 273
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "// inherited from grammar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v3, Lantlr/preprocessor/Rule;->enclosingGrammar:Lantlr/preprocessor/Grammar;

    invoke-virtual {v5}, Lantlr/preprocessor/Grammar;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    :cond_6
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 279
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
