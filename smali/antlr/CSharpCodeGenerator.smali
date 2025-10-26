.class public Lantlr/CSharpCodeGenerator;
.super Lantlr/CodeGenerator;
.source "CSharpCodeGenerator.java"


# static fields
.field protected static final NONUNIQUE:Ljava/lang/String;

.field public static final caseSizeThreshold:I = 0x7f

.field private static nameSpace:Lantlr/CSharpNameSpace;


# instance fields
.field private astTypes:Ljava/util/Vector;

.field astVarNumber:I

.field bSaveIndexCreated:Z

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

.field usingCustomAST:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lantlr/CSharpCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    sput-object v0, Lantlr/CSharpCodeGenerator;->nameSpace:Lantlr/CSharpNameSpace;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 126
    invoke-direct {p0}, Lantlr/CodeGenerator;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    .line 69
    iput-boolean v0, p0, Lantlr/CSharpCodeGenerator;->genAST:Z

    .line 72
    iput-boolean v0, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    .line 76
    iput-boolean v0, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    .line 95
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lantlr/CSharpCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 100
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lantlr/CSharpCodeGenerator;->declaredASTVariables:Ljava/util/Hashtable;

    const/4 v1, 0x1

    .line 103
    iput v1, p0, Lantlr/CSharpCodeGenerator;->astVarNumber:I

    .line 118
    iput-boolean v0, p0, Lantlr/CSharpCodeGenerator;->bSaveIndexCreated:Z

    .line 127
    new-instance v0, Lantlr/CSharpCharFormatter;

    invoke-direct {v0}, Lantlr/CSharpCharFormatter;-><init>()V

    iput-object v0, p0, Lantlr/CSharpCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    return-void
.end method

.method private GenRuleInvocation(Lantlr/RuleRefElement;)V
    .locals 7

    .line 3089
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3092
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const-string v1, ","

    if-eqz v0, :cond_2

    .line 3094
    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    .line 3095
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "false"

    .line 3098
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3100
    :goto_0
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3101
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3106
    :cond_2
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3107
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3108
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3112
    :cond_3
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 3113
    iget-object v1, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 3116
    new-instance v1, Lantlr/ActionTransInfo;

    invoke-direct {v1}, Lantlr/ActionTransInfo;-><init>()V

    .line 3117
    iget-object v2, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v2, v3, v4, v1}, Lantlr/CSharpCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    .line 3118
    iget-boolean v3, v1, Lantlr/ActionTransInfo;->assignToRoot:Z

    if-nez v3, :cond_4

    iget-object v1, v1, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 3120
    :cond_4
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Arguments of rule reference \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\' cannot set or ref #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v4}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v5

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 3123
    :cond_5
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3126
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 3128
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

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

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 3135
    :cond_6
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 3137
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Missing parameters on reference to rule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

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

    .line 3140
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3143
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_8

    const-string p1, "_t = retTree_;"

    .line 3144
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private static OctalToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 3992
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-gt v1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-ne v1, v0, :cond_0

    const/16 v0, 0x5c

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_0

    const/16 v0, 0x30

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v0, v4, :cond_0

    const/16 v0, 0x37

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v0, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v1, v0, :cond_0

    .line 3999
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {p0, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    .line 4001
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\'\\x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private declareSaveIndexVariableIfNeeded()V
    .locals 1

    .line 4019
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->bSaveIndexCreated:Z

    if-nez v0, :cond_0

    const-string v0, "int _saveIndex = 0;"

    .line 4021
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4022
    iput-boolean v0, p0, Lantlr/CSharpCodeGenerator;->bSaveIndexCreated:Z

    :cond_0
    return-void
.end method

.method private genBitSet(Lantlr/collections/impl/BitSet;I)V
    .locals 8

    .line 906
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "private static long[] mk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "{"

    .line 907
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 908
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 909
    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->lengthInLongWords()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 911
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "long[] data = { "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toStringOfWords()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo p1, "};"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 915
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "long[] data = new long["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "];"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toPackedArray()[J

    move-result-object p1

    const/4 v0, 0x0

    .line 917
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 918
    array-length v3, p1

    if-eq v2, v3, :cond_3

    aget-wide v3, p1, v0

    aget-wide v5, p1, v2

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    goto :goto_2

    .line 927
    :cond_1
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-wide v3, p1, v2

    aget-wide v5, p1, v0

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 932
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "for (int i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "; i<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "; i++) { data[i]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-wide v4, p1, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "L; }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 920
    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "data["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-wide v4, p1, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "L;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :goto_3
    move v0, v2

    goto :goto_0

    :cond_4
    :goto_4
    const-string p1, "return data;"

    .line 939
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 940
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 941
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 943
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "public static readonly BitSet "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " = new BitSet("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "mk_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method private genBlockFinish(Lantlr/CSharpBlockFinishingInfo;Ljava/lang/String;)V
    .locals 2

    .line 965
    iget-boolean v0, p1, Lantlr/CSharpBlockFinishingInfo;->needAnErrorClause:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lantlr/CSharpBlockFinishingInfo;->generatedAnIf:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lantlr/CSharpBlockFinishingInfo;->generatedSwitch:Z

    if-eqz v0, :cond_2

    .line 968
    :cond_0
    iget-boolean v0, p1, Lantlr/CSharpBlockFinishingInfo;->generatedAnIf:Z

    const-string/jumbo v1, "{"

    if-eqz v0, :cond_1

    const-string v0, "else"

    .line 969
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 973
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 975
    :goto_0
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 976
    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 977
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo v0, "}"

    .line 978
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 981
    :cond_2
    iget-object v0, p1, Lantlr/CSharpBlockFinishingInfo;->postscript:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 982
    iget-boolean v0, p1, Lantlr/CSharpBlockFinishingInfo;->needAnErrorClause:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lantlr/CSharpBlockFinishingInfo;->generatedSwitch:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lantlr/CSharpBlockFinishingInfo;->generatedAnIf:Z

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    const-string v0, "throw"

    .line 986
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "goto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 993
    :cond_3
    iget-object p1, p1, Lantlr/CSharpBlockFinishingInfo;->postscript:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 988
    :cond_4
    :goto_1
    iget-object p2, p1, Lantlr/CSharpBlockFinishingInfo;->postscript:Ljava/lang/String;

    const-string v0, "break;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x6

    .line 989
    iget-object p1, p1, Lantlr/CSharpBlockFinishingInfo;->postscript:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 990
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 997
    :cond_5
    iget-object p1, p1, Lantlr/CSharpBlockFinishingInfo;->postscript:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private genElementAST(Lantlr/AlternativeElement;)V
    .locals 11

    .line 2138
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    const-string v1, "_in = "

    const-string v2, " "

    const-string v3, "_AST"

    const-string v4, "tmp"

    const/4 v5, 0x1

    const-string v6, ";"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-nez v0, :cond_1

    .line 2144
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2146
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 2148
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, p0, Lantlr/CSharpCodeGenerator;->astVarNumber:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2149
    iget v4, p0, Lantlr/CSharpCodeGenerator;->astVarNumber:I

    add-int/2addr v4, v5

    iput v4, p0, Lantlr/CSharpCodeGenerator;->astVarNumber:I

    .line 2151
    invoke-direct {p0, p1, v3}, Lantlr/CSharpCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    .line 2153
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2158
    :cond_1
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_14

    .line 2160
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->genAST:Z

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

    .line 2168
    :goto_0
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v8

    if-eq v8, v7, :cond_4

    instance-of v7, p1, Lantlr/TokenRefElement;

    if-eqz v7, :cond_4

    const/4 v0, 0x1

    .line 2172
    :cond_4
    iget-object v7, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v7, v7, Lantlr/Grammar;->hasSyntacticPredicate:Z

    .line 2178
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 2181
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 2182
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 2187
    :cond_5
    iget-object v7, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 2189
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, p0, Lantlr/CSharpCodeGenerator;->astVarNumber:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2190
    iget v8, p0, Lantlr/CSharpCodeGenerator;->astVarNumber:I

    add-int/2addr v8, v5

    iput v8, p0, Lantlr/CSharpCodeGenerator;->astVarNumber:I

    move-object v10, v7

    move-object v7, v4

    move-object v4, v10

    :goto_1
    if-eqz v0, :cond_8

    .line 2197
    instance-of v8, p1, Lantlr/GrammarAtom;

    if-eqz v8, :cond_7

    .line 2199
    move-object v8, p1

    check-cast v8, Lantlr/GrammarAtom;

    .line 2200
    invoke-virtual {v8}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 2202
    invoke-virtual {v8}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1, v7, v8}, Lantlr/CSharpCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2207
    :cond_6
    iget-object v8, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v7, v8}, Lantlr/CSharpCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2213
    :cond_7
    iget-object v8, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v7, v8}, Lantlr/CSharpCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    :cond_8
    :goto_2
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2222
    invoke-direct {p0, p1, v3}, Lantlr/CSharpCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    .line 2223
    iget-object v7, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/TreeWalkerGrammar;

    if-eqz v7, :cond_9

    .line 2226
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "_in = null;"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2239
    :cond_9
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    const-string v7, " = "

    if-eqz v2, :cond_b

    .line 2241
    instance-of v2, p1, Lantlr/GrammarAtom;

    if-eqz v2, :cond_a

    .line 2243
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v8, p1

    check-cast v8, Lantlr/GrammarAtom;

    invoke-virtual {p0, v8, v4}, Lantlr/CSharpCodeGenerator;->getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2247
    :cond_a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->getASTCreateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2252
    :cond_b
    :goto_3
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    if-eqz v0, :cond_d

    .line 2254
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 2255
    instance-of v2, p1, Lantlr/GrammarAtom;

    if-eqz v2, :cond_c

    .line 2257
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v4, p1

    check-cast v4, Lantlr/GrammarAtom;

    invoke-virtual {p0, v4, v0}, Lantlr/CSharpCodeGenerator;->getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 2261
    :cond_c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->getASTCreateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2264
    :goto_4
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_d

    .line 2267
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2271
    :cond_d
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->genAST:Z

    if-eqz v0, :cond_14

    .line 2273
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    const-string v1, ");"

    if-eq v0, v5, :cond_11

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    goto/16 :goto_7

    .line 2284
    :cond_e
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-nez v0, :cond_10

    instance-of v0, p1, Lantlr/GrammarAtom;

    if-eqz v0, :cond_f

    check-cast p1, Lantlr/GrammarAtom;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    goto :goto_5

    .line 2289
    :cond_f
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "astFactory.makeASTRoot(currentAST, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2287
    :cond_10
    :goto_5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "astFactory.makeASTRoot(currentAST, (AST)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2276
    :cond_11
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-nez v0, :cond_13

    instance-of v0, p1, Lantlr/GrammarAtom;

    if-eqz v0, :cond_12

    check-cast p1, Lantlr/GrammarAtom;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    goto :goto_6

    .line 2281
    :cond_12
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "astFactory.addASTChild(currentAST, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2279
    :cond_13
    :goto_6
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "astFactory.addASTChild(currentAST, (AST)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_14
    :goto_7
    return-void
.end method

.method private genErrorCatchForElement(Lantlr/AlternativeElement;)V
    .locals 3

    .line 2308
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2309
    :cond_0
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    .line 2310
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-eqz v1, :cond_1

    .line 2311
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    invoke-static {v0}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2313
    :cond_1
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    if-nez v0, :cond_2

    .line 2315
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v2, "Enclosing rule not found!"

    invoke-virtual {v1, v2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 2317
    :cond_2
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2319
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo v0, "}"

    .line 2320
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2321
    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    :cond_3
    return-void
.end method

.method private genErrorHandler(Lantlr/ExceptionSpec;)V
    .locals 6

    const/4 v0, 0x0

    .line 2329
    :goto_0
    iget-object v1, p1, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2331
    iget-object v1, p1, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/ExceptionHandler;

    .line 2333
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "catch ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lantlr/ExceptionHandler;->exceptionTypeAndName:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "{"

    .line 2334
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2335
    iget v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2336
    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v3, v3, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v3, :cond_0

    const-string v3, "if (0 == inputState.guessing)"

    .line 2337
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2339
    iget v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2343
    :cond_0
    new-instance v3, Lantlr/ActionTransInfo;

    invoke-direct {v3}, Lantlr/ActionTransInfo;-><init>()V

    .line 2344
    iget-object v4, v1, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    invoke-virtual {v1}, Lantlr/Token;->getLine()I

    move-result v1

    iget-object v5, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v4, v1, v5, v3}, Lantlr/CSharpCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->printAction(Ljava/lang/String;)V

    .line 2347
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->hasSyntacticPredicate:Z

    const-string/jumbo v3, "}"

    if-eqz v1, :cond_1

    .line 2349
    iget v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2350
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "else"

    .line 2351
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2352
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2353
    iget v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v1, "throw;"

    .line 2356
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2357
    iget v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2358
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2361
    :cond_1
    iget v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2362
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private genErrorTryForElement(Lantlr/AlternativeElement;)V
    .locals 3

    .line 2367
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2368
    :cond_0
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    .line 2369
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-eqz v1, :cond_1

    .line 2370
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    invoke-static {v0}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2372
    :cond_1
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    if-nez v0, :cond_2

    .line 2374
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v2, "Enclosing rule not found!"

    invoke-virtual {v1, v2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 2376
    :cond_2
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "try   // for error handling"

    .line 2378
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "{"

    .line 2379
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2380
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    :cond_3
    return-void
.end method

.method private genLiteralsTest()V
    .locals 1

    const-string v0, "_ttype = testLiteralsTable(_ttype);"

    .line 2419
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method private genLiteralsTestForPartialToken()V
    .locals 1

    const-string v0, "_ttype = testLiteralsTable(text.ToString(_begin, text.Length-_begin), _ttype);"

    .line 2423
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getValueString(I)Ljava/lang/String;
    .locals 3

    .line 3628
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_0

    .line 3629
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v0, p1}, Lantlr/CharFormatter;->literalChar(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 3633
    :cond_0
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0, p1}, Lantlr/TokenManager;->getTokenSymbolAt(I)Lantlr/TokenSymbol;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3635
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3638
    :cond_1
    invoke-virtual {v0}, Lantlr/TokenSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3639
    instance-of v2, v0, Lantlr/StringLiteralSymbol;

    if-eqz v2, :cond_4

    .line 3643
    check-cast v0, Lantlr/StringLiteralSymbol;

    .line 3644
    invoke-virtual {v0}, Lantlr/StringLiteralSymbol;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3649
    :cond_2
    invoke-direct {p0, v1}, Lantlr/CSharpCodeGenerator;->mangleLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3651
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

    .line 3678
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_0

    const-string p1, "_t.Type"

    return-object p1

    .line 3681
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

    .line 3691
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    sget-object v0, Lantlr/Tool;->literalsPrefix:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 3692
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 3693
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

    .line 3697
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

    .line 3699
    :cond_1
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    sget-boolean p1, Lantlr/Tool;->upperCaseMangledLiterals:Z

    if-eqz p1, :cond_2

    .line 3700
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V
    .locals 2

    .line 3797
    instance-of v0, p1, Lantlr/TreeElement;

    if-eqz v0, :cond_0

    .line 3798
    check-cast p1, Lantlr/TreeElement;

    iget-object p1, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-direct {p0, p1, p2}, Lantlr/CSharpCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3806
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3807
    instance-of v1, p1, Lantlr/TokenRefElement;

    if-eqz v1, :cond_1

    .line 3809
    check-cast p1, Lantlr/TokenRefElement;

    iget-object v0, p1, Lantlr/TokenRefElement;->atomText:Ljava/lang/String;

    goto :goto_0

    .line 3811
    :cond_1
    instance-of v1, p1, Lantlr/RuleRefElement;

    if-eqz v1, :cond_2

    .line 3813
    check-cast p1, Lantlr/RuleRefElement;

    iget-object v0, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 3818
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3820
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3821
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    sget-object p2, Lantlr/CSharpCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3824
    :cond_3
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method private setupGrammarParameters(Lantlr/Grammar;)V
    .locals 8

    .line 3883
    instance-of v0, p1, Lantlr/ParserGrammar;

    if-nez v0, :cond_0

    instance-of v1, p1, Lantlr/LexerGrammar;

    if-nez v1, :cond_0

    instance-of v1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz v1, :cond_2

    .line 3892
    :cond_0
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, v1, Lantlr/Tool;->nameSpace:Lantlr/NameSpace;

    if-eqz v1, :cond_1

    .line 3893
    new-instance v1, Lantlr/CSharpNameSpace;

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->nameSpace:Lantlr/NameSpace;

    invoke-virtual {v2}, Lantlr/NameSpace;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lantlr/CSharpNameSpace;-><init>(Ljava/lang/String;)V

    sput-object v1, Lantlr/CSharpCodeGenerator;->nameSpace:Lantlr/CSharpNameSpace;

    :cond_1
    const-string v1, "namespace"

    .line 3898
    invoke-virtual {p1, v1}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3899
    invoke-virtual {p1, v1}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3901
    new-instance v2, Lantlr/CSharpNameSpace;

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lantlr/CSharpNameSpace;-><init>(Ljava/lang/String;)V

    sput-object v2, Lantlr/CSharpCodeGenerator;->nameSpace:Lantlr/CSharpNameSpace;

    :cond_2
    const/4 v1, 0x1

    const-string v2, "null"

    const-string v3, "RecognitionException"

    const-string v4, "\""

    const-string v5, "AST"

    const-string v6, ""

    const-string v7, "ASTLabelType"

    if-eqz v0, :cond_4

    .line 3916
    iput-object v5, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 3917
    invoke-virtual {p1, v7}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3918
    invoke-virtual {p1, v7}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3920
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4, v4}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3922
    iput-boolean v1, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    .line 3923
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    :cond_3
    const-string p1, "Token "

    .line 3927
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 3928
    iput-object v2, p0, Lantlr/CSharpCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 3929
    iput-object v6, p0, Lantlr/CSharpCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    .line 3930
    iput-object v6, p0, Lantlr/CSharpCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 3931
    iput-object v6, p0, Lantlr/CSharpCodeGenerator;->commonLocalVars:Ljava/lang/String;

    const-string p1, "LT(1)"

    .line 3932
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 3933
    iput-object v3, p0, Lantlr/CSharpCodeGenerator;->exceptionThrown:Ljava/lang/String;

    const-string p1, "throw new NoViableAltException(LT(1), getFilename());"

    .line 3934
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->throwNoViable:Ljava/lang/String;

    goto/16 :goto_1

    .line 3936
    :cond_4
    instance-of v0, p1, Lantlr/LexerGrammar;

    if-eqz v0, :cond_5

    const-string p1, "char "

    .line 3937
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->labeledElementType:Ljava/lang/String;

    const-string p1, "\'\\0\'"

    .line 3938
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 3939
    iput-object v6, p0, Lantlr/CSharpCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    const-string p1, "bool _createToken"

    .line 3940
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->commonExtraParams:Ljava/lang/String;

    const-string p1, "int _ttype; Token _token=null; int _begin=text.Length;"

    .line 3941
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->commonLocalVars:Ljava/lang/String;

    const-string p1, "LA(1)"

    .line 3942
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 3943
    iput-object v3, p0, Lantlr/CSharpCodeGenerator;->exceptionThrown:Ljava/lang/String;

    const-string p1, "throw new NoViableAltForCharException((char)LA(1), getFilename(), getLine(), getColumn());"

    .line 3944
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->throwNoViable:Ljava/lang/String;

    goto :goto_1

    .line 3946
    :cond_5
    instance-of v0, p1, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_9

    .line 3947
    iput-object v5, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 3948
    iput-object v5, p0, Lantlr/CSharpCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 3949
    invoke-virtual {p1, v7}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3950
    invoke-virtual {p1, v7}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3952
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3954
    iput-boolean v1, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    .line 3955
    iput-object v0, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 3956
    iput-object v0, p0, Lantlr/CSharpCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 3960
    :cond_6
    invoke-virtual {p1, v7}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3961
    new-instance v0, Lantlr/Token;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v5}, Lantlr/Token;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v7, v0}, Lantlr/Grammar;->setOption(Ljava/lang/String;Lantlr/Token;)Z

    .line 3963
    :cond_7
    iput-object v2, p0, Lantlr/CSharpCodeGenerator;->labeledElementInit:Ljava/lang/String;

    const-string p1, "_t"

    .line 3964
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    const-string v0, "AST _t"

    .line 3965
    iput-object v0, p0, Lantlr/CSharpCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 3966
    iput-object v6, p0, Lantlr/CSharpCodeGenerator;->commonLocalVars:Ljava/lang/String;

    .line 3967
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_8

    .line 3968
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "(_t==ASTNULL) ? null : ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")_t"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    goto :goto_0

    .line 3970
    :cond_8
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 3971
    :goto_0
    iput-object v3, p0, Lantlr/CSharpCodeGenerator;->exceptionThrown:Ljava/lang/String;

    const-string p1, "throw new NoViableAltException(_t);"

    .line 3972
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->throwNoViable:Ljava/lang/String;

    goto :goto_1

    .line 3975
    :cond_9
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v0, "Unknown grammar type"

    invoke-virtual {p1, v0}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static suitableForCaseExpression(Lantlr/Alternative;)Z
    .locals 2

    .line 2128
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

    .line 136
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 137
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public exitIfError()V
    .locals 2

    .line 142
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v0}, Lantlr/Tool;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Exiting due to errors."

    invoke-virtual {v0, v1}, Lantlr/Tool;->fatalError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public gen()V
    .locals 3

    .line 153
    :try_start_0
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 154
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Grammar;

    .line 157
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-virtual {v1, v2}, Lantlr/Grammar;->setGrammarAnalyzer(Lantlr/LLkGrammarAnalyzer;)V

    .line 158
    invoke-virtual {v1, p0}, Lantlr/Grammar;->setCodeGenerator(Lantlr/CodeGenerator;)V

    .line 159
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v2, v1}, Lantlr/LLkGrammarAnalyzer;->setGrammar(Lantlr/Grammar;)V

    .line 161
    invoke-direct {p0, v1}, Lantlr/CSharpCodeGenerator;->setupGrammarParameters(Lantlr/Grammar;)V

    .line 162
    invoke-virtual {v1}, Lantlr/Grammar;->generate()V

    .line 163
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->exitIfError()V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 168
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/TokenManager;

    .line 170
    invoke-interface {v1}, Lantlr/TokenManager;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->genTokenTypes(Lantlr/TokenManager;)V

    .line 176
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->genTokenInterchange(Lantlr/TokenManager;)V

    .line 178
    :cond_1
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->exitIfError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 182
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lantlr/Tool;->reportException(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public gen(Lantlr/ActionElement;)V
    .locals 4

    .line 190
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

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

    .line 191
    :cond_0
    iget-boolean v0, p1, Lantlr/ActionElement;->isSemPred:Z

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p1, Lantlr/ActionElement;->actionText:Ljava/lang/String;

    iget p1, p1, Lantlr/ActionElement;->line:I

    invoke-virtual {p0, v0, p1}, Lantlr/CSharpCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v0, :cond_2

    const-string v0, "if (0==inputState.guessing)"

    .line 196
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "{"

    .line 197
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 198
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 201
    :cond_2
    new-instance v0, Lantlr/ActionTransInfo;

    invoke-direct {v0}, Lantlr/ActionTransInfo;-><init>()V

    .line 202
    iget-object v1, p1, Lantlr/ActionElement;->actionText:Ljava/lang/String;

    invoke-virtual {p1}, Lantlr/ActionElement;->getLine()I

    move-result p1

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v1, p1, v2, v0}, Lantlr/CSharpCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    .line 206
    iget-object v1, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 211
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")currentAST.root;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 215
    :cond_3
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->printAction(Ljava/lang/String;)V

    .line 217
    iget-boolean p1, v0, Lantlr/ActionTransInfo;->assignToRoot:Z

    if-eqz p1, :cond_4

    .line 219
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

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 221
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "if ( (null != "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ") && (null != "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ".getFirstChild()) )"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 222
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 223
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "currentAST.child = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ".getFirstChild();"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 224
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string p1, "else"

    .line 225
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 226
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 227
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 228
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string p1, "currentAST.advanceChildToEnd();"

    .line 229
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 232
    :cond_4
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz p1, :cond_5

    .line 233
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 234
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public gen(Lantlr/AlternativeBlock;)V
    .locals 3

    .line 243
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

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

    .line 244
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 245
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 247
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 248
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 251
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lantlr/CSharpCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 256
    :cond_1
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v2, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    .line 258
    invoke-virtual {p0, p1, v1}, Lantlr/CSharpCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CSharpBlockFinishingInfo;

    move-result-object p1

    .line 259
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lantlr/CSharpCodeGenerator;->genBlockFinish(Lantlr/CSharpBlockFinishingInfo;Ljava/lang/String;)V

    .line 261
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr p1, v1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 262
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 265
    iput-object v0, p0, Lantlr/CSharpCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method public gen(Lantlr/BlockEndElement;)V
    .locals 3

    .line 273
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

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

    .line 279
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

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

    .line 281
    :cond_0
    invoke-virtual {p1}, Lantlr/CharLiteralElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/CharLiteralElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 285
    :cond_1
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 286
    invoke-virtual {p1}, Lantlr/CharLiteralElement;->getAutoGenType()I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    .line 287
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 288
    iput-boolean v0, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    return-void
.end method

.method public gen(Lantlr/CharRangeElement;)V
    .locals 3

    .line 294
    invoke-virtual {p1}, Lantlr/CharRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/CharRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

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

    const-string v1, "_saveIndex = text.Length;"

    .line 300
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 302
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "matchRange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p1, Lantlr/CharRangeElement;->beginText:Ljava/lang/String;

    invoke-static {v2}, Lantlr/CSharpCodeGenerator;->OctalToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p1, Lantlr/CharRangeElement;->endText:Ljava/lang/String;

    invoke-static {p1}, Lantlr/CSharpCodeGenerator;->OctalToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string p1, "text.Length = _saveIndex;"

    .line 305
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public gen(Lantlr/LexerGrammar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget-boolean v0, p1, Lantlr/LexerGrammar;->debuggingOutput:Z

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Lantlr/collections/impl/Vector;

    invoke-direct {v0}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v0, p0, Lantlr/CSharpCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    .line 313
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 314
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Internal error generating lexer"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 317
    :cond_1
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genBody(Lantlr/LexerGrammar;)V

    return-void
.end method

.method public gen(Lantlr/OneOrMoreBlock;)V
    .locals 9

    .line 323
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

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
    const-string/jumbo v0, "{ // ( ... )+"

    .line 326
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 328
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 329
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

    .line 332
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_cnt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lantlr/OneOrMoreBlock;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
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

    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 336
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 339
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "_loop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/OneOrMoreBlock;->ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "for (;;)"

    .line 342
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "{"

    .line 343
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 344
    iget v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 347
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 350
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 352
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lantlr/CSharpCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 355
    :cond_3
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v4, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/OneOrMoreBlock;)Z

    .line 368
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget v4, v4, Lantlr/Grammar;->maxk:I

    .line 370
    iget-boolean v5, p1, Lantlr/OneOrMoreBlock;->greedy:Z

    const/4 v6, 0x0

    if-nez v5, :cond_4

    iget v5, p1, Lantlr/OneOrMoreBlock;->exitLookaheadDepth:I

    iget-object v7, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget v7, v7, Lantlr/Grammar;->maxk:I

    if-gt v5, v7, :cond_4

    iget-object v5, p1, Lantlr/OneOrMoreBlock;->exitCache:[Lantlr/Lookahead;

    iget v7, p1, Lantlr/OneOrMoreBlock;->exitLookaheadDepth:I

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 375
    iget v4, p1, Lantlr/OneOrMoreBlock;->exitLookaheadDepth:I

    goto :goto_2

    .line 377
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
    if-eqz v5, :cond_7

    .line 386
    iget-boolean v5, p0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v5, :cond_6

    .line 387
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "nongreedy (...)+ loop; exit depth is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v8, p1, Lantlr/OneOrMoreBlock;->exitLookaheadDepth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    :cond_6
    iget-object v5, p1, Lantlr/OneOrMoreBlock;->exitCache:[Lantlr/Lookahead;

    invoke-virtual {p0, v5, v4}, Lantlr/CSharpCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "// nongreedy exit test"

    .line 393
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 394
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "if (("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " >= 1) && "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ") goto "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "_breakloop;"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 397
    :cond_7
    invoke-virtual {p0, p1, v6}, Lantlr/CSharpCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CSharpBlockFinishingInfo;

    move-result-object p1

    .line 398
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "if ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " >= 1) { goto "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "_breakloop; } else { "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/CSharpCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "; }"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lantlr/CSharpCodeGenerator;->genBlockFinish(Lantlr/CSharpBlockFinishingInfo;Ljava/lang/String;)V

    .line 403
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "++;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 404
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr p1, v3

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 405
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 406
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_breakloop:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    const-string p1, ";"

    .line 407
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "}    // ( ... )+"

    .line 408
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 411
    iput-object v2, p0, Lantlr/CSharpCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method public gen(Lantlr/ParserGrammar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    iget-boolean v0, p1, Lantlr/ParserGrammar;->debuggingOutput:Z

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Lantlr/collections/impl/Vector;

    invoke-direct {v0}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v0, p0, Lantlr/CSharpCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    .line 421
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 422
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Internal error generating parser"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 425
    :cond_1
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genBody(Lantlr/ParserGrammar;)V

    return-void
.end method

.method public gen(Lantlr/RuleRefElement;)V
    .locals 6

    .line 432
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

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

    .line 433
    :cond_0
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    const-string v1, "Rule \'"

    if-eqz v0, :cond_16

    .line 434
    invoke-virtual {v0}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 440
    :cond_1
    instance-of v2, v0, Lantlr/RuleSymbol;

    if-nez v2, :cond_2

    .line 443
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

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

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 447
    :cond_2
    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 451
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    if-nez v2, :cond_3

    .line 455
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " = _t==ASTNULL ? null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 459
    :cond_3
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    const/4 v3, 0x3

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getAutoGenType()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 461
    :cond_4
    invoke-direct {p0}, Lantlr/CSharpCodeGenerator;->declareSaveIndexVariableIfNeeded()V

    const-string v2, "_saveIndex = text.Length;"

    .line 462
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 466
    :cond_5
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->printTabs()V

    .line 467
    iget-object v2, p1, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 470
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 472
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' has no return type"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v4

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 474
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_7
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-nez v2, :cond_8

    iget v2, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    if-nez v2, :cond_8

    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 479
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' returns a value"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v4

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 484
    :cond_8
    :goto_0
    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->GenRuleInvocation(Lantlr/RuleRefElement;)V

    .line 487
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getAutoGenType()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 488
    :cond_9
    invoke-direct {p0}, Lantlr/CSharpCodeGenerator;->declareSaveIndexVariableIfNeeded()V

    const-string v0, "text.Length = _saveIndex;"

    .line 489
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 493
    :cond_a
    iget v0, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_15

    .line 495
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->hasSyntacticPredicate:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_b
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->genAST:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getAutoGenType()I

    move-result v0

    if-ne v0, v1, :cond_d

    :cond_c
    const/4 v0, 0x1

    goto :goto_1

    :cond_d
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_e

    const-string v2, "if (0 == inputState.guessing)"

    .line 503
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "{"

    .line 504
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 505
    iget v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v2, v1

    iput v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 508
    :cond_e
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 511
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "_AST = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ")returnAST;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 513
    :cond_f
    iget-boolean v2, p0, Lantlr/CSharpCodeGenerator;->genAST:Z

    if-eqz v2, :cond_13

    .line 515
    invoke-virtual {p1}, Lantlr/RuleRefElement;->getAutoGenType()I

    move-result v2

    if-eq v2, v1, :cond_11

    const/4 v3, 0x2

    if-eq v2, v3, :cond_10

    goto :goto_2

    .line 524
    :cond_10
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v3, "Internal: encountered ^ after rule reference"

    invoke-virtual {v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 518
    :cond_11
    iget-boolean v2, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-eqz v2, :cond_12

    const-string v2, "astFactory.addASTChild(currentAST, (AST)returnAST);"

    .line 519
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_12
    const-string v2, "astFactory.addASTChild(currentAST, returnAST);"

    .line 521
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 532
    :cond_13
    :goto_2
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-eqz v2, :cond_14

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 534
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " = returnToken_;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_14
    if-eqz v0, :cond_15

    .line 539
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo v0, "}"

    .line 540
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 543
    :cond_15
    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    return-void

    .line 437
    :cond_16
    :goto_3
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' is not defined"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

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

    .line 549
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

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

    .line 552
    :cond_0
    invoke-virtual {p1}, Lantlr/StringLiteralElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_1

    .line 553
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/StringLiteralElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 557
    :cond_1
    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 560
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 561
    invoke-virtual {p1}, Lantlr/StringLiteralElement;->getAutoGenType()I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    .line 564
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 566
    iput-boolean v0, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    .line 569
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_3

    const-string p1, "_t = _t.getNextSibling();"

    .line 570
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public gen(Lantlr/TokenRangeElement;)V
    .locals 2

    .line 578
    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 579
    invoke-virtual {p1}, Lantlr/TokenRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 580
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/TokenRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 584
    :cond_0
    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 587
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "matchRange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/TokenRangeElement;->beginText:Ljava/lang/String;

    invoke-static {v1}, Lantlr/CSharpCodeGenerator;->OctalToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/TokenRangeElement;->endText:Ljava/lang/String;

    invoke-static {v1}, Lantlr/CSharpCodeGenerator;->OctalToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 588
    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    return-void
.end method

.method public gen(Lantlr/TokenRefElement;)V
    .locals 3

    .line 595
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

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

    .line 596
    :cond_0
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Token reference found in lexer"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 599
    :cond_1
    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 601
    invoke-virtual {p1}, Lantlr/TokenRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_2

    .line 602
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/TokenRefElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 606
    :cond_2
    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 608
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 609
    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    .line 612
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_3

    const-string p1, "_t = _t.getNextSibling();"

    .line 613
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public gen(Lantlr/TreeElement;)V
    .locals 6

    .line 619
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

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 622
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = (ASTNULL == _t) ? null : ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")_t;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 627
    :cond_0
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/GrammarAtom;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 628
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/TreeElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/TreeElement;->getColumn()I

    move-result v4

    const-string v5, "Suffixing a root node with \'!\' is not implemented"

    invoke-virtual {v0, v5, v1, v3, v4}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 630
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0, v2}, Lantlr/GrammarAtom;->setAutoGenType(I)V

    .line 632
    :cond_1
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/GrammarAtom;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 633
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/TreeElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/TreeElement;->getColumn()I

    move-result v4

    const-string v5, "Suffixing a root node with \'^\' is redundant; already a root"

    invoke-virtual {v0, v5, v1, v3, v4}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 635
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0, v2}, Lantlr/GrammarAtom;->setAutoGenType(I)V

    .line 639
    :cond_2
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-direct {p0, v0}, Lantlr/CSharpCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 640
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_3

    .line 642
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

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "currentAST.root = currentAST.child;"

    .line 644
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "currentAST.child = null;"

    .line 645
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 649
    :cond_3
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    instance-of v0, v0, Lantlr/WildcardElement;

    if-eqz v0, :cond_4

    const-string v0, "if (null == _t) throw new MismatchedTokenException();"

    .line 650
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_4
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    :goto_0
    const-string v0, "_t = _t.getFirstChild();"

    .line 656
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 659
    :goto_1
    invoke-virtual {p1}, Lantlr/TreeElement;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v1

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 660
    invoke-virtual {p1, v0}, Lantlr/TreeElement;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v1

    .line 661
    iget-object v1, v1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    :goto_2
    if-eqz v1, :cond_5

    .line 663
    invoke-virtual {v1}, Lantlr/AlternativeElement;->generate()V

    .line 664
    iget-object v1, v1, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 668
    :cond_6
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    const-string v1, ";"

    if-eqz v0, :cond_7

    .line 671
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "currentAST = __currentAST"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/TreeElement;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 674
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

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string p1, "_t = _t.getNextSibling();"

    .line 676
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TreeWalkerGrammar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 682
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Internal error generating tree-walker"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 685
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genBody(Lantlr/TreeWalkerGrammar;)V

    return-void
.end method

.method public gen(Lantlr/WildcardElement;)V
    .locals 2

    .line 693
    invoke-virtual {p1}, Lantlr/WildcardElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/WildcardElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 698
    :cond_0
    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 700
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_1

    const-string p1, "if (null == _t) throw new MismatchedTokenException();"

    .line 701
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_1
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_5

    .line 704
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lantlr/WildcardElement;->getAutoGenType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 706
    :cond_2
    invoke-direct {p0}, Lantlr/CSharpCodeGenerator;->declareSaveIndexVariableIfNeeded()V

    const-string v0, "_saveIndex = text.Length;"

    .line 707
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    const-string v0, "matchNot(EOF/*_CHAR*/);"

    .line 709
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lantlr/WildcardElement;->getAutoGenType()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 712
    :cond_4
    invoke-direct {p0}, Lantlr/CSharpCodeGenerator;->declareSaveIndexVariableIfNeeded()V

    const-string p1, "text.Length = _saveIndex;"

    .line 713
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 717
    :cond_5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "matchNot("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lantlr/CSharpCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 721
    :cond_6
    :goto_0
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_7

    const-string p1, "_t = _t.getNextSibling();"

    .line 722
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public gen(Lantlr/ZeroOrMoreBlock;)V
    .locals 9

    .line 730
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

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
    const-string/jumbo v0, "{    // ( ... )*"

    .line 731
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 732
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 733
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 735
    invoke-virtual {p1}, Lantlr/ZeroOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 736
    invoke-virtual {p1}, Lantlr/ZeroOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 739
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "_loop"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/ZeroOrMoreBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "for (;;)"

    .line 741
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "{"

    .line 742
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 743
    iget v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v2, v1

    iput v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 746
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 749
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 750
    invoke-virtual {p1}, Lantlr/ZeroOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 751
    invoke-virtual {p1}, Lantlr/ZeroOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lantlr/CSharpCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 754
    :cond_2
    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v3, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/ZeroOrMoreBlock;)Z

    .line 767
    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    .line 769
    iget-boolean v4, p1, Lantlr/ZeroOrMoreBlock;->greedy:Z

    const/4 v5, 0x0

    if-nez v4, :cond_3

    iget v4, p1, Lantlr/ZeroOrMoreBlock;->exitLookaheadDepth:I

    iget-object v6, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    if-gt v4, v6, :cond_3

    iget-object v4, p1, Lantlr/ZeroOrMoreBlock;->exitCache:[Lantlr/Lookahead;

    iget v6, p1, Lantlr/ZeroOrMoreBlock;->exitLookaheadDepth:I

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 774
    iget v3, p1, Lantlr/ZeroOrMoreBlock;->exitLookaheadDepth:I

    goto :goto_1

    .line 776
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
    const-string v6, "_breakloop;"

    if-eqz v4, :cond_6

    .line 782
    iget-boolean v4, p0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v4, :cond_5

    .line 783
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

    .line 786
    :cond_5
    iget-object v4, p1, Lantlr/ZeroOrMoreBlock;->exitCache:[Lantlr/Lookahead;

    invoke-virtual {p0, v4, v3}, Lantlr/CSharpCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "// nongreedy exit test"

    .line 789
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 790
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "if ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ") goto "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 793
    :cond_6
    invoke-virtual {p0, p1, v5}, Lantlr/CSharpCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CSharpBlockFinishingInfo;

    move-result-object p1

    .line 794
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "goto "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lantlr/CSharpCodeGenerator;->genBlockFinish(Lantlr/CSharpBlockFinishingInfo;Ljava/lang/String;)V

    .line 796
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr p1, v1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 797
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 798
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_breakloop:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    const-string p1, ";"

    .line 799
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 800
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr p1, v1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo p1, "}    // ( ... )*"

    .line 801
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 804
    iput-object v2, p0, Lantlr/CSharpCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;)V
    .locals 1

    .line 2386
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lantlr/CSharpCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V
    .locals 1

    .line 2391
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lantlr/CSharpCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2397
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->declaredASTVariables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2403
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

    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2406
    iget-object p2, p0, Lantlr/CSharpCodeGenerator;->declaredASTVariables:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V
    .locals 8

    .line 814
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->genAST:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {p1}, Lantlr/Alternative;->getAutoGen()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lantlr/CSharpCodeGenerator;->genAST:Z

    .line 817
    iget-boolean v3, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    if-eqz v3, :cond_1

    .line 818
    invoke-virtual {p1}, Lantlr/Alternative;->getAutoGen()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    .line 821
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 822
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lantlr/CSharpCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 825
    iget-object v4, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    if-eqz v4, :cond_2

    const-string v4, "try        // for error handling"

    .line 826
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "{"

    .line 827
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 828
    iget v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v4, v2

    iput v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 831
    :cond_2
    iget-object v4, p1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 832
    :goto_1
    instance-of v5, v4, Lantlr/BlockEndElement;

    if-nez v5, :cond_3

    .line 833
    invoke-virtual {v4}, Lantlr/AlternativeElement;->generate()V

    .line 834
    iget-object v4, v4, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_1

    .line 837
    :cond_3
    iget-boolean v4, p0, Lantlr/CSharpCodeGenerator;->genAST:Z

    if-eqz v4, :cond_6

    .line 839
    instance-of v4, p2, Lantlr/RuleBlock;

    if-eqz v4, :cond_5

    .line 842
    check-cast p2, Lantlr/RuleBlock;

    .line 843
    iget-boolean v4, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-eqz v4, :cond_4

    .line 845
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "_AST = ("

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ")currentAST.root;"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 849
    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "_AST = currentAST.root;"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 852
    :cond_5
    invoke-virtual {p2}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 855
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v5, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lantlr/AlternativeBlock;->getLine()I

    move-result v6

    invoke-virtual {p2}, Lantlr/AlternativeBlock;->getColumn()I

    move-result p2

    const-string v7, "Labeled subrules not yet supported"

    invoke-virtual {v4, v7, v5, v6, p2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 859
    :cond_6
    :goto_2
    iget-object p2, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    if-eqz p2, :cond_7

    .line 862
    iget p2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr p2, v2

    iput p2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo p2, "}"

    .line 863
    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 864
    iget-object p1, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    .line 867
    :cond_7
    iput-boolean v0, p0, Lantlr/CSharpCodeGenerator;->genAST:Z

    .line 868
    iput-boolean v3, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    .line 870
    iput-object v1, p0, Lantlr/CSharpCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    return-void
.end method

.method protected genBitsets(Lantlr/collections/impl/Vector;I)V
    .locals 2

    const-string v0, ""

    .line 884
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 885
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 887
    invoke-virtual {p1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/collections/impl/BitSet;

    .line 889
    invoke-virtual {v1, p2}, Lantlr/collections/impl/BitSet;->growToInclude(I)V

    .line 890
    invoke-direct {p0, v1, v0}, Lantlr/CSharpCodeGenerator;->genBitSet(Lantlr/collections/impl/BitSet;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected genBlockInitAction(Lantlr/AlternativeBlock;)V
    .locals 3

    .line 1009
    iget-object v0, p1, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p1, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLine()I

    move-result p1

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lantlr/CSharpCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->printAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected genBlockPreamble(Lantlr/AlternativeBlock;)V
    .locals 8

    .line 1021
    instance-of v0, p1, Lantlr/RuleBlock;

    if-eqz v0, :cond_7

    .line 1022
    check-cast p1, Lantlr/RuleBlock;

    .line 1023
    iget-object v0, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 1024
    :goto_0
    iget-object v1, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1026
    iget-object v1, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/AlternativeElement;

    .line 1033
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

    .line 1073
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CSharpCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1075
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_6

    .line 1077
    instance-of v2, v1, Lantlr/GrammarAtom;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lantlr/GrammarAtom;

    invoke-virtual {v2}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1080
    invoke-virtual {v2}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lantlr/CSharpCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1083
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    goto/16 :goto_2

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 1040
    move-object v2, v1

    check-cast v2, Lantlr/AlternativeBlock;

    iget-boolean v6, v2, Lantlr/AlternativeBlock;->not:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lantlr/CSharpCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v7, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/LexerGrammar;

    invoke-interface {v6, v2, v7}, Lantlr/LLkGrammarAnalyzer;->subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1048
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CSharpCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1049
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_6

    .line 1050
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    goto :goto_2

    .line 1054
    :cond_3
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_4

    .line 1058
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    .line 1060
    :cond_4
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-eqz v2, :cond_5

    .line 1061
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Token "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " = null;"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1063
    :cond_5
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_6

    .line 1066
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CSharpCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public genBody(Lantlr/LexerGrammar;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->setupOutput(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1098
    iput-boolean v0, p0, Lantlr/CSharpCodeGenerator;->genAST:Z

    const/4 v1, 0x1

    .line 1099
    iput-boolean v1, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    .line 1101
    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1104
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->genHeader()V

    .line 1106
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lantlr/DefineGrammarSymbols;->getHeaderAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1109
    sget-object v2, Lantlr/CSharpCodeGenerator;->nameSpace:Lantlr/CSharpNameSpace;

    if-eqz v2, :cond_0

    .line 1110
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v2, v4}, Lantlr/CSharpNameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 1111
    :cond_0
    iget v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v2, v1

    iput v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v2, "// Generate header specific to lexer CSharp file"

    .line 1115
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using System;"

    .line 1116
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using Stream                          = System.IO.Stream;"

    .line 1117
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using TextReader                      = System.IO.TextReader;"

    .line 1118
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using Hashtable                       = System.Collections.Hashtable;"

    .line 1119
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using Comparer                        = System.Collections.Comparer;"

    .line 1120
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1121
    iget-boolean v2, p1, Lantlr/LexerGrammar;->caseSensitiveLiterals:Z

    if-nez v2, :cond_1

    const-string v2, "using CaseInsensitiveHashCodeProvider = System.Collections.CaseInsensitiveHashCodeProvider;"

    .line 1123
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using CaseInsensitiveComparer         = System.Collections.CaseInsensitiveComparer;"

    .line 1124
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1126
    :cond_1
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using TokenStreamException            = antlr.TokenStreamException;"

    .line 1127
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using TokenStreamIOException          = antlr.TokenStreamIOException;"

    .line 1128
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using TokenStreamRecognitionException = antlr.TokenStreamRecognitionException;"

    .line 1129
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using CharStreamException             = antlr.CharStreamException;"

    .line 1130
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using CharStreamIOException           = antlr.CharStreamIOException;"

    .line 1131
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using ANTLRException                  = antlr.ANTLRException;"

    .line 1132
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using CharScanner                     = antlr.CharScanner;"

    .line 1133
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using InputBuffer                     = antlr.InputBuffer;"

    .line 1134
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using ByteBuffer                      = antlr.ByteBuffer;"

    .line 1135
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using CharBuffer                      = antlr.CharBuffer;"

    .line 1136
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using Token                           = antlr.Token;"

    .line 1137
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using CommonToken                     = antlr.CommonToken;"

    .line 1138
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using SemanticException               = antlr.SemanticException;"

    .line 1139
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using RecognitionException            = antlr.RecognitionException;"

    .line 1140
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using NoViableAltForCharException     = antlr.NoViableAltForCharException;"

    .line 1141
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using MismatchedCharException         = antlr.MismatchedCharException;"

    .line 1142
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using TokenStream                     = antlr.TokenStream;"

    .line 1143
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using LexerSharedInputState           = antlr.LexerSharedInputState;"

    .line 1144
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "using BitSet                          = antlr.collections.impl.BitSet;"

    .line 1145
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1148
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1152
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1153
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 1156
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "antlr."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1160
    :goto_0
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1162
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->_println(Ljava/lang/String;)V

    .line 1165
    :cond_3
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v5, "classHeaderPrefix"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lantlr/Token;

    const-string v5, "\""

    const-string v6, "public "

    if-nez v4, :cond_4

    .line 1167
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1170
    :cond_4
    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5, v5}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1172
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1175
    :cond_5
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    .line 1179
    :goto_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "class "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v7}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    const-string v2, ", TokenStream"

    .line 1180
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1181
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v4, "classHeaderSuffix"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/Token;

    const-string v4, ", "

    if-eqz v2, :cond_6

    .line 1184
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v5}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1187
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    :cond_6
    const-string v2, " {"

    .line 1190
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1191
    iget v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v2, v1

    iput v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1194
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->genTokenDefinitions(Lantlr/TokenManager;)V

    .line 1197
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v5}, Lantlr/Token;->getLine()I

    move-result v5

    iget-object v7, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v8, 0x0

    invoke-virtual {p0, v2, v5, v7, v8}, Lantlr/CSharpCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    .line 1205
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "(Stream ins) : this(new ByteBuffer(ins))"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "{"

    .line 1206
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "}"

    .line 1207
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1214
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "(TextReader r) : this(new CharBuffer(r))"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1219
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "(InputBuffer ib)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    .line 1221
    iget-object v7, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v7, v7, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v7, :cond_7

    const-string v7, " : this(new LexerSharedInputState(new antlr.debug.DebuggingInputBuffer(ib)))"

    .line 1222
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v7, " : this(new LexerSharedInputState(ib))"

    .line 1224
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1225
    :goto_2
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1232
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "(LexerSharedInputState state) : base(state)"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1234
    iget v6, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v6, v1

    iput v6, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v6, "initialize();"

    .line 1235
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1236
    iget v6, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v6, v1

    iput v6, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1237
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v6, "private void initialize()"

    .line 1240
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1242
    iget v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v2, v1

    iput v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1246
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v2, :cond_8

    const-string v2, "ruleNames  = _ruleNames;"

    .line 1247
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "semPredNames = _semPredNames;"

    .line 1248
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "setupDebugging();"

    .line 1249
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1255
    :cond_8
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "caseSensitiveLiterals = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v6, p1, Lantlr/LexerGrammar;->caseSensitiveLiterals:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1256
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "setCaseSensitive("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v6, p1, Lantlr/LexerGrammar;->caseSensitive:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v6, ");"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1261
    iget-boolean p1, p1, Lantlr/LexerGrammar;->caseSensitiveLiterals:Z

    if-eqz p1, :cond_9

    const-string p1, "literals = new Hashtable(100, (float) 0.4, null, Comparer.Default);"

    .line 1262
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string p1, "literals = new Hashtable(100, (float) 0.4, CaseInsensitiveHashCodeProvider.Default, CaseInsensitiveComparer.Default);"

    .line 1264
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1265
    :goto_3
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1}, Lantlr/TokenManager;->getTokenSymbolKeys()Ljava/util/Enumeration;

    move-result-object p1

    .line 1266
    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1267
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1268
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x22

    if-eq v7, v9, :cond_b

    goto :goto_4

    .line 1271
    :cond_b
    iget-object v7, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v7, v7, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v7, v2}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v2

    .line 1272
    instance-of v7, v2, Lantlr/StringLiteralSymbol;

    if-eqz v7, :cond_a

    .line 1273
    check-cast v2, Lantlr/StringLiteralSymbol;

    .line 1274
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "literals.Add("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lantlr/StringLiteralSymbol;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lantlr/StringLiteralSymbol;->getTokenType()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1279
    :cond_c
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr p1, v1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1280
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1283
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_f

    const-string p1, "private const string[] _ruleNames = {"

    .line 1284
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1286
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 1288
    :cond_d
    :goto_5
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1289
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/GrammarSymbol;

    .line 1290
    instance-of v4, v2, Lantlr/RuleSymbol;

    if-eqz v4, :cond_d

    .line 1291
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "  \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast v2, Lantlr/RuleSymbol;

    invoke-virtual {v2}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const-string/jumbo p1, "};"

    .line 1293
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1299
    :cond_f
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->genNextToken()V

    .line 1302
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v2, 0x0

    .line 1304
    :goto_6
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1305
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lantlr/RuleSymbol;

    .line 1307
    invoke-virtual {v4}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mnextToken"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    add-int/lit8 v6, v2, 0x1

    .line 1308
    iget-object v7, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v7, v7, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-virtual {p0, v4, v0, v2, v7}, Lantlr/CSharpCodeGenerator;->genRule(Lantlr/RuleSymbol;ZILantlr/TokenManager;)V

    move v2, v6

    .line 1310
    :cond_10
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->exitIfError()V

    goto :goto_6

    .line 1314
    :cond_11
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_12

    .line 1315
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->genSemPredMap()V

    .line 1318
    :cond_12
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-object v0, v0, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lantlr/collections/impl/BitSet;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lantlr/CSharpCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;I)V

    .line 1320
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1321
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr p1, v1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1322
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1324
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr p1, v1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1326
    sget-object p1, Lantlr/CSharpCodeGenerator;->nameSpace:Lantlr/CSharpNameSpace;

    if-eqz p1, :cond_13

    .line 1327
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/CSharpNameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 1330
    :cond_13
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 1331
    iput-object v8, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public genBody(Lantlr/ParserGrammar;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1367
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->setupOutput(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    iput-boolean v0, p0, Lantlr/CSharpCodeGenerator;->genAST:Z

    const/4 v0, 0x0

    .line 1371
    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1374
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->genHeader()V

    .line 1376
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lantlr/DefineGrammarSymbols;->getHeaderAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1379
    sget-object v1, Lantlr/CSharpCodeGenerator;->nameSpace:Lantlr/CSharpNameSpace;

    if-eqz v1, :cond_0

    .line 1380
    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v1, v3}, Lantlr/CSharpNameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 1381
    :cond_0
    iget v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v1, "// Generate the header common to all output files."

    .line 1384
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using System;"

    .line 1385
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using TokenBuffer              = antlr.TokenBuffer;"

    .line 1387
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using TokenStreamException     = antlr.TokenStreamException;"

    .line 1388
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using TokenStreamIOException   = antlr.TokenStreamIOException;"

    .line 1389
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using ANTLRException           = antlr.ANTLRException;"

    .line 1390
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1391
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "using "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " = antlr."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using Token                    = antlr.Token;"

    .line 1392
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using TokenStream              = antlr.TokenStream;"

    .line 1393
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using RecognitionException     = antlr.RecognitionException;"

    .line 1394
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using NoViableAltException     = antlr.NoViableAltException;"

    .line 1395
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using MismatchedTokenException = antlr.MismatchedTokenException;"

    .line 1396
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using SemanticException        = antlr.SemanticException;"

    .line 1397
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using ParserSharedInputState   = antlr.ParserSharedInputState;"

    .line 1398
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using BitSet                   = antlr.collections.impl.BitSet;"

    .line 1399
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1400
    iget-boolean v1, p0, Lantlr/CSharpCodeGenerator;->genAST:Z

    if-eqz v1, :cond_1

    const-string v1, "using AST                      = antlr.collections.AST;"

    .line 1401
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using ASTPair                  = antlr.ASTPair;"

    .line 1402
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using ASTFactory               = antlr.ASTFactory;"

    .line 1403
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "using ASTArray                 = antlr.collections.impl.ASTArray;"

    .line 1404
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1408
    :cond_1
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1412
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1413
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 1415
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "antlr."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1418
    :goto_0
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1419
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->_println(Ljava/lang/String;)V

    .line 1422
    :cond_3
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v5, "classHeaderPrefix"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lantlr/Token;

    const-string v5, "\""

    const-string v6, "public "

    if-nez v4, :cond_4

    .line 1424
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1427
    :cond_4
    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5, v5}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1429
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1432
    :cond_5
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    .line 1436
    :goto_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "class "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v7}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1438
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v4, "classHeaderSuffix"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Token;

    if-eqz v1, :cond_6

    .line 1440
    invoke-virtual {v1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5, v5}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1442
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "              , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v1, "{"

    .line 1444
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1445
    iget v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v4, v3

    iput v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1448
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->genTokenDefinitions(Lantlr/TokenManager;)V

    .line 1452
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v4, :cond_9

    const-string v4, "private const string[] _ruleNames = {"

    .line 1453
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1454
    iget v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v4, v3

    iput v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1456
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v4}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 1458
    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1459
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lantlr/GrammarSymbol;

    .line 1460
    instance-of v7, v5, Lantlr/RuleSymbol;

    if-eqz v7, :cond_7

    .line 1461
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "  \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast v5, Lantlr/RuleSymbol;

    invoke-virtual {v5}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\","

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1463
    :cond_8
    iget v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v4, v3

    iput v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo v4, "};"

    .line 1464
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1468
    :cond_9
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v5}, Lantlr/Token;->getLine()I

    move-result v5

    iget-object v7, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v8, 0x0

    invoke-virtual {p0, v4, v5, v7, v8}, Lantlr/CSharpCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "protected void initialize()"

    .line 1474
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1476
    iget v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v4, v3

    iput v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v4, "tokenNames = tokenNames_;"

    .line 1477
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1479
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->buildAST:Z

    if-eqz v4, :cond_a

    const-string v4, "initializeFactory();"

    .line 1480
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1484
    :cond_a
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v4, :cond_b

    const-string v4, "ruleNames  = _ruleNames;"

    .line 1485
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "semPredNames = _semPredNames;"

    .line 1486
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "setupDebugging(tokenBuf);"

    .line 1487
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1489
    :cond_b
    iget v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v4, v3

    iput v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo v4, "}"

    .line 1490
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1494
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "protected "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "(TokenBuffer tokenBuf, int k) : base(tokenBuf, k)"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1496
    iget v5, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v5, v3

    iput v5, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v5, "initialize();"

    .line 1497
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1498
    iget v9, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v9, v3

    iput v9, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1499
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1502
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v10}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "(TokenBuffer tokenBuf) : this(tokenBuf,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget v10, v10, Lantlr/Grammar;->maxk:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1508
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v7}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "(TokenStream lexer, int k) : base(lexer,k)"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1510
    iget v7, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v7, v3

    iput v7, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1511
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1512
    iget v7, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v7, v3

    iput v7, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1513
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1514
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1516
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "(TokenStream lexer) : this(lexer,"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget v9, v9, Lantlr/Grammar;->maxk:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1521
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "(ParserSharedInputState state) : base(state,"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1523
    iget v6, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v6, v3

    iput v6, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1524
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1525
    iget v5, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v5, v3

    iput v5, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1526
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1529
    new-instance v5, Ljava/util/Vector;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v5, p0, Lantlr/CSharpCodeGenerator;->astTypes:Ljava/util/Vector;

    .line 1532
    iget-object v5, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v5}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    const/4 v6, 0x0

    .line 1534
    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1535
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lantlr/GrammarSymbol;

    .line 1536
    instance-of v9, v7, Lantlr/RuleSymbol;

    if-eqz v9, :cond_d

    .line 1537
    check-cast v7, Lantlr/RuleSymbol;

    .line 1538
    iget-object v9, v7, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v9}, Lantlr/collections/impl/Vector;->size()I

    move-result v9

    if-nez v9, :cond_c

    const/4 v9, 0x1

    goto :goto_4

    :cond_c
    const/4 v9, 0x0

    :goto_4
    add-int/lit8 v10, v6, 0x1

    iget-object v11, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v11, v11, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-virtual {p0, v7, v9, v6, v11}, Lantlr/CSharpCodeGenerator;->genRule(Lantlr/RuleSymbol;ZILantlr/TokenManager;)V

    move v6, v10

    .line 1540
    :cond_d
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->exitIfError()V

    goto :goto_3

    .line 1542
    :cond_e
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_f

    .line 1546
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "public new "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " getAST()"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1548
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v0, v3

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1549
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "return ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ") returnAST;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1550
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v3

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1551
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_f
    const-string v0, "private void initializeFactory()"

    .line 1557
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1559
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v0, v3

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1560
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_11

    const-string v0, "if (astFactory == null)"

    .line 1561
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1563
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v0, v3

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1564
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_10

    .line 1566
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "astFactory = new ASTFactory(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    const-string v0, "astFactory = new ASTFactory();"

    .line 1569
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1570
    :goto_5
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v3

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1571
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "initializeASTFactory( astFactory );"

    .line 1572
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1574
    :cond_11
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v3

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1575
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genInitFactory(Lantlr/Grammar;)V

    .line 1579
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->genTokenStrings()V

    .line 1582
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lantlr/CSharpCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;I)V

    .line 1585
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_12

    .line 1586
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->genSemPredMap()V

    .line 1589
    :cond_12
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1590
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr p1, v3

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1591
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1593
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr p1, v3

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1595
    sget-object p1, Lantlr/CSharpCodeGenerator;->nameSpace:Lantlr/CSharpNameSpace;

    if-eqz p1, :cond_13

    .line 1596
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/CSharpNameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 1599
    :cond_13
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 1600
    iput-object v8, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public genBody(Lantlr/TreeWalkerGrammar;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1607
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->setupOutput(Ljava/lang/String;)V

    .line 1609
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->buildAST:Z

    iput-boolean p1, p0, Lantlr/CSharpCodeGenerator;->genAST:Z

    const/4 p1, 0x0

    .line 1610
    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1613
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->genHeader()V

    .line 1615
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lantlr/DefineGrammarSymbols;->getHeaderAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1618
    sget-object v0, Lantlr/CSharpCodeGenerator;->nameSpace:Lantlr/CSharpNameSpace;

    if-eqz v0, :cond_0

    .line 1619
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, v2}, Lantlr/CSharpNameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 1620
    :cond_0
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v0, "// Generate header specific to the tree-parser CSharp file"

    .line 1623
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "using System;"

    .line 1624
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1626
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "using "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " = antlr."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "using Token                    = antlr.Token;"

    .line 1627
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "using AST                      = antlr.collections.AST;"

    .line 1628
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "using RecognitionException     = antlr.RecognitionException;"

    .line 1629
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "using ANTLRException           = antlr.ANTLRException;"

    .line 1630
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "using NoViableAltException     = antlr.NoViableAltException;"

    .line 1631
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "using MismatchedTokenException = antlr.MismatchedTokenException;"

    .line 1632
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "using SemanticException        = antlr.SemanticException;"

    .line 1633
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "using BitSet                   = antlr.collections.impl.BitSet;"

    .line 1634
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "using ASTPair                  = antlr.ASTPair;"

    .line 1635
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "using ASTFactory               = antlr.ASTFactory;"

    .line 1636
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "using ASTArray                 = antlr.collections.impl.ASTArray;"

    .line 1637
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1640
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1644
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1645
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 1648
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "antlr."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1650
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1653
    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1654
    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->_println(Ljava/lang/String;)V

    .line 1657
    :cond_2
    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v4, "classHeaderPrefix"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/Token;

    const-string v4, "public "

    const-string v5, "\""

    if-nez v3, :cond_3

    .line 1659
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1662
    :cond_3
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v5}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1664
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1667
    :cond_4
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    .line 1671
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "class "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1672
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v3, "classHeaderSuffix"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/Token;

    if-eqz v0, :cond_5

    .line 1674
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v5}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1676
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "              , "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v0, "{"

    .line 1679
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1680
    iget v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v3, v2

    iput v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1683
    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->genTokenDefinitions(Lantlr/TokenManager;)V

    .line 1686
    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v5}, Lantlr/Token;->getLine()I

    move-result v5

    iget-object v6, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v5, v6, v7}, Lantlr/CSharpCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    .line 1691
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1693
    iget v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v3, v2

    iput v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v3, "tokenNames = tokenNames_;"

    .line 1694
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1695
    iget v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v3, v2

    iput v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo v3, "}"

    .line 1696
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1699
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lantlr/CSharpCodeGenerator;->astTypes:Ljava/util/Vector;

    .line 1701
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v4}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v5, 0x0

    .line 1704
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1705
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lantlr/GrammarSymbol;

    .line 1706
    instance-of v8, v6, Lantlr/RuleSymbol;

    if-eqz v8, :cond_7

    .line 1707
    check-cast v6, Lantlr/RuleSymbol;

    .line 1708
    iget-object v8, v6, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v8}, Lantlr/collections/impl/Vector;->size()I

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v9, v5, 0x1

    iget-object v10, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v10, v10, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-virtual {p0, v6, v8, v5, v10}, Lantlr/CSharpCodeGenerator;->genRule(Lantlr/RuleSymbol;ZILantlr/TokenManager;)V

    move v5, v9

    .line 1710
    :cond_7
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->exitIfError()V

    goto :goto_2

    .line 1713
    :cond_8
    iget-boolean p1, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-eqz p1, :cond_9

    .line 1717
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "public new "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " getAST()"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1718
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1719
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr p1, v2

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1720
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "return ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") returnAST;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1721
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr p1, v2

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1722
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1727
    :cond_9
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genInitFactory(Lantlr/Grammar;)V

    .line 1730
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->genTokenStrings()V

    .line 1733
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lantlr/CSharpCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;I)V

    .line 1736
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr p1, v2

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1737
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1740
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr p1, v2

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1742
    sget-object p1, Lantlr/CSharpCodeGenerator;->nameSpace:Lantlr/CSharpNameSpace;

    if-eqz p1, :cond_a

    .line 1743
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/CSharpNameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 1746
    :cond_a
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 1747
    iput-object v7, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method protected genCases(Lantlr/collections/impl/BitSet;)V
    .locals 8

    .line 1754
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

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

    .line 1757
    :cond_0
    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object p1

    .line 1759
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

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

    .line 1762
    :goto_1
    array-length v6, p1

    const-string v7, ""

    if-ge v3, v6, :cond_4

    if-ne v5, v1, :cond_2

    .line 1764
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v4, "  "

    .line 1766
    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 1768
    :goto_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "case "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget v6, p1, v3

    invoke-direct {p0, v6}, Lantlr/CSharpCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    if-ne v5, v0, :cond_3

    .line 1770
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->_println(Ljava/lang/String;)V

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

    .line 1780
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->_println(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CSharpBlockFinishingInfo;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1801
    new-instance v2, Lantlr/CSharpBlockFinishingInfo;

    invoke-direct {v2}, Lantlr/CSharpBlockFinishingInfo;-><init>()V

    .line 1802
    iget-boolean v3, v0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

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

    .line 1805
    :cond_0
    iget-boolean v3, v0, Lantlr/CSharpCodeGenerator;->genAST:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 1806
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, v0, Lantlr/CSharpCodeGenerator;->genAST:Z

    .line 1808
    iget-boolean v6, v0, Lantlr/CSharpCodeGenerator;->saveText:Z

    if-eqz v6, :cond_2

    .line 1809
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, v0, Lantlr/CSharpCodeGenerator;->saveText:Z

    .line 1812
    iget-boolean v7, v1, Lantlr/AlternativeBlock;->not:Z

    const-string v8, ""

    if-eqz v7, :cond_8

    iget-object v7, v0, Lantlr/CSharpCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v9, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v9, v9, Lantlr/LexerGrammar;

    invoke-interface {v7, v1, v9}, Lantlr/LLkGrammarAnalyzer;->subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1815
    iget-boolean v3, v0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v3, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "special case: ~(subrule)"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1816
    :cond_3
    iget-object v3, v0, Lantlr/CSharpCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v3, v5, v1}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object v3

    .line 1818
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget v4, v0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    if-nez v4, :cond_4

    .line 1819
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v0, Lantlr/CSharpCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1823
    :cond_4
    invoke-direct/range {p0 .. p1}, Lantlr/CSharpCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 1826
    iget-object v1, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-eqz v1, :cond_6

    .line 1827
    iget-boolean v1, v0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-eqz v1, :cond_5

    const-string v8, "(AST)_t,"

    goto :goto_2

    :cond_5
    const-string v8, "_t,"

    .line 1834
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "match("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v3}, Lantlr/CSharpCodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result v3

    invoke-virtual {v0, v3}, Lantlr/CSharpCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ");"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1837
    iget-object v1, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-eqz v1, :cond_7

    const-string v1, "_t = _t.getNextSibling();"

    .line 1839
    invoke-virtual {v0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    return-object v2

    .line 1845
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v7

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-ne v7, v5, :cond_b

    .line 1847
    invoke-virtual {v1, v4}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v7

    .line 1849
    iget-object v9, v7, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v9, :cond_9

    .line 1851
    iget-object v9, v0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v10, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

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

    :cond_9
    if-eqz p2, :cond_b

    .line 1860
    iget-object v3, v7, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 1863
    iget-object v3, v7, Lantlr/Alternative;->semPred:Ljava/lang/String;

    iget v4, v1, Lantlr/AlternativeBlock;->line:I

    invoke-virtual {v0, v3, v4}, Lantlr/CSharpCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    .line 1865
    :cond_a
    invoke-virtual {v0, v7, v1}, Lantlr/CSharpCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    return-object v2

    :cond_b
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1880
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v10

    invoke-virtual {v10}, Lantlr/collections/impl/Vector;->size()I

    move-result v10

    if-ge v7, v10, :cond_d

    .line 1882
    invoke-virtual {v1, v7}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v10

    .line 1883
    invoke-static {v10}, Lantlr/CSharpCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v10

    if-eqz v10, :cond_c

    add-int/lit8 v9, v9, 0x1

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1889
    :cond_d
    iget v7, v0, Lantlr/CSharpCodeGenerator;->makeSwitchThreshold:I

    const-string v10, "_t = ASTNULL;"

    const-string/jumbo v11, "}"

    const-string/jumbo v12, "{"

    if-lt v9, v7, :cond_12

    .line 1892
    invoke-direct {v0, v5}, Lantlr/CSharpCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v7

    .line 1895
    iget-object v9, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v9, v9, Lantlr/TreeWalkerGrammar;

    if-eqz v9, :cond_e

    const-string v9, "if (null == _t)"

    .line 1897
    invoke-virtual {v0, v9}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1898
    iget v9, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v9, v5

    iput v9, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1899
    invoke-virtual {v0, v10}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1900
    iget v9, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v9, v5

    iput v9, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1902
    :cond_e
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "switch ( "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " )"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1903
    invoke-virtual {v0, v12}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 1905
    :goto_4
    iget-object v9, v1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v9}, Lantlr/collections/impl/Vector;->size()I

    move-result v9

    if-ge v7, v9, :cond_11

    .line 1907
    invoke-virtual {v1, v7}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v9

    .line 1910
    iput-boolean v4, v0, Lantlr/CSharpCodeGenerator;->bSaveIndexCreated:Z

    .line 1911
    invoke-static {v9}, Lantlr/CSharpCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v13

    if-nez v13, :cond_f

    goto :goto_5

    .line 1915
    :cond_f
    iget-object v13, v9, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v13, v13, v5

    .line 1916
    iget-object v14, v13, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v14}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual {v13}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v14

    if-nez v14, :cond_10

    .line 1918
    iget-object v13, v0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v14, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

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

    goto :goto_5

    .line 1924
    :cond_10
    iget-object v4, v13, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v4}, Lantlr/CSharpCodeGenerator;->genCases(Lantlr/collections/impl/BitSet;)V

    .line 1925
    invoke-virtual {v0, v12}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1926
    iget v4, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v4, v5

    iput v4, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1927
    invoke-virtual {v0, v9, v1}, Lantlr/CSharpCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    const-string v4, "break;"

    .line 1928
    invoke-virtual {v0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1929
    iget v4, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v4, v5

    iput v4, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1930
    invoke-virtual {v0, v11}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_11
    const-string v4, "default:"

    .line 1933
    invoke-virtual {v0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1934
    iget v4, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v4, v5

    iput v4, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v4, 0x1

    goto :goto_6

    :cond_12
    const/4 v4, 0x0

    .line 1950
    :goto_6
    iget-object v7, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/LexerGrammar;

    if-eqz v7, :cond_13

    iget-object v7, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget v7, v7, Lantlr/Grammar;->maxk:I

    goto :goto_7

    :cond_13
    const/4 v7, 0x0

    :goto_7
    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_8
    if-ltz v7, :cond_28

    .line 1952
    iget-boolean v14, v0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v14, :cond_14

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "checking depth "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_14
    const/4 v5, 0x0

    .line 1953
    :goto_9
    iget-object v14, v1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v14}, Lantlr/collections/impl/Vector;->size()I

    move-result v14

    if-ge v5, v14, :cond_27

    .line 1954
    invoke-virtual {v1, v5}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v14

    .line 1955
    iget-boolean v15, v0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v15, :cond_15

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

    goto :goto_a

    :cond_15
    move/from16 v18, v6

    move-object/from16 v17, v8

    :goto_a
    if-eqz v4, :cond_16

    .line 1960
    invoke-static {v14}, Lantlr/CSharpCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1962
    iget-boolean v6, v0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v6, :cond_19

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "ignoring alt because it was in the switch"

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 1969
    :cond_16
    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/LexerGrammar;

    if-eqz v6, :cond_1b

    .line 1973
    iget v6, v14, Lantlr/Alternative;->lookaheadDepth:I

    const v8, 0x7fffffff

    if-ne v6, v8, :cond_17

    .line 1977
    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    :cond_17
    :goto_b
    const/4 v8, 0x1

    if-lt v6, v8, :cond_18

    .line 1979
    iget-object v8, v14, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v8

    if-eqz v8, :cond_18

    add-int/lit8 v6, v6, -0x1

    goto :goto_b

    :cond_18
    if-eq v6, v7, :cond_1a

    .line 1988
    iget-boolean v8, v0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-eqz v8, :cond_19

    .line 1989
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

    :cond_19
    :goto_c
    move-object/from16 v21, v2

    move/from16 v19, v3

    move/from16 p2, v4

    move/from16 v22, v5

    move/from16 v20, v7

    goto/16 :goto_12

    .line 1992
    :cond_1a
    invoke-virtual {v0, v14, v6}, Lantlr/CSharpCodeGenerator;->lookaheadIsEmpty(Lantlr/Alternative;I)Z

    move-result v8

    .line 1993
    invoke-virtual {v0, v14, v6}, Lantlr/CSharpCodeGenerator;->getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 1997
    :cond_1b
    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    invoke-virtual {v0, v14, v6}, Lantlr/CSharpCodeGenerator;->lookaheadIsEmpty(Lantlr/Alternative;I)Z

    move-result v8

    .line 1998
    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    invoke-virtual {v0, v14, v6}, Lantlr/CSharpCodeGenerator;->getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;

    move-result-object v6

    .line 2003
    :goto_d
    iget-object v15, v14, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    iget-object v15, v15, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v15}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v15

    move/from16 p2, v4

    const/16 v4, 0x7f

    move/from16 v19, v3

    const-string v3, "if "

    move/from16 v20, v7

    const-string v7, "else if "

    if-le v15, v4, :cond_1d

    invoke-static {v14}, Lantlr/CSharpCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v4

    if-eqz v4, :cond_1d

    if-nez v13, :cond_1c

    .line 2008
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2009
    invoke-virtual {v0, v12}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 2012
    :cond_1c
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2013
    invoke-virtual {v0, v12}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :goto_e
    move-object/from16 v21, v2

    move/from16 v22, v5

    goto/16 :goto_11

    :cond_1d
    const-string v4, "else {"

    if-eqz v8, :cond_1f

    .line 2016
    iget-object v8, v14, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-nez v8, :cond_1f

    iget-object v8, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-nez v8, :cond_1f

    if-nez v13, :cond_1e

    .line 2025
    invoke-virtual {v0, v12}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 2028
    :cond_1e
    invoke-virtual {v0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :goto_f
    const/4 v3, 0x0

    .line 2030
    iput-boolean v3, v2, Lantlr/CSharpBlockFinishingInfo;->needAnErrorClause:Z

    goto :goto_e

    .line 2036
    :cond_1f
    iget-object v8, v14, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v8, :cond_22

    .line 2040
    new-instance v8, Lantlr/ActionTransInfo;

    invoke-direct {v8}, Lantlr/ActionTransInfo;-><init>()V

    .line 2041
    iget-object v15, v14, Lantlr/Alternative;->semPred:Ljava/lang/String;

    move-object/from16 v21, v2

    iget v2, v1, Lantlr/AlternativeBlock;->line:I

    move/from16 v22, v5

    iget-object v5, v0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v0, v15, v2, v5, v8}, Lantlr/CSharpCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2048
    iget-object v5, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/ParserGrammar;

    const-string v8, "))"

    const-string v15, "("

    if-nez v5, :cond_20

    iget-object v5, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/LexerGrammar;

    if-eqz v5, :cond_21

    :cond_20
    iget-object v5, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v5, v5, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v5, :cond_21

    .line 2050
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "&& fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.PREDICTING,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v6, v2}, Lantlr/CharFormatter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->addSemPred(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    .line 2054
    :cond_21
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "&&("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    :cond_22
    move-object/from16 v21, v2

    move/from16 v22, v5

    :goto_10
    if-lez v13, :cond_24

    .line 2060
    iget-object v2, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v2, :cond_23

    .line 2061
    invoke-virtual {v0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2062
    iget v2, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2063
    iget-object v2, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v0, v2, v6}, Lantlr/CSharpCodeGenerator;->genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 2067
    :cond_23
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_11

    .line 2071
    :cond_24
    iget-object v2, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v2, :cond_25

    .line 2072
    iget-object v2, v14, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v0, v2, v6}, Lantlr/CSharpCodeGenerator;->genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V

    goto :goto_11

    .line 2077
    :cond_25
    iget-object v2, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_26

    const-string v2, "if (_t == null)"

    .line 2078
    invoke-virtual {v0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2079
    iget v2, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2080
    invoke-virtual {v0, v10}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2081
    iget v2, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v2, v4

    iput v2, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2083
    :cond_26
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2084
    invoke-virtual {v0, v12}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :goto_11
    add-int/lit8 v13, v13, 0x1

    .line 2091
    iget v2, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2092
    invoke-virtual {v0, v14, v1}, Lantlr/CSharpCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    .line 2093
    iget v2, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v2, v3

    iput v2, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2094
    invoke-virtual {v0, v11}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :goto_12
    add-int/lit8 v5, v22, 0x1

    move/from16 v4, p2

    move-object/from16 v8, v17

    move/from16 v6, v18

    move/from16 v3, v19

    move/from16 v7, v20

    move-object/from16 v2, v21

    goto/16 :goto_9

    :cond_27
    move-object/from16 v21, v2

    move/from16 v19, v3

    move/from16 p2, v4

    move/from16 v18, v6

    move/from16 v20, v7

    move-object/from16 v17, v8

    add-int/lit8 v7, v20, -0x1

    const/4 v5, 0x1

    goto/16 :goto_8

    :cond_28
    move-object/from16 v21, v2

    move/from16 v19, v3

    move/from16 p2, v4

    move/from16 v18, v6

    move-object/from16 v17, v8

    move-object/from16 v1, v17

    const/4 v8, 0x1

    :goto_13
    if-gt v8, v9, :cond_29

    .line 2100
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_29
    move/from16 v2, v19

    .line 2104
    iput-boolean v2, v0, Lantlr/CSharpCodeGenerator;->genAST:Z

    move/from16 v2, v18

    .line 2107
    iput-boolean v2, v0, Lantlr/CSharpCodeGenerator;->saveText:Z

    if-eqz p2, :cond_2b

    .line 2111
    iget v2, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2112
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "break; }"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v21

    iput-object v1, v2, Lantlr/CSharpBlockFinishingInfo;->postscript:Ljava/lang/String;

    .line 2113
    iput-boolean v3, v2, Lantlr/CSharpBlockFinishingInfo;->generatedSwitch:Z

    if-lez v13, :cond_2a

    const/4 v4, 0x1

    goto :goto_14

    :cond_2a
    const/4 v4, 0x0

    .line 2114
    :goto_14
    iput-boolean v4, v2, Lantlr/CSharpBlockFinishingInfo;->generatedAnIf:Z

    goto :goto_16

    :cond_2b
    move-object/from16 v2, v21

    const/4 v3, 0x1

    .line 2119
    iput-object v1, v2, Lantlr/CSharpBlockFinishingInfo;->postscript:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2120
    iput-boolean v1, v2, Lantlr/CSharpBlockFinishingInfo;->generatedSwitch:Z

    if-lez v13, :cond_2c

    const/4 v4, 0x1

    goto :goto_15

    :cond_2c
    const/4 v4, 0x0

    .line 2121
    :goto_15
    iput-boolean v4, v2, Lantlr/CSharpBlockFinishingInfo;->generatedAnIf:Z

    :goto_16
    return-object v2
.end method

.method protected genHeader()V
    .locals 4

    .line 2412
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

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v3, v3, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lantlr/Tool;->fileMinusPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".cs\"$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genInitFactory(Lantlr/Grammar;)V
    .locals 6

    .line 1335
    iget-boolean v0, p1, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_2

    const-string v0, "static public void initializeASTFactory( ASTFactory factory )"

    .line 1339
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "{"

    .line 1340
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1341
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 1343
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "factory.setMaxNodeType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v1}, Lantlr/TokenManager;->maxTokenType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 1347
    iget-object v0, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v0

    const/4 v1, 0x0

    .line 1348
    :goto_0
    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1349
    invoke-virtual {v0, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1351
    iget-object v3, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v3, v2}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1352
    invoke-virtual {v3}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1353
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "factory.setTokenTypeASTNodeType("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", \""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\");"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1358
    :cond_1
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 1359
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected genMatch(Lantlr/GrammarAtom;)V
    .locals 3

    .line 2430
    instance-of v0, p1, Lantlr/StringLiteralElement;

    if-eqz v0, :cond_1

    .line 2431
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_0

    .line 2432
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genMatchUsingAtomText(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2435
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genMatchUsingAtomTokenType(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2438
    :cond_1
    instance-of v0, p1, Lantlr/CharLiteralElement;

    if-eqz v0, :cond_3

    .line 2439
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_2

    .line 2440
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genMatchUsingAtomText(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2443
    :cond_2
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "cannot ref character literals in grammar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 2446
    :cond_3
    instance-of v0, p1, Lantlr/TokenRefElement;

    if-eqz v0, :cond_4

    .line 2447
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genMatchUsingAtomText(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 2448
    :cond_4
    instance-of v0, p1, Lantlr/WildcardElement;

    if-eqz v0, :cond_5

    .line 2449
    check-cast p1, Lantlr/WildcardElement;

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->gen(Lantlr/WildcardElement;)V

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

    .line 2455
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_1

    .line 2456
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_0

    const-string v0, "(AST)_t,"

    goto :goto_0

    :cond_0
    const-string v0, "_t,"

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 2463
    :goto_0
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    const/4 v2, 0x3

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getAutoGenType()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 2464
    :cond_2
    invoke-direct {p0}, Lantlr/CSharpCodeGenerator;->declareSaveIndexVariableIfNeeded()V

    const-string v1, "_saveIndex = text.Length;"

    .line 2465
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2468
    :cond_3
    iget-boolean v1, p1, Lantlr/GrammarAtom;->not:Z

    if-eqz v1, :cond_4

    const-string v1, "matchNot("

    goto :goto_1

    :cond_4
    const-string v1, "match("

    :goto_1
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    .line 2469
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2472
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    const-string v1, "EOF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Token.EOF_TYPE"

    .line 2474
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_2

    .line 2477
    :cond_5
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    :goto_2
    const-string v0, ");"

    .line 2479
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2481
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->saveText:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getAutoGenType()I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 2482
    :cond_6
    invoke-direct {p0}, Lantlr/CSharpCodeGenerator;->declareSaveIndexVariableIfNeeded()V

    const-string p1, "text.Length = _saveIndex;"

    .line 2483
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected genMatchUsingAtomTokenType(Lantlr/GrammarAtom;)V
    .locals 2

    .line 2490
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_1

    .line 2491
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_0

    const-string v0, "(AST)_t,"

    goto :goto_0

    :cond_0
    const-string v0, "_t,"

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 2499
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lantlr/CSharpCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2502
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean p1, p1, Lantlr/GrammarAtom;->not:Z

    if-eqz p1, :cond_2

    const-string p1, "matchNot("

    goto :goto_1

    :cond_2
    const-string p1, "match("

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genNextToken()V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2513
    :goto_0
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    const-string v3, "public"

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    .line 2514
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/RuleSymbol;

    .line 2515
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
    const-string v2, "override public Token nextToken()\t\t\t//throws TokenStreamException"

    const-string v5, ""

    const-string/jumbo v6, "{"

    const-string/jumbo v7, "}"

    if-nez v1, :cond_2

    .line 2521
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2522
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2523
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2524
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v0, "try"

    .line 2525
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2526
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2527
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v0, "uponEOF();"

    .line 2528
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2529
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2530
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "catch(CharStreamIOException csioe)"

    .line 2531
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2532
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2533
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v0, "throw new TokenStreamIOException(csioe.io);"

    .line 2534
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2535
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2536
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "catch(CharStreamException cse)"

    .line 2537
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2538
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2539
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v0, "throw new TokenStreamException(cse.Message);"

    .line 2540
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2541
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2542
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "return new CommonToken(Token.EOF_TYPE, \"\");"

    .line 2543
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2544
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2545
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2546
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 2551
    :cond_2
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v8, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v8, v8, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    const-string v9, "nextToken"

    invoke-static {v1, v8, v9}, Lantlr/MakeGrammar;->createNextTokenRule(Lantlr/Grammar;Lantlr/collections/impl/Vector;Ljava/lang/String;)Lantlr/RuleBlock;

    move-result-object v1

    .line 2553
    new-instance v8, Lantlr/RuleSymbol;

    const-string v9, "mnextToken"

    invoke-direct {v8, v9}, Lantlr/RuleSymbol;-><init>(Ljava/lang/String;)V

    .line 2554
    invoke-virtual {v8}, Lantlr/RuleSymbol;->setDefined()V

    .line 2555
    invoke-virtual {v8, v1}, Lantlr/RuleSymbol;->setBlock(Lantlr/RuleBlock;)V

    const-string v9, "private"

    .line 2556
    iput-object v9, v8, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    .line 2557
    iget-object v9, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9, v8}, Lantlr/Grammar;->define(Lantlr/RuleSymbol;)V

    .line 2559
    iget-object v8, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v8, v8, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v8, v1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    const/4 v8, 0x0

    .line 2563
    iget-object v9, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v9, Lantlr/LexerGrammar;

    iget-boolean v9, v9, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v9, :cond_3

    .line 2564
    iget-object v8, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v8, Lantlr/LexerGrammar;

    iget-object v8, v8, Lantlr/LexerGrammar;->filterRule:Ljava/lang/String;

    .line 2567
    :cond_3
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2568
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2569
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2570
    iget v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v2, v4

    iput v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v2, "Token theRetToken = null;"

    .line 2571
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "tryAgain:"

    .line 2572
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->_println(Ljava/lang/String;)V

    const-string v2, "for (;;)"

    .line 2573
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2574
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2575
    iget v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v2, v4

    iput v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v2, "Token _token = null;"

    .line 2576
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "int _ttype = Token.INVALID_TYPE;"

    .line 2577
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2578
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v2, Lantlr/LexerGrammar;

    iget-boolean v2, v2, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v2, :cond_7

    const-string v2, "setCommitToPath(false);"

    .line 2579
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    if-eqz v8, :cond_7

    .line 2582
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-static {v8}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lantlr/Grammar;->isDefined(Ljava/lang/String;)Z

    move-result v2

    const-string v9, " does not exist in this lexer"

    const-string v10, "Filter rule "

    if-nez v2, :cond_4

    .line 2583
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 2586
    :cond_4
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-static {v8}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v2

    check-cast v2, Lantlr/RuleSymbol;

    .line 2587
    invoke-virtual {v2}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v11

    if-nez v11, :cond_5

    .line 2588
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 2590
    :cond_5
    iget-object v2, v2, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2591
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " must be protected"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;)V

    :cond_6
    :goto_2
    const-string v2, "int _m;"

    .line 2594
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "_m = mark();"

    .line 2595
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    const-string v2, "resetText();"

    .line 2598
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v3, "try     // for char stream error handling"

    .line 2600
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2601
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2602
    iget v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v3, v4

    iput v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v3, "try     // for lexical error handling"

    .line 2605
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2607
    iget v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v3, v4

    iput v3, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v3, 0x0

    .line 2610
    :goto_3
    invoke-virtual {v1}, Lantlr/RuleBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v9

    invoke-virtual {v9}, Lantlr/collections/impl/Vector;->size()I

    move-result v9

    if-ge v3, v9, :cond_9

    .line 2611
    invoke-virtual {v1, v3}, Lantlr/RuleBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v9

    .line 2612
    iget-object v10, v9, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2614
    iget-object v9, v9, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    check-cast v9, Lantlr/RuleRefElement;

    .line 2615
    iget-object v9, v9, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-static {v9}, Lantlr/CodeGenerator;->decodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2616
    iget-object v10, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "public lexical rule "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " is optional (can match \"nothing\")"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    const-string v3, "line.separator"

    .line 2621
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2622
    invoke-virtual {p0, v1, v0}, Lantlr/CSharpCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CSharpBlockFinishingInfo;

    move-result-object v0

    .line 2624
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "if (LA(1)==EOF_CHAR) { uponEOF(); returnToken_ = makeToken(Token.EOF_TYPE); }"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\t\t\t\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2625
    iget-object v10, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v10, Lantlr/LexerGrammar;

    iget-boolean v10, v10, Lantlr/LexerGrammar;->filterMode:Z

    const-string v11, "(false);}"

    if-eqz v10, :cond_b

    const-string v10, "\t\t\t\t}"

    const-string v12, "\t\t\t\t\tgoto tryAgain;"

    if-nez v8, :cond_a

    .line 2628
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\t\t\t\telse"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2629
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\t\t\t\t{"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2630
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\t\t\t\t\tconsume();"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2631
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2632
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 2635
    :cond_a
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\t\t\t\t\telse"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\t\t\t\t\t{"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, "\t\t\t\t\tcommit();"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, "\t\t\t\t\ttry {m"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, "\t\t\t\t\tcatch(RecognitionException e)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\t\t\t\t\t\t// catastrophic failure"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\t\t\t\t\t\treportError(e);"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\t\t\t\t\t\tconsume();"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\t\t\t\t\t}"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 2650
    :cond_b
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "else {"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lantlr/CSharpCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2652
    :goto_4
    invoke-direct {p0, v0, v3}, Lantlr/CSharpCodeGenerator;->genBlockFinish(Lantlr/CSharpBlockFinishingInfo;Ljava/lang/String;)V

    .line 2655
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-boolean v0, v0, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v0, :cond_c

    if-eqz v8, :cond_c

    const-string v0, "commit();"

    .line 2656
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_c
    const-string v0, "if ( null==returnToken_ ) goto tryAgain; // found SKIP token"

    .line 2662
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "_ttype = returnToken_.Type;"

    .line 2663
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2664
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    invoke-virtual {v0}, Lantlr/LexerGrammar;->getTestLiterals()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2665
    invoke-direct {p0}, Lantlr/CSharpCodeGenerator;->genLiteralsTest()V

    :cond_d
    const-string v0, "returnToken_.Type = _ttype;"

    .line 2669
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "return returnToken_;"

    .line 2670
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2673
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2674
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "catch (RecognitionException e) {"

    .line 2675
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2676
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2677
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-boolean v0, v0, Lantlr/LexerGrammar;->filterMode:Z

    const-string v3, "consume();"

    if-eqz v0, :cond_f

    const-string v0, "if (!getCommitToPath())"

    if-nez v8, :cond_e

    .line 2679
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2680
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2681
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2682
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "goto tryAgain;"

    .line 2683
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2684
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2685
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 2688
    :cond_e
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2689
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2690
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v0, "rewind(_m);"

    .line 2691
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2692
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2693
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "try {m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "catch(RecognitionException ee) {"

    .line 2694
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\t// horrendous failure: error in filter rule"

    .line 2695
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\treportError(ee);"

    .line 2696
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\tconsume();"

    .line 2697
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2698
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2700
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2701
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "else"

    .line 2702
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2705
    :cond_f
    :goto_5
    invoke-virtual {v1}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2706
    invoke-virtual {p0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2707
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v0, "reportError(e);"

    .line 2708
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2709
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2710
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2711
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2715
    :cond_10
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v0, "throw new TokenStreamRecognitionException(e);"

    .line 2716
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2717
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2719
    :goto_6
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2720
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2723
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2724
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "catch (CharStreamException cse) {"

    .line 2725
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\tif ( cse is CharStreamIOException ) {"

    .line 2726
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\t\tthrow new TokenStreamIOException(((CharStreamIOException)cse).io);"

    .line 2727
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\t}"

    .line 2728
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "\telse {"

    .line 2729
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "\t\tthrow new TokenStreamException(cse.Message);"

    .line 2730
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2731
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2732
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2735
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2736
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2739
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2740
    invoke-virtual {p0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2741
    invoke-virtual {p0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genRule(Lantlr/RuleSymbol;ZILantlr/TokenManager;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x1

    .line 2760
    iput v3, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2761
    iget-boolean v4, v0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

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

    .line 2762
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2763
    iget-object v2, v0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

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

    .line 2768
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v4

    .line 2769
    iput-object v4, v0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    .line 2770
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lantlr/CSharpCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 2773
    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->declaredASTVariables:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    .line 2776
    iget-boolean v6, v0, Lantlr/CSharpCodeGenerator;->genAST:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 2777
    invoke-virtual {v4}, Lantlr/RuleBlock;->getAutoGen()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, v0, Lantlr/CSharpCodeGenerator;->genAST:Z

    .line 2780
    invoke-virtual {v4}, Lantlr/RuleBlock;->getAutoGen()Z

    move-result v8

    iput-boolean v8, v0, Lantlr/CSharpCodeGenerator;->saveText:Z

    .line 2783
    iget-object v8, v1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 2784
    iget-object v8, v1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2789
    :cond_3
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    .line 2792
    iget-object v8, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 2795
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v4}, Lantlr/RuleBlock;->getLine()I

    move-result v11

    invoke-virtual {v4}, Lantlr/RuleBlock;->getColumn()I

    move-result v12

    invoke-virtual {v0, v10, v11, v12}, Lantlr/CSharpCodeGenerator;->extractTypeOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v8, "void "

    .line 2798
    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2802
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

    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2805
    iget-object v8, v0, Lantlr/CSharpCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2806
    iget-object v8, v0, Lantlr/CSharpCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v4, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-eqz v8, :cond_5

    const-string v8, ","

    .line 2807
    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2811
    :cond_5
    iget-object v8, v4, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    const-string v10, ""

    if-eqz v8, :cond_6

    .line 2814
    invoke-virtual {v0, v10}, Lantlr/CSharpCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2815
    iget v8, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v8, v3

    iput v8, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2816
    iget-object v8, v4, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2817
    iget v8, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v8, v3

    iput v8, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2818
    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 2822
    :cond_6
    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2826
    :goto_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, " //throws "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v0, Lantlr/CSharpCodeGenerator;->exceptionThrown:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2827
    iget-object v5, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/ParserGrammar;

    if-eqz v5, :cond_7

    const-string v5, ", TokenStreamException"

    .line 2828
    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_3

    .line 2830
    :cond_7
    iget-object v5, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/LexerGrammar;

    if-eqz v5, :cond_8

    const-string v5, ", CharStreamException, TokenStreamException"

    .line 2831
    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2834
    :cond_8
    :goto_3
    iget-object v5, v4, Lantlr/RuleBlock;->throwsSpec:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 2835
    iget-object v5, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v5, v5, Lantlr/LexerGrammar;

    if-eqz v5, :cond_9

    .line 2836
    iget-object v5, v0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

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

    .line 2839
    :cond_9
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v4, Lantlr/RuleBlock;->throwsSpec:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 2843
    :cond_a
    :goto_4
    invoke-virtual {v0, v10}, Lantlr/CSharpCodeGenerator;->_println(Ljava/lang/String;)V

    const-string/jumbo v5, "{"

    .line 2844
    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2845
    iget v8, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v8, v3

    iput v8, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2848
    iget-object v8, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    const-string v11, ";"

    if-eqz v8, :cond_b

    .line 2849
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v12, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2852
    :cond_b
    iget-object v8, v0, Lantlr/CSharpCodeGenerator;->commonLocalVars:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2854
    iget-object v8, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v8, v8, Lantlr/Grammar;->traceRules:Z

    const-string v12, "\",_t);"

    const-string v13, "\");"

    if-eqz v8, :cond_e

    .line 2855
    iget-object v8, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v8, v8, Lantlr/TreeWalkerGrammar;

    const-string v14, "traceIn(\""

    if-eqz v8, :cond_d

    .line 2856
    iget-boolean v8, v0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-eqz v8, :cond_c

    .line 2857
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, "\",(AST)_t);"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 2859
    :cond_c
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 2862
    :cond_d
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2866
    :cond_e
    :goto_5
    iget-object v8, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v8, v8, Lantlr/LexerGrammar;

    if-eqz v8, :cond_10

    .line 2869
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v14, "mEOF"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "_ttype = Token.EOF_TYPE;"

    .line 2870
    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2872
    :cond_f
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "_ttype = "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2875
    :goto_6
    iput-boolean v7, v0, Lantlr/CSharpCodeGenerator;->bSaveIndexCreated:Z

    .line 2886
    :cond_10
    iget-object v8, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v8, v8, Lantlr/Grammar;->debuggingOutput:Z

    const-string v14, ",_ttype);"

    const-string v15, ",0);"

    if-eqz v8, :cond_12

    .line 2887
    iget-object v8, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v8, v8, Lantlr/ParserGrammar;

    const-string v7, "fireEnterRule("

    if-eqz v8, :cond_11

    .line 2888
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2889
    :cond_11
    iget-object v8, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v8, v8, Lantlr/LexerGrammar;

    if-eqz v8, :cond_12

    .line 2890
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2894
    :cond_12
    :goto_7
    iget-object v7, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v7, v7, Lantlr/Grammar;->debuggingOutput:Z

    if-nez v7, :cond_13

    iget-object v7, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v7, v7, Lantlr/Grammar;->traceRules:Z

    if-eqz v7, :cond_14

    :cond_13
    const-string v7, "try { // debugging"

    .line 2895
    invoke-virtual {v0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2896
    iget v7, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v7, v3

    iput v7, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2900
    :cond_14
    iget-object v7, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/TreeWalkerGrammar;

    if-eqz v7, :cond_15

    .line 2902
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, v0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "_AST_in = ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ")_t;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2904
    :cond_15
    iget-object v7, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v7, v7, Lantlr/Grammar;->buildAST:Z

    if-eqz v7, :cond_16

    const-string v7, "returnAST = null;"

    .line 2906
    invoke-virtual {v0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v7, "ASTPair currentAST = new ASTPair();"

    .line 2909
    invoke-virtual {v0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2911
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, v0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "_AST = null;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2914
    :cond_16
    invoke-virtual {v0, v4}, Lantlr/CSharpCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 2915
    invoke-virtual {v0, v4}, Lantlr/CSharpCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 2916
    invoke-virtual {v0, v10}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {v4, v10}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object v7

    if-nez v7, :cond_17

    .line 2922
    invoke-virtual {v4}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v8

    if-eqz v8, :cond_18

    :cond_17
    const-string v8, "try {      // for error handling"

    .line 2923
    invoke-virtual {v0, v8}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2924
    iget v8, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v8, v3

    iput v8, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2928
    :cond_18
    iget-object v8, v4, Lantlr/RuleBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v8}, Lantlr/collections/impl/Vector;->size()I

    move-result v8

    if-ne v8, v3, :cond_1b

    const/4 v8, 0x0

    .line 2931
    invoke-virtual {v4, v8}, Lantlr/RuleBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v8

    .line 2932
    iget-object v9, v8, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v9, :cond_19

    .line 2934
    iget-object v3, v0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget v3, v3, Lantlr/RuleBlock;->line:I

    invoke-virtual {v0, v9, v3}, Lantlr/CSharpCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    .line 2935
    :cond_19
    iget-object v3, v8, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v3, :cond_1a

    .line 2936
    iget-object v3, v0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v9, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v9

    move/from16 v16, v6

    iget-object v6, v8, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v6}, Lantlr/SynPredBlock;->getLine()I

    move-result v6

    move-object/from16 v17, v10

    iget-object v10, v8, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v10}, Lantlr/SynPredBlock;->getColumn()I

    move-result v10

    move-object/from16 v18, v13

    const-string v13, "Syntactic predicate ignored for single alternative"

    invoke-virtual {v3, v13, v9, v6, v10}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_8

    :cond_1a
    move/from16 v16, v6

    move-object/from16 v17, v10

    move-object/from16 v18, v13

    .line 2941
    :goto_8
    invoke-virtual {v0, v8, v4}, Lantlr/CSharpCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    goto :goto_9

    :cond_1b
    move/from16 v16, v6

    move-object/from16 v17, v10

    move-object/from16 v18, v13

    .line 2946
    iget-object v3, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v3, v4}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    const/4 v3, 0x0

    .line 2948
    invoke-virtual {v0, v4, v3}, Lantlr/CSharpCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CSharpBlockFinishingInfo;

    move-result-object v3

    .line 2949
    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-direct {v0, v3, v6}, Lantlr/CSharpCodeGenerator;->genBlockFinish(Lantlr/CSharpBlockFinishingInfo;Ljava/lang/String;)V

    :goto_9
    const-string/jumbo v3, "}"

    if-nez v7, :cond_1c

    .line 2953
    invoke-virtual {v4}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 2955
    :cond_1c
    iget v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    iput v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2956
    invoke-virtual {v0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_1d
    if-eqz v7, :cond_1e

    .line 2962
    invoke-direct {v0, v7}, Lantlr/CSharpCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    goto/16 :goto_b

    .line 2964
    :cond_1e
    invoke-virtual {v4}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 2967
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "catch ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, v0, Lantlr/CSharpCodeGenerator;->exceptionThrown:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " ex)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2969
    iget v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2971
    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v6, v6, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v6, :cond_1f

    const-string v6, "if (0 == inputState.guessing)"

    .line 2972
    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2973
    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2974
    iget v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v6, v7

    iput v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    :cond_1f
    const-string v6, "reportError(ex);"

    .line 2976
    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2977
    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/TreeWalkerGrammar;

    if-nez v6, :cond_20

    .line 2980
    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v6, v6, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v7, v4, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    const/4 v8, 0x1

    invoke-interface {v6, v8, v7}, Lantlr/LLkGrammarAnalyzer;->FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;

    move-result-object v6

    .line 2981
    iget-object v6, v6, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result v6

    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "consume();"

    .line 2982
    invoke-virtual {v0, v7}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2983
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "consumeUntil("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ");"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_a

    :cond_20
    const-string v6, "if (null != _t)"

    .line 2988
    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2989
    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2990
    iget v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v6, "_t = _t.getNextSibling();"

    .line 2991
    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2992
    iget v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v6, v7

    iput v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2993
    invoke-virtual {v0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 2995
    :goto_a
    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v6, v6, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v6, :cond_21

    .line 2997
    iget v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v6, v7

    iput v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 2999
    invoke-virtual {v0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v6, "else"

    .line 3000
    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3001
    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3002
    iget v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v6, v7

    iput v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v6, "throw;"

    .line 3004
    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3005
    iget v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v6, v7

    iput v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3006
    invoke-virtual {v0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3009
    :cond_21
    iget v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v6, v7

    iput v6, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3010
    invoke-virtual {v0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3014
    :cond_22
    :goto_b
    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v6, v6, Lantlr/Grammar;->buildAST:Z

    if-eqz v6, :cond_23

    .line 3015
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "returnAST = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "_AST;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3019
    :cond_23
    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/TreeWalkerGrammar;

    if-eqz v6, :cond_24

    const-string v6, "retTree_ = _t;"

    .line 3020
    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3024
    :cond_24
    invoke-virtual {v4}, Lantlr/RuleBlock;->getTestLiterals()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 3025
    iget-object v6, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    const-string v7, "protected"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 3026
    invoke-direct/range {p0 .. p0}, Lantlr/CSharpCodeGenerator;->genLiteralsTestForPartialToken()V

    goto :goto_c

    .line 3029
    :cond_25
    invoke-direct/range {p0 .. p0}, Lantlr/CSharpCodeGenerator;->genLiteralsTest()V

    .line 3034
    :cond_26
    :goto_c
    iget-object v6, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/LexerGrammar;

    if-eqz v6, :cond_27

    const-string v6, "if (_createToken && (null == _token) && (_ttype != Token.SKIP))"

    .line 3035
    invoke-virtual {v0, v6}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3036
    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3037
    iget v5, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string v5, "_token = makeToken(_ttype);"

    .line 3038
    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "_token.setText(text.ToString(_begin, text.Length-_begin));"

    .line 3039
    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3040
    iget v5, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v5, v6

    iput v5, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3041
    invoke-virtual {v0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "returnToken_ = _token;"

    .line 3042
    invoke-virtual {v0, v5}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3046
    :cond_27
    iget-object v5, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v5, :cond_28

    .line 3047
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v4, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v4}, Lantlr/RuleBlock;->getLine()I

    move-result v7

    invoke-virtual {v4}, Lantlr/RuleBlock;->getColumn()I

    move-result v4

    invoke-virtual {v0, v6, v7, v4}, Lantlr/CSharpCodeGenerator;->extractIdOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3050
    :cond_28
    iget-object v4, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->debuggingOutput:Z

    if-nez v4, :cond_2a

    iget-object v4, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->traceRules:Z

    if-eqz v4, :cond_29

    goto :goto_d

    :cond_29
    const/4 v2, 0x1

    goto/16 :goto_10

    .line 3051
    :cond_2a
    :goto_d
    iget v4, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3052
    invoke-virtual {v0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "finally"

    .line 3053
    invoke-virtual {v0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "{ // debugging"

    .line 3054
    invoke-virtual {v0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3055
    iget v4, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/2addr v4, v5

    iput v4, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3058
    iget-object v4, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v4, :cond_2c

    .line 3059
    iget-object v4, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v4, v4, Lantlr/ParserGrammar;

    const-string v5, "fireExitRule("

    if-eqz v4, :cond_2b

    .line 3060
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 3061
    :cond_2b
    iget-object v4, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v4, v4, Lantlr/LexerGrammar;

    if-eqz v4, :cond_2c

    .line 3062
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3064
    :cond_2c
    :goto_e
    iget-object v2, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->traceRules:Z

    if-eqz v2, :cond_2e

    .line 3065
    iget-object v2, v0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    const-string v4, "traceOut(\""

    if-eqz v2, :cond_2d

    .line 3066
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 3069
    :cond_2d
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v1, v18

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3073
    :cond_2e
    :goto_f
    iget v1, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3074
    invoke-virtual {v0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3077
    :goto_10
    iget v1, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    sub-int/2addr v1, v2

    iput v1, v0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3078
    invoke-virtual {v0, v3}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    move-object/from16 v1, v17

    .line 3079
    invoke-virtual {v0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    move/from16 v1, v16

    .line 3082
    iput-boolean v1, v0, Lantlr/CSharpCodeGenerator;->genAST:Z

    return-void
.end method

.method protected genSemPred(Ljava/lang/String;I)V
    .locals 2

    .line 3149
    new-instance v0, Lantlr/ActionTransInfo;

    invoke-direct {v0}, Lantlr/ActionTransInfo;-><init>()V

    .line 3150
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, p1, p2, v1, v0}, Lantlr/CSharpCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    .line 3152
    iget-object p2, p0, Lantlr/CSharpCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {p2, p1}, Lantlr/CharFormatter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3156
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_1

    .line 3157
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.VALIDATING,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->addSemPred(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3159
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

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3160
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "  throw new SemanticException(\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genSemPredMap()V
    .locals 3

    .line 3166
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, "private string[] _semPredNames = {"

    .line 3167
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3168
    iget v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3169
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3170
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

    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3171
    :cond_0
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo v0, "};"

    .line 3172
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V
    .locals 6

    .line 3175
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->DEBUG_CODE_GENERATOR:Z

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

    .line 3178
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bool synPredMatched"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " = false;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3180
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "if ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo p2, "{"

    .line 3181
    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3182
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3185
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_1

    .line 3186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "AST __t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " = _t;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3189
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "int _m"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " = mark();"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3193
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "synPredMatched"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " = true;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "inputState.guessing++;"

    .line 3194
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3197
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-nez v0, :cond_2

    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "fireSyntacticPredicateStarted();"

    .line 3199
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3202
    :cond_3
    iget v0, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    const-string v0, "try {"

    .line 3203
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3204
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3205
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->gen(Lantlr/AlternativeBlock;)V

    .line 3206
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo v0, "}"

    .line 3208
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3211
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "catch ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/CSharpCodeGenerator;->exceptionThrown:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3212
    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3213
    iget v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3214
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3216
    iget v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3217
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3220
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_4

    .line 3221
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "_t = __t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3224
    :cond_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "rewind(_m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :goto_1
    const-string v2, "inputState.guessing--;"

    .line 3227
    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3230
    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/ParserGrammar;

    if-nez v2, :cond_5

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-eqz v2, :cond_6

    .line 3232
    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "if (synPredMatched"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "  fireSyntacticPredicateSucceeded();"

    .line 3233
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "else"

    .line 3234
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "  fireSyntacticPredicateFailed();"

    .line 3235
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3238
    :cond_6
    iget v1, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CSharpCodeGenerator;->syntacticPredLevel:I

    .line 3239
    iget v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3242
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3245
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "if ( synPredMatched"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3246
    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genTokenDefinitions(Lantlr/TokenManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3337
    invoke-interface {p1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v0

    const-string v1, "public const int EOF = 1;"

    .line 3340
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "public const int NULL_TREE_LOOKAHEAD = 3;"

    .line 3341
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 3343
    :goto_0
    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 3344
    invoke-virtual {v0, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "\""

    .line 3346
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ";"

    const-string v5, "public const int "

    const-string v6, " = "

    if-eqz v3, :cond_3

    .line 3348
    invoke-interface {p1, v2}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v3

    check-cast v3, Lantlr/StringLiteralSymbol;

    if-nez v3, :cond_0

    .line 3350
    iget-object v3, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

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

    .line 3352
    :cond_0
    iget-object v7, v3, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 3353
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

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3356
    :cond_1
    invoke-direct {p0, v2}, Lantlr/CSharpCodeGenerator;->mangleLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 3359
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3361
    iput-object v7, v3, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    goto :goto_1

    .line 3364
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

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v3, "<"

    .line 3368
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3369
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    const-string p1, ""

    .line 3373
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genTokenStrings()V
    .locals 7

    const-string v0, ""

    .line 3259
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "public static readonly string[] tokenNames_ = new string[] {"

    .line 3260
    invoke-virtual {p0, v1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3261
    iget v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3265
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v1

    const/4 v2, 0x0

    .line 3266
    :goto_0
    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 3268
    invoke-virtual {v1, v2}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "<"

    if-nez v3, :cond_0

    .line 3271
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

    .line 3273
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3274
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v4, v3}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3275
    invoke-virtual {v4}, Lantlr/TokenSymbol;->getParaphrase()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3276
    invoke-virtual {v4}, Lantlr/TokenSymbol;->getParaphrase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v5}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 3279
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3280
    invoke-static {v3, v5, v5}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3282
    :cond_2
    :goto_1
    iget-object v4, p0, Lantlr/CSharpCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v4, v3}, Lantlr/CharFormatter;->literalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->print(Ljava/lang/String;)V

    .line 3283
    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_3

    const-string v3, ","

    .line 3284
    invoke-virtual {p0, v3}, Lantlr/CSharpCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3286
    :cond_3
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->_println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3290
    :cond_4
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo v0, "};"

    .line 3291
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genTokenTypes(Lantlr/TokenManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3298
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/CSharpCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->setupOutput(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3300
    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3303
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->genHeader()V

    .line 3305
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lantlr/DefineGrammarSymbols;->getHeaderAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3308
    sget-object v0, Lantlr/CSharpCodeGenerator;->nameSpace:Lantlr/CSharpNameSpace;

    if-eqz v0, :cond_0

    .line 3309
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Lantlr/CSharpNameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 3310
    :cond_0
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3314
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "public class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/CSharpCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "{"

    .line 3316
    invoke-virtual {p0, v0}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3317
    iget v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3319
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->genTokenDefinitions(Lantlr/TokenManager;)V

    .line 3322
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 3323
    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->println(Ljava/lang/String;)V

    .line 3325
    iget p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CSharpCodeGenerator;->tabs:I

    .line 3327
    sget-object p1, Lantlr/CSharpCodeGenerator;->nameSpace:Lantlr/CSharpNameSpace;

    if-eqz p1, :cond_1

    .line 3328
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/CSharpNameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 3331
    :cond_1
    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 3332
    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 3333
    invoke-virtual {p0}, Lantlr/CSharpCodeGenerator;->exitIfError()V

    return-void
.end method

.method public getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 3429
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "astFactory.create("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 3432
    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->getASTCreateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3434
    :cond_0
    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, ") "

    const-string v3, "("

    if-eqz v1, :cond_3

    .line 3442
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3443
    invoke-virtual {v1}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_4

    .line 3445
    invoke-virtual {v1}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3446
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3444
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ") astFactory.create("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ", \""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3448
    :cond_3
    iget-boolean p1, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-eqz p1, :cond_4

    .line 3449
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getASTCreateString(Lantlr/collections/impl/Vector;)Ljava/lang/String;
    .locals 5

    .line 3410
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 3413
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3414
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

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

    .line 3417
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    const-string v3, ")"

    if-ge v1, v2, :cond_1

    .line 3418
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

    .line 3420
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3421
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getASTCreateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    .line 3488
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "astFactory.create("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    .line 3494
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    .line 3496
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 3497
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3498
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-object p1, v3

    .line 3506
    :cond_1
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v1, p1}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object p1

    const-string v1, ") "

    const-string v2, "("

    if-eqz p1, :cond_2

    .line 3507
    invoke-virtual {p1}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3508
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3509
    :cond_2
    iget-boolean p1, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-eqz p1, :cond_3

    .line 3510
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CSharpCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method protected getBitsetName(I)Ljava/lang/String;
    .locals 2

    .line 953
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "tokenSet_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;
    .locals 2

    .line 3546
    iget v0, p1, Lantlr/Alternative;->lookaheadDepth:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 3550
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "( true )"

    return-object p1

    .line 3558
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    invoke-virtual {p0, p1, v0}, Lantlr/CSharpCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

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

    .line 3516
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "("

    .line 3519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-gt v1, p2, :cond_2

    .line 3521
    aget-object v3, p1, v1

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    if-nez v2, :cond_0

    const-string v2, ") && ("

    .line 3523
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v2, 0x0

    .line 3530
    aget-object v4, p1, v1

    invoke-virtual {v4}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "true"

    .line 3531
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3533
    :cond_1
    invoke-virtual {p0, v1, v3}, Lantlr/CSharpCodeGenerator;->getLookaheadTestTerm(ILantlr/collections/impl/BitSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ")"

    .line 3536
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3538
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLookaheadTestTerm(ILantlr/collections/impl/BitSet;)Ljava/lang/String;
    .locals 4

    .line 3571
    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v0

    .line 3574
    invoke-virtual {p2}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object v1

    .line 3575
    invoke-static {v1}, Lantlr/CSharpCodeGenerator;->elementsAreRange([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3576
    invoke-virtual {p0, p1, v1}, Lantlr/CSharpCodeGenerator;->getRangeExpression(I[I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3581
    :cond_0
    invoke-virtual {p2}, Lantlr/collections/impl/BitSet;->degree()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "true"

    return-object p1

    .line 3586
    :cond_1
    iget v2, p0, Lantlr/CSharpCodeGenerator;->bitsetTestThreshold:I

    if-lt p1, v2, :cond_2

    .line 3587
    invoke-virtual {p0, p2}, Lantlr/CSharpCodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result p1

    .line 3588
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Lantlr/CSharpCodeGenerator;->getBitsetName(I)Ljava/lang/String;

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

    .line 3592
    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p2, 0x0

    .line 3593
    :goto_0
    array-length v2, v1

    if-ge p2, v2, :cond_4

    .line 3595
    aget v2, v1, p2

    invoke-direct {p0, v2}, Lantlr/CSharpCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v2

    if-lez p2, :cond_3

    const-string/jumbo v3, "||"

    .line 3598
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3599
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "=="

    .line 3600
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3601
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3603
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRangeExpression(I[I)Ljava/lang/String;
    .locals 3

    .line 3612
    invoke-static {p2}, Lantlr/CSharpCodeGenerator;->elementsAreRange([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3613
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "getRangeExpression called with non-range"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3615
    aget v0, p2, v0

    .line 3616
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget p2, p2, v1

    .line 3618
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v0}, Lantlr/CSharpCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " && "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lantlr/CSharpCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " <= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Lantlr/CSharpCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTokenTypesClassName()Ljava/lang/String;
    .locals 3

    .line 4013
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    .line 4014
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lantlr/CSharpCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected lookaheadIsEmpty(Lantlr/Alternative;I)Z
    .locals 4

    .line 3664
    iget v0, p1, Lantlr/Alternative;->lookaheadDepth:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 3666
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v0, :cond_2

    if-gt v2, p2, :cond_2

    .line 3669
    iget-object v3, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v3, v3, v2

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    .line 3670
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

    .line 3713
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    if-nez v0, :cond_0

    return-object p1

    .line 3717
    :cond_0
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    const-string v1, "_in"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 3719
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 3724
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

    .line 3727
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 3734
    :goto_0
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    const-string v4, "_AST"

    if-ge v3, v0, :cond_5

    .line 3736
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, v3}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/AlternativeElement;

    .line 3737
    invoke-virtual {v0}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    .line 3739
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

    .line 3746
    :cond_5
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 3749
    sget-object p2, Lantlr/CSharpCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, " in rule "

    const-string v5, "Ambiguous reference to AST element "

    if-ne v0, p2, :cond_6

    .line 3752
    iget-object p2, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-object v3

    .line 3756
    :cond_6
    iget-object p2, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3762
    iget-object p2, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-object v3

    :cond_7
    if-eqz v2, :cond_8

    .line 3768
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0

    .line 3774
    :cond_9
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v0}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3776
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

    .line 3779
    iput-object p1, p2, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    :cond_b
    return-object p1
.end method

.method protected processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;
    .locals 3

    const-string v0, "Error reading action:"

    if-eqz p1, :cond_6

    .line 3838
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 3843
    :cond_0
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    if-nez v1, :cond_1

    return-object p1

    .line 3847
    :cond_1
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->buildAST:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    :cond_2
    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-nez v1, :cond_4

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-nez v1, :cond_3

    iget-object v1, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/ParserGrammar;

    if-eqz v1, :cond_5

    :cond_3
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 3854
    :cond_4
    new-instance v1, Lantlr/actions/csharp/ActionLexer;

    invoke-direct {v1, p1, p3, p0, p4}, Lantlr/actions/csharp/ActionLexer;-><init>(Ljava/lang/String;Lantlr/RuleBlock;Lantlr/CodeGenerator;Lantlr/ActionTransInfo;)V

    .line 3856
    invoke-virtual {v1, p2}, Lantlr/actions/csharp/ActionLexer;->setLineOffset(I)V

    .line 3857
    iget-object p2, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lantlr/actions/csharp/ActionLexer;->setFilename(Ljava/lang/String;)V

    .line 3858
    iget-object p2, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, p2}, Lantlr/actions/csharp/ActionLexer;->setTool(Lantlr/Tool;)V

    const/4 p2, 0x1

    .line 3861
    :try_start_0
    invoke-virtual {v1, p2}, Lantlr/actions/csharp/ActionLexer;->mACTION(Z)V

    .line 3862
    invoke-virtual {v1}, Lantlr/actions/csharp/ActionLexer;->getTokenObject()Lantlr/Token;

    move-result-object p2

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lantlr/TokenStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object p1

    .line 3875
    :catch_0
    iget-object p2, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    return-object p1

    .line 3871
    :catch_1
    iget-object p2, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

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

    .line 3867
    invoke-virtual {v1, p2}, Lantlr/actions/csharp/ActionLexer;->reportError(Lantlr/RecognitionException;)V

    return-object p1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public processStringForASTConstructor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3391
    iget-boolean v0, p0, Lantlr/CSharpCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0, p1}, Lantlr/TokenManager;->tokenDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3397
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(AST)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public setupOutput(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3985
    iget-object v0, p0, Lantlr/CSharpCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ".cs"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lantlr/CSharpCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method
