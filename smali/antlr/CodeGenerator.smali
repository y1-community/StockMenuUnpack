.class public abstract Lantlr/CodeGenerator;
.super Ljava/lang/Object;
.source "CodeGenerator.java"


# static fields
.field protected static final BITSET_OPTIMIZE_INIT_THRESHOLD:I = 0x8

.field protected static final DEFAULT_BITSET_TEST_THRESHOLD:I = 0x4

.field protected static final DEFAULT_MAKE_SWITCH_THRESHOLD:I = 0x2

.field private static OLD_ACTION_TRANSLATOR:Z = true

.field public static TokenTypesFileExt:Ljava/lang/String; = ".txt"

.field public static TokenTypesFileSuffix:Ljava/lang/String; = "TokenTypes"


# instance fields
.field protected DEBUG_CODE_GENERATOR:Z

.field protected analyzer:Lantlr/LLkGrammarAnalyzer;

.field protected antlrTool:Lantlr/Tool;

.field protected behavior:Lantlr/DefineGrammarSymbols;

.field protected bitsetTestThreshold:I

.field protected bitsetsUsed:Lantlr/collections/impl/Vector;

.field protected charFormatter:Lantlr/CharFormatter;

.field protected transient currentOutput:Ljava/io/PrintWriter;

.field protected grammar:Lantlr/Grammar;

.field protected makeSwitchThreshold:I

.field protected tabs:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    .line 77
    iput-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    const/4 v0, 0x2

    .line 94
    iput v0, p0, Lantlr/CodeGenerator;->makeSwitchThreshold:I

    const/4 v0, 0x4

    .line 102
    iput v0, p0, Lantlr/CodeGenerator;->bitsetTestThreshold:I

    return-void
.end method

.method public static decodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static elementsAreRange([I)Z
    .locals 6

    .line 192
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 195
    :cond_0
    aget v0, p0, v1

    .line 196
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v2, p0, v2

    .line 197
    array-length v4, p0

    const/4 v5, 0x2

    if-gt v4, v5, :cond_1

    return v1

    :cond_1
    sub-int/2addr v2, v0

    add-int/2addr v2, v3

    .line 201
    array-length v4, p0

    if-le v2, v4, :cond_2

    return v1

    :cond_2
    add-int/2addr v0, v3

    const/4 v2, 0x1

    .line 206
    :goto_0
    array-length v4, p0

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_4

    .line 207
    aget v4, p0, v2

    if-eq v0, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public static encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 453
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 585
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 587
    new-instance v1, Lantlr/collections/impl/Vector;

    invoke-direct {v1}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v1, p0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    const/4 v1, 0x0

    .line 588
    iput-object v1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 589
    iput-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    .line 590
    iput-boolean v0, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    const/4 v0, 0x2

    .line 591
    iput v0, p0, Lantlr/CodeGenerator;->makeSwitchThreshold:I

    const/4 v0, 0x4

    .line 592
    iput v0, p0, Lantlr/CodeGenerator;->bitsetTestThreshold:I

    return-void
.end method

.method public static reverseLexerRuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 596
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected _print(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected _printAction(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 135
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-le v2, v1, :cond_2

    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    if-gt v1, v2, :cond_5

    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    const/16 v6, 0xd

    if-eq v4, v6, :cond_3

    .line 161
    iget-object v5, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->print(C)V

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    if-gt v1, v2, :cond_4

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_2

    .line 165
    iget-object v4, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 166
    invoke-virtual {p0}, Lantlr/CodeGenerator;->printTabs()V

    :goto_3
    if-gt v1, v2, :cond_2

    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 174
    :cond_5
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected _println(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected extractIdOfAction(Lantlr/Token;)Ljava/lang/String;
    .locals 2

    .line 224
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lantlr/CodeGenerator;->extractIdOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected extractIdOfAction(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .line 237
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->removeAssignmentFromDeclaration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 249
    :cond_1
    iget-object p1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ill-formed action"

    invoke-virtual {p1, v1, v0, p2, p3}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    const-string p1, ""

    return-object p1
.end method

.method protected extractTypeOfAction(Lantlr/Token;)Ljava/lang/String;
    .locals 2

    .line 261
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lantlr/CodeGenerator;->extractTypeOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected extractTypeOfAction(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .line 273
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->removeAssignmentFromDeclaration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_0

    const/4 p2, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 280
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 285
    :cond_1
    iget-object p1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ill-formed action"

    invoke-virtual {p1, v1, v0, p2, p3}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    const-string p1, ""

    return-object p1
.end method

.method public abstract gen()V
.end method

.method public abstract gen(Lantlr/ActionElement;)V
.end method

.method public abstract gen(Lantlr/AlternativeBlock;)V
.end method

.method public abstract gen(Lantlr/BlockEndElement;)V
.end method

.method public abstract gen(Lantlr/CharLiteralElement;)V
.end method

.method public abstract gen(Lantlr/CharRangeElement;)V
.end method

.method public abstract gen(Lantlr/LexerGrammar;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract gen(Lantlr/OneOrMoreBlock;)V
.end method

.method public abstract gen(Lantlr/ParserGrammar;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract gen(Lantlr/RuleRefElement;)V
.end method

.method public abstract gen(Lantlr/StringLiteralElement;)V
.end method

.method public abstract gen(Lantlr/TokenRangeElement;)V
.end method

.method public abstract gen(Lantlr/TokenRefElement;)V
.end method

.method public abstract gen(Lantlr/TreeElement;)V
.end method

.method public abstract gen(Lantlr/TreeWalkerGrammar;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract gen(Lantlr/WildcardElement;)V
.end method

.method public abstract gen(Lantlr/ZeroOrMoreBlock;)V
.end method

.method protected genTokenInterchange(Lantlr/TokenManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/CodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, v0}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 375
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "// $ANTLR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/Tool;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v3, v2, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lantlr/Tool;->fileMinusPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "$"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 381
    iput v0, p0, Lantlr/CodeGenerator;->tabs:I

    .line 384
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "    // output token vocab name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    .line 387
    invoke-interface {p1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v0

    const/4 v1, 0x4

    .line 388
    :goto_0
    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 389
    invoke-virtual {v0, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 390
    iget-boolean v3, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v3, :cond_0

    .line 391
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "gen persistence file entry for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_5

    const-string v3, "<"

    .line 393
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "\""

    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "="

    if-eqz v3, :cond_2

    .line 396
    invoke-interface {p1, v2}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v3

    check-cast v3, Lantlr/StringLiteralSymbol;

    if-eqz v3, :cond_1

    .line 397
    iget-object v5, v3, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 398
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v3, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 400
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 403
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 405
    invoke-interface {p1, v2}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v3

    if-nez v3, :cond_3

    .line 407
    iget-object v3, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "undefined token symbol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 410
    :cond_3
    invoke-virtual {v3}, Lantlr/TokenSymbol;->getParaphrase()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 411
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lantlr/TokenSymbol;->getParaphrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->print(Ljava/lang/String;)V

    .line 414
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CodeGenerator;->println(Ljava/lang/String;)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 420
    :cond_6
    iget-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 421
    iput-object p1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public abstract getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getASTCreateString(Lantlr/collections/impl/Vector;)Ljava/lang/String;
.end method

.method protected getBitsetName(I)Ljava/lang/String;
    .locals 2

    .line 449
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_tokenSet_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFIRSTBitSet(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0, p1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object p1

    .line 562
    instance-of v0, p1, Lantlr/RuleSymbol;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 565
    :cond_0
    check-cast p1, Lantlr/RuleSymbol;

    invoke-virtual {p1}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object p1

    .line 566
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v0, p2, p1}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/RuleBlock;)Lantlr/Lookahead;

    move-result-object p1

    .line 567
    iget-object p1, p1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFOLLOWBitSet(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 550
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0, p1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object p1

    .line 551
    instance-of v0, p1, Lantlr/RuleSymbol;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 554
    :cond_0
    check-cast p1, Lantlr/RuleSymbol;

    invoke-virtual {p1}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object p1

    .line 555
    iget-object v0, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object p1, p1, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    invoke-interface {v0, p2, p1}, Lantlr/LLkGrammarAnalyzer;->FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;

    move-result-object p1

    .line 556
    iget-object p1, p1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result p1

    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract mapTreeId(Ljava/lang/String;Lantlr/ActionTransInfo;)Ljava/lang/String;
.end method

.method protected markBitsetForGen(Lantlr/collections/impl/BitSet;)I
    .locals 2

    const/4 v0, 0x0

    .line 484
    :goto_0
    iget-object v1, p0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 485
    iget-object v1, p0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/collections/impl/BitSet;

    .line 486
    invoke-virtual {p1, v1}, Lantlr/collections/impl/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 494
    iget-object p1, p0, Lantlr/CodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method protected print(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 503
    invoke-virtual {p0}, Lantlr/CodeGenerator;->printTabs()V

    .line 504
    iget-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected printAction(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 515
    invoke-virtual {p0}, Lantlr/CodeGenerator;->printTabs()V

    .line 516
    invoke-virtual {p0, p1}, Lantlr/CodeGenerator;->_printAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected printTabs()V
    .locals 3

    const/4 v0, 0x1

    .line 535
    :goto_0
    iget v1, p0, Lantlr/CodeGenerator;->tabs:I

    if-gt v0, v1, :cond_0

    .line 536
    iget-object v1, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected println(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 526
    invoke-virtual {p0}, Lantlr/CodeGenerator;->printTabs()V

    .line 527
    iget-object v0, p0, Lantlr/CodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;
.end method

.method public processStringForASTConstructor(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method protected removeAssignmentFromDeclaration(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3d

    .line 579
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public setAnalyzer(Lantlr/LLkGrammarAnalyzer;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lantlr/CodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    return-void
.end method

.method public setBehavior(Lantlr/DefineGrammarSymbols;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lantlr/CodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    return-void
.end method

.method protected setGrammar(Lantlr/Grammar;)V
    .locals 4

    .line 609
    invoke-direct {p0}, Lantlr/CodeGenerator;->reset()V

    .line 610
    iput-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    const-string v0, "codeGenMakeSwitchThreshold"

    .line 612
    invoke-virtual {p1, v0}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 614
    :try_start_0
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p1, v0}, Lantlr/Grammar;->getIntegerOption(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lantlr/CodeGenerator;->makeSwitchThreshold:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p1, v0}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object p1

    .line 619
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v3, "option \'codeGenMakeSwitchThreshold\' must be an integer"

    invoke-virtual {v0, v3, v1, v2, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 628
    :cond_0
    :goto_0
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    const-string v0, "codeGenBitsetTestThreshold"

    invoke-virtual {p1, v0}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 630
    :try_start_1
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p1, v0}, Lantlr/Grammar;->getIntegerOption(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lantlr/CodeGenerator;->bitsetTestThreshold:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 634
    :catch_1
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p1, v0}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object p1

    .line 635
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v3, "option \'codeGenBitsetTestThreshold\' must be an integer"

    invoke-virtual {v0, v3, v1, v2, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 644
    :cond_1
    :goto_1
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    const-string v0, "codeGenDebug"

    invoke-virtual {p1, v0}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 645
    iget-object p1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p1, v0}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object p1

    .line 646
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 648
    iput-boolean p1, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    goto :goto_2

    .line 650
    :cond_2
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 652
    iput-boolean p1, p0, Lantlr/CodeGenerator;->DEBUG_CODE_GENERATOR:Z

    goto :goto_2

    .line 655
    :cond_3
    iget-object v0, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v3, "option \'codeGenDebug\' must be true or false"

    invoke-virtual {v0, v3, v1, v2, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setTool(Lantlr/Tool;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lantlr/CodeGenerator;->antlrTool:Lantlr/Tool;

    return-void
.end method
