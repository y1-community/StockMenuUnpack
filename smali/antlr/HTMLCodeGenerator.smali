.class public Lantlr/HTMLCodeGenerator;
.super Lantlr/CodeGenerator;
.source "HTMLCodeGenerator.java"


# instance fields
.field protected doingLexRules:Z

.field protected firstElementInAlt:Z

.field protected prevAltElem:Lantlr/AlternativeElement;

.field protected syntacticPredLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lantlr/CodeGenerator;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lantlr/HTMLCodeGenerator;->syntacticPredLevel:I

    .line 25
    iput-boolean v0, p0, Lantlr/HTMLCodeGenerator;->doingLexRules:Z

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lantlr/HTMLCodeGenerator;->prevAltElem:Lantlr/AlternativeElement;

    .line 37
    new-instance v0, Lantlr/JavaCharFormatter;

    invoke-direct {v0}, Lantlr/JavaCharFormatter;-><init>()V

    iput-object v0, p0, Lantlr/HTMLCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    return-void
.end method

.method static HTMLEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 48
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x26

    if-ne v3, v4, :cond_0

    const-string v3, "&amp;"

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    const-string v3, "&quot;"

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v4, 0x27

    if-ne v3, v4, :cond_2

    const-string v3, "&#039;"

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_3

    const-string v3, "&lt;"

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_4

    const-string v3, "&gt;"

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 60
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public gen()V
    .locals 3

    .line 69
    :try_start_0
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 70
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Grammar;

    .line 78
    invoke-virtual {v1, p0}, Lantlr/Grammar;->setCodeGenerator(Lantlr/CodeGenerator;)V

    .line 81
    invoke-virtual {v1}, Lantlr/Grammar;->generate()V

    .line 83
    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1}, Lantlr/Tool;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v2, "Exiting due to errors."

    invoke-virtual {v1, v2}, Lantlr/Tool;->fatalError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lantlr/Tool;->reportException(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public gen(Lantlr/ActionElement;)V
    .locals 0

    return-void
.end method

.method public gen(Lantlr/AlternativeBlock;)V
    .locals 1

    const-string v0, ""

    .line 106
    invoke-virtual {p0, p1, v0}, Lantlr/HTMLCodeGenerator;->genGenericBlock(Lantlr/AlternativeBlock;Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/BlockEndElement;)V
    .locals 0

    return-void
.end method

.method public gen(Lantlr/CharLiteralElement;)V
    .locals 1

    .line 122
    iget-boolean v0, p1, Lantlr/CharLiteralElement;->not:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "~"

    .line 123
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p1, p1, Lantlr/CharLiteralElement;->atomText:Ljava/lang/String;

    invoke-static {p1}, Lantlr/HTMLCodeGenerator;->HTMLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/CharRangeElement;)V
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/CharRangeElement;->beginText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p1, Lantlr/CharRangeElement;->endText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/LexerGrammar;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 138
    iget-object p1, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Generating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/HTMLCodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->reportProgress(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/HTMLCodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lantlr/HTMLCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 p1, 0x0

    .line 142
    iput p1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lantlr/HTMLCodeGenerator;->doingLexRules:Z

    .line 146
    invoke-virtual {p0}, Lantlr/HTMLCodeGenerator;->genHeader()V

    const-string v0, ""

    .line 153
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-static {v0}, Lantlr/HTMLCodeGenerator;->HTMLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Definition of lexer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", which is a subclass of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lantlr/HTMLCodeGenerator;->genNextToken()V

    .line 197
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 198
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/RuleSymbol;

    .line 200
    iget-object v2, v1, Lantlr/RuleSymbol;->id:Ljava/lang/String;

    const-string v3, "mnextToken"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    invoke-virtual {p0, v1}, Lantlr/HTMLCodeGenerator;->genRule(Lantlr/RuleSymbol;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lantlr/HTMLCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 208
    iput-boolean p1, p0, Lantlr/HTMLCodeGenerator;->doingLexRules:Z

    return-void
.end method

.method public gen(Lantlr/OneOrMoreBlock;)V
    .locals 1

    const-string v0, "+"

    .line 215
    invoke-virtual {p0, p1, v0}, Lantlr/HTMLCodeGenerator;->genGenericBlock(Lantlr/AlternativeBlock;Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/ParserGrammar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 222
    iget-object p1, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Generating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->reportProgress(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lantlr/HTMLCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 p1, 0x0

    .line 225
    iput p1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    .line 228
    invoke-virtual {p0}, Lantlr/HTMLCodeGenerator;->genHeader()V

    const-string p1, ""

    .line 231
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-static {v0}, Lantlr/HTMLCodeGenerator;->HTMLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Definition of parser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", which is a subclass of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 242
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 245
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/GrammarSymbol;

    .line 247
    instance-of v2, v1, Lantlr/RuleSymbol;

    if-eqz v2, :cond_1

    .line 248
    check-cast v1, Lantlr/RuleSymbol;

    invoke-virtual {p0, v1}, Lantlr/HTMLCodeGenerator;->genRule(Lantlr/RuleSymbol;)V

    goto :goto_0

    .line 251
    :cond_2
    iget v0, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    .line 252
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lantlr/HTMLCodeGenerator;->genTail()V

    .line 257
    iget-object p1, p0, Lantlr/HTMLCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 258
    iput-object p1, p0, Lantlr/HTMLCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public gen(Lantlr/RuleRefElement;)V
    .locals 2

    .line 265
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 268
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".html#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    .line 269
    iget-object p1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    const-string p1, "</a>"

    .line 270
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    const-string p1, " "

    .line 275
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/StringLiteralElement;)V
    .locals 1

    .line 282
    iget-boolean v0, p1, Lantlr/StringLiteralElement;->not:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "~"

    .line 283
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    .line 285
    :cond_0
    iget-object p1, p1, Lantlr/StringLiteralElement;->atomText:Ljava/lang/String;

    invoke-static {p1}, Lantlr/HTMLCodeGenerator;->HTMLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    const-string p1, " "

    .line 286
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TokenRangeElement;)V
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/TokenRangeElement;->beginText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p1, Lantlr/TokenRangeElement;->endText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TokenRefElement;)V
    .locals 1

    .line 300
    iget-boolean v0, p1, Lantlr/TokenRefElement;->not:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "~"

    .line 301
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    .line 303
    :cond_0
    iget-object p1, p1, Lantlr/TokenRefElement;->atomText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    const-string p1, " "

    .line 304
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TreeElement;)V
    .locals 1

    .line 308
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TreeWalkerGrammar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 315
    iget-object p1, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Generating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->reportProgress(Ljava/lang/String;)V

    .line 316
    iget-object p1, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lantlr/HTMLCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 p1, 0x0

    .line 319
    iput p1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    .line 322
    invoke-virtual {p0}, Lantlr/HTMLCodeGenerator;->genHeader()V

    const-string p1, ""

    .line 325
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-static {v0}, Lantlr/HTMLCodeGenerator;->HTMLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Definition of tree parser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", which is a subclass of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 355
    iget v0, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    .line 358
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 359
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 360
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 362
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/GrammarSymbol;

    .line 364
    instance-of v2, v1, Lantlr/RuleSymbol;

    if-eqz v2, :cond_1

    .line 365
    check-cast v1, Lantlr/RuleSymbol;

    invoke-virtual {p0, v1}, Lantlr/HTMLCodeGenerator;->genRule(Lantlr/RuleSymbol;)V

    goto :goto_0

    .line 368
    :cond_2
    iget v0, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    .line 369
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 376
    iget-object p1, p0, Lantlr/HTMLCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 377
    iput-object p1, p0, Lantlr/HTMLCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public gen(Lantlr/WildcardElement;)V
    .locals 0

    const-string p1, ". "

    .line 387
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/ZeroOrMoreBlock;)V
    .locals 1

    const-string v0, "*"

    .line 394
    invoke-virtual {p0, p1, v0}, Lantlr/HTMLCodeGenerator;->genGenericBlock(Lantlr/AlternativeBlock;Ljava/lang/String;)V

    return-void
.end method

.method protected genAlt(Lantlr/Alternative;)V
    .locals 1

    .line 398
    invoke-virtual {p1}, Lantlr/Alternative;->getTreeSpecifier()Lantlr/Token;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p1}, Lantlr/Alternative;->getTreeSpecifier()Lantlr/Token;

    move-result-object v0

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lantlr/HTMLCodeGenerator;->prevAltElem:Lantlr/AlternativeElement;

    .line 402
    iget-object p1, p1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 403
    :goto_0
    instance-of v0, p1, Lantlr/BlockEndElement;

    if-nez v0, :cond_1

    .line 405
    invoke-virtual {p1}, Lantlr/AlternativeElement;->generate()V

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lantlr/HTMLCodeGenerator;->firstElementInAlt:Z

    .line 407
    iput-object p1, p0, Lantlr/HTMLCodeGenerator;->prevAltElem:Lantlr/AlternativeElement;

    .line 404
    iget-object p1, p1, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public genCommonBlock(Lantlr/AlternativeBlock;)V
    .locals 5

    const/4 v0, 0x0

    .line 428
    :goto_0
    iget-object v1, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 429
    invoke-virtual {p1, v0}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    .line 430
    iget-object v2, v1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 433
    iget-object v3, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v3}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    const-string v3, ""

    .line 434
    invoke-virtual {p0, v3}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    const-string/jumbo v3, "|\t"

    .line 435
    invoke-virtual {p0, v3}, Lantlr/HTMLCodeGenerator;->print(Ljava/lang/String;)V

    .line 440
    :cond_0
    iget-boolean v3, p0, Lantlr/HTMLCodeGenerator;->firstElementInAlt:Z

    .line 441
    iput-boolean v2, p0, Lantlr/HTMLCodeGenerator;->firstElementInAlt:Z

    .line 442
    iget v4, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    add-int/2addr v4, v2

    iput v4, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    .line 456
    invoke-virtual {p0, v1}, Lantlr/HTMLCodeGenerator;->genAlt(Lantlr/Alternative;)V

    .line 457
    iget v1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    sub-int/2addr v1, v2

    iput v1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    .line 458
    iput-boolean v3, p0, Lantlr/HTMLCodeGenerator;->firstElementInAlt:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public genFollowSetForRuleBlock(Lantlr/RuleBlock;)V
    .locals 2

    .line 467
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object p1, p1, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lantlr/LLkGrammarAnalyzer;->FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;

    move-result-object p1

    .line 468
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    invoke-virtual {p0, v0, v1, p1}, Lantlr/HTMLCodeGenerator;->printSet(IILantlr/Lookahead;)V

    return-void
.end method

.method protected genGenericBlock(Lantlr/AlternativeBlock;Ljava/lang/String;)V
    .locals 5

    .line 472
    iget-object v0, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-le v0, v1, :cond_3

    .line 474
    iget-boolean v0, p0, Lantlr/HTMLCodeGenerator;->firstElementInAlt:Z

    const-string v3, "(\t"

    if-nez v0, :cond_2

    .line 476
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->prevAltElem:Lantlr/AlternativeElement;

    if-eqz v0, :cond_1

    instance-of v4, v0, Lantlr/AlternativeBlock;

    if-eqz v4, :cond_1

    check-cast v0, Lantlr/AlternativeBlock;

    iget-object v0, v0, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {p0, v3}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_1

    .line 479
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0, v3}, Lantlr/HTMLCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 489
    :cond_2
    invoke-virtual {p0, v3}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "( "

    .line 493
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    .line 497
    :goto_1
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;)V

    .line 498
    iget-object v0, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    const-string v3, " "

    const-string v4, ")"

    if-le v0, v1, :cond_4

    .line 499
    invoke-virtual {p0, v2}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    .line 500
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/HTMLCodeGenerator;->print(Ljava/lang/String;)V

    .line 502
    iget-object p1, p1, Lantlr/AlternativeBlock;->next:Lantlr/AlternativeElement;

    instance-of p1, p1, Lantlr/BlockEndElement;

    if-nez p1, :cond_5

    .line 503
    invoke-virtual {p0, v2}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, v2}, Lantlr/HTMLCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 508
    :cond_4
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected genHeader()V
    .locals 2

    const-string v0, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">"

    .line 514
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "<HTML>"

    .line 515
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "<HEAD>"

    .line 516
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 517
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<TITLE>Grammar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, v1, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</TITLE>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "</HEAD>"

    .line 518
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "<BODY>"

    .line 519
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "<table summary=\"\" border=\"1\" cellpadding=\"5\">"

    .line 520
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "<tr>"

    .line 521
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "<td>"

    .line 522
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<font size=\"+2\">Grammar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</font><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 524
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<a href=\"http://www.ANTLR.org\">ANTLR</a>-generated HTML file from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, v1, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "<p>"

    .line 525
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "Terence Parr, <a href=\"http://www.magelang.com\">MageLang Institute</a>"

    .line 526
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<br>ANTLR Version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    sget-object v1, Lantlr/Tool;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; 1989-1999"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "</td>"

    .line 528
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "</tr>"

    .line 529
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "</table>"

    .line 530
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "<PRE>"

    .line 531
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genLookaheadSetForAlt(Lantlr/Alternative;)V
    .locals 3

    .line 540
    iget-boolean v0, p0, Lantlr/HTMLCodeGenerator;->doingLexRules:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MATCHES ALL"

    .line 541
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 544
    :cond_0
    iget v0, p1, Lantlr/Alternative;->lookaheadDepth:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 548
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    :cond_1
    :goto_0
    if-gt v1, v0, :cond_2

    .line 551
    iget-object v2, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v2, v2, v1

    .line 552
    invoke-virtual {p0, v0, v1, v2}, Lantlr/HTMLCodeGenerator;->printSet(IILantlr/Lookahead;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public genLookaheadSetForBlock(Lantlr/AlternativeBlock;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 563
    :goto_0
    iget-object v2, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 564
    invoke-virtual {p1, v0}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    .line 565
    iget v3, v2, Lantlr/Alternative;->lookaheadDepth:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 566
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget v1, v0, Lantlr/Grammar;->maxk:I

    goto :goto_1

    .line 569
    :cond_0
    iget v3, v2, Lantlr/Alternative;->lookaheadDepth:I

    if-ge v1, v3, :cond_1

    .line 570
    iget v1, v2, Lantlr/Alternative;->lookaheadDepth:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-gt v0, v1, :cond_3

    .line 575
    iget-object v2, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v2, v0, p1}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object v2

    .line 576
    invoke-virtual {p0, v1, v0, v2}, Lantlr/HTMLCodeGenerator;->printSet(IILantlr/Lookahead;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public genNextToken()V
    .locals 3

    const-string v0, ""

    .line 585
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "/** Lexer nextToken rule:"

    .line 586
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, " *  The lexer nextToken rule is synthesized from all of the user-defined"

    .line 587
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, " *  lexer rules.  It logically consists of one big alternative block with"

    .line 588
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, " *  each user-defined rule being an alternative."

    .line 589
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, " */"

    .line 590
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    const-string v2, "nextToken"

    invoke-static {v0, v1, v2}, Lantlr/MakeGrammar;->createNextTokenRule(Lantlr/Grammar;Lantlr/collections/impl/Vector;Ljava/lang/String;)Lantlr/RuleBlock;

    move-result-object v0

    .line 597
    new-instance v1, Lantlr/RuleSymbol;

    const-string v2, "mnextToken"

    invoke-direct {v1, v2}, Lantlr/RuleSymbol;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v1}, Lantlr/RuleSymbol;->setDefined()V

    .line 599
    invoke-virtual {v1, v0}, Lantlr/RuleSymbol;->setBlock(Lantlr/RuleBlock;)V

    const-string v2, "private"

    .line 600
    iput-object v2, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    .line 601
    iget-object v2, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2, v1}, Lantlr/Grammar;->define(Lantlr/RuleSymbol;)V

    .line 614
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;)V

    return-void
.end method

.method public genRule(Lantlr/RuleSymbol;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 621
    invoke-virtual {p1}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, ""

    .line 622
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 623
    iget-object v1, p1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 624
    iget-object v1, p1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    invoke-static {v1}, Lantlr/HTMLCodeGenerator;->HTMLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    .line 626
    :cond_1
    iget-object v1, p1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 627
    iget-object v1, p1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    const-string v2, "public"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 628
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    .line 631
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<a name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    const-string v1, "</a>"

    .line 633
    invoke-virtual {p0, v1}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p1}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object p1

    .line 648
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    .line 649
    iget v1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    const-string v1, ":\t"

    .line 650
    invoke-virtual {p0, v1}, Lantlr/HTMLCodeGenerator;->print(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;)V

    .line 658
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    const-string p1, ";"

    .line 659
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 660
    iget p1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    :cond_3
    :goto_0
    return-void
.end method

.method protected genSynPred(Lantlr/SynPredBlock;)V
    .locals 1

    .line 668
    iget v0, p0, Lantlr/HTMLCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/HTMLCodeGenerator;->syntacticPredLevel:I

    const-string v0, " =>"

    .line 669
    invoke-virtual {p0, p1, v0}, Lantlr/HTMLCodeGenerator;->genGenericBlock(Lantlr/AlternativeBlock;Ljava/lang/String;)V

    .line 670
    iget p1, p0, Lantlr/HTMLCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/HTMLCodeGenerator;->syntacticPredLevel:I

    return-void
.end method

.method public genTail()V
    .locals 1

    const-string v0, "</PRE>"

    .line 674
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "</BODY>"

    .line 675
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "</HTML>"

    .line 676
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genTokenTypes(Lantlr/TokenManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Generating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/HTMLCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/HTMLCodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->reportProgress(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lantlr/HTMLCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/HTMLCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/HTMLCodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lantlr/HTMLCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 685
    iput v0, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    .line 688
    invoke-virtual {p0}, Lantlr/HTMLCodeGenerator;->genHeader()V

    const-string v0, ""

    .line 692
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "*** Tokens used by the parser"

    .line 693
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "This is a list of the token numeric values and the corresponding"

    .line 694
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "token identifiers.  Some tokens are literals, and because of that"

    .line 695
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "they have no identifiers.  Literals are double-quoted."

    .line 696
    invoke-virtual {p0, v0}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 697
    iget v0, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    .line 700
    invoke-interface {p1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object p1

    const/4 v0, 0x4

    .line 701
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 702
    invoke-virtual {p1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 704
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_1
    iget p1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    const-string p1, "*** End of tokens used by the parser"

    .line 710
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->println(Ljava/lang/String;)V

    .line 713
    iget-object p1, p0, Lantlr/HTMLCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 714
    iput-object p1, p0, Lantlr/HTMLCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getASTCreateString(Lantlr/collections/impl/Vector;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public mapTreeId(Ljava/lang/String;Lantlr/ActionTransInfo;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public printSet(IILantlr/Lookahead;)V
    .locals 6

    .line 757
    iget-object p3, p3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {p3}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object p3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 760
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "k=="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, ": {"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "{ "

    .line 763
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->print(Ljava/lang/String;)V

    .line 765
    :goto_0
    array-length p1, p3

    const-string p2, ""

    const/4 v1, 0x5

    if-le p1, v1, :cond_1

    .line 766
    invoke-virtual {p0, p2}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    .line 767
    iget p1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    add-int/2addr p1, v0

    iput p1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    .line 768
    invoke-virtual {p0, p2}, Lantlr/HTMLCodeGenerator;->print(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 772
    :goto_1
    array-length v4, p3

    if-ge v2, v4, :cond_5

    add-int/2addr v3, v0

    if-le v3, v1, :cond_2

    .line 775
    invoke-virtual {p0, p2}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0, p2}, Lantlr/HTMLCodeGenerator;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 779
    :cond_2
    iget-boolean v4, p0, Lantlr/HTMLCodeGenerator;->doingLexRules:Z

    if-eqz v4, :cond_3

    .line 780
    iget-object v4, p0, Lantlr/HTMLCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    aget v5, p3, v2

    invoke-interface {v4, v5}, Lantlr/CharFormatter;->literalChar(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_2

    .line 783
    :cond_3
    iget-object v4, p0, Lantlr/HTMLCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v4}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v4

    aget v5, p3, v2

    invoke-virtual {v4, v5}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    .line 785
    :goto_2
    array-length v4, p3

    sub-int/2addr v4, v0

    if-eq v2, v4, :cond_4

    const-string v4, ", "

    .line 786
    invoke-virtual {p0, v4}, Lantlr/HTMLCodeGenerator;->_print(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 790
    :cond_5
    array-length p1, p3

    if-le p1, v1, :cond_6

    .line 791
    invoke-virtual {p0, p2}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    .line 792
    iget p1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    sub-int/2addr p1, v0

    iput p1, p0, Lantlr/HTMLCodeGenerator;->tabs:I

    .line 793
    invoke-virtual {p0, p2}, Lantlr/HTMLCodeGenerator;->print(Ljava/lang/String;)V

    :cond_6
    const-string p1, " }"

    .line 795
    invoke-virtual {p0, p1}, Lantlr/HTMLCodeGenerator;->_println(Ljava/lang/String;)V

    return-void
.end method

.method protected processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
