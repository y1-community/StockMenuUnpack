.class public Lantlr/LLkAnalyzer;
.super Ljava/lang/Object;
.source "LLkAnalyzer.java"

# interfaces
.implements Lantlr/LLkGrammarAnalyzer;


# instance fields
.field public DEBUG_ANALYZER:Z

.field charFormatter:Lantlr/CharFormatter;

.field private currentBlock:Lantlr/AlternativeBlock;

.field protected grammar:Lantlr/Grammar;

.field protected lexicalAnalysis:Z

.field protected tool:Lantlr/Tool;


# direct methods
.method public constructor <init>(Lantlr/Tool;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    .line 26
    iput-object v1, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    .line 28
    iput-boolean v0, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    .line 30
    new-instance v0, Lantlr/JavaCharFormatter;

    invoke-direct {v0}, Lantlr/JavaCharFormatter;-><init>()V

    iput-object v0, p0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    .line 34
    iput-object p1, p0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    return-void
.end method

.method private getAltLookahead(Lantlr/AlternativeBlock;II)Lantlr/Lookahead;
    .locals 1

    .line 497
    invoke-virtual {p1, p2}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object p1

    .line 498
    iget-object p2, p1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 500
    iget-object v0, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v0, v0, p3

    if-nez v0, :cond_0

    .line 501
    invoke-virtual {p2, p3}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object p2

    .line 502
    iget-object p1, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aput-object p2, p1, p3

    goto :goto_0

    .line 505
    :cond_0
    iget-object p1, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object p2, p1, p3

    :goto_0
    return-object p2
.end method

.method public static lookaheadEquivForApproxAndFullAnalysis([Lantlr/Lookahead;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-gt v1, v2, :cond_1

    .line 987
    aget-object v2, p0, v1

    iget-object v2, v2, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    .line 988
    invoke-virtual {v2}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v2

    if-le v2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private removeCompetingPredictionSets(Lantlr/collections/impl/BitSet;Lantlr/AlternativeElement;)V
    .locals 2

    .line 1005
    iget-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iget v1, v0, Lantlr/AlternativeBlock;->analysisAlt:I

    invoke-virtual {v0, v1}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v0

    iget-object v0, v0, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 1007
    instance-of v1, v0, Lantlr/TreeElement;

    if-eqz v1, :cond_0

    .line 1008
    check-cast v0, Lantlr/TreeElement;

    iget-object v0, v0, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    if-eq v0, p2, :cond_1

    return-void

    :cond_0
    if-eq p2, v0, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 1015
    :goto_0
    iget-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iget v0, v0, Lantlr/AlternativeBlock;->analysisAlt:I

    if-ge p2, v0, :cond_2

    .line 1016
    iget-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    invoke-virtual {v0, p2}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v0

    iget-object v0, v0, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    const/4 v1, 0x1

    .line 1017
    invoke-virtual {v0, v1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object v0

    iget-object v0, v0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {p1, v0}, Lantlr/collections/impl/BitSet;->subtractInPlace(Lantlr/collections/impl/BitSet;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeCompetingPredictionSetsFromWildcard([Lantlr/Lookahead;Lantlr/AlternativeElement;I)V
    .locals 3

    const/4 p2, 0x1

    :goto_0
    if-gt p2, p3, :cond_1

    const/4 v0, 0x0

    .line 1030
    :goto_1
    iget-object v1, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iget v1, v1, Lantlr/AlternativeBlock;->analysisAlt:I

    if-ge v0, v1, :cond_0

    .line 1031
    iget-object v1, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    invoke-virtual {v1, v0}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    iget-object v1, v1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 1032
    aget-object v2, p1, p2

    iget-object v2, v2, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v1, p2}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object v1

    iget-object v1, v1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v2, v1}, Lantlr/collections/impl/BitSet;->subtractInPlace(Lantlr/collections/impl/BitSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1039
    iput-object v0, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    const/4 v1, 0x0

    .line 1040
    iput-boolean v1, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    .line 1041
    iput-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 1042
    iput-boolean v1, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    return-void
.end method


# virtual methods
.method public FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 371
    iget-object v3, v2, Lantlr/RuleEndElement;->block:Lantlr/AlternativeBlock;

    check-cast v3, Lantlr/RuleBlock;

    .line 374
    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    if-eqz v4, :cond_0

    .line 375
    invoke-virtual {v3}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {v3}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v3

    .line 381
    :goto_0
    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v5, ","

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "FOLLOW("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    :cond_1
    iget-object v4, v2, Lantlr/RuleEndElement;->lock:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_3

    .line 385
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "FOLLOW cycle to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    :cond_2
    new-instance v1, Lantlr/Lookahead;

    invoke-direct {v1, v3}, Lantlr/Lookahead;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 390
    :cond_3
    iget-object v4, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v4, v4, v1

    const/4 v6, 0x0

    const-string v7, "saving FOLLOW("

    const-string v8, ": "

    const-string v9, ") for "

    if-eqz v4, :cond_a

    .line 391
    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v4, :cond_4

    .line 392
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "cache entry FOLLOW("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v11, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v11, v11, v1

    iget-object v12, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v13, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v11, v5, v12, v13}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 395
    :cond_4
    iget-object v4, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v4, v4, v1

    iget-object v4, v4, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 396
    iget-object v2, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Lookahead;

    return-object v1

    .line 399
    :cond_5
    iget-object v4, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object v10, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v10, v10, v1

    iget-object v10, v10, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    invoke-virtual {v4, v10}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v4

    check-cast v4, Lantlr/RuleSymbol;

    .line 400
    invoke-virtual {v4}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v4

    iget-object v4, v4, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    .line 403
    iget-object v10, v4, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v10, v10, v1

    if-nez v10, :cond_6

    .line 405
    iget-object v2, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Lookahead;

    return-object v1

    .line 408
    :cond_6
    iget-boolean v10, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v11, ": from "

    if-eqz v10, :cond_7

    .line 409
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "combining FOLLOW("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v13, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v13, v13, v1

    iget-object v14, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v15, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v13, v5, v14, v15}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, " with FOLLOW for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v13, v4, Lantlr/RuleEndElement;->block:Lantlr/AlternativeBlock;

    check-cast v13, Lantlr/RuleBlock;

    invoke-virtual {v13}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v4, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v8, v8, v1

    iget-object v13, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v14, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v8, v5, v13, v14}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 412
    :cond_7
    iget-object v8, v4, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v8, v8, v1

    iget-object v8, v8, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 416
    iget-object v8, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v8, v8, v1

    iget-object v4, v4, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v4, v4, v1

    invoke-virtual {v8, v4}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    .line 417
    iget-object v4, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v4, v4, v1

    iput-object v6, v4, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    goto :goto_1

    .line 424
    :cond_8
    invoke-virtual {v0, v1, v4}, Lantlr/LLkAnalyzer;->FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;

    move-result-object v4

    .line 425
    iget-object v6, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v6, v6, v1

    invoke-virtual {v6, v4}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    .line 427
    iget-object v6, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v6, v6, v1

    iget-object v4, v4, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    iput-object v4, v6, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    .line 429
    :goto_1
    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v4, :cond_9

    .line 430
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v3, v3, v1

    iget-object v7, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v8, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v3, v5, v7, v8}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 434
    :cond_9
    iget-object v2, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Lookahead;

    return-object v1

    .line 438
    :cond_a
    iget-object v4, v2, Lantlr/RuleEndElement;->lock:[Z

    const/4 v10, 0x1

    aput-boolean v10, v4, v1

    .line 440
    new-instance v4, Lantlr/Lookahead;

    invoke-direct {v4}, Lantlr/Lookahead;-><init>()V

    .line 442
    iget-object v11, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v11, v3}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v11

    check-cast v11, Lantlr/RuleSymbol;

    const/4 v13, 0x0

    .line 445
    :goto_2
    invoke-virtual {v11}, Lantlr/RuleSymbol;->numReferences()I

    move-result v14

    if-ge v13, v14, :cond_f

    .line 446
    invoke-virtual {v11, v13}, Lantlr/RuleSymbol;->getReference(I)Lantlr/RuleRefElement;

    move-result-object v14

    .line 447
    iget-boolean v15, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v10, "] is "

    if-eqz v15, :cond_b

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "next["

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v14, Lantlr/RuleRefElement;->next:Lantlr/AlternativeElement;

    invoke-virtual {v6}, Lantlr/AlternativeElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    :cond_b
    iget-object v6, v14, Lantlr/RuleRefElement;->next:Lantlr/AlternativeElement;

    invoke-virtual {v6, v1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object v6

    .line 449
    iget-boolean v12, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v12, :cond_c

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "FIRST of next["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v15, "] ptr is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Lantlr/Lookahead;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    :cond_c
    iget-object v12, v6, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    if-eqz v12, :cond_d

    iget-object v12, v6, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x0

    .line 455
    iput-object v12, v6, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    goto :goto_3

    :cond_d
    const/4 v12, 0x0

    .line 458
    :goto_3
    invoke-virtual {v4, v6}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    .line 459
    iget-boolean v6, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v6, :cond_e

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "combined FOLLOW["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lantlr/Lookahead;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v13, v13, 0x1

    move-object v6, v12

    const/4 v10, 0x1

    goto/16 :goto_2

    .line 462
    :cond_f
    iget-object v6, v2, Lantlr/RuleEndElement;->lock:[Z

    const/4 v10, 0x0

    aput-boolean v10, v6, v1

    .line 466
    iget-object v6, v4, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v6}, Lantlr/collections/impl/BitSet;->nil()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, v4, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    if-nez v6, :cond_12

    .line 467
    iget-object v6, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    instance-of v10, v6, Lantlr/TreeWalkerGrammar;

    if-eqz v10, :cond_10

    .line 470
    iget-object v6, v4, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    const/4 v10, 0x3

    invoke-virtual {v6, v10}, Lantlr/collections/impl/BitSet;->add(I)V

    goto :goto_4

    .line 472
    :cond_10
    instance-of v6, v6, Lantlr/LexerGrammar;

    if-eqz v6, :cond_11

    .line 479
    invoke-virtual {v4}, Lantlr/Lookahead;->setEpsilon()V

    goto :goto_4

    .line 482
    :cond_11
    iget-object v6, v4, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lantlr/collections/impl/BitSet;->add(I)V

    .line 487
    :cond_12
    :goto_4
    iget-boolean v6, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v6, :cond_13

    .line 488
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v7, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v4, v5, v3, v7}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    :cond_13
    iget-object v2, v2, Lantlr/RuleEndElement;->cache:[Lantlr/Lookahead;

    invoke-virtual {v4}, Lantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/Lookahead;

    aput-object v3, v2, v1

    return-object v4
.end method

.method protected altUsesWildcardDefault(Lantlr/Alternative;)Z
    .locals 2

    .line 41
    iget-object p1, p1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 43
    instance-of v0, p1, Lantlr/TreeElement;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lantlr/TreeElement;

    iget-object v0, v0, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    instance-of v0, v0, Lantlr/WildcardElement;

    if-eqz v0, :cond_0

    return v1

    .line 47
    :cond_0
    instance-of v0, p1, Lantlr/WildcardElement;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    instance-of p1, p1, Lantlr/BlockEndElement;

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public deterministic(Lantlr/AlternativeBlock;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 59
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "deterministic("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    :cond_0
    iget-object v1, v9, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v10

    .line 62
    iget-object v11, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 64
    iput-object v9, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 67
    iget-boolean v1, v9, Lantlr/AlternativeBlock;->greedy:Z

    if-nez v1, :cond_1

    instance-of v1, v9, Lantlr/OneOrMoreBlock;

    if-nez v1, :cond_1

    instance-of v1, v9, Lantlr/ZeroOrMoreBlock;

    if-nez v1, :cond_1

    .line 68
    iget-object v1, v0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    iget-object v2, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getLine()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getColumn()I

    move-result v4

    const-string v5, "Being nongreedy only makes sense for (...)+ and (...)*"

    invoke-virtual {v1, v5, v2, v3, v4}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v10, v13, :cond_2

    .line 75
    invoke-virtual {v9, v12}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    iget-object v1, v1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 76
    iget-object v2, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v12, v2, Lantlr/AlternativeBlock;->alti:I

    .line 77
    invoke-virtual {v9, v12}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    iget-object v2, v2, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    invoke-virtual {v1, v13}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object v1

    aput-object v1, v2, v13

    .line 78
    invoke-virtual {v9, v12}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    iput v13, v1, Lantlr/Alternative;->lookaheadDepth:I

    .line 79
    iput-object v11, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    return v13

    :cond_2
    const/4 v1, 0x1

    const/4 v14, 0x0

    :goto_0
    add-int/lit8 v2, v10, -0x1

    if-ge v14, v2, :cond_15

    .line 85
    iget-object v2, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v14, v2, Lantlr/AlternativeBlock;->alti:I

    .line 86
    iget-object v2, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v14, v2, Lantlr/AlternativeBlock;->analysisAlt:I

    .line 87
    iget-object v2, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    add-int/lit8 v15, v14, 0x1

    iput v15, v2, Lantlr/AlternativeBlock;->altj:I

    move v8, v15

    :goto_1
    if-ge v8, v10, :cond_14

    .line 92
    iget-object v2, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v8, v2, Lantlr/AlternativeBlock;->altj:I

    .line 93
    iget-boolean v2, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "comparing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " against alt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    :cond_3
    iget-object v2, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v8, v2, Lantlr/AlternativeBlock;->analysisAlt:I

    .line 99
    iget-object v2, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v2, v2, Lantlr/Grammar;->maxk:I

    add-int/2addr v2, v13

    new-array v6, v2, [Lantlr/Lookahead;

    const/4 v2, 0x1

    .line 103
    :goto_2
    iget-boolean v3, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "checking depth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, "<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v5, v5, Lantlr/Grammar;->maxk:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    :cond_4
    invoke-direct {v0, v9, v14, v2}, Lantlr/LLkAnalyzer;->getAltLookahead(Lantlr/AlternativeBlock;II)Lantlr/Lookahead;

    move-result-object v3

    .line 106
    invoke-direct {v0, v9, v8, v2}, Lantlr/LLkAnalyzer;->getAltLookahead(Lantlr/AlternativeBlock;II)Lantlr/Lookahead;

    move-result-object v4

    .line 110
    iget-boolean v5, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v7, ","

    if-eqz v5, :cond_5

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "p is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v13, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    move/from16 v16, v1

    iget-object v1, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v3, v7, v13, v1}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move/from16 v16, v1

    .line 111
    :goto_3
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_6

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "q is "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v12, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v13, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v4, v7, v12, v13}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    :cond_6
    invoke-virtual {v3, v4}, Lantlr/Lookahead;->intersection(Lantlr/Lookahead;)Lantlr/Lookahead;

    move-result-object v1

    aput-object v1, v6, v2

    .line 114
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_7

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "intersection at depth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v6, v2

    invoke-virtual {v4}, Lantlr/Lookahead;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    :cond_7
    aget-object v1, v6, v2

    invoke-virtual {v1}, Lantlr/Lookahead;->nil()Z

    move-result v1

    if-nez v1, :cond_8

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_a

    .line 120
    iget-object v3, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    if-le v2, v3, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v1, v16

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_2

    .line 122
    :cond_a
    :goto_5
    invoke-virtual {v9, v14}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v3

    .line 123
    invoke-virtual {v9, v8}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v4

    if-eqz v1, :cond_13

    const v1, 0x7fffffff

    .line 126
    iput v1, v3, Lantlr/Alternative;->lookaheadDepth:I

    .line 127
    iput v1, v4, Lantlr/Alternative;->lookaheadDepth:I

    .line 135
    iget-object v1, v3, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    const-string v2, "alt "

    if-eqz v1, :cond_c

    .line 136
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_b

    .line 137
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " has a syn pred"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    :goto_6
    move v12, v8

    goto/16 :goto_7

    .line 150
    :cond_c
    iget-object v1, v3, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 151
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_b

    .line 152
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " has a sem pred"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 160
    :cond_d
    invoke-virtual {v0, v4}, Lantlr/LLkAnalyzer;->altUsesWildcardDefault(Lantlr/Alternative;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_6

    .line 170
    :cond_e
    iget-boolean v1, v9, Lantlr/AlternativeBlock;->warnWhenFollowAmbig:Z

    if-nez v1, :cond_f

    iget-object v1, v3, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-nez v1, :cond_b

    iget-object v1, v4, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-eqz v1, :cond_f

    goto :goto_6

    .line 180
    :cond_f
    iget-boolean v1, v9, Lantlr/AlternativeBlock;->generateAmbigWarnings:Z

    if-nez v1, :cond_10

    goto :goto_6

    .line 184
    :cond_10
    iget-boolean v1, v9, Lantlr/AlternativeBlock;->greedySet:Z

    if-eqz v1, :cond_12

    iget-boolean v1, v9, Lantlr/AlternativeBlock;->greedy:Z

    if-eqz v1, :cond_12

    iget-object v1, v3, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-eqz v1, :cond_11

    iget-object v1, v4, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-eqz v1, :cond_b

    :cond_11
    iget-object v1, v4, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-eqz v1, :cond_12

    iget-object v1, v3, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-nez v1, :cond_12

    goto :goto_6

    .line 195
    :cond_12
    iget-object v1, v0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    iget-object v1, v1, Lantlr/Tool;->errorHandler:Lantlr/ToolErrorHandler;

    iget-object v2, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    iget v5, v2, Lantlr/Grammar;->maxk:I

    move-object/from16 v3, p1

    move v7, v14

    move v12, v8

    invoke-interface/range {v1 .. v8}, Lantlr/ToolErrorHandler;->warnAltAmbiguity(Lantlr/Grammar;Lantlr/AlternativeBlock;ZI[Lantlr/Lookahead;II)V

    :goto_7
    const/4 v1, 0x0

    goto :goto_8

    :cond_13
    move v12, v8

    .line 208
    iget v1, v3, Lantlr/Alternative;->lookaheadDepth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lantlr/Alternative;->lookaheadDepth:I

    .line 209
    iget v1, v4, Lantlr/Alternative;->lookaheadDepth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v4, Lantlr/Alternative;->lookaheadDepth:I

    move/from16 v1, v16

    :goto_8
    add-int/lit8 v8, v12, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_14
    move/from16 v16, v1

    move v14, v15

    goto/16 :goto_0

    .line 223
    :cond_15
    iput-object v11, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    return v1
.end method

.method public deterministic(Lantlr/OneOrMoreBlock;)Z
    .locals 3

    .line 231
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "deterministic(...)+("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 233
    iput-object p1, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 234
    invoke-virtual {p0, p1}, Lantlr/LLkAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    move-result v1

    .line 237
    invoke-virtual {p0, p1}, Lantlr/LLkAnalyzer;->deterministicImpliedPath(Lantlr/BlockWithImpliedExitPath;)Z

    move-result p1

    .line 238
    iput-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deterministic(Lantlr/ZeroOrMoreBlock;)Z
    .locals 3

    .line 246
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "deterministic(...)*("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 248
    iput-object p1, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 249
    invoke-virtual {p0, p1}, Lantlr/LLkAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    move-result v1

    .line 252
    invoke-virtual {p0, p1}, Lantlr/LLkAnalyzer;->deterministicImpliedPath(Lantlr/BlockWithImpliedExitPath;)Z

    move-result p1

    .line 253
    iput-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deterministicImpliedPath(Lantlr/BlockWithImpliedExitPath;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 264
    invoke-virtual/range {p1 .. p1}, Lantlr/BlockWithImpliedExitPath;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v9

    .line 266
    iget-object v1, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    const/4 v2, -0x1

    iput v2, v1, Lantlr/AlternativeBlock;->altj:I

    .line 268
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "deterministicImpliedPath"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v11, 0x1

    const/4 v1, 0x1

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v9, :cond_10

    .line 270
    invoke-virtual {v8, v12}, Lantlr/BlockWithImpliedExitPath;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    .line 272
    iget-object v3, v2, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v3, v3, Lantlr/BlockEndElement;

    if-eqz v3, :cond_1

    .line 273
    iget-object v3, v0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    iget-object v4, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lantlr/BlockWithImpliedExitPath;->getLine()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lantlr/BlockWithImpliedExitPath;->getColumn()I

    move-result v6

    const-string v7, "empty alternative makes no sense in (...)* or (...)+"

    invoke-virtual {v3, v7, v4, v5, v6}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 279
    :cond_1
    iget-object v3, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    add-int/2addr v3, v11

    new-array v6, v3, [Lantlr/Lookahead;

    const/4 v3, 0x1

    .line 283
    :cond_2
    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v4, :cond_3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "checking depth "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, "<="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v7, v7, Lantlr/Grammar;->maxk:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    :cond_3
    iget-object v4, v8, Lantlr/BlockWithImpliedExitPath;->next:Lantlr/AlternativeElement;

    invoke-virtual {v4, v3}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object v4

    .line 286
    iget-object v5, v8, Lantlr/BlockWithImpliedExitPath;->exitCache:[Lantlr/Lookahead;

    aput-object v4, v5, v3

    .line 287
    iget-object v5, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v12, v5, Lantlr/AlternativeBlock;->alti:I

    .line 288
    invoke-direct {v0, v8, v12, v3}, Lantlr/LLkAnalyzer;->getAltLookahead(Lantlr/AlternativeBlock;II)Lantlr/Lookahead;

    move-result-object v5

    .line 290
    iget-boolean v7, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v13, ","

    if-eqz v7, :cond_4

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "follow is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v15, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v10, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v4, v13, v15, v10}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 291
    :cond_4
    iget-boolean v7, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v7, :cond_5

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "p is "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v14, v0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v15, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v5, v13, v14, v15}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    :cond_5
    invoke-virtual {v4, v5}, Lantlr/Lookahead;->intersection(Lantlr/Lookahead;)Lantlr/Lookahead;

    move-result-object v4

    aput-object v4, v6, v3

    .line 294
    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v4, :cond_6

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "intersection at depth "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, " is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v7, v6, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    :cond_6
    aget-object v4, v6, v3

    invoke-virtual {v4}, Lantlr/Lookahead;->nil()Z

    move-result v4

    if-nez v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_8

    .line 300
    iget-object v5, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v5, v5, Lantlr/Grammar;->maxk:I

    if-le v3, v5, :cond_2

    :cond_8
    if-eqz v4, :cond_f

    const v1, 0x7fffffff

    .line 304
    iput v1, v2, Lantlr/Alternative;->lookaheadDepth:I

    .line 305
    iput v1, v8, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    .line 306
    iget-object v1, v0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iget v1, v1, Lantlr/AlternativeBlock;->alti:I

    invoke-virtual {v8, v1}, Lantlr/BlockWithImpliedExitPath;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    .line 311
    iget-boolean v2, v8, Lantlr/BlockWithImpliedExitPath;->warnWhenFollowAmbig:Z

    if-nez v2, :cond_a

    :cond_9
    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 317
    :cond_a
    iget-boolean v2, v8, Lantlr/BlockWithImpliedExitPath;->generateAmbigWarnings:Z

    if-nez v2, :cond_b

    goto :goto_2

    .line 321
    :cond_b
    iget-boolean v2, v8, Lantlr/BlockWithImpliedExitPath;->greedy:Z

    if-ne v2, v11, :cond_c

    iget-boolean v2, v8, Lantlr/BlockWithImpliedExitPath;->greedySet:Z

    if-eqz v2, :cond_c

    iget-object v2, v1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v2, v2, Lantlr/BlockEndElement;

    if-nez v2, :cond_c

    .line 323
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_9

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "greedy loop"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 330
    :cond_c
    iget-boolean v2, v8, Lantlr/BlockWithImpliedExitPath;->greedy:Z

    if-nez v2, :cond_e

    iget-object v1, v1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    instance-of v1, v1, Lantlr/BlockEndElement;

    if-nez v1, :cond_e

    .line 332
    iget-boolean v1, v0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v1, :cond_d

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "nongreedy loop"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    :cond_d
    iget-object v1, v8, Lantlr/BlockWithImpliedExitPath;->exitCache:[Lantlr/Lookahead;

    iget-object v2, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget v2, v2, Lantlr/Grammar;->maxk:I

    invoke-static {v1, v2}, Lantlr/LLkAnalyzer;->lookaheadEquivForApproxAndFullAnalysis([Lantlr/Lookahead;I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 338
    iget-object v1, v0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "nongreedy block may exit incorrectly due"

    const/4 v10, 0x0

    aput-object v3, v2, v10

    const-string v3, "\tto limitations of linear approximate lookahead (first k-1 sets"

    aput-object v3, v2, v11

    const/4 v3, 0x2

    const-string v4, "\tin lookahead not singleton)."

    aput-object v4, v2, v3

    iget-object v3, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lantlr/BlockWithImpliedExitPath;->getLine()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lantlr/BlockWithImpliedExitPath;->getColumn()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lantlr/Tool;->warning([Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    :cond_e
    const/4 v10, 0x0

    .line 348
    iget-object v1, v0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    iget-object v1, v1, Lantlr/Tool;->errorHandler:Lantlr/ToolErrorHandler;

    iget-object v2, v0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-boolean v4, v0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    iget v5, v2, Lantlr/Grammar;->maxk:I

    move-object/from16 v3, p1

    move v7, v12

    invoke-interface/range {v1 .. v7}, Lantlr/ToolErrorHandler;->warnAltExitAmbiguity(Lantlr/Grammar;Lantlr/BlockWithImpliedExitPath;ZI[Lantlr/Lookahead;I)V

    :goto_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_f
    const/4 v10, 0x0

    .line 359
    iget v4, v2, Lantlr/Alternative;->lookaheadDepth:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v2, Lantlr/Alternative;->lookaheadDepth:I

    .line 360
    iget v2, v8, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v8, Lantlr/BlockWithImpliedExitPath;->exitLookaheadDepth:I

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_10
    return v1
.end method

.method public look(ILantlr/ActionElement;)Lantlr/Lookahead;
    .locals 3

    .line 512
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookAction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 513
    :cond_0
    iget-object p2, p2, Lantlr/ActionElement;->next:Lantlr/AlternativeElement;

    invoke-virtual {p2, p1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;
    .locals 8

    .line 518
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookAltBlk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 519
    :cond_0
    iget-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 520
    iput-object p2, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    .line 521
    new-instance v1, Lantlr/Lookahead;

    invoke-direct {v1}, Lantlr/Lookahead;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 522
    :goto_0
    iget-object v4, p2, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v4}, Lantlr/collections/impl/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 523
    iget-boolean v4, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v5, "alt "

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 525
    :cond_1
    iget-object v4, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    iput v3, v4, Lantlr/AlternativeBlock;->analysisAlt:I

    .line 526
    invoke-virtual {p2, v3}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v4

    .line 527
    iget-object v6, v4, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 528
    iget-boolean v7, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v7, :cond_2

    .line 529
    iget-object v7, v4, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    iget-object v4, v4, Lantlr/Alternative;->tail:Lantlr/AlternativeElement;

    if-ne v7, v4, :cond_2

    .line 530
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " is empty"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 533
    :cond_2
    invoke-virtual {v6, p1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object v4

    .line 534
    invoke-virtual {v1, v4}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    .line 536
    iget-boolean p1, p2, Lantlr/AlternativeBlock;->not:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    invoke-virtual {p0, p2, p1}, Lantlr/LLkAnalyzer;->subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 538
    iget-boolean p1, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    if-eqz p1, :cond_5

    .line 539
    iget-object p1, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    check-cast p1, Lantlr/LexerGrammar;

    iget-object p1, p1, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/collections/impl/BitSet;

    .line 540
    iget-object p2, v1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {p2}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object p2

    .line 541
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_4

    .line 542
    aget v3, p2, v2

    invoke-virtual {p1, v3}, Lantlr/collections/impl/BitSet;->remove(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 544
    :cond_4
    iput-object p1, v1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    goto :goto_2

    .line 547
    :cond_5
    iget-object p1, v1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    const/4 p2, 0x4

    iget-object v2, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->maxTokenType()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Lantlr/collections/impl/BitSet;->notInPlace(II)V

    .line 550
    :cond_6
    :goto_2
    iput-object v0, p0, Lantlr/LLkAnalyzer;->currentBlock:Lantlr/AlternativeBlock;

    return-object v1
.end method

.method public look(ILantlr/BlockEndElement;)Lantlr/Lookahead;
    .locals 3

    .line 567
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookBlockEnd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "); lock is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lantlr/BlockEndElement;->lock:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 568
    :cond_0
    iget-object v0, p2, Lantlr/BlockEndElement;->lock:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    .line 573
    new-instance p1, Lantlr/Lookahead;

    invoke-direct {p1}, Lantlr/Lookahead;-><init>()V

    return-object p1

    .line 579
    :cond_1
    iget-object v0, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    instance-of v0, v0, Lantlr/ZeroOrMoreBlock;

    if-nez v0, :cond_3

    iget-object v0, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    instance-of v0, v0, Lantlr/OneOrMoreBlock;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 589
    :cond_2
    new-instance v0, Lantlr/Lookahead;

    invoke-direct {v0}, Lantlr/Lookahead;-><init>()V

    goto :goto_1

    .line 584
    :cond_3
    :goto_0
    iget-object v0, p2, Lantlr/BlockEndElement;->lock:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 585
    iget-object v0, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    invoke-virtual {p0, p1, v0}, Lantlr/LLkAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object v0

    .line 586
    iget-object v1, p2, Lantlr/BlockEndElement;->lock:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 597
    :goto_1
    iget-object v1, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    instance-of v1, v1, Lantlr/TreeElement;

    if-eqz v1, :cond_4

    const/4 p1, 0x3

    .line 598
    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    goto :goto_2

    .line 608
    :cond_4
    iget-object v1, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    instance-of v1, v1, Lantlr/SynPredBlock;

    if-eqz v1, :cond_5

    .line 609
    invoke-virtual {v0}, Lantlr/Lookahead;->setEpsilon()V

    goto :goto_2

    .line 614
    :cond_5
    iget-object p2, p2, Lantlr/BlockEndElement;->block:Lantlr/AlternativeBlock;

    iget-object p2, p2, Lantlr/AlternativeBlock;->next:Lantlr/AlternativeElement;

    invoke-virtual {p2, p1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    .line 615
    invoke-virtual {v0, p1}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    :goto_2
    return-object v0
.end method

.method public look(ILantlr/CharLiteralElement;)Lantlr/Lookahead;
    .locals 3

    .line 641
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookCharLiteral("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 644
    iget-object p2, p2, Lantlr/CharLiteralElement;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 646
    :cond_1
    iget-boolean p1, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    if-eqz p1, :cond_5

    .line 647
    iget-boolean p1, p2, Lantlr/CharLiteralElement;->not:Z

    if-eqz p1, :cond_4

    .line 648
    iget-object p1, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    check-cast p1, Lantlr/LexerGrammar;

    iget-object p1, p1, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/collections/impl/BitSet;

    .line 649
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "charVocab is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 651
    :cond_2
    invoke-direct {p0, p1, p2}, Lantlr/LLkAnalyzer;->removeCompetingPredictionSets(Lantlr/collections/impl/BitSet;Lantlr/AlternativeElement;)V

    .line 652
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "charVocab after removal of prior alt lookahead "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 654
    :cond_3
    invoke-virtual {p2}, Lantlr/CharLiteralElement;->getType()I

    move-result p2

    invoke-virtual {p1, p2}, Lantlr/collections/impl/BitSet;->clear(I)V

    .line 655
    new-instance p2, Lantlr/Lookahead;

    invoke-direct {p2, p1}, Lantlr/Lookahead;-><init>(Lantlr/collections/impl/BitSet;)V

    return-object p2

    .line 658
    :cond_4
    invoke-virtual {p2}, Lantlr/CharLiteralElement;->getType()I

    move-result p1

    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 663
    :cond_5
    iget-object p1, p0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    const-string v0, "Character literal reference found in parser"

    invoke-virtual {p1, v0}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Lantlr/CharLiteralElement;->getType()I

    move-result p1

    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public look(ILantlr/CharRangeElement;)Lantlr/Lookahead;
    .locals 3

    .line 670
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookCharRange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 673
    iget-object p2, p2, Lantlr/CharRangeElement;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 675
    :cond_1
    iget-char p1, p2, Lantlr/CharRangeElement;->begin:C

    invoke-static {p1}, Lantlr/collections/impl/BitSet;->of(I)Lantlr/collections/impl/BitSet;

    move-result-object p1

    .line 676
    iget-char v1, p2, Lantlr/CharRangeElement;->begin:C

    add-int/2addr v1, v0

    :goto_0
    iget-char v0, p2, Lantlr/CharRangeElement;->end:C

    if-gt v1, v0, :cond_2

    .line 677
    invoke-virtual {p1, v1}, Lantlr/collections/impl/BitSet;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 679
    :cond_2
    new-instance p2, Lantlr/Lookahead;

    invoke-direct {p2, p1}, Lantlr/Lookahead;-><init>(Lantlr/collections/impl/BitSet;)V

    return-object p2
.end method

.method public look(ILantlr/GrammarAtom;)Lantlr/Lookahead;
    .locals 3

    .line 683
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "look("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/GrammarAtom;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 685
    :cond_0
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    const-string v1, "token reference found in lexer"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    .line 691
    iget-object p2, p2, Lantlr/GrammarAtom;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 693
    :cond_2
    invoke-virtual {p2}, Lantlr/GrammarAtom;->getType()I

    move-result p1

    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    .line 694
    iget-boolean v0, p2, Lantlr/GrammarAtom;->not:Z

    if-eqz v0, :cond_3

    .line 696
    iget-object v0, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    .line 697
    iget-object v1, p1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lantlr/collections/impl/BitSet;->notInPlace(II)V

    .line 699
    iget-object v0, p1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-direct {p0, v0, p2}, Lantlr/LLkAnalyzer;->removeCompetingPredictionSets(Lantlr/collections/impl/BitSet;Lantlr/AlternativeElement;)V

    :cond_3
    return-object p1
.end method

.method public look(ILantlr/OneOrMoreBlock;)Lantlr/Lookahead;
    .locals 3

    .line 709
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "look+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 710
    :cond_0
    invoke-virtual {p0, p1, p2}, Lantlr/LLkAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public look(ILantlr/RuleBlock;)Lantlr/Lookahead;
    .locals 3

    .line 720
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookRuleBlk("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 721
    :cond_0
    invoke-virtual {p0, p1, p2}, Lantlr/LLkAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public look(ILantlr/RuleEndElement;)Lantlr/Lookahead;
    .locals 3

    .line 752
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    .line 753
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookRuleBlockEnd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "); noFOLLOW="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p2, Lantlr/RuleEndElement;->noFOLLOW:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, "; lock is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lantlr/RuleEndElement;->lock:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 755
    :cond_0
    iget-boolean v0, p2, Lantlr/RuleEndElement;->noFOLLOW:Z

    if-eqz v0, :cond_1

    .line 756
    new-instance p2, Lantlr/Lookahead;

    invoke-direct {p2}, Lantlr/Lookahead;-><init>()V

    .line 757
    invoke-virtual {p2}, Lantlr/Lookahead;->setEpsilon()V

    .line 758
    invoke-static {p1}, Lantlr/collections/impl/BitSet;->of(I)Lantlr/collections/impl/BitSet;

    move-result-object p1

    iput-object p1, p2, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    return-object p2

    .line 761
    :cond_1
    invoke-virtual {p0, p1, p2}, Lantlr/LLkAnalyzer;->FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public look(ILantlr/RuleRefElement;)Lantlr/Lookahead;
    .locals 6

    .line 782
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookRuleRef("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 783
    :cond_0
    iget-object v0, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object v1, p2, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    if-eqz v0, :cond_6

    .line 784
    iget-boolean v1, v0, Lantlr/RuleSymbol;->defined:Z

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 788
    :cond_1
    invoke-virtual {v0}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v0

    .line 789
    iget-object v0, v0, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    .line 790
    iget-boolean v1, v0, Lantlr/RuleEndElement;->noFOLLOW:Z

    const/4 v2, 0x1

    .line 791
    iput-boolean v2, v0, Lantlr/RuleEndElement;->noFOLLOW:Z

    .line 793
    iget-object v2, p2, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lantlr/LLkAnalyzer;->look(ILjava/lang/String;)Lantlr/Lookahead;

    move-result-object v2

    .line 794
    iget-boolean v3, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "back from rule ref to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p2, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 796
    :cond_2
    iput-boolean v1, v0, Lantlr/RuleEndElement;->noFOLLOW:Z

    .line 799
    iget-object v0, v2, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 800
    iget-object v0, p0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "infinite recursion to rule "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " from rule "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p2, Lantlr/RuleRefElement;->enclosingRuleName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lantlr/RuleRefElement;->getLine()I

    move-result v4

    invoke-virtual {p2}, Lantlr/RuleRefElement;->getColumn()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 805
    :cond_3
    invoke-virtual {v2}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 806
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_4

    .line 807
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "rule ref to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p2, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " has eps, depth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 811
    :cond_4
    invoke-virtual {v2}, Lantlr/Lookahead;->resetEpsilon()V

    .line 815
    iget-object v0, v2, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 816
    iput-object v1, v2, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    const/4 v1, 0x0

    .line 817
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_5

    .line 818
    aget v3, v0, v1

    sub-int v3, p1, v3

    sub-int v3, p1, v3

    .line 819
    iget-object v4, p2, Lantlr/RuleRefElement;->next:Lantlr/AlternativeElement;

    invoke-virtual {v4, v3}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object v3

    .line 820
    invoke-virtual {v2, v3}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v2

    .line 785
    :cond_6
    :goto_1
    iget-object p1, p0, Lantlr/LLkAnalyzer;->tool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "no definition of rule "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p2, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lantlr/RuleRefElement;->getLine()I

    move-result v2

    invoke-virtual {p2}, Lantlr/RuleRefElement;->getColumn()I

    move-result p2

    invoke-virtual {p1, v0, v1, v2, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 786
    new-instance p1, Lantlr/Lookahead;

    invoke-direct {p1}, Lantlr/Lookahead;-><init>()V

    return-object p1
.end method

.method public look(ILantlr/StringLiteralElement;)Lantlr/Lookahead;
    .locals 3

    .line 830
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookStringLiteral("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 831
    :cond_0
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 833
    iget-object v0, p2, Lantlr/StringLiteralElement;->processedAtomText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 834
    iget-object v0, p2, Lantlr/StringLiteralElement;->next:Lantlr/AlternativeElement;

    iget-object p2, p2, Lantlr/StringLiteralElement;->processedAtomText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 838
    :cond_1
    iget-object p2, p2, Lantlr/StringLiteralElement;->processedAtomText:Ljava/lang/String;

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    :cond_2
    if-le p1, v1, :cond_3

    .line 844
    iget-object p2, p2, Lantlr/StringLiteralElement;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 846
    :cond_3
    invoke-virtual {p2}, Lantlr/StringLiteralElement;->getType()I

    move-result p1

    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    .line 847
    iget-boolean p2, p2, Lantlr/StringLiteralElement;->not:Z

    if-eqz p2, :cond_4

    .line 849
    iget-object p2, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p2}, Lantlr/TokenManager;->maxTokenType()I

    move-result p2

    .line 850
    iget-object v0, p1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lantlr/collections/impl/BitSet;->notInPlace(II)V

    :cond_4
    return-object p1
.end method

.method public look(ILantlr/SynPredBlock;)Lantlr/Lookahead;
    .locals 3

    .line 863
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "look=>("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 864
    :cond_0
    iget-object p2, p2, Lantlr/SynPredBlock;->next:Lantlr/AlternativeElement;

    invoke-virtual {p2, p1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1
.end method

.method public look(ILantlr/TokenRangeElement;)Lantlr/Lookahead;
    .locals 3

    .line 868
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "lookTokenRange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 871
    iget-object p2, p2, Lantlr/TokenRangeElement;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 873
    :cond_1
    iget p1, p2, Lantlr/TokenRangeElement;->begin:I

    invoke-static {p1}, Lantlr/collections/impl/BitSet;->of(I)Lantlr/collections/impl/BitSet;

    move-result-object p1

    .line 874
    iget v1, p2, Lantlr/TokenRangeElement;->begin:I

    add-int/2addr v1, v0

    :goto_0
    iget v0, p2, Lantlr/TokenRangeElement;->end:I

    if-gt v1, v0, :cond_2

    .line 875
    invoke-virtual {p1, v1}, Lantlr/collections/impl/BitSet;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    :cond_2
    new-instance p2, Lantlr/Lookahead;

    invoke-direct {p2, p1}, Lantlr/Lookahead;-><init>(Lantlr/collections/impl/BitSet;)V

    return-object p2
.end method

.method public look(ILantlr/TreeElement;)Lantlr/Lookahead;
    .locals 3

    .line 881
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    .line 882
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "look("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p2, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v2}, Lantlr/GrammarAtom;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 884
    iget-object p2, p2, Lantlr/TreeElement;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 887
    :cond_1
    iget-object p1, p2, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    instance-of p1, p1, Lantlr/WildcardElement;

    if-eqz p1, :cond_2

    .line 888
    iget-object p1, p2, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {p1, v0}, Lantlr/GrammarAtom;->look(I)Lantlr/Lookahead;

    move-result-object p1

    goto :goto_0

    .line 891
    :cond_2
    iget-object p1, p2, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getType()I

    move-result p1

    invoke-static {p1}, Lantlr/Lookahead;->of(I)Lantlr/Lookahead;

    move-result-object p1

    .line 892
    iget-object p2, p2, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    iget-boolean p2, p2, Lantlr/GrammarAtom;->not:Z

    if-eqz p2, :cond_3

    .line 894
    iget-object p2, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p2}, Lantlr/TokenManager;->maxTokenType()I

    move-result p2

    .line 895
    iget-object v0, p1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lantlr/collections/impl/BitSet;->notInPlace(II)V

    :cond_3
    :goto_0
    return-object p1
.end method

.method public look(ILantlr/WildcardElement;)Lantlr/Lookahead;
    .locals 5

    .line 902
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v1, ","

    const-string v2, "look("

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 906
    iget-object p2, p2, Lantlr/WildcardElement;->next:Lantlr/AlternativeElement;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    return-object p1

    .line 910
    :cond_1
    iget-boolean v3, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    if-eqz v3, :cond_2

    .line 912
    iget-object p1, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    check-cast p1, Lantlr/LexerGrammar;

    iget-object p1, p1, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/collections/impl/BitSet;

    goto :goto_0

    .line 915
    :cond_2
    new-instance v3, Lantlr/collections/impl/BitSet;

    invoke-direct {v3, v0}, Lantlr/collections/impl/BitSet;-><init>(I)V

    .line 917
    iget-object v0, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    const/4 v4, 0x4

    .line 918
    invoke-virtual {v3, v4, v0}, Lantlr/collections/impl/BitSet;->notInPlace(II)V

    .line 919
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, ") after not: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    move-object p1, v3

    .line 925
    :goto_0
    new-instance p2, Lantlr/Lookahead;

    invoke-direct {p2, p1}, Lantlr/Lookahead;-><init>(Lantlr/collections/impl/BitSet;)V

    return-object p2
.end method

.method public look(ILantlr/ZeroOrMoreBlock;)Lantlr/Lookahead;
    .locals 3

    .line 932
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "look*("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 933
    :cond_0
    invoke-virtual {p0, p1, p2}, Lantlr/LLkAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object v0

    .line 934
    iget-object p2, p2, Lantlr/ZeroOrMoreBlock;->next:Lantlr/AlternativeElement;

    invoke-virtual {p2, p1}, Lantlr/AlternativeElement;->look(I)Lantlr/Lookahead;

    move-result-object p1

    .line 935
    invoke-virtual {v0, p1}, Lantlr/Lookahead;->combineWith(Lantlr/Lookahead;)V

    return-object v0
.end method

.method public look(ILjava/lang/String;)Lantlr/Lookahead;
    .locals 8

    .line 949
    iget-boolean v0, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    const-string v1, ","

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "lookRuleName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 950
    :cond_0
    iget-object v0, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {v0, p2}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 951
    invoke-virtual {v0}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v0

    .line 953
    iget-object v2, v0, Lantlr/RuleBlock;->lock:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_2

    .line 954
    iget-boolean p1, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz p1, :cond_1

    .line 955
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "infinite recursion to rule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 956
    :cond_1
    new-instance p1, Lantlr/Lookahead;

    invoke-direct {p1, p2}, Lantlr/Lookahead;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 960
    :cond_2
    iget-object v2, v0, Lantlr/RuleBlock;->cache:[Lantlr/Lookahead;

    aget-object v2, v2, p1

    const-string v3, " cache: "

    const-string v4, " result in FIRST "

    if-eqz v2, :cond_4

    .line 961
    iget-boolean v2, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v2, :cond_3

    .line 962
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "found depth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, v0, Lantlr/RuleBlock;->cache:[Lantlr/Lookahead;

    aget-object p2, p2, p1

    iget-object v3, p0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v4, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {p2, v1, v3, v4}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 965
    :cond_3
    iget-object p2, v0, Lantlr/RuleBlock;->cache:[Lantlr/Lookahead;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/Lookahead;

    return-object p1

    .line 968
    :cond_4
    iget-object v2, v0, Lantlr/RuleBlock;->lock:[Z

    const/4 v5, 0x1

    aput-boolean v5, v2, p1

    .line 969
    invoke-virtual {p0, p1, v0}, Lantlr/LLkAnalyzer;->look(ILantlr/RuleBlock;)Lantlr/Lookahead;

    move-result-object v2

    .line 970
    iget-object v5, v0, Lantlr/RuleBlock;->lock:[Z

    const/4 v6, 0x0

    aput-boolean v6, v5, p1

    .line 973
    iget-object v5, v0, Lantlr/RuleBlock;->cache:[Lantlr/Lookahead;

    invoke-virtual {v2}, Lantlr/Lookahead;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lantlr/Lookahead;

    aput-object v6, v5, p1

    .line 974
    iget-boolean v5, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    if-eqz v5, :cond_5

    .line 975
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "saving depth "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, v0, Lantlr/RuleBlock;->cache:[Lantlr/Lookahead;

    aget-object p1, p2, p1

    iget-object p2, p0, Lantlr/LLkAnalyzer;->charFormatter:Lantlr/CharFormatter;

    iget-object v0, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    invoke-virtual {p1, v1, p2, v0}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return-object v2
.end method

.method public setGrammar(Lantlr/Grammar;)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    if-eqz v0, :cond_0

    .line 1048
    invoke-direct {p0}, Lantlr/LLkAnalyzer;->reset()V

    .line 1050
    :cond_0
    iput-object p1, p0, Lantlr/LLkAnalyzer;->grammar:Lantlr/Grammar;

    .line 1053
    instance-of v0, p1, Lantlr/LexerGrammar;

    iput-boolean v0, p0, Lantlr/LLkAnalyzer;->lexicalAnalysis:Z

    .line 1054
    iget-boolean p1, p1, Lantlr/Grammar;->analyzerDebug:Z

    iput-boolean p1, p0, Lantlr/LLkAnalyzer;->DEBUG_ANALYZER:Z

    return-void
.end method

.method public subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z
    .locals 5

    .line 1058
    instance-of v0, p1, Lantlr/ZeroOrMoreBlock;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    instance-of v0, p1, Lantlr/OneOrMoreBlock;

    if-nez v0, :cond_7

    instance-of v0, p1, Lantlr/SynPredBlock;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1066
    :cond_0
    iget-object v0, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 1071
    :goto_0
    iget-object v2, p1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_6

    .line 1072
    invoke-virtual {p1, v0}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    .line 1074
    iget-object v4, v2, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-nez v4, :cond_5

    iget-object v4, v2, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-nez v4, :cond_5

    iget-object v4, v2, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1078
    :cond_2
    iget-object v2, v2, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 1079
    instance-of v4, v2, Lantlr/CharLiteralElement;

    if-nez v4, :cond_3

    instance-of v4, v2, Lantlr/TokenRefElement;

    if-nez v4, :cond_3

    instance-of v4, v2, Lantlr/CharRangeElement;

    if-nez v4, :cond_3

    instance-of v4, v2, Lantlr/TokenRangeElement;

    if-nez v4, :cond_3

    instance-of v4, v2, Lantlr/StringLiteralElement;

    if-eqz v4, :cond_5

    if-nez p2, :cond_5

    :cond_3
    iget-object v4, v2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    instance-of v4, v4, Lantlr/BlockEndElement;

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v2

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v1

    :cond_6
    return v3

    :cond_7
    :goto_2
    return v1
.end method
