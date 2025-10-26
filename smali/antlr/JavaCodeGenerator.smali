.class public Lantlr/JavaCodeGenerator;
.super Lantlr/CodeGenerator;
.source "JavaCodeGenerator.java"


# static fields
.field protected static final NONUNIQUE:Ljava/lang/String;

.field public static final caseSizeThreshold:I = 0x7f


# instance fields
.field astVarNumber:I

.field commonExtraArgs:Ljava/lang/String;

.field commonExtraParams:Ljava/lang/String;

.field commonLocalVars:Ljava/lang/String;

.field currentASTResult:Ljava/lang/String;

.field currentRule:Lantlr/RuleBlock;

.field declaredASTVariables:Ljava/util/Hashtable;

.field exceptionThrown:Ljava/lang/String;

.field protected genAST:Z

.field labeledElementASTType:Ljava/lang/String;

.field labeledElementInit:Ljava/lang/String;

.field labeledElementType:Ljava/lang/String;

.field lt1Value:Ljava/lang/String;

.field protected saveText:Z

.field private semPreds:Lantlr/collections/impl/Vector;

.field protected syntacticPredLevel:I

.field throwNoViable:Ljava/lang/String;

.field treeVariableMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lantlr/JavaCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lantlr/CodeGenerator;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    .line 26
    iput-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    .line 29
    iput-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 58
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lantlr/JavaCodeGenerator;->declaredASTVariables:Ljava/util/Hashtable;

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    .line 76
    new-instance v0, Lantlr/JavaCharFormatter;

    invoke-direct {v0}, Lantlr/JavaCharFormatter;-><init>()V

    iput-object v0, p0, Lantlr/JavaCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    return-void
.end method

.method private GenRuleInvocation(Lantlr/RuleRefElement;)V
    .locals 7

    .line 2678
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2681
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const-string v1, ","

    if-eqz v0, :cond_2

    .line 2683
    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    .line 2684
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "false"

    .line 2687
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2689
    :goto_0
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2690
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2695
    :cond_2
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2696
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2697
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2701
    :cond_3
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 2702
    iget-object v1, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 2704
    new-instance v1, Lantlr/ActionTransInfo;

    invoke-direct {v1}, Lantlr/ActionTransInfo;-><init>()V

    .line 2705
    iget-object v2, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v2, v3, v4, v1}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2706
    iget-boolean v3, v1, Lantlr/ActionTransInfo;->assignToRoot:Z

    if-nez v3, :cond_4

    iget-object v1, v1, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2707
    :cond_4
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Arguments of rule reference \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\' cannot set or ref #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v4}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v5

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2710
    :cond_5
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2713
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 2714
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Rule \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\' accepts no arguments"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 2720
    :cond_6
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2721
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Missing parameters on reference to rule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_7
    :goto_1
    const-string p1, ");"

    .line 2724
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2727
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_8

    const-string p1, "_t = _retTree;"

    .line 2728
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private genBitSet(Lantlr/collections/impl/BitSet;I)V
    .locals 7

    .line 1316
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "private static final long[] mk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "() {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->lengthInLongWords()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1321
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\tlong[] data = { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toStringOfWords()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo p1, "};"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1325
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\tlong[] data = new long["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "];"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toPackedArray()[J

    move-result-object p1

    const/4 v0, 0x0

    .line 1327
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 1328
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 1333
    array-length v2, p1

    if-eq v1, v2, :cond_4

    aget-wide v2, p1, v0

    aget-wide v4, p1, v1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    goto :goto_2

    .line 1342
    :cond_2
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-wide v2, p1, v1

    aget-wide v4, p1, v0

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1347
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\tfor (int i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "; i<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "; i++) { data[i]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-wide v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "L; }"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1335
    :cond_4
    :goto_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\tdata["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-wide v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "L;"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :goto_3
    move v0, v1

    goto :goto_0

    :cond_5
    :goto_4
    const-string p1, "\treturn data;"

    .line 1354
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "}"

    .line 1355
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1357
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "public static final BitSet "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " = new BitSet("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "mk"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method private genBlockFinish(Lantlr/JavaBlockFinishingInfo;Ljava/lang/String;)V
    .locals 1

    .line 1371
    iget-boolean v0, p1, Lantlr/JavaBlockFinishingInfo;->needAnErrorClause:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lantlr/JavaBlockFinishingInfo;->generatedAnIf:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lantlr/JavaBlockFinishingInfo;->generatedSwitch:Z

    if-eqz v0, :cond_2

    .line 1373
    :cond_0
    iget-boolean v0, p1, Lantlr/JavaBlockFinishingInfo;->generatedAnIf:Z

    if-eqz v0, :cond_1

    const-string v0, "else {"

    .line 1374
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "{"

    .line 1377
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1379
    :goto_0
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 1380
    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1381
    iget p2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo p2, "}"

    .line 1382
    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1385
    :cond_2
    iget-object p2, p1, Lantlr/JavaBlockFinishingInfo;->postscript:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 1386
    iget-object p1, p1, Lantlr/JavaBlockFinishingInfo;->postscript:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private genElementAST(Lantlr/AlternativeElement;)V
    .locals 11

    .line 1836
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    const-string v1, "_in = "

    const-string v2, " "

    const-string v3, "_AST"

    const-string v4, "tmp"

    const/4 v5, 0x1

    const-string v6, ";"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-nez v0, :cond_1

    .line 1841
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1842
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 1844
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1845
    iget v4, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    add-int/2addr v4, v5

    iput v4, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    .line 1847
    invoke-direct {p0, p1, v3}, Lantlr/JavaCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    .line 1849
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1854
    :cond_1
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_10

    .line 1855
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 v7, 0x3

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    if-eq v0, v7, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1866
    :goto_0
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v8

    if-eq v8, v7, :cond_4

    instance-of v7, p1, Lantlr/TokenRefElement;

    if-eqz v7, :cond_4

    const/4 v0, 0x1

    .line 1872
    :cond_4
    iget-object v7, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v7, v7, Lantlr/Grammar;->hasSyntacticPredicate:Z

    .line 1879
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1880
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 1881
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1884
    :cond_5
    iget-object v7, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 1886
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1888
    iget v8, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    add-int/2addr v8, v5

    iput v8, p0, Lantlr/JavaCodeGenerator;->astVarNumber:I

    move-object v10, v7

    move-object v7, v4

    move-object v4, v10

    :goto_1
    if-eqz v0, :cond_8

    .line 1894
    instance-of v8, p1, Lantlr/GrammarAtom;

    if-eqz v8, :cond_7

    .line 1895
    move-object v8, p1

    check-cast v8, Lantlr/GrammarAtom;

    .line 1896
    invoke-virtual {v8}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1897
    invoke-virtual {v8}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1, v7, v8}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1901
    :cond_6
    iget-object v8, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v7, v8}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1906
    :cond_7
    iget-object v8, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v7, v8}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    :cond_8
    :goto_2
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1915
    invoke-direct {p0, p1, v3}, Lantlr/JavaCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    .line 1916
    iget-object v7, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/TreeWalkerGrammar;

    if-eqz v7, :cond_9

    .line 1918
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "_in = null;"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1929
    :cond_9
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    const-string v7, " = "

    if-eqz v2, :cond_b

    .line 1930
    instance-of v2, p1, Lantlr/GrammarAtom;

    if-eqz v2, :cond_a

    .line 1931
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v8, p1

    check-cast v8, Lantlr/GrammarAtom;

    invoke-virtual {p0, v8, v4}, Lantlr/JavaCodeGenerator;->getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1934
    :cond_a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4}, Lantlr/JavaCodeGenerator;->getASTCreateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1939
    :cond_b
    :goto_3
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    if-eqz v0, :cond_d

    .line 1940
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 1941
    instance-of v2, p1, Lantlr/GrammarAtom;

    if-eqz v2, :cond_c

    .line 1942
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v4, p1

    check-cast v4, Lantlr/GrammarAtom;

    invoke-virtual {p0, v4, v0}, Lantlr/JavaCodeGenerator;->getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1945
    :cond_c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->getASTCreateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1948
    :goto_4
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_d

    .line 1950
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1954
    :cond_d
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    if-eqz v0, :cond_10

    .line 1955
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result p1

    const-string v0, ");"

    if-eq p1, v5, :cond_f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_e

    goto :goto_5

    .line 1960
    :cond_e
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "astFactory.makeASTRoot(currentAST, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1957
    :cond_f
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "astFactory.addASTChild(currentAST, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_10
    :goto_5
    return-void
.end method

.method private genErrorCatchForElement(Lantlr/AlternativeElement;)V
    .locals 3

    .line 1977
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1978
    :cond_0
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    .line 1979
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-eqz v1, :cond_1

    .line 1980
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    invoke-static {v0}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1982
    :cond_1
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    if-nez v0, :cond_2

    .line 1984
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v2, "Enclosing rule not found!"

    invoke-virtual {v1, v2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 1986
    :cond_2
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1988
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo v0, "}"

    .line 1989
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1990
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    :cond_3
    return-void
.end method

.method private genErrorHandler(Lantlr/ExceptionSpec;)V
    .locals 6

    const/4 v0, 0x0

    .line 1997
    :goto_0
    iget-object v1, p1, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1998
    iget-object v1, p1, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/ExceptionHandler;

    .line 2000
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "catch ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lantlr/ExceptionHandler;->exceptionTypeAndName:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ") {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2001
    iget v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2002
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v2, :cond_0

    const-string v2, "if (inputState.guessing==0) {"

    .line 2003
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2004
    iget v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2008
    :cond_0
    new-instance v2, Lantlr/ActionTransInfo;

    invoke-direct {v2}, Lantlr/ActionTransInfo;-><init>()V

    .line 2009
    iget-object v3, v1, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    invoke-virtual {v4}, Lantlr/Token;->getLine()I

    move-result v4

    iget-object v5, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v3, v4, v5, v2}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->printAction(Ljava/lang/String;)V

    .line 2015
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->hasSyntacticPredicate:Z

    const-string/jumbo v3, "}"

    if-eqz v2, :cond_1

    .line 2016
    iget v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo v2, "} else {"

    .line 2017
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2018
    iget v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2020
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "throw "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v1, Lantlr/ExceptionHandler;->exceptionTypeAndName:Lantlr/Token;

    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->extractIdOfAction(Lantlr/Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2025
    iget v1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2026
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2029
    :cond_1
    iget v1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2030
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private genErrorTryForElement(Lantlr/AlternativeElement;)V
    .locals 3

    .line 2036
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2037
    :cond_0
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    .line 2038
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-eqz v1, :cond_1

    .line 2039
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    invoke-static {v0}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2041
    :cond_1
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    if-nez v0, :cond_2

    .line 2043
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v2, "Enclosing rule not found!"

    invoke-virtual {v1, v2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 2045
    :cond_2
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "try { // for error handling"

    .line 2047
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2048
    iget p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    :cond_3
    return-void
.end method

.method private genLiteralsTest()V
    .locals 1

    const-string v0, "_ttype = testLiteralsTable(_ttype);"

    .line 2081
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method private genLiteralsTestForPartialToken()V
    .locals 1

    const-string v0, "_ttype = testLiteralsTable(new String(text.getBuffer(),_begin,text.length()-_begin),_ttype);"

    .line 2085
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getValueString(I)Ljava/lang/String;
    .locals 3

    .line 3177
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_0

    .line 3178
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v0, p1}, Lantlr/CharFormatter;->literalChar(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 3181
    :cond_0
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0, p1}, Lantlr/TokenManager;->getTokenSymbolAt(I)Lantlr/TokenSymbol;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3183
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3186
    :cond_1
    invoke-virtual {v0}, Lantlr/TokenSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3187
    instance-of v2, v0, Lantlr/StringLiteralSymbol;

    if-eqz v2, :cond_4

    .line 3191
    check-cast v0, Lantlr/StringLiteralSymbol;

    .line 3192
    invoke-virtual {v0}, Lantlr/StringLiteralSymbol;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3197
    :cond_2
    invoke-direct {p0, v1}, Lantlr/JavaCodeGenerator;->mangleLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3199
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method private lookaheadString(I)Ljava/lang/String;
    .locals 2

    .line 3226
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_0

    const-string p1, "_t.getType()"

    return-object p1

    .line 3229
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "LA("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private mangleLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 3239
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    sget-object v0, Lantlr/Tool;->literalsPrefix:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 3240
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 3241
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3245
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3247
    :cond_1
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    sget-boolean p1, Lantlr/Tool;->upperCaseMangledLiterals:Z

    if-eqz p1, :cond_2

    .line 3248
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V
    .locals 2

    .line 3332
    instance-of v0, p1, Lantlr/TreeElement;

    if-eqz v0, :cond_0

    .line 3333
    check-cast p1, Lantlr/TreeElement;

    iget-object p1, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-direct {p0, p1, p2}, Lantlr/JavaCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3341
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3342
    instance-of v1, p1, Lantlr/TokenRefElement;

    if-eqz v1, :cond_1

    .line 3344
    check-cast p1, Lantlr/TokenRefElement;

    iget-object v0, p1, Lantlr/TokenRefElement;->atomText:Ljava/lang/String;

    goto :goto_0

    .line 3346
    :cond_1
    instance-of v1, p1, Lantlr/RuleRefElement;

    if-eqz v1, :cond_2

    .line 3348
    check-cast p1, Lantlr/RuleRefElement;

    iget-object v0, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 3353
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3355
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3356
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    sget-object p2, Lantlr/JavaCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3359
    :cond_3
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method private setupGrammarParameters(Lantlr/Grammar;)V
    .locals 7

    .line 3419
    instance-of v0, p1, Lantlr/ParserGrammar;

    const-string v1, "null"

    const-string v2, "RecognitionException"

    const-string v3, "\""

    const-string v4, "AST"

    const-string v5, ""

    const-string v6, "ASTLabelType"

    if-eqz v0, :cond_1

    .line 3420
    iput-object v4, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 3421
    invoke-virtual {p1, v6}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3422
    invoke-virtual {p1, v6}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3424
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3426
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    :cond_0
    const-string p1, "Token "

    .line 3430
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 3431
    iput-object v1, p0, Lantlr/JavaCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 3432
    iput-object v5, p0, Lantlr/JavaCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    .line 3433
    iput-object v5, p0, Lantlr/JavaCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 3434
    iput-object v5, p0, Lantlr/JavaCodeGenerator;->commonLocalVars:Ljava/lang/String;

    const-string p1, "LT(1)"

    .line 3435
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 3436
    iput-object v2, p0, Lantlr/JavaCodeGenerator;->exceptionThrown:Ljava/lang/String;

    const-string p1, "throw new NoViableAltException(LT(1), getFilename());"

    .line 3437
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    goto/16 :goto_0

    .line 3439
    :cond_1
    instance-of v0, p1, Lantlr/LexerGrammar;

    if-eqz v0, :cond_2

    const-string p1, "char "

    .line 3440
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    const-string p1, "\'\\0\'"

    .line 3441
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 3442
    iput-object v5, p0, Lantlr/JavaCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    const-string p1, "boolean _createToken"

    .line 3443
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->commonExtraParams:Ljava/lang/String;

    const-string p1, "int _ttype; Token _token=null; int _begin=text.length();"

    .line 3444
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->commonLocalVars:Ljava/lang/String;

    const-string p1, "LA(1)"

    .line 3445
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 3446
    iput-object v2, p0, Lantlr/JavaCodeGenerator;->exceptionThrown:Ljava/lang/String;

    const-string p1, "throw new NoViableAltForCharException((char)LA(1), getFilename(), getLine(), getColumn());"

    .line 3447
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    goto :goto_0

    .line 3449
    :cond_2
    instance-of v0, p1, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_5

    .line 3450
    iput-object v4, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 3451
    iput-object v4, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 3452
    invoke-virtual {p1, v6}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3453
    invoke-virtual {p1, v6}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3455
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3457
    iput-object v0, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 3458
    iput-object v0, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 3462
    :cond_3
    invoke-virtual {p1, v6}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3463
    new-instance v0, Lantlr/Token;

    const/4 v3, 0x6

    invoke-direct {v0, v3, v4}, Lantlr/Token;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v6, v0}, Lantlr/Grammar;->setOption(Ljava/lang/String;Lantlr/Token;)Z

    .line 3465
    :cond_4
    iput-object v1, p0, Lantlr/JavaCodeGenerator;->labeledElementInit:Ljava/lang/String;

    const-string p1, "_t"

    .line 3466
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    const-string p1, "AST _t"

    .line 3467
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 3468
    iput-object v5, p0, Lantlr/JavaCodeGenerator;->commonLocalVars:Ljava/lang/String;

    .line 3469
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")_t"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 3470
    iput-object v2, p0, Lantlr/JavaCodeGenerator;->exceptionThrown:Ljava/lang/String;

    const-string p1, "throw new NoViableAltException(_t);"

    .line 3471
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    goto :goto_0

    .line 3474
    :cond_5
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v0, "Unknown grammar type"

    invoke-virtual {p1, v0}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static suitableForCaseExpression(Lantlr/Alternative;)Z
    .locals 2

    .line 1825
    iget v0, p0, Lantlr/Alternative;->lookaheadDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object p0, p0, v1

    iget-object p0, p0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {p0}, Lantlr/collections/impl/BitSet;->degree()I

    move-result p0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected addSemPred(Ljava/lang/String;)I
    .locals 1

    .line 85
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public exitIfError()V
    .locals 2

    .line 90
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v0}, Lantlr/Tool;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Exiting due to errors."

    invoke-virtual {v0, v1}, Lantlr/Tool;->fatalError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public gen()V
    .locals 3

    .line 100
    :try_start_0
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 101
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Grammar;

    .line 104
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-virtual {v1, v2}, Lantlr/Grammar;->setGrammarAnalyzer(Lantlr/LLkGrammarAnalyzer;)V

    .line 105
    invoke-virtual {v1, p0}, Lantlr/Grammar;->setCodeGenerator(Lantlr/CodeGenerator;)V

    .line 106
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v2, v1}, Lantlr/LLkGrammarAnalyzer;->setGrammar(Lantlr/Grammar;)V

    .line 108
    invoke-direct {p0, v1}, Lantlr/JavaCodeGenerator;->setupGrammarParameters(Lantlr/Grammar;)V

    .line 109
    invoke-virtual {v1}, Lantlr/Grammar;->generate()V

    .line 112
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->exitIfError()V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 117
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/TokenManager;

    .line 119
    invoke-interface {v1}, Lantlr/TokenManager;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->genTokenTypes(Lantlr/TokenManager;)V

    .line 125
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->genTokenInterchange(Lantlr/TokenManager;)V

    .line 127
    :cond_1
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->exitIfError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 131
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lantlr/Tool;->reportException(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public gen(Lantlr/ActionElement;)V
    .locals 3

    .line 139
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "genAction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-boolean v0, p1, Lantlr/ActionElement;->isSemPred:Z

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p1, Lantlr/ActionElement;->actionText:Ljava/lang/String;

    iget p1, p1, Lantlr/ActionElement;->line:I

    invoke-virtual {p0, v0, p1}, Lantlr/JavaCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v0, :cond_2

    const-string v0, "if ( inputState.guessing==0 ) {"

    .line 145
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 146
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 151
    :cond_2
    new-instance v0, Lantlr/ActionTransInfo;

    invoke-direct {v0}, Lantlr/ActionTransInfo;-><init>()V

    .line 152
    iget-object v1, p1, Lantlr/ActionElement;->actionText:Ljava/lang/String;

    invoke-virtual {p1}, Lantlr/ActionElement;->getLine()I

    move-result p1

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v1, p1, v2, v0}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    .line 157
    iget-object v1, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 162
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")currentAST.root;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 166
    :cond_3
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->printAction(Ljava/lang/String;)V

    .line 168
    iget-boolean p1, v0, Lantlr/ActionTransInfo;->assignToRoot:Z

    if-eqz p1, :cond_4

    .line 170
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "currentAST.root = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 172
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "currentAST.child = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "!=null &&"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ".getFirstChild()!=null ?"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 173
    iget p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 174
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ".getFirstChild() : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 175
    iget p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string p1, "currentAST.advanceChildToEnd();"

    .line 176
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 179
    :cond_4
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz p1, :cond_5

    .line 180
    iget p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 181
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public gen(Lantlr/AlternativeBlock;)V
    .locals 3

    .line 190
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "gen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "{"

    .line 191
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 193
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 196
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 201
    :cond_1
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v1, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    const/4 v1, 0x1

    .line 203
    invoke-virtual {p0, p1, v1}, Lantlr/JavaCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/JavaBlockFinishingInfo;

    move-result-object p1

    .line 204
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lantlr/JavaCodeGenerator;->genBlockFinish(Lantlr/JavaBlockFinishingInfo;Ljava/lang/String;)V

    const-string/jumbo p1, "}"

    .line 206
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 209
    iput-object v0, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method public gen(Lantlr/BlockEndElement;)V
    .locals 3

    .line 218
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "genRuleEnd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public gen(Lantlr/CharLiteralElement;)V
    .locals 3

    .line 225
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "genChar("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    :cond_0
    invoke-virtual {p1}, Lantlr/CharLiteralElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/CharLiteralElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 231
    :cond_1
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {p1}, Lantlr/CharLiteralElement;->getAutoGenType()I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 233
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 234
    iput-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    return-void
.end method

.method public gen(Lantlr/CharRangeElement;)V
    .locals 3

    .line 241
    invoke-virtual {p1}, Lantlr/CharRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/CharRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lantlr/CharRangeElement;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const-string v1, "_saveIndex=text.length();"

    .line 249
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 252
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "matchRange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p1, Lantlr/CharRangeElement;->beginText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p1, Lantlr/CharRangeElement;->endText:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string p1, "text.setLength(_saveIndex);"

    .line 255
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public gen(Lantlr/LexerGrammar;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-boolean v0, p1, Lantlr/LexerGrammar;->debuggingOutput:Z

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Lantlr/collections/impl/Vector;

    invoke-direct {v0}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v0, p0, Lantlr/JavaCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    .line 265
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 266
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Internal error generating lexer"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 272
    :cond_1
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->setupOutput(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 v1, 0x1

    .line 275
    iput-boolean v1, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 277
    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 280
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genHeader()V

    .line 282
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lantlr/DefineGrammarSymbols;->getHeaderAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import java.io.InputStream;"

    .line 286
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.TokenStreamException;"

    .line 287
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.TokenStreamIOException;"

    .line 288
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.TokenStreamRecognitionException;"

    .line 289
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.CharStreamException;"

    .line 290
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.CharStreamIOException;"

    .line 291
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.ANTLRException;"

    .line 292
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import java.io.Reader;"

    .line 293
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import java.util.Hashtable;"

    .line 294
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 295
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "import antlr."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.InputBuffer;"

    .line 296
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.ByteBuffer;"

    .line 297
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.CharBuffer;"

    .line 298
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.Token;"

    .line 299
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.CommonToken;"

    .line 300
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.RecognitionException;"

    .line 301
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.NoViableAltForCharException;"

    .line 302
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.MismatchedCharException;"

    .line 303
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.TokenStream;"

    .line 304
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.ANTLRHashString;"

    .line 305
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.LexerSharedInputState;"

    .line 306
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.collections.impl.BitSet;"

    .line 307
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "import antlr.SemanticException;"

    .line 308
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 316
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 319
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "antlr."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    :goto_0
    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 324
    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->_println(Ljava/lang/String;)V

    .line 329
    :cond_3
    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v6, "classHeaderPrefix"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lantlr/Token;

    const-string v6, "\""

    if-eqz v5, :cond_4

    .line 331
    invoke-virtual {v5}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6, v6}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, "public"

    .line 337
    :goto_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    .line 338
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "class "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v7}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " extends "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    .line 339
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, " implements "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v5}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v5, Lantlr/JavaCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ", TokenStream"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v5, "classHeaderSuffix"

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/Token;

    if-eqz v2, :cond_5

    .line 342
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6, v6}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 344
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    :cond_5
    const-string v2, " {"

    .line 347
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v5}, Lantlr/Token;->getLine()I

    move-result v5

    iget-object v6, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v7, 0x0

    invoke-virtual {p0, v2, v5, v6, v7}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    .line 358
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "public "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "(InputStream in) {"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 359
    iget v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v2, v1

    iput v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string v2, "this(new ByteBuffer(in));"

    .line 360
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 361
    iget v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v2, v1

    iput v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo v2, "}"

    .line 362
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 368
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v8}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "(Reader in) {"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 369
    iget v6, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v6, v1

    iput v6, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string v6, "this(new CharBuffer(in));"

    .line 370
    invoke-virtual {p0, v6}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 371
    iget v6, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v6, v1

    iput v6, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 372
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 374
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v8}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "(InputBuffer ib) {"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 375
    iget v6, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v6, v1

    iput v6, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 377
    iget-object v6, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v6, v6, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v6, :cond_6

    const-string v6, "this(new LexerSharedInputState(new antlr.debug.DebuggingInputBuffer(ib)));"

    .line 378
    invoke-virtual {p0, v6}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v6, "this(new LexerSharedInputState(ib));"

    .line 380
    invoke-virtual {p0, v6}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 381
    :goto_2
    iget v6, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v6, v1

    iput v6, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 382
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 387
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "(LexerSharedInputState state) {"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 388
    iget v5, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v5, v1

    iput v5, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string v5, "super(state);"

    .line 390
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 393
    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v5, :cond_7

    const-string v5, "  ruleNames  = _ruleNames;"

    .line 394
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "  semPredNames = _semPredNames;"

    .line 395
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "  setupDebugging();"

    .line 396
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 402
    :cond_7
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "caseSensitiveLiterals = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v6, p1, Lantlr/LexerGrammar;->caseSensitiveLiterals:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 403
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "setCaseSensitive("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean p1, p1, Lantlr/LexerGrammar;->caseSensitive:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string p1, ");"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string p1, "literals = new Hashtable();"

    .line 408
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 409
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1}, Lantlr/TokenManager;->getTokenSymbolKeys()Ljava/util/Enumeration;

    move-result-object p1

    .line 410
    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 411
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 412
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_9

    goto :goto_3

    .line 415
    :cond_9
    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v5, v4}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v4

    .line 416
    instance-of v5, v4, Lantlr/StringLiteralSymbol;

    if-eqz v5, :cond_8

    .line 417
    check-cast v4, Lantlr/StringLiteralSymbol;

    .line 418
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "literals.put(new ANTLRHashString("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lantlr/StringLiteralSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ", this), new Integer("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lantlr/StringLiteralSymbol;->getTokenType()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "));"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 421
    :cond_a
    iget p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr p1, v1

    iput p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 424
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 427
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_d

    const-string p1, "private static final String _ruleNames[] = {"

    .line 428
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 432
    :cond_b
    :goto_4
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 433
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/GrammarSymbol;

    .line 434
    instance-of v4, v1, Lantlr/RuleSymbol;

    if-eqz v4, :cond_b

    .line 435
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "  \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast v1, Lantlr/RuleSymbol;

    invoke-virtual {v1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    const-string/jumbo p1, "};"

    .line 437
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 443
    :cond_d
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genNextToken()V

    .line 446
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v1, 0x0

    .line 448
    :goto_5
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 449
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lantlr/RuleSymbol;

    .line 451
    invoke-virtual {v4}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mnextToken"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    add-int/lit8 v5, v1, 0x1

    .line 452
    invoke-virtual {p0, v4, v0, v1}, Lantlr/JavaCodeGenerator;->genRule(Lantlr/RuleSymbol;ZI)V

    move v1, v5

    .line 454
    :cond_e
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->exitIfError()V

    goto :goto_5

    .line 458
    :cond_f
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_10

    .line 459
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genSemPredMap()V

    .line 462
    :cond_10
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-object v0, v0, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lantlr/collections/impl/BitSet;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lantlr/JavaCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;I)V

    .line 464
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 468
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 469
    iput-object v7, p0, Lantlr/JavaCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public gen(Lantlr/OneOrMoreBlock;)V
    .locals 10

    .line 476
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "gen+("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "{"

    .line 479
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 481
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 482
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_cnt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_cnt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lantlr/OneOrMoreBlock;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "=0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 489
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 492
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "_loop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/OneOrMoreBlock;->ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 494
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "do {"

    .line 495
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 496
    iget v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 499
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 502
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 503
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 504
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 507
    :cond_3
    iget-object v4, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v4, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/OneOrMoreBlock;)Z

    .line 520
    iget-object v4, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget v4, v4, Lantlr/Grammar;->maxk:I

    .line 522
    iget-boolean v5, p1, Lantlr/OneOrMoreBlock;->greedy:Z

    const/4 v6, 0x0

    if-nez v5, :cond_4

    iget v5, p1, Lantlr/OneOrMoreBlock;->exitLookaheadDepth:I

    iget-object v7, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget v7, v7, Lantlr/Grammar;->maxk:I

    if-gt v5, v7, :cond_4

    iget-object v5, p1, Lantlr/OneOrMoreBlock;->exitCache:[Lantlr/Lookahead;

    iget v7, p1, Lantlr/OneOrMoreBlock;->exitLookaheadDepth:I

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 526
    iget v4, p1, Lantlr/OneOrMoreBlock;->exitLookaheadDepth:I

    goto :goto_2

    .line 528
    :cond_4
    iget-boolean v5, p1, Lantlr/OneOrMoreBlock;->greedy:Z

    if-nez v5, :cond_5

    iget v5, p1, Lantlr/OneOrMoreBlock;->exitLookaheadDepth:I

    const v7, 0x7fffffff

    if-ne v5, v7, :cond_5

    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    const-string v7, "if ( "

    if-eqz v5, :cond_7

    .line 536
    iget-boolean v5, p0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v5, :cond_6

    .line 537
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "nongreedy (...)+ loop; exit depth is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v9, p1, Lantlr/OneOrMoreBlock;->exitLookaheadDepth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 540
    :cond_6
    iget-object v5, p1, Lantlr/OneOrMoreBlock;->exitCache:[Lantlr/Lookahead;

    invoke-virtual {p0, v5, v4}, Lantlr/JavaCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "// nongreedy exit test"

    .line 543
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 544
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ">=1 && "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ") break "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ";"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 547
    :cond_7
    invoke-virtual {p0, p1, v6}, Lantlr/JavaCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/JavaBlockFinishingInfo;

    move-result-object p1

    .line 548
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ">=1 ) { break "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; } else {"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lantlr/JavaCodeGenerator;->genBlockFinish(Lantlr/JavaBlockFinishingInfo;Ljava/lang/String;)V

    .line 553
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "++;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 554
    iget p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr p1, v3

    iput p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo p1, "} while (true);"

    .line 555
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 559
    iput-object v2, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method public gen(Lantlr/ParserGrammar;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    iget-boolean v0, p1, Lantlr/ParserGrammar;->debuggingOutput:Z

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Lantlr/collections/impl/Vector;

    invoke-direct {v0}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v0, p0, Lantlr/JavaCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    .line 570
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 571
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/ParserGrammar;

    if-nez p1, :cond_1

    .line 572
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v0, "Internal error generating parser"

    invoke-virtual {p1, v0}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 577
    :cond_1
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->setupOutput(Ljava/lang/String;)V

    .line 579
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->buildAST:Z

    iput-boolean p1, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 p1, 0x0

    .line 581
    iput p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 584
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genHeader()V

    .line 586
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lantlr/DefineGrammarSymbols;->getHeaderAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.TokenBuffer;"

    .line 589
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.TokenStreamException;"

    .line 590
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.TokenStreamIOException;"

    .line 591
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.ANTLRException;"

    .line 592
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 593
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "import antlr."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.Token;"

    .line 594
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.TokenStream;"

    .line 595
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.RecognitionException;"

    .line 596
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.NoViableAltException;"

    .line 597
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.MismatchedTokenException;"

    .line 598
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.SemanticException;"

    .line 599
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.ParserSharedInputState;"

    .line 600
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.collections.impl.BitSet;"

    .line 601
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 602
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    if-eqz v0, :cond_2

    const-string v0, "import antlr.collections.AST;"

    .line 603
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import java.util.Hashtable;"

    .line 604
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.ASTFactory;"

    .line 605
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.ASTPair;"

    .line 606
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.collections.impl.ASTArray;"

    .line 607
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 611
    :cond_2
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 616
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 618
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "antlr."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    :goto_0
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 622
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->_println(Ljava/lang/String;)V

    .line 627
    :cond_4
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v3, "classHeaderPrefix"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/Token;

    const-string v3, "\""

    if-eqz v2, :cond_5

    .line 629
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v2, "public"

    .line 635
    :goto_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    .line 636
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "class "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " extends "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    .line 637
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "       implements "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/JavaCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v2, "classHeaderSuffix"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/Token;

    if-eqz v0, :cond_6

    .line 641
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 643
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    :cond_6
    const-string v0, " {"

    .line 645
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_9

    const-string v0, "private static final String _ruleNames[] = {"

    .line 650
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 654
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 655
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/GrammarSymbol;

    .line 656
    instance-of v3, v2, Lantlr/RuleSymbol;

    if-eqz v3, :cond_7

    .line 657
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "  \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast v2, Lantlr/RuleSymbol;

    invoke-virtual {v2}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string/jumbo v0, "};"

    .line 659
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 663
    :cond_9
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v2}, Lantlr/Token;->getLine()I

    move-result v2

    iget-object v3, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 669
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "protected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "(TokenBuffer tokenBuf, int k) {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  super(tokenBuf,k);"

    .line 670
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  tokenNames = _tokenNames;"

    .line 671
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 674
    iget-object v3, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v3, v3, Lantlr/Grammar;->debuggingOutput:Z

    const-string v5, "  semPredNames = _semPredNames;"

    const-string v6, "  ruleNames  = _ruleNames;"

    if-eqz v3, :cond_a

    .line 675
    invoke-virtual {p0, v6}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v3, "  setupDebugging(tokenBuf);"

    .line 677
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 679
    :cond_a
    iget-object v3, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v3, v3, Lantlr/Grammar;->buildAST:Z

    const-string v7, "  astFactory = new ASTFactory(getTokenTypeToASTClassMap());"

    const-string v8, "  buildTokenTypeASTClassMap();"

    if-eqz v3, :cond_b

    .line 680
    invoke-virtual {p0, v8}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0, v7}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_b
    const-string/jumbo v3, "}"

    .line 683
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 686
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "public "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v11, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v11}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, "(TokenBuffer tokenBuf) {"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 687
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "  this(tokenBuf,"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v11, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget v11, v11, Lantlr/Grammar;->maxk:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v11, ");"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 692
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "(TokenStream lexer, int k) {"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "  super(lexer,k);"

    .line 693
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 698
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v2, :cond_c

    .line 699
    invoke-virtual {p0, v6}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "  setupDebugging(lexer);"

    .line 701
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 703
    :cond_c
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_d

    .line 704
    invoke-virtual {p0, v8}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0, v7}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 707
    :cond_d
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 710
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "(TokenStream lexer) {"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 711
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "  this(lexer,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget v5, v5, Lantlr/Grammar;->maxk:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 715
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "(ParserSharedInputState state) {"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 716
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "  super(state,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget v5, v5, Lantlr/Grammar;->maxk:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_e

    .line 719
    invoke-virtual {p0, v8}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0, v7}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 722
    :cond_e
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v2, 0x0

    .line 728
    :goto_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 729
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lantlr/GrammarSymbol;

    .line 730
    instance-of v6, v5, Lantlr/RuleSymbol;

    if-eqz v6, :cond_10

    .line 731
    check-cast v5, Lantlr/RuleSymbol;

    .line 732
    iget-object v6, v5, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v6}, Lantlr/collections/impl/Vector;->size()I

    move-result v6

    if-nez v6, :cond_f

    const/4 v6, 0x1

    goto :goto_4

    :cond_f
    const/4 v6, 0x0

    :goto_4
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v5, v6, v2}, Lantlr/JavaCodeGenerator;->genRule(Lantlr/RuleSymbol;ZI)V

    move v2, v7

    .line 734
    :cond_10
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->exitIfError()V

    goto :goto_3

    .line 738
    :cond_11
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genTokenStrings()V

    .line 740
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->buildAST:Z

    if-eqz p1, :cond_12

    .line 741
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genTokenASTNodeMap()V

    .line 745
    :cond_12
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lantlr/JavaCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;I)V

    .line 748
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_13

    .line 749
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genSemPredMap()V

    .line 752
    :cond_13
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 756
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 757
    iput-object v4, p0, Lantlr/JavaCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public gen(Lantlr/RuleRefElement;)V
    .locals 6

    .line 764
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "genRR("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 765
    :cond_0
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    const-string v1, "Rule \'"

    if-eqz v0, :cond_12

    .line 766
    invoke-virtual {v0}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 771
    :cond_1
    instance-of v2, v0, Lantlr/RuleSymbol;

    if-nez v2, :cond_2

    .line 773
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\' does not name a grammar rule"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 777
    :cond_2
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 781
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v2, :cond_3

    .line 784
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " = _t==ASTNULL ? null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 788
    :cond_3
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    const/4 v3, 0x3

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getAutoGenType()I

    move-result v2

    if-ne v2, v3, :cond_5

    :cond_4
    const-string v2, "_saveIndex=text.length();"

    .line 789
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 793
    :cond_5
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->printTabs()V

    .line 794
    iget-object v2, p1, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 796
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 797
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' has no return type"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v4

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 799
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_0

    .line 803
    :cond_7
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-nez v2, :cond_8

    iget v2, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v2, :cond_8

    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 804
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' returns a value"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v4

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 809
    :cond_8
    :goto_0
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->GenRuleInvocation(Lantlr/RuleRefElement;)V

    .line 812
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getAutoGenType()I

    move-result v0

    if-ne v0, v3, :cond_a

    :cond_9
    const-string v0, "text.setLength(_saveIndex);"

    .line 813
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 817
    :cond_a
    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_11

    .line 818
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getAutoGenType()I

    .line 830
    :cond_c
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 832
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "_AST = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")returnAST;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 834
    :cond_d
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    if-eqz v0, :cond_10

    .line 835
    invoke-virtual {p1}, Lantlr/RuleRefElement;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    goto :goto_1

    .line 841
    :cond_e
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Internal: encountered ^ after rule reference"

    invoke-virtual {v0, v1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    const-string v0, "astFactory.addASTChild(currentAST, returnAST);"

    .line 838
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 849
    :cond_10
    :goto_1
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 850
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "=_returnToken;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 858
    :cond_11
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    return-void

    .line 768
    :cond_12
    :goto_2
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' is not defined"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public gen(Lantlr/StringLiteralElement;)V
    .locals 3

    .line 865
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "genString("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 868
    :cond_0
    invoke-virtual {p1}, Lantlr/StringLiteralElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_1

    .line 869
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/StringLiteralElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 873
    :cond_1
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 876
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 877
    invoke-virtual {p1}, Lantlr/StringLiteralElement;->getAutoGenType()I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 880
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 882
    iput-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 885
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_3

    const-string p1, "_t = _t.getNextSibling();"

    .line 886
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public gen(Lantlr/TokenRangeElement;)V
    .locals 2

    .line 894
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 895
    invoke-virtual {p1}, Lantlr/TokenRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 896
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/TokenRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 900
    :cond_0
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 903
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "matchRange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/TokenRangeElement;->beginText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/TokenRangeElement;->endText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 904
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    return-void
.end method

.method public gen(Lantlr/TokenRefElement;)V
    .locals 3

    .line 911
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "genTokenRef("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 912
    :cond_0
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Token reference found in lexer"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 915
    :cond_1
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 917
    invoke-virtual {p1}, Lantlr/TokenRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_2

    .line 918
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/TokenRefElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 922
    :cond_2
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 924
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 925
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    .line 928
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_3

    const-string p1, "_t = _t.getNextSibling();"

    .line 929
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public gen(Lantlr/TreeElement;)V
    .locals 6

    .line 935
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "AST __t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lantlr/TreeElement;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " = _t;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 938
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 939
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = _t==ASTNULL ? null :("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")_t;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 943
    :cond_0
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/GrammarAtom;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 944
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/TreeElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/TreeElement;->getColumn()I

    move-result v4

    const-string v5, "Suffixing a root node with \'!\' is not implemented"

    invoke-virtual {v0, v5, v1, v3, v4}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 946
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0, v2}, Lantlr/GrammarAtom;->setAutoGenType(I)V

    .line 948
    :cond_1
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/GrammarAtom;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 949
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/TreeElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/TreeElement;->getColumn()I

    move-result v4

    const-string v5, "Suffixing a root node with \'^\' is redundant; already a root"

    invoke-virtual {v0, v5, v1, v3, v4}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 951
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0, v2}, Lantlr/GrammarAtom;->setAutoGenType(I)V

    .line 955
    :cond_2
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-direct {p0, v0}, Lantlr/JavaCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 956
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_3

    .line 958
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ASTPair __currentAST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lantlr/TreeElement;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " = currentAST.copy();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "currentAST.root = currentAST.child;"

    .line 960
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "currentAST.child = null;"

    .line 961
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 965
    :cond_3
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    instance-of v0, v0, Lantlr/WildcardElement;

    if-eqz v0, :cond_4

    const-string v0, "if ( _t==null ) throw new MismatchedTokenException();"

    .line 966
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 969
    :cond_4
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    :goto_0
    const-string v0, "_t = _t.getFirstChild();"

    .line 972
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 975
    :goto_1
    invoke-virtual {p1}, Lantlr/TreeElement;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v1

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 976
    invoke-virtual {p1, v0}, Lantlr/TreeElement;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    .line 977
    iget-object v1, v1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    :goto_2
    if-eqz v1, :cond_5

    .line 979
    invoke-virtual {v1}, Lantlr/AlternativeElement;->generate()V

    .line 980
    iget-object v1, v1, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 984
    :cond_6
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    const-string v1, ";"

    if-eqz v0, :cond_7

    .line 987
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "currentAST = __currentAST"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/TreeElement;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 990
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "_t = __t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p1, Lantlr/TreeElement;->ID:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string p1, "_t = _t.getNextSibling();"

    .line 992
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TreeWalkerGrammar;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 999
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-nez p1, :cond_0

    .line 1000
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v0, "Internal error generating tree-walker"

    invoke-virtual {p1, v0}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 1005
    :cond_0
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->setupOutput(Ljava/lang/String;)V

    .line 1007
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->buildAST:Z

    iput-boolean p1, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 p1, 0x0

    .line 1008
    iput p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 1011
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genHeader()V

    .line 1013
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lantlr/DefineGrammarSymbols;->getHeaderAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1016
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "import antlr."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.Token;"

    .line 1017
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.collections.AST;"

    .line 1018
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.RecognitionException;"

    .line 1019
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.ANTLRException;"

    .line 1020
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.NoViableAltException;"

    .line 1021
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.MismatchedTokenException;"

    .line 1022
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.SemanticException;"

    .line 1023
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.collections.impl.BitSet;"

    .line 1024
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.ASTPair;"

    .line 1025
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "import antlr.collections.impl.ASTArray;"

    .line 1026
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 1037
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "antlr."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1039
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1042
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1043
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->_println(Ljava/lang/String;)V

    .line 1048
    :cond_2
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v3, "classHeaderPrefix"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/Token;

    const-string v3, "\""

    if-eqz v2, :cond_3

    .line 1050
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "public"

    .line 1056
    :goto_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    .line 1057
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "class "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " extends "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    .line 1058
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "       implements "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/JavaCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v2, "classHeaderSuffix"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/Token;

    if-eqz v0, :cond_4

    .line 1061
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1063
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    :cond_4
    const-string v0, " {"

    .line 1066
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v2}, Lantlr/Token;->getLine()I

    move-result v2

    iget-object v3, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    .line 1074
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "public "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "() {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1075
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string v0, "tokenNames = _tokenNames;"

    .line 1076
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1077
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v0, v2

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo v0, "}"

    .line 1078
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1082
    iget-object v3, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v3}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    const/4 v5, 0x0

    .line 1085
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1086
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lantlr/GrammarSymbol;

    .line 1087
    instance-of v7, v6, Lantlr/RuleSymbol;

    if-eqz v7, :cond_6

    .line 1088
    check-cast v6, Lantlr/RuleSymbol;

    .line 1089
    iget-object v7, v6, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v6, v7, v5}, Lantlr/JavaCodeGenerator;->genRule(Lantlr/RuleSymbol;ZI)V

    move v5, v8

    .line 1091
    :cond_6
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->exitIfError()V

    goto :goto_2

    .line 1095
    :cond_7
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genTokenStrings()V

    .line 1098
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->maxTokenType()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lantlr/JavaCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;I)V

    .line 1101
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1105
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 1106
    iput-object v4, p0, Lantlr/JavaCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public gen(Lantlr/WildcardElement;)V
    .locals 2

    .line 1114
    invoke-virtual {p1}, Lantlr/WildcardElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 1115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/WildcardElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1119
    :cond_0
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 1121
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_1

    const-string p1, "if ( _t==null ) throw new MismatchedTokenException();"

    .line 1122
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1124
    :cond_1
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_5

    .line 1125
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lantlr/WildcardElement;->getAutoGenType()I

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v0, "_saveIndex=text.length();"

    .line 1127
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    const-string v0, "matchNot(EOF_CHAR);"

    .line 1129
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lantlr/WildcardElement;->getAutoGenType()I

    move-result p1

    if-ne p1, v1, :cond_6

    :cond_4
    const-string p1, "text.setLength(_saveIndex);"

    .line 1132
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1136
    :cond_5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "matchNot("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lantlr/JavaCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1140
    :cond_6
    :goto_0
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_7

    const-string p1, "_t = _t.getNextSibling();"

    .line 1141
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public gen(Lantlr/ZeroOrMoreBlock;)V
    .locals 9

    .line 1149
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "gen*("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "{"

    .line 1150
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 1153
    invoke-virtual {p1}, Lantlr/ZeroOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1154
    invoke-virtual {p1}, Lantlr/ZeroOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1157
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_loop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lantlr/ZeroOrMoreBlock;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "do {"

    .line 1160
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1161
    iget v1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 1164
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 1167
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 1168
    invoke-virtual {p1}, Lantlr/ZeroOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1169
    invoke-virtual {p1}, Lantlr/ZeroOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 1172
    :cond_2
    iget-object v3, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v3, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/ZeroOrMoreBlock;)Z

    .line 1185
    iget-object v3, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    .line 1187
    iget-boolean v4, p1, Lantlr/ZeroOrMoreBlock;->greedy:Z

    const/4 v5, 0x0

    if-nez v4, :cond_3

    iget v4, p1, Lantlr/ZeroOrMoreBlock;->exitLookaheadDepth:I

    iget-object v6, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    if-gt v4, v6, :cond_3

    iget-object v4, p1, Lantlr/ZeroOrMoreBlock;->exitCache:[Lantlr/Lookahead;

    iget v6, p1, Lantlr/ZeroOrMoreBlock;->exitLookaheadDepth:I

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1191
    iget v3, p1, Lantlr/ZeroOrMoreBlock;->exitLookaheadDepth:I

    goto :goto_1

    .line 1193
    :cond_3
    iget-boolean v4, p1, Lantlr/ZeroOrMoreBlock;->greedy:Z

    if-nez v4, :cond_4

    iget v4, p1, Lantlr/ZeroOrMoreBlock;->exitLookaheadDepth:I

    const v6, 0x7fffffff

    if-ne v4, v6, :cond_4

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    const-string v6, ";"

    if-eqz v4, :cond_6

    .line 1198
    iget-boolean v4, p0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v4, :cond_5

    .line 1199
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "nongreedy (...)* loop; exit depth is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v8, p1, Lantlr/ZeroOrMoreBlock;->exitLookaheadDepth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1202
    :cond_5
    iget-object v4, p1, Lantlr/ZeroOrMoreBlock;->exitCache:[Lantlr/Lookahead;

    invoke-virtual {p0, v4, v3}, Lantlr/JavaCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "// nongreedy exit test"

    .line 1205
    invoke-virtual {p0, v4}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1206
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "if ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ") break "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1209
    :cond_6
    invoke-virtual {p0, p1, v5}, Lantlr/JavaCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/JavaBlockFinishingInfo;

    move-result-object p1

    .line 1210
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "break "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lantlr/JavaCodeGenerator;->genBlockFinish(Lantlr/JavaBlockFinishingInfo;Ljava/lang/String;)V

    .line 1212
    iget p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr p1, v2

    iput p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo p1, "} while (true);"

    .line 1213
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "}"

    .line 1214
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1217
    iput-object v1, p0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;)V
    .locals 1

    .line 2053
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V
    .locals 1

    .line 2057
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2062
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->declaredASTVariables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2066
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "_AST = null;"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2069
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->declaredASTVariables:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V
    .locals 8

    .line 1226
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {p1}, Lantlr/Alternative;->getAutoGen()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    .line 1229
    iget-boolean v3, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v3, :cond_1

    .line 1230
    invoke-virtual {p1}, Lantlr/Alternative;->getAutoGen()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 1233
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 1234
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 1237
    iget-object v4, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    if-eqz v4, :cond_2

    const-string v4, "try {      // for error handling"

    .line 1238
    invoke-virtual {p0, v4}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1239
    iget v4, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v4, v2

    iput v4, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 1242
    :cond_2
    iget-object v4, p1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 1243
    :goto_1
    instance-of v5, v4, Lantlr/BlockEndElement;

    if-nez v5, :cond_3

    .line 1244
    invoke-virtual {v4}, Lantlr/AlternativeElement;->generate()V

    .line 1245
    iget-object v4, v4, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_1

    .line 1248
    :cond_3
    iget-boolean v4, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    if-eqz v4, :cond_5

    .line 1249
    instance-of v4, p2, Lantlr/RuleBlock;

    if-eqz v4, :cond_4

    .line 1251
    check-cast p2, Lantlr/RuleBlock;

    .line 1252
    iget-object v4, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->hasSyntacticPredicate:Z

    .line 1256
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "_AST = ("

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ")currentAST.root;"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1257
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p2, p2, Lantlr/Grammar;->hasSyntacticPredicate:Z

    goto :goto_2

    .line 1262
    :cond_4
    invoke-virtual {p2}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1265
    iget-object v4, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lantlr/AlternativeBlock;->getLine()I

    move-result v6

    invoke-virtual {p2}, Lantlr/AlternativeBlock;->getColumn()I

    move-result p2

    const-string v7, "Labeled subrules not yet supported"

    invoke-virtual {v4, v7, v5, v6, p2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1269
    :cond_5
    :goto_2
    iget-object p2, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    if-eqz p2, :cond_6

    .line 1271
    iget p2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr p2, v2

    iput p2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo p2, "}"

    .line 1272
    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1273
    iget-object p1, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    .line 1276
    :cond_6
    iput-boolean v0, p0, Lantlr/JavaCodeGenerator;->genAST:Z

    .line 1277
    iput-boolean v3, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 1279
    iput-object v1, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    return-void
.end method

.method protected genBitsets(Lantlr/collections/impl/Vector;I)V
    .locals 2

    const-string v0, ""

    .line 1295
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1296
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1297
    invoke-virtual {p1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/collections/impl/BitSet;

    .line 1299
    invoke-virtual {v1, p2}, Lantlr/collections/impl/BitSet;->growToInclude(I)V

    .line 1300
    invoke-direct {p0, v1, v0}, Lantlr/JavaCodeGenerator;->genBitSet(Lantlr/collections/impl/BitSet;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected genBlockInitAction(Lantlr/AlternativeBlock;)V
    .locals 3

    .line 1396
    iget-object v0, p1, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p1, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLine()I

    move-result p1

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->printAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected genBlockPreamble(Lantlr/AlternativeBlock;)V
    .locals 8

    .line 1408
    instance-of v0, p1, Lantlr/RuleBlock;

    if-eqz v0, :cond_7

    .line 1409
    check-cast p1, Lantlr/RuleBlock;

    .line 1410
    iget-object v0, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 1411
    :goto_0
    iget-object v1, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1412
    iget-object v1, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/AlternativeElement;

    .line 1419
    instance-of v2, v1, Lantlr/RuleRefElement;

    const-string v3, ";"

    const-string v4, " = "

    const-string v5, " "

    if-nez v2, :cond_2

    instance-of v6, v1, Lantlr/AlternativeBlock;

    if-eqz v6, :cond_0

    instance-of v6, v1, Lantlr/RuleBlock;

    if-nez v6, :cond_0

    instance-of v6, v1, Lantlr/SynPredBlock;

    if-nez v6, :cond_0

    goto :goto_1

    .line 1459
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1463
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_6

    .line 1464
    instance-of v2, v1, Lantlr/GrammarAtom;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lantlr/GrammarAtom;

    invoke-virtual {v2}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1467
    invoke-virtual {v2}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1470
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    goto/16 :goto_2

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 1426
    move-object v2, v1

    check-cast v2, Lantlr/AlternativeBlock;

    iget-boolean v6, v2, Lantlr/AlternativeBlock;->not:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lantlr/JavaCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v7, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/LexerGrammar;

    invoke-interface {v6, v2, v7}, Lantlr/LLkGrammarAnalyzer;->subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1434
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1435
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_6

    .line 1436
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    goto :goto_2

    .line 1440
    :cond_3
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_4

    .line 1444
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    .line 1446
    :cond_4
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-eqz v2, :cond_5

    .line 1447
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Token "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "=null;"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1449
    :cond_5
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_6

    .line 1452
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/JavaCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected genCases(Lantlr/collections/impl/BitSet;)V
    .locals 8

    .line 1483
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "genCases("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1486
    :cond_0
    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object p1

    .line 1488
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1491
    :goto_1
    array-length v6, p1

    const-string v7, ""

    if-ge v3, v6, :cond_4

    if-ne v5, v1, :cond_2

    .line 1493
    invoke-virtual {p0, v7}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v4, "  "

    .line 1496
    invoke-virtual {p0, v4}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 1498
    :goto_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "case "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget v6, p1, v3

    invoke-direct {p0, v6}, Lantlr/JavaCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    if-ne v5, v0, :cond_3

    .line 1501
    invoke-virtual {p0, v7}, Lantlr/JavaCodeGenerator;->_println(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    .line 1511
    invoke-virtual {p0, v7}, Lantlr/JavaCodeGenerator;->_println(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/JavaBlockFinishingInfo;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1531
    new-instance v2, Lantlr/JavaBlockFinishingInfo;

    invoke-direct {v2}, Lantlr/JavaBlockFinishingInfo;-><init>()V

    .line 1532
    iget-boolean v3, v0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "genCommonBlock("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1535
    :cond_0
    iget-boolean v3, v0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 1536
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, v0, Lantlr/JavaCodeGenerator;->genAST:Z

    .line 1538
    iget-boolean v6, v0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v6, :cond_2

    .line 1539
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, v0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 1542
    iget-boolean v7, v1, Lantlr/AlternativeBlock;->not:Z

    const-string v8, ""

    if-eqz v7, :cond_7

    iget-object v7, v0, Lantlr/JavaCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v9, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v9, v9, Lantlr/LexerGrammar;

    invoke-interface {v7, v1, v9}, Lantlr/LLkGrammarAnalyzer;->subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1546
    iget-boolean v3, v0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v3, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "special case: ~(subrule)"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1547
    :cond_3
    iget-object v3, v0, Lantlr/JavaCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v3, v5, v1}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object v3

    .line 1549
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget v4, v0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    if-nez v4, :cond_4

    .line 1550
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v0, Lantlr/JavaCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1554
    :cond_4
    invoke-direct/range {p0 .. p1}, Lantlr/JavaCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 1557
    iget-object v1, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-eqz v1, :cond_5

    const-string v8, "_t,"

    .line 1562
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "match("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v3}, Lantlr/JavaCodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result v3

    invoke-virtual {v0, v3}, Lantlr/JavaCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ");"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1565
    iget-object v1, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-eqz v1, :cond_6

    const-string v1, "_t = _t.getNextSibling();"

    .line 1566
    invoke-virtual {v0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_6
    return-object v2

    .line 1572
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v7

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-ne v7, v5, :cond_a

    .line 1573
    invoke-virtual {v1, v4}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v7

    .line 1575
    iget-object v9, v7, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v9, :cond_8

    .line 1576
    iget-object v9, v0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v10, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v10}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v4}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v11

    iget-object v11, v11, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v11}, Lantlr/SynPredBlock;->getLine()I

    move-result v11

    invoke-virtual {v1, v4}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v12

    iget-object v12, v12, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v12}, Lantlr/SynPredBlock;->getColumn()I

    move-result v12

    const-string v13, "Syntactic predicate superfluous for single alternative"

    invoke-virtual {v9, v13, v10, v11, v12}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_8
    if-eqz p2, :cond_a

    .line 1584
    iget-object v3, v7, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1586
    iget-object v3, v7, Lantlr/Alternative;->semPred:Ljava/lang/String;

    iget v4, v1, Lantlr/AlternativeBlock;->line:I

    invoke-virtual {v0, v3, v4}, Lantlr/JavaCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    .line 1588
    :cond_9
    invoke-virtual {v0, v7, v1}, Lantlr/JavaCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    return-object v2

    :cond_a
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1603
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v10

    invoke-virtual {v10}, Lantlr/collections/impl/Vector;->size()I

    move-result v10

    if-ge v7, v10, :cond_c

    .line 1604
    invoke-virtual {v1, v7}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v10

    .line 1605
    invoke-static {v10}, Lantlr/JavaCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v10

    if-eqz v10, :cond_b

    add-int/lit8 v9, v9, 0x1

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1611
    :cond_c
    iget v7, v0, Lantlr/JavaCodeGenerator;->makeSwitchThreshold:I

    const-string/jumbo v10, "{"

    const-string v11, "if (_t==null) _t=ASTNULL;"

    const-string/jumbo v12, "}"

    if-lt v9, v7, :cond_11

    .line 1613
    invoke-direct {v0, v5}, Lantlr/JavaCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v7

    .line 1616
    iget-object v9, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v9, v9, Lantlr/TreeWalkerGrammar;

    if-eqz v9, :cond_d

    .line 1617
    invoke-virtual {v0, v11}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1619
    :cond_d
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "switch ( "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, ") {"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 1620
    :goto_3
    iget-object v9, v1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v9}, Lantlr/collections/impl/Vector;->size()I

    move-result v9

    if-ge v7, v9, :cond_10

    .line 1621
    invoke-virtual {v1, v7}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v9

    .line 1624
    invoke-static {v9}, Lantlr/JavaCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v13

    if-nez v13, :cond_e

    goto :goto_4

    .line 1627
    :cond_e
    iget-object v13, v9, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v13, v13, v5

    .line 1628
    iget-object v14, v13, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v14}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v14

    if-nez v14, :cond_f

    invoke-virtual {v13}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v14

    if-nez v14, :cond_f

    .line 1629
    iget-object v13, v0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v14, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v14}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v9, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    invoke-virtual {v15}, Lantlr/AlternativeElement;->getLine()I

    move-result v15

    iget-object v9, v9, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    invoke-virtual {v9}, Lantlr/AlternativeElement;->getColumn()I

    move-result v9

    const-string v4, "Alternate omitted due to empty prediction set"

    invoke-virtual {v13, v4, v14, v15, v9}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    .line 1634
    :cond_f
    iget-object v4, v13, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v4}, Lantlr/JavaCodeGenerator;->genCases(Lantlr/collections/impl/BitSet;)V

    .line 1635
    invoke-virtual {v0, v10}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1636
    iget v4, v0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v4, v5

    iput v4, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 1637
    invoke-virtual {v0, v9, v1}, Lantlr/JavaCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    const-string v4, "break;"

    .line 1638
    invoke-virtual {v0, v4}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1639
    iget v4, v0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v4, v5

    iput v4, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 1640
    invoke-virtual {v0, v12}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_10
    const-string v4, "default:"

    .line 1643
    invoke-virtual {v0, v4}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1644
    iget v4, v0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v4, v5

    iput v4, v0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v4, 0x1

    goto :goto_5

    :cond_11
    const/4 v4, 0x0

    .line 1660
    :goto_5
    iget-object v7, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/LexerGrammar;

    if-eqz v7, :cond_12

    iget-object v7, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget v7, v7, Lantlr/Grammar;->maxk:I

    goto :goto_6

    :cond_12
    const/4 v7, 0x0

    :goto_6
    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_7
    if-ltz v7, :cond_27

    .line 1662
    iget-boolean v14, v0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v14, :cond_13

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "checking depth "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_13
    const/4 v5, 0x0

    .line 1663
    :goto_8
    iget-object v14, v1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v14}, Lantlr/collections/impl/Vector;->size()I

    move-result v14

    if-ge v5, v14, :cond_26

    .line 1664
    invoke-virtual {v1, v5}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v14

    .line 1665
    iget-boolean v15, v0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v15, :cond_14

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v17, v8

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v18, v6

    const-string v6, "genAlt: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    move/from16 v18, v6

    move-object/from16 v17, v8

    :goto_9
    if-eqz v4, :cond_15

    .line 1670
    invoke-static {v14}, Lantlr/JavaCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1671
    iget-boolean v6, v0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v6, :cond_18

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "ignoring alt because it was in the switch"

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 1678
    :cond_15
    iget-object v6, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/LexerGrammar;

    if-eqz v6, :cond_1a

    .line 1682
    iget v6, v14, Lantlr/Alternative;->lookaheadDepth:I

    const v8, 0x7fffffff

    if-ne v6, v8, :cond_16

    .line 1685
    iget-object v6, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    :cond_16
    :goto_a
    const/4 v8, 0x1

    if-lt v6, v8, :cond_17

    .line 1687
    iget-object v8, v14, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v8

    if-eqz v8, :cond_17

    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    :cond_17
    if-eq v6, v7, :cond_19

    .line 1694
    iget-boolean v8, v0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v8, :cond_18

    .line 1695
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "ignoring alt because effectiveDepth!=altDepth;"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, "!="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_18
    :goto_b
    move-object/from16 v23, v2

    move/from16 v20, v3

    move/from16 p2, v4

    move/from16 v22, v5

    move/from16 v21, v7

    move-object/from16 v19, v10

    goto/16 :goto_11

    .line 1698
    :cond_19
    invoke-virtual {v0, v14, v6}, Lantlr/JavaCodeGenerator;->lookaheadIsEmpty(Lantlr/Alternative;I)Z

    move-result v8

    .line 1699
    invoke-virtual {v0, v14, v6}, Lantlr/JavaCodeGenerator;->getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    .line 1702
    :cond_1a
    iget-object v6, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    invoke-virtual {v0, v14, v6}, Lantlr/JavaCodeGenerator;->lookaheadIsEmpty(Lantlr/Alternative;I)Z

    move-result v8

    .line 1703
    iget-object v6, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    invoke-virtual {v0, v14, v6}, Lantlr/JavaCodeGenerator;->getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;

    move-result-object v6

    .line 1708
    :goto_c
    iget-object v15, v14, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    iget-object v15, v15, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v15}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v15

    move/from16 p2, v4

    const-string v4, "if "

    move/from16 v20, v3

    const-string v3, "else if "

    move/from16 v21, v7

    const-string v7, " {"

    move/from16 v22, v5

    const/16 v5, 0x7f

    if-le v15, v5, :cond_1c

    invoke-static {v14}, Lantlr/JavaCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v5

    if-eqz v5, :cond_1c

    if-nez v13, :cond_1b

    .line 1711
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 1714
    :cond_1b
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :goto_d
    move-object/from16 v23, v2

    move-object/from16 v19, v10

    goto/16 :goto_10

    :cond_1c
    const-string v5, "else {"

    if-eqz v8, :cond_1e

    .line 1717
    iget-object v8, v14, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-nez v8, :cond_1e

    iget-object v8, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-nez v8, :cond_1e

    if-nez v13, :cond_1d

    .line 1725
    invoke-virtual {v0, v10}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 1728
    :cond_1d
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :goto_e
    const/4 v3, 0x0

    .line 1730
    iput-boolean v3, v2, Lantlr/JavaBlockFinishingInfo;->needAnErrorClause:Z

    goto :goto_d

    .line 1736
    :cond_1e
    iget-object v8, v14, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v8, :cond_21

    .line 1740
    new-instance v8, Lantlr/ActionTransInfo;

    invoke-direct {v8}, Lantlr/ActionTransInfo;-><init>()V

    .line 1741
    iget-object v15, v14, Lantlr/Alternative;->semPred:Ljava/lang/String;

    move-object/from16 v19, v10

    iget v10, v1, Lantlr/AlternativeBlock;->line:I

    move-object/from16 v23, v2

    iget-object v2, v0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v0, v15, v10, v2, v8}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    .line 1749
    iget-object v8, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v8, v8, Lantlr/ParserGrammar;

    const-string v10, "))"

    const-string v15, "("

    if-nez v8, :cond_1f

    iget-object v8, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v8, v8, Lantlr/LexerGrammar;

    if-eqz v8, :cond_20

    :cond_1f
    iget-object v8, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v8, v8, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v8, :cond_20

    .line 1752
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "&& fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.PREDICTING,"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v0, Lantlr/JavaCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v6, v2}, Lantlr/CharFormatter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/JavaCodeGenerator;->addSemPred(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, ","

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    .line 1756
    :cond_20
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "&&("

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    :cond_21
    move-object/from16 v23, v2

    move-object/from16 v19, v10

    :goto_f
    if-lez v13, :cond_23

    .line 1762
    iget-object v2, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v2, :cond_22

    .line 1763
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1764
    iget v2, v0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 1765
    iget-object v2, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v0, v2, v6}, Lantlr/JavaCodeGenerator;->genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 1769
    :cond_22
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_10

    .line 1773
    :cond_23
    iget-object v2, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v2, :cond_24

    .line 1774
    iget-object v2, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v0, v2, v6}, Lantlr/JavaCodeGenerator;->genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V

    goto :goto_10

    .line 1779
    :cond_24
    iget-object v2, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_25

    .line 1780
    invoke-virtual {v0, v11}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 1782
    :cond_25
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :goto_10
    add-int/lit8 v13, v13, 0x1

    .line 1789
    iget v2, v0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 1790
    invoke-virtual {v0, v14, v1}, Lantlr/JavaCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    .line 1791
    iget v2, v0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v2, v3

    iput v2, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 1792
    invoke-virtual {v0, v12}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :goto_11
    add-int/lit8 v5, v22, 0x1

    move/from16 v4, p2

    move-object/from16 v8, v17

    move/from16 v6, v18

    move-object/from16 v10, v19

    move/from16 v3, v20

    move/from16 v7, v21

    move-object/from16 v2, v23

    goto/16 :goto_8

    :cond_26
    move-object/from16 v23, v2

    move/from16 v20, v3

    move/from16 p2, v4

    move/from16 v18, v6

    move/from16 v21, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v10

    add-int/lit8 v7, v21, -0x1

    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_27
    move-object/from16 v23, v2

    move/from16 v20, v3

    move/from16 p2, v4

    move/from16 v18, v6

    move-object/from16 v17, v8

    move-object/from16 v1, v17

    const/4 v8, 0x1

    :goto_12
    if-gt v8, v9, :cond_28

    .line 1797
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_28
    move/from16 v2, v20

    .line 1801
    iput-boolean v2, v0, Lantlr/JavaCodeGenerator;->genAST:Z

    move/from16 v2, v18

    .line 1804
    iput-boolean v2, v0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz p2, :cond_2a

    .line 1808
    iget v2, v0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 1809
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    iput-object v1, v2, Lantlr/JavaBlockFinishingInfo;->postscript:Ljava/lang/String;

    .line 1810
    iput-boolean v3, v2, Lantlr/JavaBlockFinishingInfo;->generatedSwitch:Z

    if-lez v13, :cond_29

    const/4 v4, 0x1

    goto :goto_13

    :cond_29
    const/4 v4, 0x0

    .line 1811
    :goto_13
    iput-boolean v4, v2, Lantlr/JavaBlockFinishingInfo;->generatedAnIf:Z

    goto :goto_15

    :cond_2a
    move-object/from16 v2, v23

    const/4 v3, 0x1

    .line 1816
    iput-object v1, v2, Lantlr/JavaBlockFinishingInfo;->postscript:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1817
    iput-boolean v1, v2, Lantlr/JavaBlockFinishingInfo;->generatedSwitch:Z

    if-lez v13, :cond_2b

    const/4 v4, 0x1

    goto :goto_14

    :cond_2b
    const/4 v4, 0x0

    .line 1818
    :goto_14
    iput-boolean v4, v2, Lantlr/JavaBlockFinishingInfo;->generatedAnIf:Z

    :goto_15
    return-object v2
.end method

.method protected genHeader()V
    .locals 4

    .line 2074
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "// $ANTLR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/Tool;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v3, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v3, v3, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lantlr/Tool;->fileMinusPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".java\"$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genMatch(Lantlr/GrammarAtom;)V
    .locals 3

    .line 2092
    instance-of v0, p1, Lantlr/StringLiteralElement;

    if-eqz v0, :cond_1

    .line 2093
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_0

    .line 2094
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatchUsingAtomText(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2097
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatchUsingAtomTokenType(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2100
    :cond_1
    instance-of v0, p1, Lantlr/CharLiteralElement;

    if-eqz v0, :cond_3

    .line 2101
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_2

    .line 2102
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatchUsingAtomText(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2105
    :cond_2
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "cannot ref character literals in grammar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 2108
    :cond_3
    instance-of v0, p1, Lantlr/TokenRefElement;

    if-eqz v0, :cond_4

    .line 2109
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->genMatchUsingAtomText(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2111
    :cond_4
    instance-of v0, p1, Lantlr/WildcardElement;

    if-eqz v0, :cond_5

    .line 2112
    check-cast p1, Lantlr/WildcardElement;

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->gen(Lantlr/WildcardElement;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected genMatch(Lantlr/collections/impl/BitSet;)V
    .locals 0

    return-void
.end method

.method protected genMatchUsingAtomText(Lantlr/GrammarAtom;)V
    .locals 3

    .line 2119
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_0

    const-string v0, "_t,"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2124
    :goto_0
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getAutoGenType()I

    move-result v1

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v1, "_saveIndex=text.length();"

    .line 2125
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2128
    :cond_2
    iget-boolean v1, p1, Lantlr/GrammarAtom;->not:Z

    if-eqz v1, :cond_3

    const-string v1, "matchNot("

    goto :goto_1

    :cond_3
    const-string v1, "match("

    :goto_1
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2132
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    const-string v1, "EOF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Token.EOF_TYPE"

    .line 2134
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_2

    .line 2137
    :cond_4
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    :goto_2
    const-string v0, ");"

    .line 2139
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2141
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->saveText:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getAutoGenType()I

    move-result p1

    if-ne p1, v2, :cond_6

    :cond_5
    const-string p1, "text.setLength(_saveIndex);"

    .line 2142
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected genMatchUsingAtomTokenType(Lantlr/GrammarAtom;)V
    .locals 2

    .line 2149
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_0

    const-string v0, "_t,"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2155
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lantlr/JavaCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2158
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean p1, p1, Lantlr/GrammarAtom;->not:Z

    if-eqz p1, :cond_1

    const-string p1, "matchNot("

    goto :goto_1

    :cond_1
    const-string p1, "match("

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genNextToken()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2169
    :goto_0
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    const-string v3, "public"

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    .line 2170
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/RuleSymbol;

    .line 2171
    invoke-virtual {v2}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, v2, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "\t\tthrow new TokenStreamException(cse.getMessage());"

    const-string v5, "public Token nextToken() throws TokenStreamException {"

    const-string v6, "\t}"

    const-string v7, ""

    const-string/jumbo v8, "}"

    if-nez v1, :cond_2

    .line 2177
    invoke-virtual {p0, v7}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2178
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\ttry {uponEOF();}"

    .line 2179
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\tcatch(CharStreamIOException csioe) {"

    .line 2180
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\t\tthrow new TokenStreamIOException(csioe.io);"

    .line 2181
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2182
    invoke-virtual {p0, v6}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\tcatch(CharStreamException cse) {"

    .line 2183
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2184
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2185
    invoke-virtual {p0, v6}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\treturn new CommonToken(Token.EOF_TYPE, \"\");"

    .line 2186
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {p0, v8}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {p0, v7}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 2193
    :cond_2
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v9, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v9, v9, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    const-string v10, "nextToken"

    invoke-static {v1, v9, v10}, Lantlr/MakeGrammar;->createNextTokenRule(Lantlr/Grammar;Lantlr/collections/impl/Vector;Ljava/lang/String;)Lantlr/RuleBlock;

    move-result-object v1

    .line 2195
    new-instance v9, Lantlr/RuleSymbol;

    const-string v10, "mnextToken"

    invoke-direct {v9, v10}, Lantlr/RuleSymbol;-><init>(Ljava/lang/String;)V

    .line 2196
    invoke-virtual {v9}, Lantlr/RuleSymbol;->setDefined()V

    .line 2197
    invoke-virtual {v9, v1}, Lantlr/RuleSymbol;->setBlock(Lantlr/RuleBlock;)V

    const-string v10, "private"

    .line 2198
    iput-object v10, v9, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    .line 2199
    iget-object v10, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v10, v9}, Lantlr/Grammar;->define(Lantlr/RuleSymbol;)V

    .line 2201
    iget-object v9, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v9, v9, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v9, v1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    const/4 v9, 0x0

    .line 2205
    iget-object v10, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v10, Lantlr/LexerGrammar;

    iget-boolean v10, v10, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v10, :cond_3

    .line 2206
    iget-object v9, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v9, Lantlr/LexerGrammar;

    iget-object v9, v9, Lantlr/LexerGrammar;->filterRule:Ljava/lang/String;

    .line 2209
    :cond_3
    invoke-virtual {p0, v7}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2211
    iget v5, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v5, v4

    iput v5, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string v5, "Token theRetToken=null;"

    .line 2212
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "tryAgain:"

    .line 2213
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->_println(Ljava/lang/String;)V

    const-string v5, "for (;;) {"

    .line 2214
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2215
    iget v5, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v5, v4

    iput v5, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string v5, "Token _token = null;"

    .line 2216
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "int _ttype = Token.INVALID_TYPE;"

    .line 2217
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2218
    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v5, Lantlr/LexerGrammar;

    iget-boolean v5, v5, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v5, :cond_7

    const-string v5, "setCommitToPath(false);"

    .line 2219
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    if-eqz v9, :cond_7

    .line 2222
    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-static {v9}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lantlr/Grammar;->isDefined(Ljava/lang/String;)Z

    move-result v5

    const-string v10, " does not exist in this lexer"

    const-string v11, "Filter rule "

    if-nez v5, :cond_4

    .line 2223
    iget-object v3, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 2226
    :cond_4
    iget-object v5, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-static {v9}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v5

    check-cast v5, Lantlr/RuleSymbol;

    .line 2227
    invoke-virtual {v5}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v12

    if-nez v12, :cond_5

    .line 2228
    iget-object v3, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 2230
    :cond_5
    iget-object v5, v5, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2231
    iget-object v3, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " must be protected"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lantlr/Tool;->error(Ljava/lang/String;)V

    :cond_6
    :goto_2
    const-string v3, "int _m;"

    .line 2234
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v3, "_m = mark();"

    .line 2235
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    const-string v3, "resetText();"

    .line 2238
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "try {   // for char stream error handling"

    .line 2240
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2241
    iget v5, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v5, v4

    iput v5, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string v5, "try {   // for lexical error handling"

    .line 2244
    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2245
    iget v5, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v5, v4

    iput v5, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v5, 0x0

    .line 2248
    :goto_3
    invoke-virtual {v1}, Lantlr/RuleBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v10

    invoke-virtual {v10}, Lantlr/collections/impl/Vector;->size()I

    move-result v10

    if-ge v5, v10, :cond_9

    .line 2249
    invoke-virtual {v1, v5}, Lantlr/RuleBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v10

    .line 2250
    iget-object v11, v10, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v11, v11, v4

    invoke-virtual {v11}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2252
    iget-object v10, v10, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    check-cast v10, Lantlr/RuleRefElement;

    .line 2253
    iget-object v10, v10, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-static {v10}, Lantlr/CodeGenerator;->decodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2254
    iget-object v11, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "public lexical rule "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " is optional (can match \"nothing\")"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    const-string v5, "line.separator"

    .line 2259
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2260
    invoke-virtual {p0, v1, v0}, Lantlr/JavaCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/JavaBlockFinishingInfo;

    move-result-object v0

    .line 2262
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "if (LA(1)==EOF_CHAR) {uponEOF(); _returnToken = makeToken(Token.EOF_TYPE);}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, "\t\t\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2263
    iget-object v11, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v11, Lantlr/LexerGrammar;

    iget-boolean v11, v11, Lantlr/LexerGrammar;->filterMode:Z

    const-string v12, "(false);}"

    const-string v13, "else {"

    if-eqz v11, :cond_b

    if-nez v9, :cond_a

    .line 2265
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "else {consume(); continue tryAgain;}"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 2268
    :cond_a
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\t\t\t\t\tcommit();"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\t\t\t\t\ttry {m"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\t\t\t\t\tcatch(RecognitionException e) {"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\t\t\t\t\t\t// catastrophic failure"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\t\t\t\t\t\treportError(e);"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\t\t\t\t\t\tconsume();"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\t\t\t\t\t}"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\t\t\t\t\tcontinue tryAgain;"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\t\t\t\t}"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 2281
    :cond_b
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2283
    :goto_4
    invoke-direct {p0, v0, v5}, Lantlr/JavaCodeGenerator;->genBlockFinish(Lantlr/JavaBlockFinishingInfo;Ljava/lang/String;)V

    .line 2286
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-boolean v0, v0, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v0, :cond_c

    if-eqz v9, :cond_c

    const-string v0, "commit();"

    .line 2287
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_c
    const-string v0, "if ( _returnToken==null ) continue tryAgain; // found SKIP token"

    .line 2293
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "_ttype = _returnToken.getType();"

    .line 2294
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2295
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    invoke-virtual {v0}, Lantlr/LexerGrammar;->getTestLiterals()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2296
    invoke-direct {p0}, Lantlr/JavaCodeGenerator;->genLiteralsTest()V

    :cond_d
    const-string v0, "_returnToken.setType(_ttype);"

    .line 2300
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "return _returnToken;"

    .line 2301
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2304
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2305
    invoke-virtual {p0, v8}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "catch (RecognitionException e) {"

    .line 2306
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2307
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2308
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-boolean v0, v0, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v0, :cond_f

    if-nez v9, :cond_e

    const-string v0, "if ( !getCommitToPath() ) {consume(); continue tryAgain;}"

    .line 2310
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const-string v0, "if ( !getCommitToPath() ) {"

    .line 2313
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2314
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string v0, "rewind(_m);"

    .line 2315
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2316
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2317
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "try {m"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "catch(RecognitionException ee) {"

    .line 2318
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\t// horrendous failure: error in filter rule"

    .line 2319
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\treportError(ee);"

    .line 2320
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\tconsume();"

    .line 2321
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2322
    invoke-virtual {p0, v8}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "continue tryAgain;"

    .line 2323
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2324
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2325
    invoke-virtual {p0, v8}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2328
    :cond_f
    :goto_5
    invoke-virtual {v1}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "reportError(e);"

    .line 2329
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "consume();"

    .line 2330
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    const-string v0, "throw new TokenStreamRecognitionException(e);"

    .line 2334
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2336
    :goto_6
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2337
    invoke-virtual {p0, v8}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2340
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2341
    invoke-virtual {p0, v8}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "catch (CharStreamException cse) {"

    .line 2342
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\tif ( cse instanceof CharStreamIOException ) {"

    .line 2343
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\t\tthrow new TokenStreamIOException(((CharStreamIOException)cse).io);"

    .line 2344
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2345
    invoke-virtual {p0, v6}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\telse {"

    .line 2346
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2348
    invoke-virtual {p0, v6}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2349
    invoke-virtual {p0, v8}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2352
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2353
    invoke-virtual {p0, v8}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2356
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2357
    invoke-virtual {p0, v8}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {p0, v7}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genRule(Lantlr/RuleSymbol;ZI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x1

    .line 2378
    iput v3, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2380
    iget-boolean v4, v0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    const-string v5, ")"

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "genRule("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2381
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2382
    iget-object v2, v0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "undefined rule: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-void

    .line 2387
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v4

    .line 2389
    iput-object v4, v0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    .line 2390
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lantlr/JavaCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 2393
    iget-object v6, v0, Lantlr/JavaCodeGenerator;->declaredASTVariables:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    .line 2396
    iget-boolean v6, v0, Lantlr/JavaCodeGenerator;->genAST:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 2397
    invoke-virtual {v4}, Lantlr/RuleBlock;->getAutoGen()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, v0, Lantlr/JavaCodeGenerator;->genAST:Z

    .line 2400
    invoke-virtual {v4}, Lantlr/RuleBlock;->getAutoGen()Z

    move-result v8

    iput-boolean v8, v0, Lantlr/JavaCodeGenerator;->saveText:Z

    .line 2403
    iget-object v8, v1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 2404
    iget-object v8, v1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lantlr/JavaCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2408
    :cond_3
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " final "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    .line 2411
    iget-object v8, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    const-string v9, " "

    if-eqz v8, :cond_4

    .line 2413
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v4}, Lantlr/RuleBlock;->getLine()I

    move-result v11

    invoke-virtual {v4}, Lantlr/RuleBlock;->getColumn()I

    move-result v12

    invoke-virtual {v0, v10, v11, v12}, Lantlr/JavaCodeGenerator;->extractTypeOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v8, "void "

    .line 2417
    invoke-virtual {v0, v8}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2421
    :goto_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2424
    iget-object v8, v0, Lantlr/JavaCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2425
    iget-object v8, v0, Lantlr/JavaCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v4, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-eqz v8, :cond_5

    const-string v8, ","

    .line 2426
    invoke-virtual {v0, v8}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2430
    :cond_5
    iget-object v8, v4, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    const-string v10, ""

    if-eqz v8, :cond_6

    .line 2432
    invoke-virtual {v0, v10}, Lantlr/JavaCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2433
    iget v8, v0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v8, v3

    iput v8, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2434
    iget-object v8, v4, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2435
    iget v8, v0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v8, v3

    iput v8, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2436
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 2440
    :cond_6
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2444
    :goto_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, " throws "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v0, Lantlr/JavaCodeGenerator;->exceptionThrown:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2445
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/ParserGrammar;

    if-eqz v5, :cond_7

    const-string v5, ", TokenStreamException"

    .line 2446
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_3

    .line 2448
    :cond_7
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/LexerGrammar;

    if-eqz v5, :cond_8

    const-string v5, ", CharStreamException, TokenStreamException"

    .line 2449
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2452
    :cond_8
    :goto_3
    iget-object v5, v4, Lantlr/RuleBlock;->throwsSpec:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 2453
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/LexerGrammar;

    if-eqz v5, :cond_9

    .line 2454
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "user-defined throws spec not allowed (yet) for lexer rule "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v11, v4, Lantlr/RuleBlock;->ruleName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 2457
    :cond_9
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v4, Lantlr/RuleBlock;->throwsSpec:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    :cond_a
    :goto_4
    const-string v5, " {"

    .line 2461
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2462
    iget v5, v0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v5, v3

    iput v5, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2465
    iget-object v5, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    const-string v8, ";"

    if-eqz v5, :cond_b

    .line 2466
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v11, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2469
    :cond_b
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->commonLocalVars:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2471
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->traceRules:Z

    const-string v11, "\",_t);"

    const-string v12, "\");"

    if-eqz v5, :cond_d

    .line 2472
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/TreeWalkerGrammar;

    const-string v13, "traceIn(\""

    if-eqz v5, :cond_c

    .line 2473
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 2476
    :cond_c
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2480
    :cond_d
    :goto_5
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/LexerGrammar;

    if-eqz v5, :cond_f

    .line 2483
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v13, "mEOF"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "_ttype = Token.EOF_TYPE;"

    .line 2484
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2486
    :cond_e
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "_ttype = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :goto_6
    const-string v5, "int _saveIndex;"

    .line 2487
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2497
    :cond_f
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->debuggingOutput:Z

    const-string v13, ",_ttype);"

    const-string v14, ",0);"

    if-eqz v5, :cond_11

    .line 2498
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/ParserGrammar;

    const-string v15, "fireEnterRule("

    if-eqz v5, :cond_10

    .line 2499
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2500
    :cond_10
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/LexerGrammar;

    if-eqz v5, :cond_11

    .line 2501
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2504
    :cond_11
    :goto_7
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->debuggingOutput:Z

    if-nez v5, :cond_12

    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->traceRules:Z

    if-eqz v5, :cond_13

    :cond_12
    const-string v5, "try { // debugging"

    .line 2505
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2506
    iget v5, v0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v5, v3

    iput v5, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2510
    :cond_13
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/TreeWalkerGrammar;

    if-eqz v5, :cond_14

    .line 2512
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v15, v0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v15, "_AST_in = (_t == ASTNULL) ? null : ("

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v15, v0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v15, ")_t;"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2514
    :cond_14
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->buildAST:Z

    if-eqz v5, :cond_15

    const-string v5, "returnAST = null;"

    .line 2516
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "ASTPair currentAST = new ASTPair();"

    .line 2519
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2521
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v15, v0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "_AST = null;"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2524
    :cond_15
    invoke-virtual {v0, v4}, Lantlr/JavaCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 2525
    invoke-virtual {v0, v4}, Lantlr/JavaCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 2526
    invoke-virtual {v0, v10}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2529
    invoke-virtual {v4, v10}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object v5

    if-nez v5, :cond_16

    .line 2532
    invoke-virtual {v4}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v9

    if-eqz v9, :cond_17

    :cond_16
    const-string v9, "try {      // for error handling"

    .line 2533
    invoke-virtual {v0, v9}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2534
    iget v9, v0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v9, v3

    iput v9, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2538
    :cond_17
    iget-object v9, v4, Lantlr/RuleBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v9}, Lantlr/collections/impl/Vector;->size()I

    move-result v9

    if-ne v9, v3, :cond_1a

    .line 2540
    invoke-virtual {v4, v7}, Lantlr/RuleBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v7

    .line 2541
    iget-object v9, v7, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v9, :cond_18

    .line 2543
    iget-object v15, v0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget v15, v15, Lantlr/RuleBlock;->line:I

    invoke-virtual {v0, v9, v15}, Lantlr/JavaCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    .line 2544
    :cond_18
    iget-object v9, v7, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v9, :cond_19

    .line 2545
    iget-object v9, v0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v15, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v15}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v15

    iget-object v3, v7, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v3}, Lantlr/SynPredBlock;->getLine()I

    move-result v3

    move/from16 v16, v6

    iget-object v6, v7, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v6}, Lantlr/SynPredBlock;->getColumn()I

    move-result v6

    move-object/from16 v17, v10

    const-string v10, "Syntactic predicate ignored for single alternative"

    invoke-virtual {v9, v10, v15, v3, v6}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_8

    :cond_19
    move/from16 v16, v6

    move-object/from16 v17, v10

    .line 2552
    :goto_8
    invoke-virtual {v0, v7, v4}, Lantlr/JavaCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    goto :goto_9

    :cond_1a
    move/from16 v16, v6

    move-object/from16 v17, v10

    .line 2556
    iget-object v3, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v3, v4}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    .line 2558
    invoke-virtual {v0, v4, v7}, Lantlr/JavaCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/JavaBlockFinishingInfo;

    move-result-object v3

    .line 2559
    iget-object v6, v0, Lantlr/JavaCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-direct {v0, v3, v6}, Lantlr/JavaCodeGenerator;->genBlockFinish(Lantlr/JavaBlockFinishingInfo;Ljava/lang/String;)V

    :goto_9
    const-string/jumbo v3, "}"

    if-nez v5, :cond_1b

    .line 2563
    invoke-virtual {v4}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2565
    :cond_1b
    iget v6, v0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2566
    invoke-virtual {v0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_1c
    if-eqz v5, :cond_1d

    .line 2571
    invoke-direct {v0, v5}, Lantlr/JavaCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    goto/16 :goto_c

    .line 2573
    :cond_1d
    invoke-virtual {v4}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2575
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "catch ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v0, Lantlr/JavaCodeGenerator;->exceptionThrown:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " ex) {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2576
    iget v5, v0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2578
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v5, :cond_1e

    const-string v5, "if (inputState.guessing==0) {"

    .line 2579
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2580
    iget v5, v0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v5, v6

    iput v5, v0, Lantlr/JavaCodeGenerator;->tabs:I

    :cond_1e
    const-string v5, "reportError(ex);"

    .line 2582
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2583
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/TreeWalkerGrammar;

    if-nez v5, :cond_1f

    .line 2585
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v6, v4, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    const/4 v7, 0x1

    invoke-interface {v5, v7, v6}, Lantlr/LLkGrammarAnalyzer;->FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;

    move-result-object v5

    .line 2586
    iget-object v5, v5, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "consume();"

    .line 2587
    invoke-virtual {v0, v6}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2588
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "consumeUntil("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ");"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_1f
    const-string v5, "if (_t!=null) {_t = _t.getNextSibling();}"

    .line 2592
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2594
    :goto_a
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v5, :cond_20

    .line 2595
    iget v5, v0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, v0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo v5, "} else {"

    .line 2597
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "  throw ex;"

    .line 2598
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2599
    invoke-virtual {v0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_20
    const/4 v6, 0x1

    .line 2602
    :goto_b
    iget v5, v0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v5, v6

    iput v5, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2603
    invoke-virtual {v0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2607
    :cond_21
    :goto_c
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->buildAST:Z

    if-eqz v5, :cond_22

    .line 2608
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "returnAST = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "_AST;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2612
    :cond_22
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/TreeWalkerGrammar;

    if-eqz v5, :cond_23

    const-string v5, "_retTree = _t;"

    .line 2613
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2617
    :cond_23
    invoke-virtual {v4}, Lantlr/RuleBlock;->getTestLiterals()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2618
    iget-object v5, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    const-string v6, "protected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2619
    invoke-direct/range {p0 .. p0}, Lantlr/JavaCodeGenerator;->genLiteralsTestForPartialToken()V

    goto :goto_d

    .line 2622
    :cond_24
    invoke-direct/range {p0 .. p0}, Lantlr/JavaCodeGenerator;->genLiteralsTest()V

    .line 2627
    :cond_25
    :goto_d
    iget-object v5, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/LexerGrammar;

    if-eqz v5, :cond_26

    const-string v5, "if ( _createToken && _token==null && _ttype!=Token.SKIP ) {"

    .line 2628
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "\t_token = makeToken(_ttype);"

    .line 2629
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "\t_token.setText(new String(text.getBuffer(), _begin, text.length()-_begin));"

    .line 2630
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2631
    invoke-virtual {v0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "_returnToken = _token;"

    .line 2632
    invoke-virtual {v0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2636
    :cond_26
    iget-object v5, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v5, :cond_27

    .line 2637
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v4}, Lantlr/RuleBlock;->getLine()I

    move-result v7

    invoke-virtual {v4}, Lantlr/RuleBlock;->getColumn()I

    move-result v4

    invoke-virtual {v0, v6, v7, v4}, Lantlr/JavaCodeGenerator;->extractIdOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2640
    :cond_27
    iget-object v4, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->debuggingOutput:Z

    if-nez v4, :cond_29

    iget-object v4, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->traceRules:Z

    if-eqz v4, :cond_28

    goto :goto_e

    :cond_28
    const/4 v2, 0x1

    goto/16 :goto_11

    .line 2641
    :cond_29
    :goto_e
    iget v4, v0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo v4, "} finally { // debugging"

    .line 2642
    invoke-virtual {v0, v4}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2643
    iget v4, v0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/2addr v4, v5

    iput v4, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2646
    iget-object v4, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v4, :cond_2b

    .line 2647
    iget-object v4, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v4, v4, Lantlr/ParserGrammar;

    const-string v5, "fireExitRule("

    if-eqz v4, :cond_2a

    .line 2648
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 2649
    :cond_2a
    iget-object v4, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v4, v4, Lantlr/LexerGrammar;

    if-eqz v4, :cond_2b

    .line 2650
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2652
    :cond_2b
    :goto_f
    iget-object v2, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->traceRules:Z

    if-eqz v2, :cond_2d

    .line 2653
    iget-object v2, v0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    const-string v4, "traceOut(\""

    if-eqz v2, :cond_2c

    .line 2654
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_10

    .line 2657
    :cond_2c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2661
    :cond_2d
    :goto_10
    iget v1, v0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2662
    invoke-virtual {v0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2665
    :goto_11
    iget v1, v0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v1, v2

    iput v1, v0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2666
    invoke-virtual {v0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    move-object/from16 v1, v17

    .line 2667
    invoke-virtual {v0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    move/from16 v1, v16

    .line 2670
    iput-boolean v1, v0, Lantlr/JavaCodeGenerator;->genAST:Z

    return-void
.end method

.method protected genSemPred(Ljava/lang/String;I)V
    .locals 2

    .line 2734
    new-instance v0, Lantlr/ActionTransInfo;

    invoke-direct {v0}, Lantlr/ActionTransInfo;-><init>()V

    .line 2735
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, p1, p2, v1, v0}, Lantlr/JavaCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    .line 2737
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {p2, p1}, Lantlr/CharFormatter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2741
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_1

    .line 2742
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.VALIDATING,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->addSemPred(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2744
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "if (!("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "))"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2745
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "  throw new SemanticException(\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genSemPredMap()V
    .locals 3

    .line 2752
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, "private String _semPredNames[] = {"

    .line 2753
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2754
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2755
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "};"

    .line 2756
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V
    .locals 5

    .line 2760
    iget-boolean v0, p0, Lantlr/JavaCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    const-string v1, ")"

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "gen=>("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2763
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "boolean synPredMatched"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " = false;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2765
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "if ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ") {"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2766
    iget p2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2769
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p2, p2, Lantlr/TreeWalkerGrammar;

    if-eqz p2, :cond_1

    .line 2770
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "AST __t"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " = _t;"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2773
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "int _m"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " = mark();"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2777
    :goto_0
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "synPredMatched"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " = true;"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string p2, "inputState.guessing++;"

    .line 2778
    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2781
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p2, p2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p2, p2, Lantlr/ParserGrammar;

    if-nez p2, :cond_2

    iget-object p2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p2, p2, Lantlr/LexerGrammar;

    if-eqz p2, :cond_3

    :cond_2
    const-string p2, "fireSyntacticPredicateStarted();"

    .line 2783
    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2786
    :cond_3
    iget p2, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    const-string p2, "try {"

    .line 2787
    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2788
    iget p2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2789
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->gen(Lantlr/AlternativeBlock;)V

    .line 2790
    iget p2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo p2, "}"

    .line 2792
    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2793
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "catch ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/JavaCodeGenerator;->exceptionThrown:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " pe) {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2794
    iget v3, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2795
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2797
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2798
    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2801
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_4

    .line 2802
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "_t = __t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2805
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "rewind(_m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :goto_1
    const-string v0, "inputState.guessing--;"

    .line 2808
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2811
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-nez v0, :cond_5

    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_6

    .line 2813
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "if (synPredMatched"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  fireSyntacticPredicateSucceeded();"

    .line 2814
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "else"

    .line 2815
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  fireSyntacticPredicateFailed();"

    .line 2816
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2819
    :cond_6
    iget v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/JavaCodeGenerator;->syntacticPredLevel:I

    .line 2820
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2823
    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2826
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "if ( synPredMatched"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " ) {"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genTokenASTNodeMap()V
    .locals 8

    const-string v0, ""

    .line 2874
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "protected void buildTokenTypeASTClassMap() {"

    .line 2875
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2878
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2882
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2883
    :goto_0
    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 2884
    invoke-virtual {v0, v2}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 2886
    iget-object v6, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v6, v6, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v6, v5}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2887
    invoke-virtual {v5}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_0

    const-string v4, "tokenTypeToASTClassMap = new Hashtable();"

    .line 2891
    invoke-virtual {p0, v4}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 2894
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "tokenTypeToASTClassMap.put(new Integer("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lantlr/TokenSymbol;->getTokenType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, "), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ".class);"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    const-string v0, "tokenTypeToASTClassMap=null;"

    .line 2901
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2903
    :cond_3
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    sub-int/2addr v0, v1

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo v0, "};"

    .line 2904
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genTokenStrings()V
    .locals 7

    const-string v0, ""

    .line 2840
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "public static final String[] _tokenNames = {"

    .line 2841
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2842
    iget v1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2846
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v1

    const/4 v2, 0x0

    .line 2847
    :goto_0
    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2848
    invoke-virtual {v1, v2}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "<"

    if-nez v3, :cond_0

    .line 2850
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v5, "\""

    .line 2852
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2853
    iget-object v4, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v4, v3}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2854
    invoke-virtual {v4}, Lantlr/TokenSymbol;->getParaphrase()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2855
    invoke-virtual {v4}, Lantlr/TokenSymbol;->getParaphrase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v5}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2858
    :cond_1
    iget-object v4, p0, Lantlr/JavaCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v4, v3}, Lantlr/CharFormatter;->literalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->print(Ljava/lang/String;)V

    .line 2859
    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    const-string v3, ","

    .line 2860
    invoke-virtual {p0, v3}, Lantlr/JavaCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2862
    :cond_2
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->_println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2866
    :cond_3
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo v0, "};"

    .line 2867
    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genTokenTypes(Lantlr/TokenManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2912
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/JavaCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->setupOutput(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2914
    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2917
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->genHeader()V

    .line 2919
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lantlr/DefineGrammarSymbols;->getHeaderAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2923
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "public interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/JavaCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2924
    iget v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/JavaCodeGenerator;->tabs:I

    .line 2927
    invoke-interface {p1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v0

    const-string v1, "int EOF = 1;"

    .line 2930
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "int NULL_TREE_LOOKAHEAD = 3;"

    .line 2931
    invoke-virtual {p0, v1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 2933
    :goto_0
    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2934
    invoke-virtual {v0, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "\""

    .line 2936
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ";"

    const-string v5, "int "

    const-string v6, " = "

    if-eqz v3, :cond_3

    .line 2938
    invoke-interface {p1, v2}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v3

    check-cast v3, Lantlr/StringLiteralSymbol;

    if-nez v3, :cond_0

    .line 2940
    iget-object v3, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "String literal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " not in symbol table"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2942
    :cond_0
    iget-object v7, v3, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 2943
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v3, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2946
    :cond_1
    invoke-direct {p0, v2}, Lantlr/JavaCodeGenerator;->mangleLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2949
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2951
    iput-object v7, v3, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    goto :goto_1

    .line 2954
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "// "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v3, "<"

    .line 2958
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2959
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2965
    :cond_5
    iget p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/JavaCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 2966
    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->println(Ljava/lang/String;)V

    .line 2969
    iget-object p1, p0, Lantlr/JavaCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 2970
    iput-object p1, p0, Lantlr/JavaCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 2971
    invoke-virtual {p0}, Lantlr/JavaCodeGenerator;->exitIfError()V

    return-void
.end method

.method public getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 2998
    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3000
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "astFactory.create("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ",\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3005
    :cond_0
    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->getASTCreateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getASTCreateString(Lantlr/collections/impl/Vector;)Ljava/lang/String;
    .locals 5

    .line 2978
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2981
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2982
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")astFactory.make( (new ASTArray("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 2985
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    const-string v3, ")"

    if-ge v1, v2, :cond_1

    .line 2986
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ".add("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2988
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2989
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getASTCreateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3023
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2c

    if-ge v2, v4, :cond_2

    .line 3024
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    const-string v4, "("

    const-string v6, ")"

    if-ge v3, v2, :cond_7

    .line 3030
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 3031
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    if-lez v3, :cond_3

    .line 3034
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, p1

    .line 3037
    :goto_1
    iget-object v2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2, v1}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v1

    const-string v2, "astFactory.create("

    if-eqz v1, :cond_5

    .line 3039
    invoke-virtual {v1}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_4

    const-string v0, ",\"\""

    :cond_4
    if-eqz v1, :cond_5

    .line 3047
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ",\""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3053
    :cond_5
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    const-string v1, "AST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3054
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3056
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3060
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")astFactory.create("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;
    .locals 2

    .line 3095
    iget v0, p1, Lantlr/Alternative;->lookaheadDepth:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 3099
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "( true )"

    return-object p1

    .line 3108
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    invoke-virtual {p0, p1, v0}, Lantlr/JavaCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;
    .locals 5

    .line 3064
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "("

    .line 3067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-gt v1, p2, :cond_2

    .line 3069
    aget-object v3, p1, v1

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    if-nez v2, :cond_0

    const-string v2, ") && ("

    .line 3071
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v2, 0x0

    .line 3078
    aget-object v4, p1, v1

    invoke-virtual {v4}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "true"

    .line 3079
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3082
    :cond_1
    invoke-virtual {p0, v1, v3}, Lantlr/JavaCodeGenerator;->getLookaheadTestTerm(ILantlr/collections/impl/BitSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ")"

    .line 3085
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3087
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLookaheadTestTerm(ILantlr/collections/impl/BitSet;)Ljava/lang/String;
    .locals 4

    .line 3121
    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v0

    .line 3124
    invoke-virtual {p2}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object v1

    .line 3125
    invoke-static {v1}, Lantlr/JavaCodeGenerator;->elementsAreRange([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3126
    invoke-virtual {p0, p1, v1}, Lantlr/JavaCodeGenerator;->getRangeExpression(I[I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3131
    :cond_0
    invoke-virtual {p2}, Lantlr/collections/impl/BitSet;->degree()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "true"

    return-object p1

    .line 3136
    :cond_1
    iget v2, p0, Lantlr/JavaCodeGenerator;->bitsetTestThreshold:I

    if-lt p1, v2, :cond_2

    .line 3137
    invoke-virtual {p0, p2}, Lantlr/JavaCodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result p1

    .line 3138
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Lantlr/JavaCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ".member("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3142
    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p2, 0x0

    .line 3143
    :goto_0
    array-length v2, v1

    if-ge p2, v2, :cond_4

    .line 3145
    aget v2, v1, p2

    invoke-direct {p0, v2}, Lantlr/JavaCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v2

    if-lez p2, :cond_3

    const-string/jumbo v3, "||"

    .line 3148
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3149
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "=="

    .line 3150
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3151
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3153
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRangeExpression(I[I)Ljava/lang/String;
    .locals 3

    .line 3162
    invoke-static {p2}, Lantlr/JavaCodeGenerator;->elementsAreRange([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3163
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "getRangeExpression called with non-range"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3165
    aget v0, p2, v0

    .line 3166
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget p2, p2, v1

    .line 3167
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v0}, Lantlr/JavaCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " && "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lantlr/JavaCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " <= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Lantlr/JavaCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected lookaheadIsEmpty(Lantlr/Alternative;I)Z
    .locals 4

    .line 3212
    iget v0, p1, Lantlr/Alternative;->lookaheadDepth:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 3214
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v0, :cond_2

    if-gt v2, p2, :cond_2

    .line 3217
    iget-object v3, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v3, v3, v2

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    .line 3218
    invoke-virtual {v3}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public mapTreeId(Ljava/lang/String;Lantlr/ActionTransInfo;)Ljava/lang/String;
    .locals 6

    .line 3261
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    if-nez v0, :cond_0

    return-object p1

    .line 3265
    :cond_0
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    const-string v1, "_in"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 3266
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 3270
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-le v0, v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v0, v5, :cond_2

    .line 3272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 3279
    :goto_0
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    const-string v4, "_AST"

    if-ge v3, v0, :cond_5

    .line 3280
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, v3}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/AlternativeElement;

    .line 3281
    invoke-virtual {v0}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    .line 3282
    :cond_3
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3289
    :cond_5
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 3291
    sget-object p2, Lantlr/JavaCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, " in rule "

    const-string v5, "Ambiguous reference to AST element "

    if-ne v0, p2, :cond_6

    .line 3293
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-object v3

    .line 3298
    :cond_6
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3301
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-object v3

    :cond_7
    if-eqz v2, :cond_8

    .line 3306
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0

    .line 3312
    :cond_9
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v0}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3313
    new-instance v0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_a

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "_AST_in"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_a
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_b

    if-nez v2, :cond_b

    .line 3316
    iput-object p1, p2, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    :cond_b
    return-object p1
.end method

.method protected processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;
    .locals 3

    const-string v0, "Error reading action:"

    if-eqz p1, :cond_6

    .line 3372
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 3376
    :cond_0
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    if-nez v1, :cond_1

    return-object p1

    .line 3380
    :cond_1
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->buildAST:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    :cond_2
    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-nez v1, :cond_4

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-nez v1, :cond_3

    iget-object v1, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/ParserGrammar;

    if-eqz v1, :cond_5

    :cond_3
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 3386
    :cond_4
    new-instance v1, Lantlr/actions/java/ActionLexer;

    invoke-direct {v1, p1, p3, p0, p4}, Lantlr/actions/java/ActionLexer;-><init>(Ljava/lang/String;Lantlr/RuleBlock;Lantlr/CodeGenerator;Lantlr/ActionTransInfo;)V

    .line 3392
    invoke-virtual {v1, p2}, Lantlr/actions/java/ActionLexer;->setLineOffset(I)V

    .line 3393
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lantlr/actions/java/ActionLexer;->setFilename(Ljava/lang/String;)V

    .line 3394
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, p2}, Lantlr/actions/java/ActionLexer;->setTool(Lantlr/Tool;)V

    const/4 p2, 0x1

    .line 3397
    :try_start_0
    invoke-virtual {v1, p2}, Lantlr/actions/java/ActionLexer;->mACTION(Z)V

    .line 3398
    invoke-virtual {v1}, Lantlr/actions/java/ActionLexer;->getTokenObject()Lantlr/Token;

    move-result-object p2

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lantlr/TokenStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object p1

    .line 3411
    :catch_0
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    return-object p1

    .line 3407
    :catch_1
    iget-object p2, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    return-object p1

    :catch_2
    move-exception p2

    .line 3403
    invoke-virtual {v1, p2}, Lantlr/actions/java/ActionLexer;->reportError(Lantlr/RecognitionException;)V

    return-object p1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setupOutput(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3483
    iget-object v0, p0, Lantlr/JavaCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ".java"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lantlr/JavaCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method
