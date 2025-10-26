.class public Lantlr/DocBookCodeGenerator;
.super Lantlr/CodeGenerator;
.source "DocBookCodeGenerator.java"


# instance fields
.field protected doingLexRules:Z

.field protected firstElementInAlt:Z

.field protected prevAltElem:Lantlr/AlternativeElement;

.field protected syntacticPredLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lantlr/CodeGenerator;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lantlr/DocBookCodeGenerator;->syntacticPredLevel:I

    .line 28
    iput-boolean v0, p0, Lantlr/DocBookCodeGenerator;->doingLexRules:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lantlr/DocBookCodeGenerator;->prevAltElem:Lantlr/AlternativeElement;

    .line 40
    new-instance v0, Lantlr/JavaCharFormatter;

    invoke-direct {v0}, Lantlr/JavaCharFormatter;-><init>()V

    iput-object v0, p0, Lantlr/DocBookCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    return-void
.end method

.method static HTMLEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 51
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x26

    if-ne v3, v4, :cond_0

    const-string v3, "&amp;"

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    const-string v3, "&quot;"

    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v4, 0x27

    if-ne v3, v4, :cond_2

    const-string v3, "&#039;"

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_3

    const-string v3, "&lt;"

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_4

    const-string v3, "&gt;"

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static QuoteForId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_0

    const-string v3, "."

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public gen()V
    .locals 3

    .line 89
    :try_start_0
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 90
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Grammar;

    .line 98
    invoke-virtual {v1, p0}, Lantlr/Grammar;->setCodeGenerator(Lantlr/CodeGenerator;)V

    .line 101
    invoke-virtual {v1}, Lantlr/Grammar;->generate()V

    .line 103
    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1}, Lantlr/Tool;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v2, "Exiting due to errors."

    invoke-virtual {v1, v2}, Lantlr/Tool;->fatalError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->antlrTool:Lantlr/Tool;

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

    .line 126
    invoke-virtual {p0, p1, v0}, Lantlr/DocBookCodeGenerator;->genGenericBlock(Lantlr/AlternativeBlock;Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/BlockEndElement;)V
    .locals 0

    return-void
.end method

.method public gen(Lantlr/CharLiteralElement;)V
    .locals 1

    .line 142
    iget-boolean v0, p1, Lantlr/CharLiteralElement;->not:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "~"

    .line 143
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p1, p1, Lantlr/CharLiteralElement;->atomText:Ljava/lang/String;

    invoke-static {p1}, Lantlr/DocBookCodeGenerator;->HTMLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/CharRangeElement;)V
    .locals 2

    .line 152
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

    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/LexerGrammar;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 158
    iget-object p1, p0, Lantlr/DocBookCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Generating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/DocBookCodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->reportProgress(Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lantlr/DocBookCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/DocBookCodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lantlr/DocBookCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 p1, 0x0

    .line 162
    iput p1, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lantlr/DocBookCodeGenerator;->doingLexRules:Z

    .line 166
    invoke-virtual {p0}, Lantlr/DocBookCodeGenerator;->genHeader()V

    const-string v0, ""

    .line 173
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-static {v0}, Lantlr/DocBookCodeGenerator;->HTMLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<para>Definition of lexer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", which is a subclass of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".</para>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lantlr/DocBookCodeGenerator;->genNextToken()V

    .line 217
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 218
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/RuleSymbol;

    .line 220
    iget-object v2, v1, Lantlr/RuleSymbol;->id:Ljava/lang/String;

    const-string v3, "mnextToken"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    invoke-virtual {p0, v1}, Lantlr/DocBookCodeGenerator;->genRule(Lantlr/RuleSymbol;)V

    goto :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lantlr/DocBookCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 228
    iput-boolean p1, p0, Lantlr/DocBookCodeGenerator;->doingLexRules:Z

    return-void
.end method

.method public gen(Lantlr/OneOrMoreBlock;)V
    .locals 1

    const-string v0, "+"

    .line 235
    invoke-virtual {p0, p1, v0}, Lantlr/DocBookCodeGenerator;->genGenericBlock(Lantlr/AlternativeBlock;Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/ParserGrammar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 242
    iget-object p1, p0, Lantlr/DocBookCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Generating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".sgml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->reportProgress(Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lantlr/DocBookCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lantlr/DocBookCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 p1, 0x0

    .line 245
    iput p1, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    .line 248
    invoke-virtual {p0}, Lantlr/DocBookCodeGenerator;->genHeader()V

    const-string p1, ""

    .line 251
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-static {v0}, Lantlr/DocBookCodeGenerator;->HTMLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<para>Definition of parser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", which is a subclass of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".</para>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 262
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 265
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/GrammarSymbol;

    .line 267
    instance-of v2, v1, Lantlr/RuleSymbol;

    if-eqz v2, :cond_1

    .line 268
    check-cast v1, Lantlr/RuleSymbol;

    invoke-virtual {p0, v1}, Lantlr/DocBookCodeGenerator;->genRule(Lantlr/RuleSymbol;)V

    goto :goto_0

    .line 271
    :cond_2
    iget v0, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    .line 272
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lantlr/DocBookCodeGenerator;->genTail()V

    .line 277
    iget-object p1, p0, Lantlr/DocBookCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 278
    iput-object p1, p0, Lantlr/DocBookCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public gen(Lantlr/RuleRefElement;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 288
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<link linkend=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-static {v1}, Lantlr/DocBookCodeGenerator;->QuoteForId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    .line 289
    iget-object p1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    const-string p1, "</link>"

    .line 290
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    const-string p1, " "

    .line 295
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/StringLiteralElement;)V
    .locals 1

    .line 302
    iget-boolean v0, p1, Lantlr/StringLiteralElement;->not:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "~"

    .line 303
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    .line 305
    :cond_0
    iget-object p1, p1, Lantlr/StringLiteralElement;->atomText:Ljava/lang/String;

    invoke-static {p1}, Lantlr/DocBookCodeGenerator;->HTMLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    const-string p1, " "

    .line 306
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TokenRangeElement;)V
    .locals 2

    .line 313
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

    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TokenRefElement;)V
    .locals 1

    .line 320
    iget-boolean v0, p1, Lantlr/TokenRefElement;->not:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "~"

    .line 321
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    .line 323
    :cond_0
    iget-object p1, p1, Lantlr/TokenRefElement;->atomText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    const-string p1, " "

    .line 324
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TreeElement;)V
    .locals 1

    .line 328
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TreeWalkerGrammar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 335
    iget-object p1, p0, Lantlr/DocBookCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Generating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".sgml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->reportProgress(Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lantlr/DocBookCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lantlr/DocBookCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 p1, 0x0

    .line 339
    iput p1, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    .line 342
    invoke-virtual {p0}, Lantlr/DocBookCodeGenerator;->genHeader()V

    const-string p1, ""

    .line 345
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-static {v0}, Lantlr/DocBookCodeGenerator;->HTMLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<para>Definition of tree parser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", which is a subclass of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".</para>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 375
    iget v0, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    .line 378
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 379
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 382
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/GrammarSymbol;

    .line 384
    instance-of v2, v1, Lantlr/RuleSymbol;

    if-eqz v2, :cond_1

    .line 385
    check-cast v1, Lantlr/RuleSymbol;

    invoke-virtual {p0, v1}, Lantlr/DocBookCodeGenerator;->genRule(Lantlr/RuleSymbol;)V

    goto :goto_0

    .line 388
    :cond_2
    iget v0, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    .line 389
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lantlr/DocBookCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 397
    iput-object p1, p0, Lantlr/DocBookCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public gen(Lantlr/WildcardElement;)V
    .locals 0

    const-string p1, ". "

    .line 407
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/ZeroOrMoreBlock;)V
    .locals 1

    const-string v0, "*"

    .line 414
    invoke-virtual {p0, p1, v0}, Lantlr/DocBookCodeGenerator;->genGenericBlock(Lantlr/AlternativeBlock;Ljava/lang/String;)V

    return-void
.end method

.method protected genAlt(Lantlr/Alternative;)V
    .locals 1

    .line 418
    invoke-virtual {p1}, Lantlr/Alternative;->getTreeSpecifier()Lantlr/Token;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p1}, Lantlr/Alternative;->getTreeSpecifier()Lantlr/Token;

    move-result-object v0

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lantlr/DocBookCodeGenerator;->prevAltElem:Lantlr/AlternativeElement;

    .line 422
    iget-object p1, p1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 423
    :goto_0
    instance-of v0, p1, Lantlr/BlockEndElement;

    if-nez v0, :cond_1

    .line 425
    invoke-virtual {p1}, Lantlr/AlternativeElement;->generate()V

    const/4 v0, 0x0

    .line 426
    iput-boolean v0, p0, Lantlr/DocBookCodeGenerator;->firstElementInAlt:Z

    .line 427
    iput-object p1, p0, Lantlr/DocBookCodeGenerator;->prevAltElem:Lantlr/AlternativeElement;

    .line 424
    iget-object p1, p1, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public genCommonBlock(Lantlr/AlternativeBlock;)V
    .locals 5

    .line 448
    iget-object v0, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "<itemizedlist mark=\"none\">"

    .line 449
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 450
    :goto_0
    iget-object v2, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 451
    invoke-virtual {p1, v0}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    .line 452
    iget-object v3, v2, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 454
    iget-object v3, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v3}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    const-string v3, "<listitem><para>"

    .line 455
    invoke-virtual {p0, v3}, Lantlr/DocBookCodeGenerator;->print(Ljava/lang/String;)V

    :cond_1
    if-lez v0, :cond_2

    .line 458
    iget-object v3, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v3}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    if-le v3, v1, :cond_2

    const-string/jumbo v3, "| "

    .line 459
    invoke-virtual {p0, v3}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    .line 464
    :cond_2
    iget-boolean v3, p0, Lantlr/DocBookCodeGenerator;->firstElementInAlt:Z

    .line 465
    iput-boolean v1, p0, Lantlr/DocBookCodeGenerator;->firstElementInAlt:Z

    .line 466
    iget v4, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    add-int/2addr v4, v1

    iput v4, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    .line 468
    invoke-virtual {p0, v2}, Lantlr/DocBookCodeGenerator;->genAlt(Lantlr/Alternative;)V

    .line 469
    iget v2, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    sub-int/2addr v2, v1

    iput v2, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    .line 470
    iput-boolean v3, p0, Lantlr/DocBookCodeGenerator;->firstElementInAlt:Z

    .line 471
    iget-object v2, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    const-string v2, "</para></listitem>"

    .line 472
    invoke-virtual {p0, v2}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_4
    iget-object p1, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result p1

    if-le p1, v1, :cond_5

    const-string p1, "</itemizedlist>"

    .line 475
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public genFollowSetForRuleBlock(Lantlr/RuleBlock;)V
    .locals 2

    .line 483
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object p1, p1, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lantlr/LLkGrammarAnalyzer;->FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;

    move-result-object p1

    .line 484
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    invoke-virtual {p0, v0, v1, p1}, Lantlr/DocBookCodeGenerator;->printSet(IILantlr/Lookahead;)V

    return-void
.end method

.method protected genGenericBlock(Lantlr/AlternativeBlock;Ljava/lang/String;)V
    .locals 5

    .line 488
    iget-object v0, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-le v0, v1, :cond_1

    .line 490
    invoke-virtual {p0, v2}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    .line 491
    iget-boolean v0, p0, Lantlr/DocBookCodeGenerator;->firstElementInAlt:Z

    const-string v3, "("

    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p0, v3}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p0, v3}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "( "

    .line 511
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    .line 515
    :goto_0
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;)V

    .line 516
    iget-object v0, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    const-string v3, " "

    const-string v4, ")"

    if-le v0, v1, :cond_2

    .line 517
    invoke-virtual {p0, v2}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    .line 518
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/DocBookCodeGenerator;->print(Ljava/lang/String;)V

    .line 520
    iget-object p1, p1, Lantlr/AlternativeBlock;->next:Lantlr/AlternativeElement;

    instance-of p1, p1, Lantlr/BlockEndElement;

    if-nez p1, :cond_3

    .line 521
    invoke-virtual {p0, v2}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0, v2}, Lantlr/DocBookCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 526
    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected genHeader()V
    .locals 2

    const-string v0, "<?xml version=\"1.0\" standalone=\"no\"?>"

    .line 532
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "<!DOCTYPE book PUBLIC \"-//OASIS//DTD DocBook V3.1//EN\">"

    .line 533
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "<book lang=\"en\">"

    .line 534
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "<bookinfo>"

    .line 535
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<title>Grammar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  <author>"

    .line 537
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "    <firstname></firstname>"

    .line 538
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "    <othername></othername>"

    .line 539
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "    <surname></surname>"

    .line 540
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "    <affiliation>"

    .line 541
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "     <address>"

    .line 542
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "     <email></email>"

    .line 543
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "     </address>"

    .line 544
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "    </affiliation>"

    .line 545
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  </author>"

    .line 546
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  <othercredit>"

    .line 547
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "    <contrib>"

    .line 548
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 549
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "    Generated by <ulink url=\"http://www.ANTLR.org/\">ANTLR</ulink>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->antlrTool:Lantlr/Tool;

    sget-object v1, Lantlr/Tool;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "    from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, v1, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "    </contrib>"

    .line 551
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  </othercredit>"

    .line 552
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  <pubdate></pubdate>"

    .line 553
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  <abstract>"

    .line 554
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  <para>"

    .line 555
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  </para>"

    .line 556
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  </abstract>"

    .line 557
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "</bookinfo>"

    .line 558
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "<chapter>"

    .line 559
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "<title></title>"

    .line 560
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genLookaheadSetForAlt(Lantlr/Alternative;)V
    .locals 3

    .line 565
    iget-boolean v0, p0, Lantlr/DocBookCodeGenerator;->doingLexRules:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MATCHES ALL"

    .line 566
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 569
    :cond_0
    iget v0, p1, Lantlr/Alternative;->lookaheadDepth:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 573
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    :cond_1
    :goto_0
    if-gt v1, v0, :cond_2

    .line 576
    iget-object v2, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v2, v2, v1

    .line 577
    invoke-virtual {p0, v0, v1, v2}, Lantlr/DocBookCodeGenerator;->printSet(IILantlr/Lookahead;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public genLookaheadSetForBlock(Lantlr/AlternativeBlock;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 588
    :goto_0
    iget-object v2, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 589
    invoke-virtual {p1, v0}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    .line 590
    iget v3, v2, Lantlr/Alternative;->lookaheadDepth:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_0

    .line 591
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget v1, v0, Lantlr/Grammar;->maxk:I

    goto :goto_1

    .line 594
    :cond_0
    iget v3, v2, Lantlr/Alternative;->lookaheadDepth:I

    if-ge v1, v3, :cond_1

    .line 595
    iget v1, v2, Lantlr/Alternative;->lookaheadDepth:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-gt v0, v1, :cond_3

    .line 600
    iget-object v2, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v2, v0, p1}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object v2

    .line 601
    invoke-virtual {p0, v1, v0, v2}, Lantlr/DocBookCodeGenerator;->printSet(IILantlr/Lookahead;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public genNextToken()V
    .locals 3

    const-string v0, ""

    .line 610
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "/** Lexer nextToken rule:"

    .line 611
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, " *  The lexer nextToken rule is synthesized from all of the user-defined"

    .line 612
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, " *  lexer rules.  It logically consists of one big alternative block with"

    .line 613
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, " *  each user-defined rule being an alternative."

    .line 614
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, " */"

    .line 615
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    const-string v2, "nextToken"

    invoke-static {v0, v1, v2}, Lantlr/MakeGrammar;->createNextTokenRule(Lantlr/Grammar;Lantlr/collections/impl/Vector;Ljava/lang/String;)Lantlr/RuleBlock;

    move-result-object v0

    .line 622
    new-instance v1, Lantlr/RuleSymbol;

    const-string v2, "mnextToken"

    invoke-direct {v1, v2}, Lantlr/RuleSymbol;-><init>(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v1}, Lantlr/RuleSymbol;->setDefined()V

    .line 624
    invoke-virtual {v1, v0}, Lantlr/RuleSymbol;->setBlock(Lantlr/RuleBlock;)V

    const-string v2, "private"

    .line 625
    iput-object v2, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    .line 626
    iget-object v2, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2, v1}, Lantlr/Grammar;->define(Lantlr/RuleSymbol;)V

    .line 639
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;)V

    return-void
.end method

.method public genRule(Lantlr/RuleSymbol;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 646
    invoke-virtual {p1}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, ""

    .line 647
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 649
    iget-object v1, p1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "<para>"

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    const-string v3, "public"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 651
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " </para>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    .line 655
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "<section id=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lantlr/DocBookCodeGenerator;->QuoteForId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 656
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "<title>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "</title>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 657
    iget-object v1, p1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    const-string v3, "</para>"

    if-eqz v1, :cond_2

    .line 658
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    invoke-static {v4}, Lantlr/DocBookCodeGenerator;->HTMLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    .line 660
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p1}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v1

    .line 675
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    .line 676
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ":\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/DocBookCodeGenerator;->print(Ljava/lang/String;)V

    .line 677
    iget v2, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    .line 683
    invoke-virtual {p0, v1}, Lantlr/DocBookCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;)V

    .line 685
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    .line 687
    iget v0, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    .line 688
    invoke-virtual {p0, v3}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    .line 689
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "</section><!-- section \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\" -->"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected genSynPred(Lantlr/SynPredBlock;)V
    .locals 0

    return-void
.end method

.method public genTail()V
    .locals 1

    const-string v0, "</chapter>"

    .line 701
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "</book>"

    .line 702
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genTokenTypes(Lantlr/TokenManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Generating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/DocBookCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/DocBookCodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->reportProgress(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lantlr/DocBookCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/DocBookCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/DocBookCodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lantlr/DocBookCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 711
    iput v0, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    .line 714
    invoke-virtual {p0}, Lantlr/DocBookCodeGenerator;->genHeader()V

    const-string v0, ""

    .line 718
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "*** Tokens used by the parser"

    .line 719
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "This is a list of the token numeric values and the corresponding"

    .line 720
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "token identifiers.  Some tokens are literals, and because of that"

    .line 721
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "they have no identifiers.  Literals are double-quoted."

    .line 722
    invoke-virtual {p0, v0}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 723
    iget v0, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    .line 726
    invoke-interface {p1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object p1

    const/4 v0, 0x4

    .line 727
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 728
    invoke-virtual {p1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 730
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 735
    :cond_1
    iget p1, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    const-string p1, "*** End of tokens used by the parser"

    .line 736
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->println(Ljava/lang/String;)V

    .line 739
    iget-object p1, p0, Lantlr/DocBookCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 740
    iput-object p1, p0, Lantlr/DocBookCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

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

    .line 783
    iget-object p3, p3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {p3}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object p3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 786
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "k=="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, ": {"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "{ "

    .line 789
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->print(Ljava/lang/String;)V

    .line 791
    :goto_0
    array-length p1, p3

    const-string p2, ""

    const/4 v1, 0x5

    if-le p1, v1, :cond_1

    .line 792
    invoke-virtual {p0, p2}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    .line 793
    iget p1, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    add-int/2addr p1, v0

    iput p1, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    .line 794
    invoke-virtual {p0, p2}, Lantlr/DocBookCodeGenerator;->print(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 798
    :goto_1
    array-length v4, p3

    if-ge v2, v4, :cond_5

    add-int/2addr v3, v0

    if-le v3, v1, :cond_2

    .line 801
    invoke-virtual {p0, p2}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0, p2}, Lantlr/DocBookCodeGenerator;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 805
    :cond_2
    iget-boolean v4, p0, Lantlr/DocBookCodeGenerator;->doingLexRules:Z

    if-eqz v4, :cond_3

    .line 806
    iget-object v4, p0, Lantlr/DocBookCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    aget v5, p3, v2

    invoke-interface {v4, v5}, Lantlr/CharFormatter;->literalChar(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_2

    .line 809
    :cond_3
    iget-object v4, p0, Lantlr/DocBookCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v4}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v4

    aget v5, p3, v2

    invoke-virtual {v4, v5}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    .line 811
    :goto_2
    array-length v4, p3

    sub-int/2addr v4, v0

    if-eq v2, v4, :cond_4

    const-string v4, ", "

    .line 812
    invoke-virtual {p0, v4}, Lantlr/DocBookCodeGenerator;->_print(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 816
    :cond_5
    array-length p1, p3

    if-le p1, v1, :cond_6

    .line 817
    invoke-virtual {p0, p2}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    .line 818
    iget p1, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    sub-int/2addr p1, v0

    iput p1, p0, Lantlr/DocBookCodeGenerator;->tabs:I

    .line 819
    invoke-virtual {p0, p2}, Lantlr/DocBookCodeGenerator;->print(Ljava/lang/String;)V

    :cond_6
    const-string p1, " }"

    .line 821
    invoke-virtual {p0, p1}, Lantlr/DocBookCodeGenerator;->_println(Ljava/lang/String;)V

    return-void
.end method

.method protected processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
