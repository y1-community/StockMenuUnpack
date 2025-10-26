.class public Lantlr/CppCodeGenerator;
.super Lantlr/CodeGenerator;
.source "CppCodeGenerator.java"


# static fields
.field protected static final NONUNIQUE:Ljava/lang/String;

.field public static final caseSizeThreshold:I = 0x7f

.field private static nameSpace:Lantlr/NameSpace; = null

.field private static namespaceAntlr:Ljava/lang/String; = null

.field private static namespaceStd:Ljava/lang/String; = null

.field private static final postIncludeCpp:Ljava/lang/String; = "post_include_cpp"

.field private static final postIncludeHpp:Ljava/lang/String; = "post_include_hpp"

.field private static final preIncludeCpp:Ljava/lang/String; = "pre_include_cpp"

.field private static final preIncludeHpp:Ljava/lang/String; = "pre_include_hpp"


# instance fields
.field DEBUG_CPP_CODE_GENERATOR:Z

.field private astTypes:Lantlr/collections/impl/Vector;

.field astVarNumber:I

.field commonExtraArgs:Ljava/lang/String;

.field commonExtraParams:Ljava/lang/String;

.field commonLocalVars:Ljava/lang/String;

.field currentASTResult:Ljava/lang/String;

.field currentRule:Lantlr/RuleBlock;

.field declaredASTVariables:Ljava/util/Hashtable;

.field exceptionThrown:Ljava/lang/String;

.field protected genAST:Z

.field protected genHashLines:Z

.field labeledElementASTInit:Ljava/lang/String;

.field labeledElementASTType:Ljava/lang/String;

.field labeledElementInit:Ljava/lang/String;

.field labeledElementType:Ljava/lang/String;

.field lt1Value:Ljava/lang/String;

.field protected noConstructors:Z

.field protected outputFile:Ljava/lang/String;

.field protected outputLine:I

.field protected saveText:Z

.field private semPreds:Lantlr/collections/impl/Vector;

.field protected syntacticPredLevel:I

.field throwNoViable:Ljava/lang/String;

.field treeVariableMap:Ljava/util/Hashtable;

.field usingCustomAST:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lantlr/CppCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    const-string v0, "ANTLR_USE_NAMESPACE(std)"

    .line 84
    sput-object v0, Lantlr/CppCodeGenerator;->namespaceStd:Ljava/lang/String;

    const-string v0, "ANTLR_USE_NAMESPACE(antlr)"

    .line 85
    sput-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 86
    sput-object v0, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lantlr/CodeGenerator;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    .line 27
    iput v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    .line 30
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 33
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lantlr/CppCodeGenerator;->genHashLines:Z

    .line 38
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    .line 46
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    .line 64
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lantlr/CppCodeGenerator;->declaredASTVariables:Ljava/util/Hashtable;

    .line 72
    iput v1, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    .line 99
    new-instance v0, Lantlr/CppCharFormatter;

    invoke-direct {v0}, Lantlr/CppCharFormatter;-><init>()V

    iput-object v0, p0, Lantlr/CppCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    return-void
.end method

.method private GenRuleInvocation(Lantlr/RuleRefElement;)V
    .locals 5

    .line 3842
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3845
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const-string v1, ","

    if-eqz v0, :cond_2

    .line 3847
    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    .line 3848
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "false"

    .line 3851
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3853
    :goto_0
    iget-object v0, p0, Lantlr/CppCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3854
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3859
    :cond_2
    iget-object v0, p0, Lantlr/CppCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3860
    iget-object v0, p0, Lantlr/CppCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3861
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3865
    :cond_3
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 3866
    iget-object v1, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 3869
    new-instance v1, Lantlr/ActionTransInfo;

    invoke-direct {v1}, Lantlr/ActionTransInfo;-><init>()V

    .line 3872
    iget-object v2, p1, Lantlr/RuleRefElement;->args:Ljava/lang/String;

    iget v3, p1, Lantlr/RuleRefElement;->line:I

    iget-object v4, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v2, v3, v4, v1}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    .line 3874
    iget-boolean v3, v1, Lantlr/ActionTransInfo;->assignToRoot:Z

    if-nez v3, :cond_4

    iget-object v1, v1, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 3876
    :cond_4
    iget-object v1, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Arguments of rule reference \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\' cannot set or ref #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v4}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " on line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lantlr/Tool;->error(Ljava/lang/String;)V

    .line 3879
    :cond_5
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3882
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 3884
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

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

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_6
    const-string p1, ");"

    .line 3897
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3900
    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_7

    const-string p1, "_t = _retTree;"

    .line 3901
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private charIsDigit(Ljava/lang/String;I)Z
    .locals 1

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private convertJavaToCppString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 249
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    const/4 v4, 0x1

    const-string v5, "\'"

    if-eqz p2, :cond_2

    .line 257
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 258
    :cond_0
    iget-object v6, v0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Invalid character literal: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lantlr/Tool;->error(Ljava/lang/String;)V

    .line 260
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v1

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 263
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_17

    .line 265
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5c

    const/16 v11, 0x8

    if-ne v9, v10, :cond_10

    .line 267
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v12, v7, 0x1

    const-string v13, "Invalid escape in char literal: \'"

    const-string v14, "\' looking at \'"

    if-ne v9, v12, :cond_3

    .line 268
    iget-object v9, v0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lantlr/Tool;->error(Ljava/lang/String;)V

    .line 271
    :cond_3
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x22

    if-eq v3, v9, :cond_f

    const/16 v9, 0x27

    if-eq v3, v9, :cond_f

    if-eq v3, v10, :cond_f

    const/16 v9, 0x66

    if-eq v3, v9, :cond_e

    const/16 v9, 0x6e

    if-eq v3, v9, :cond_d

    const/16 v9, 0x72

    if-eq v3, v9, :cond_c

    const/16 v9, 0x61

    if-eq v3, v9, :cond_b

    const/16 v9, 0x62

    if-eq v3, v9, :cond_a

    const/16 v9, 0x74

    if-eq v3, v9, :cond_9

    const/16 v9, 0x75

    if-eq v3, v9, :cond_7

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v3, v7, 0x2

    .line 346
    invoke-direct {v0, v6, v3}, Lantlr/CppCodeGenerator;->charIsDigit(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 348
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    add-int/lit8 v7, v7, 0x3

    goto :goto_2

    .line 353
    :cond_4
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move v7, v3

    .line 357
    :goto_2
    iget-object v3, v0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Unhandled escape in char literal: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lantlr/Tool;->error(Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_5

    :pswitch_1
    add-int/lit8 v3, v7, 0x2

    .line 321
    invoke-direct {v0, v6, v3}, Lantlr/CppCodeGenerator;->charIsDigit(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v8, v7, 0x3

    .line 323
    invoke-direct {v0, v6, v8}, Lantlr/CppCodeGenerator;->charIsDigit(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 325
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0x8

    mul-int/lit8 v9, v9, 0x8

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v9, v3

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int v8, v9, v3

    add-int/lit8 v7, v7, 0x4

    goto/16 :goto_5

    .line 331
    :cond_5
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v3, v7

    move v7, v8

    move v8, v3

    goto/16 :goto_5

    .line 337
    :cond_6
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v7, -0x30

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v3, v7, 0x5

    .line 305
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_8

    add-int/lit8 v8, v7, 0x2

    .line 307
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    mul-int/lit8 v8, v8, 0x10

    mul-int/lit8 v8, v8, 0x10

    add-int/lit8 v10, v7, 0x3

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    mul-int/lit8 v10, v10, 0x10

    mul-int/lit8 v10, v10, 0x10

    add-int/2addr v8, v10

    add-int/lit8 v10, v7, 0x4

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    mul-int/lit8 v10, v10, 0x10

    add-int/2addr v8, v10

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v8, v3

    add-int/lit8 v7, v7, 0x6

    goto :goto_5

    .line 314
    :cond_8
    iget-object v3, v0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const/16 v8, 0x9

    goto :goto_3

    :cond_a
    add-int/lit8 v7, v7, 0x2

    const/16 v8, 0x8

    goto :goto_5

    :cond_b
    const/4 v8, 0x7

    goto :goto_3

    :cond_c
    const/16 v8, 0xd

    goto :goto_3

    :cond_d
    const/16 v8, 0xa

    goto :goto_3

    :cond_e
    const/16 v8, 0xc

    goto :goto_3

    .line 299
    :cond_f
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_3
    add-int/lit8 v7, v7, 0x2

    goto :goto_5

    :cond_10
    add-int/lit8 v3, v7, 0x1

    .line 362
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_4
    move v7, v3

    :goto_5
    const/16 v3, 0xff

    if-eqz p2, :cond_14

    .line 367
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v7, v9, :cond_11

    .line 368
    iget-object v9, v0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Invalid char literal: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lantlr/Tool;->error(Ljava/lang/String;)V

    :cond_11
    if-le v8, v3, :cond_12

    .line 374
    iget-object v3, v0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Multibyte character found in char literal: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    if-ne v8, v3, :cond_13

    const-string v2, "static_cast<unsigned char>(255)"

    goto/16 :goto_1

    .line 379
    :cond_13
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lantlr/CppCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v3, v8, v4}, Lantlr/CharFormatter;->escapeChar(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_14
    const/16 v9, 0x20

    if-lt v8, v9, :cond_15

    const/16 v9, 0x7e

    if-gt v8, v9, :cond_15

    .line 384
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    int-to-char v2, v8

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_15
    if-le v8, v3, :cond_16

    .line 386
    iget-object v3, v0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Multibyte character found in string constant: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 388
    :cond_16
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lantlr/CppCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v2, v8, v4}, Lantlr/CharFormatter;->escapeChar(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_17
    return-object v2

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private fixNameSpaceOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    .line 4638
    invoke-static {p1, v0, v0}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4639
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4641
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private genBlockFinish(Lantlr/CppBlockFinishingInfo;Ljava/lang/String;)V
    .locals 1

    .line 1237
    iget-boolean v0, p1, Lantlr/CppBlockFinishingInfo;->needAnErrorClause:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lantlr/CppBlockFinishingInfo;->generatedAnIf:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lantlr/CppBlockFinishingInfo;->generatedSwitch:Z

    if-eqz v0, :cond_2

    .line 1239
    :cond_0
    iget-boolean v0, p1, Lantlr/CppBlockFinishingInfo;->generatedAnIf:Z

    if-eqz v0, :cond_1

    const-string v0, "else {"

    .line 1240
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "{"

    .line 1243
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1245
    :goto_0
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1246
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1247
    iget p2, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo p2, "}"

    .line 1248
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1251
    :cond_2
    iget-object p2, p1, Lantlr/CppBlockFinishingInfo;->postscript:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 1252
    iget-object p1, p1, Lantlr/CppBlockFinishingInfo;->postscript:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private genElementAST(Lantlr/AlternativeElement;)V
    .locals 13

    .line 2279
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    const-string v1, " "

    const-string v2, "_AST"

    const-string v3, "tmp"

    const-string v4, "_in = "

    const-string v5, ";"

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-nez v0, :cond_1

    .line 2285
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2287
    iget-object v0, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 2289
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2290
    iget v3, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    add-int/2addr v3, v6

    iput v3, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    .line 2292
    invoke-direct {p0, p1, v2}, Lantlr/CppCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    .line 2294
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2299
    :cond_1
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_17

    .line 2301
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v7, 0x3

    const/4 v8, 0x0

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

    .line 2309
    :goto_0
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v9

    if-eq v9, v7, :cond_4

    instance-of v7, p1, Lantlr/TokenRefElement;

    if-eqz v7, :cond_4

    const/4 v0, 0x1

    .line 2313
    :cond_4
    iget-object v7, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v7, v7, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v7, :cond_5

    if-eqz v0, :cond_5

    const/4 v8, 0x1

    .line 2320
    :cond_5
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 2323
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 2324
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 2329
    :cond_6
    iget-object v7, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 2331
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2332
    iget v9, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    add-int/2addr v9, v6

    iput v9, p0, Lantlr/CppCodeGenerator;->astVarNumber:I

    move-object v12, v7

    move-object v7, v3

    move-object v3, v12

    :goto_1
    if-eqz v0, :cond_9

    .line 2338
    instance-of v9, p1, Lantlr/GrammarAtom;

    if-eqz v9, :cond_8

    .line 2340
    move-object v9, p1

    check-cast v9, Lantlr/GrammarAtom;

    .line 2341
    invoke-virtual {v9}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 2343
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Ref"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p1, v7, v9}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2348
    :cond_7
    iget-object v9, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v7, v9}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2354
    :cond_8
    iget-object v9, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v7, v9}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    :cond_9
    :goto_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2363
    invoke-direct {p0, p1, v2}, Lantlr/CppCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    .line 2364
    iget-object v7, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/TreeWalkerGrammar;

    if-eqz v7, :cond_a

    .line 2367
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_a
    if-eqz v8, :cond_b

    const-string v1, "if ( inputState->guessing == 0 ) {"

    .line 2372
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2373
    iget v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v1, v6

    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2378
    :cond_b
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v7, " = "

    if-eqz v1, :cond_d

    .line 2380
    instance-of v1, p1, Lantlr/GrammarAtom;

    if-eqz v1, :cond_c

    .line 2382
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v9, p1

    check-cast v9, Lantlr/GrammarAtom;

    invoke-virtual {p0, v9, v3}, Lantlr/CppCodeGenerator;->getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2387
    :cond_c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->getASTCreateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2393
    :cond_d
    :goto_3
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    if-eqz v0, :cond_f

    .line 2395
    iget-object v0, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 2396
    instance-of v1, p1, Lantlr/GrammarAtom;

    if-eqz v1, :cond_e

    .line 2398
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v3, p1

    check-cast v3, Lantlr/GrammarAtom;

    invoke-virtual {p0, v3, v0}, Lantlr/CppCodeGenerator;->getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 2403
    :cond_e
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->getASTCreateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2407
    :goto_4
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-eqz v1, :cond_f

    .line 2410
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2414
    :cond_f
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    if-eqz v0, :cond_16

    .line 2416
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getAutoGenType()I

    move-result v0

    const-string v1, ");"

    const-string v3, "));"

    const-string v4, "RefAST("

    if-eq v0, v6, :cond_13

    const/4 v5, 0x2

    if-eq v0, v5, :cond_10

    goto/16 :goto_7

    .line 2428
    :cond_10
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    const-string v5, "astFactory->makeASTRoot(currentAST, "

    if-nez v0, :cond_12

    instance-of v0, p1, Lantlr/GrammarAtom;

    if-eqz v0, :cond_11

    check-cast p1, Lantlr/GrammarAtom;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    goto :goto_5

    .line 2433
    :cond_11
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2431
    :cond_12
    :goto_5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2419
    :cond_13
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    const-string v5, "astFactory->addASTChild(currentAST, "

    if-nez v0, :cond_15

    instance-of v0, p1, Lantlr/GrammarAtom;

    if-eqz v0, :cond_14

    check-cast p1, Lantlr/GrammarAtom;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    goto :goto_6

    .line 2424
    :cond_14
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2422
    :cond_15
    :goto_6
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_16
    :goto_7
    if-eqz v8, :cond_17

    .line 2441
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr p1, v6

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 2442
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method private genErrorCatchForElement(Lantlr/AlternativeElement;)V
    .locals 3

    .line 2450
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2451
    :cond_0
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    .line 2452
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-eqz v1, :cond_1

    .line 2453
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    invoke-static {v0}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2455
    :cond_1
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    if-nez v0, :cond_2

    .line 2457
    iget-object v1, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v2, "Enclosing rule not found!"

    invoke-virtual {v1, v2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 2459
    :cond_2
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2461
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo v0, "}"

    .line 2462
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2463
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    :cond_3
    return-void
.end method

.method private genErrorHandler(Lantlr/ExceptionSpec;)V
    .locals 5

    const/4 v0, 0x0

    .line 2470
    :goto_0
    iget-object v1, p1, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2472
    iget-object v1, p1, Lantlr/ExceptionSpec;->handlers:Lantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/ExceptionHandler;

    .line 2474
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

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2475
    iget v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2476
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v2, :cond_0

    const-string v2, "if (inputState->guessing==0) {"

    .line 2477
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2478
    iget v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2482
    :cond_0
    new-instance v2, Lantlr/ActionTransInfo;

    invoke-direct {v2}, Lantlr/ActionTransInfo;-><init>()V

    .line 2483
    iget-object v3, v1, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->genLineNo(Lantlr/Token;)V

    .line 2484
    iget-object v3, v1, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lantlr/ExceptionHandler;->action:Lantlr/Token;

    invoke-virtual {v1}, Lantlr/Token;->getLine()I

    move-result v1

    iget-object v4, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v3, v1, v4, v2}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->printAction(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    .line 2491
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->hasSyntacticPredicate:Z

    const-string/jumbo v2, "}"

    if-eqz v1, :cond_1

    .line 2493
    iget v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo v1, "} else {"

    .line 2494
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2495
    iget v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v1, "throw;"

    .line 2497
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2498
    iget v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2499
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2502
    :cond_1
    iget v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2503
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private genErrorTryForElement(Lantlr/AlternativeElement;)V
    .locals 3

    .line 2508
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2509
    :cond_0
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    .line 2510
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-eqz v1, :cond_1

    .line 2511
    iget-object v0, p1, Lantlr/AlternativeElement;->enclosingRuleName:Ljava/lang/String;

    invoke-static {v0}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2513
    :cond_1
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    if-nez v0, :cond_2

    .line 2515
    iget-object v1, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v2, "Enclosing rule not found!"

    invoke-virtual {v1, v2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 2517
    :cond_2
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "try { // for error handling"

    .line 2519
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2520
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    :cond_3
    return-void
.end method

.method private genLiteralsTest()V
    .locals 1

    const-string v0, "_ttype = testLiteralsTable(_ttype);"

    .line 3141
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method private genLiteralsTestForPartialToken()V
    .locals 1

    const-string v0, "_ttype = testLiteralsTable(text.substr(_begin, text.length()-_begin),_ttype);"

    .line 3144
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method private getValueString(I)Ljava/lang/String;
    .locals 3

    .line 4366
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_0

    .line 4367
    iget-object v0, p0, Lantlr/CppCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v0, p1}, Lantlr/CharFormatter;->literalChar(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 4371
    :cond_0
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0, p1}, Lantlr/TokenManager;->getTokenSymbolAt(I)Lantlr/TokenSymbol;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4373
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4376
    :cond_1
    invoke-virtual {v0}, Lantlr/TokenSymbol;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4377
    instance-of v2, v0, Lantlr/StringLiteralSymbol;

    if-eqz v2, :cond_4

    .line 4381
    check-cast v0, Lantlr/StringLiteralSymbol;

    .line 4382
    invoke-virtual {v0}, Lantlr/StringLiteralSymbol;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4387
    :cond_2
    invoke-direct {p0, v1}, Lantlr/CppCodeGenerator;->mangleLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 4389
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_4
    const-string p1, "EOF"

    .line 4394
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 4395
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "Token::EOF_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method private lookaheadString(I)Ljava/lang/String;
    .locals 2

    .line 4417
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_0

    const-string p1, "_t->getType()"

    return-object p1

    .line 4420
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

    .line 4429
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    sget-object v0, Lantlr/Tool;->literalsPrefix:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 4430
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 4431
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

    .line 4435
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

    .line 4437
    :cond_1
    iget-object p1, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    sget-boolean p1, Lantlr/Tool;->upperCaseMangledLiterals:Z

    if-eqz p1, :cond_2

    .line 4438
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V
    .locals 2

    .line 4552
    instance-of v0, p1, Lantlr/TreeElement;

    if-eqz v0, :cond_0

    .line 4553
    check-cast p1, Lantlr/TreeElement;

    iget-object p1, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-direct {p0, p1, p2}, Lantlr/CppCodeGenerator;->mapTreeVariable(Lantlr/AlternativeElement;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4561
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4562
    instance-of v1, p1, Lantlr/TokenRefElement;

    if-eqz v1, :cond_1

    .line 4564
    check-cast p1, Lantlr/TokenRefElement;

    iget-object v0, p1, Lantlr/TokenRefElement;->atomText:Ljava/lang/String;

    goto :goto_0

    .line 4566
    :cond_1
    instance-of v1, p1, Lantlr/RuleRefElement;

    if-eqz v1, :cond_2

    .line 4568
    check-cast p1, Lantlr/RuleRefElement;

    iget-object v0, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 4573
    iget-object p1, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4575
    iget-object p1, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4576
    iget-object p1, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    sget-object p2, Lantlr/CppCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4579
    :cond_3
    iget-object p1, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method private setupGrammarParameters(Lantlr/Grammar;)V
    .locals 12

    .line 4646
    instance-of v0, p1, Lantlr/ParserGrammar;

    const-string v1, "\""

    if-nez v0, :cond_0

    instance-of v2, p1, Lantlr/LexerGrammar;

    if-nez v2, :cond_0

    instance-of v2, p1, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_b

    .line 4656
    :cond_0
    iget-object v2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->nameSpace:Lantlr/NameSpace;

    if-eqz v2, :cond_1

    .line 4657
    iget-object v2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->nameSpace:Lantlr/NameSpace;

    sput-object v2, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    .line 4659
    :cond_1
    iget-object v2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->namespaceStd:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4660
    iget-object v2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->namespaceStd:Ljava/lang/String;

    invoke-direct {p0, v2}, Lantlr/CppCodeGenerator;->fixNameSpaceOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lantlr/CppCodeGenerator;->namespaceStd:Ljava/lang/String;

    .line 4662
    :cond_2
    iget-object v2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->namespaceAntlr:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 4663
    iget-object v2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, v2, Lantlr/Tool;->namespaceAntlr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lantlr/CppCodeGenerator;->fixNameSpaceOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    .line 4665
    :cond_3
    iget-object v2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-boolean v2, v2, Lantlr/Tool;->genHashLines:Z

    iput-boolean v2, p0, Lantlr/CppCodeGenerator;->genHashLines:Z

    const-string v2, "namespace"

    .line 4669
    invoke-virtual {p1, v2}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4670
    invoke-virtual {p1, v2}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4672
    new-instance v3, Lantlr/NameSpace;

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lantlr/NameSpace;-><init>(Ljava/lang/String;)V

    sput-object v3, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    :cond_4
    const-string v2, "namespaceAntlr"

    .line 4675
    invoke-virtual {p1, v2}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "::"

    const/4 v5, 0x2

    if-eqz v3, :cond_6

    .line 4676
    invoke-virtual {p1, v2}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 4678
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 4680
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 4682
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4683
    :cond_5
    sput-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    :cond_6
    const-string v2, "namespaceStd"

    .line 4687
    invoke-virtual {p1, v2}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4688
    invoke-virtual {p1, v2}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 4690
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 4692
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 4694
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4695
    :cond_7
    sput-object v2, Lantlr/CppCodeGenerator;->namespaceStd:Ljava/lang/String;

    :cond_8
    const-string v2, "genHashLines"

    .line 4699
    invoke-virtual {p1, v2}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "true"

    if-eqz v3, :cond_9

    .line 4700
    invoke-virtual {p1, v2}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 4702
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4703
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lantlr/CppCodeGenerator;->genHashLines:Z

    .line 4706
    :cond_9
    iget-object v2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-boolean v2, v2, Lantlr/Tool;->noConstructors:Z

    iput-boolean v2, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v2, "noConstructors"

    .line 4707
    invoke-virtual {p1, v2}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4708
    invoke-virtual {p1, v2}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 4709
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v5, "false"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 4710
    iget-object v3, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v5, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v5}, Lantlr/Tool;->getGrammarFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lantlr/Token;->getLine()I

    move-result v6

    invoke-virtual {v2}, Lantlr/Token;->getColumn()I

    move-result v7

    const-string v8, "noConstructors option must be true or false"

    invoke-virtual {v3, v8, v5, v6, v7}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 4711
    :cond_a
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    :cond_b
    const-string v2, "nullAST)"

    const-string v3, "("

    const/4 v4, 0x1

    const-string v5, "RecognitionException"

    const-string v6, "nullAST"

    const-string v7, "throw "

    const-string v8, "RefAST"

    const-string v9, ""

    const-string v10, "ASTLabelType"

    if-eqz v0, :cond_d

    .line 4715
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v11, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 4716
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    .line 4717
    invoke-virtual {p1, v10}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4718
    invoke-virtual {p1, v10}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 4720
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v1}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 4722
    iput-boolean v4, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    .line 4723
    iput-object p1, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 4724
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    .line 4728
    :cond_c
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "RefToken "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 4729
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "nullToken"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 4730
    iput-object v9, p0, Lantlr/CppCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    .line 4731
    iput-object v9, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 4732
    iput-object v9, p0, Lantlr/CppCodeGenerator;->commonLocalVars:Ljava/lang/String;

    const-string p1, "LT(1)"

    .line 4733
    iput-object p1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 4734
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->exceptionThrown:Ljava/lang/String;

    .line 4735
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "NoViableAltException(LT(1), getFilename());"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    goto/16 :goto_0

    .line 4737
    :cond_d
    instance-of v0, p1, Lantlr/LexerGrammar;

    if-eqz v0, :cond_e

    const-string p1, "char "

    .line 4738
    iput-object p1, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    const-string p1, "\'\\0\'"

    .line 4739
    iput-object p1, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 4740
    iput-object v9, p0, Lantlr/CppCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    const-string p1, "bool _createToken"

    .line 4741
    iput-object p1, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 4742
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "int _ttype; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "RefToken _token; int _begin=text.length();"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->commonLocalVars:Ljava/lang/String;

    const-string p1, "LA(1)"

    .line 4743
    iput-object p1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 4744
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->exceptionThrown:Ljava/lang/String;

    .line 4745
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "NoViableAltForCharException(LA(1), getFilename(), getLine(), getColumn());"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    goto/16 :goto_0

    .line 4747
    :cond_e
    instance-of v0, p1, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_11

    .line 4748
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v11, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 4749
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v11, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    .line 4750
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 4751
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 4752
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "RefAST _t"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 4753
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "NoViableAltException(_t);"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    const-string v0, "_t"

    .line 4754
    iput-object v0, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 4755
    invoke-virtual {p1, v10}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 4756
    invoke-virtual {p1, v10}, Lantlr/Grammar;->getOption(Ljava/lang/String;)Lantlr/Token;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 4758
    invoke-virtual {v6}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1, v1}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 4760
    iput-boolean v4, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    .line 4761
    iput-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    .line 4762
    iput-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    .line 4763
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    .line 4764
    iput-object v2, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    .line 4765
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " _t"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    .line 4766
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "NoViableAltException("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "RefAST(_t));"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    .line 4767
    iput-object v0, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    .line 4771
    :cond_f
    invoke-virtual {p1, v10}, Lantlr/Grammar;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 4772
    new-instance v1, Lantlr/Token;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lantlr/Token;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v10, v1}, Lantlr/Grammar;->setOption(Ljava/lang/String;Lantlr/Token;)Z

    .line 4774
    :cond_10
    iput-object v0, p0, Lantlr/CppCodeGenerator;->commonExtraArgs:Ljava/lang/String;

    .line 4775
    iput-object v9, p0, Lantlr/CppCodeGenerator;->commonLocalVars:Ljava/lang/String;

    .line 4776
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->exceptionThrown:Ljava/lang/String;

    goto :goto_0

    .line 4779
    :cond_11
    iget-object p1, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v0, "Unknown grammar type"

    invoke-virtual {p1, v0}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static suitableForCaseExpression(Lantlr/Alternative;)Z
    .locals 2

    .line 2267
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
.method protected _print(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 135
    iget v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->countLines(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 136
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected _printAction(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 148
    iget v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->countLines(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 149
    invoke-super {p0, p1}, Lantlr/CodeGenerator;->_printAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected _println(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 184
    iget v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->countLines(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 185
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected addSemPred(Ljava/lang/String;)I
    .locals 1

    .line 107
    iget-object v0, p0, Lantlr/CppCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->appendElement(Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lantlr/CppCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method protected countLines(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 120
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public exitIfError()V
    .locals 2

    .line 112
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v0}, Lantlr/Tool;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Exiting due to errors."

    invoke-virtual {v0, v1}, Lantlr/Tool;->fatalError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public gen()V
    .locals 5

    .line 400
    :try_start_0
    iget-object v0, p0, Lantlr/CppCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 401
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/Grammar;

    .line 403
    iget-boolean v2, v1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ": C++ mode does not support -debug"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;)V

    .line 407
    :cond_0
    iget-object v2, p0, Lantlr/CppCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-virtual {v1, v2}, Lantlr/Grammar;->setGrammarAnalyzer(Lantlr/LLkGrammarAnalyzer;)V

    .line 408
    invoke-virtual {v1, p0}, Lantlr/Grammar;->setCodeGenerator(Lantlr/CodeGenerator;)V

    .line 409
    iget-object v2, p0, Lantlr/CppCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v2, v1}, Lantlr/LLkGrammarAnalyzer;->setGrammar(Lantlr/Grammar;)V

    .line 411
    invoke-direct {p0, v1}, Lantlr/CppCodeGenerator;->setupGrammarParameters(Lantlr/Grammar;)V

    .line 412
    invoke-virtual {v1}, Lantlr/Grammar;->generate()V

    .line 413
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto :goto_0

    .line 417
    :cond_1
    iget-object v0, p0, Lantlr/CppCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 418
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 419
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/TokenManager;

    .line 420
    invoke-interface {v1}, Lantlr/TokenManager;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_2

    .line 424
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->genTokenTypes(Lantlr/TokenManager;)V

    .line 426
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->genTokenInterchange(Lantlr/TokenManager;)V

    .line 428
    :cond_2
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 432
    iget-object v1, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lantlr/Tool;->reportException(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public gen(Lantlr/ActionElement;)V
    .locals 4

    .line 439
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v0, :cond_1

    :cond_0
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

    .line 440
    :cond_1
    iget-boolean v0, p1, Lantlr/ActionElement;->isSemPred:Z

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p1, Lantlr/ActionElement;->actionText:Ljava/lang/String;

    iget p1, p1, Lantlr/ActionElement;->line:I

    invoke-virtual {p0, v0, p1}, Lantlr/CppCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 444
    :cond_2
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v0, :cond_3

    const-string v0, "if ( inputState->guessing==0 ) {"

    .line 445
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 446
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 449
    :cond_3
    new-instance v0, Lantlr/ActionTransInfo;

    invoke-direct {v0}, Lantlr/ActionTransInfo;-><init>()V

    .line 450
    iget-object v1, p1, Lantlr/ActionElement;->actionText:Ljava/lang/String;

    invoke-virtual {p1}, Lantlr/ActionElement;->getLine()I

    move-result v2

    iget-object v3, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v1, v2, v3, v0}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v1

    .line 454
    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 459
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "(currentAST.root);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 463
    :cond_4
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genLineNo(Lantlr/GrammarElement;)V

    .line 464
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->printAction(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    .line 467
    iget-boolean p1, v0, Lantlr/ActionTransInfo;->assignToRoot:Z

    if-eqz p1, :cond_5

    .line 469
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

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 472
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "if ( "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "!="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " &&"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 473
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 474
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "->getFirstChild() != "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " )"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 475
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "  currentAST.child = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "->getFirstChild();"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 476
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string p1, "else"

    .line 477
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 478
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 479
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "currentAST.child = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 480
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string p1, "currentAST.advanceChildToEnd();"

    .line 481
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 484
    :cond_5
    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz p1, :cond_6

    .line 485
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 486
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public gen(Lantlr/AlternativeBlock;)V
    .locals 3

    .line 495
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v0, :cond_1

    :cond_0
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

    :cond_1
    const-string/jumbo v0, "{"

    .line 496
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 498
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 501
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 502
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 503
    invoke-virtual {p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 506
    :cond_2
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v1, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    const/4 v1, 0x1

    .line 508
    invoke-virtual {p0, p1, v1}, Lantlr/CppCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CppBlockFinishingInfo;

    move-result-object p1

    .line 509
    iget-object v1, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lantlr/CppCodeGenerator;->genBlockFinish(Lantlr/CppBlockFinishingInfo;Ljava/lang/String;)V

    const-string/jumbo p1, "}"

    .line 511
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 514
    iput-object v0, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method public gen(Lantlr/BlockEndElement;)V
    .locals 3

    .line 522
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v0, :cond_1

    :cond_0
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

    :cond_1
    return-void
.end method

.method public gen(Lantlr/CharLiteralElement;)V
    .locals 4

    .line 529
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v0, :cond_1

    .line 530
    :cond_0
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

    .line 532
    :cond_1
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-nez v0, :cond_2

    .line 533
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "cannot ref character literals in grammar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    .line 535
    :cond_2
    invoke-virtual {p1}, Lantlr/CharLiteralElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 536
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/CharLiteralElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 539
    :cond_3
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 540
    invoke-virtual {p1}, Lantlr/CharLiteralElement;->getAutoGenType()I

    move-result v2

    if-ne v2, v1, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lantlr/CppCodeGenerator;->saveText:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_5

    .line 543
    invoke-virtual {p1}, Lantlr/CharLiteralElement;->getAutoGenType()I

    move-result v2

    if-ne v2, v3, :cond_6

    :cond_5
    const-string v2, "_saveIndex = text.length();"

    .line 544
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 546
    :cond_6
    iget-boolean v2, p1, Lantlr/CharLiteralElement;->not:Z

    if-eqz v2, :cond_7

    const-string v2, "matchNot("

    goto :goto_1

    :cond_7
    const-string v2, "match("

    :goto_1
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 547
    iget-object v2, p1, Lantlr/CharLiteralElement;->atomText:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lantlr/CppCodeGenerator;->convertJavaToCppString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    const-string v1, ");"

    .line 548
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 550
    iget-boolean v1, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lantlr/CharLiteralElement;->getAutoGenType()I

    move-result p1

    if-ne p1, v3, :cond_9

    :cond_8
    const-string p1, "text.erase(_saveIndex);"

    .line 551
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 553
    :cond_9
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    return-void
.end method

.method public gen(Lantlr/CharRangeElement;)V
    .locals 4

    .line 560
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v0, :cond_1

    .line 561
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "genCharRangeElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p1, Lantlr/CharRangeElement;->beginText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p1, Lantlr/CharRangeElement;->endText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 563
    :cond_1
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-nez v0, :cond_2

    .line 564
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "cannot ref character range in grammar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    .line 566
    :cond_2
    invoke-virtual {p1}, Lantlr/CharRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_3

    .line 567
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/CharRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 570
    :cond_3
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lantlr/CharRangeElement;->getAutoGenType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    const-string v2, "_saveIndex=text.length();"

    .line 575
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 577
    :cond_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "matchRange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p1, Lantlr/CharRangeElement;->beginText:Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lantlr/CppCodeGenerator;->convertJavaToCppString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p1, Lantlr/CharRangeElement;->endText:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lantlr/CppCodeGenerator;->convertJavaToCppString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    const-string p1, "text.setLength(_saveIndex);"

    .line 581
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public gen(Lantlr/LexerGrammar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 586
    iget-boolean v0, p1, Lantlr/LexerGrammar;->debuggingOutput:Z

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Lantlr/collections/impl/Vector;

    invoke-direct {v0}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v0, p0, Lantlr/CppCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    .line 589
    :cond_0
    iget-object v0, p1, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lantlr/collections/impl/BitSet;->size()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    .line 590
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/LexerGrammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": C++ mode does not support more than 8 bit characters (vocabulary size now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p1, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {v2}, Lantlr/collections/impl/BitSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    .line 592
    :cond_1
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 593
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-nez v0, :cond_2

    .line 594
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Internal error generating lexer"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 597
    :cond_2
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBody(Lantlr/LexerGrammar;)V

    .line 598
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genInclude(Lantlr/LexerGrammar;)V

    return-void
.end method

.method public gen(Lantlr/OneOrMoreBlock;)V
    .locals 10

    .line 604
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v0, :cond_1

    :cond_0
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

    :cond_1
    const-string/jumbo v0, "{ // ( ... )+"

    .line 607
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 609
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 610
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

    .line 613
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_cnt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lantlr/OneOrMoreBlock;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
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

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 617
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 620
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "_loop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/OneOrMoreBlock;->ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "for (;;) {"

    .line 623
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 624
    iget v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 627
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 630
    iget-object v2, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 631
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 632
    invoke-virtual {p1}, Lantlr/OneOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 635
    :cond_4
    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v4, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/OneOrMoreBlock;)Z

    .line 648
    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget v4, v4, Lantlr/Grammar;->maxk:I

    .line 650
    iget-boolean v5, p1, Lantlr/OneOrMoreBlock;->greedy:Z

    const/4 v6, 0x0

    if-nez v5, :cond_5

    iget v5, p1, Lantlr/OneOrMoreBlock;->exitLookaheadDepth:I

    iget-object v7, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget v7, v7, Lantlr/Grammar;->maxk:I

    if-gt v5, v7, :cond_5

    iget-object v5, p1, Lantlr/OneOrMoreBlock;->exitCache:[Lantlr/Lookahead;

    iget v7, p1, Lantlr/OneOrMoreBlock;->exitLookaheadDepth:I

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 655
    iget v4, p1, Lantlr/OneOrMoreBlock;->exitLookaheadDepth:I

    goto :goto_2

    .line 657
    :cond_5
    iget-boolean v5, p1, Lantlr/OneOrMoreBlock;->greedy:Z

    if-nez v5, :cond_6

    iget v5, p1, Lantlr/OneOrMoreBlock;->exitLookaheadDepth:I

    const v7, 0x7fffffff

    if-ne v5, v7, :cond_6

    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    const-string v7, "if ( "

    if-eqz v5, :cond_9

    .line 666
    iget-boolean v5, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v5, :cond_8

    .line 667
    :cond_7
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

    .line 670
    :cond_8
    iget-object v5, p1, Lantlr/OneOrMoreBlock;->exitCache:[Lantlr/Lookahead;

    invoke-virtual {p0, v5, v4}, Lantlr/CppCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "// nongreedy exit test"

    .line 673
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 674
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ">=1 && "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ") goto "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ";"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 677
    :cond_9
    invoke-virtual {p0, p1, v6}, Lantlr/CppCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CppBlockFinishingInfo;

    move-result-object p1

    .line 678
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ">=1 ) { goto "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "; } else {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lantlr/CppCodeGenerator;->genBlockFinish(Lantlr/CppBlockFinishingInfo;Ljava/lang/String;)V

    .line 683
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "++;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 684
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr p1, v3

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 685
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 686
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "}  // ( ... )+"

    .line 687
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 690
    iput-object v2, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method public gen(Lantlr/ParserGrammar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    iget-boolean v0, p1, Lantlr/ParserGrammar;->debuggingOutput:Z

    if-eqz v0, :cond_0

    .line 698
    new-instance v0, Lantlr/collections/impl/Vector;

    invoke-direct {v0}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v0, p0, Lantlr/CppCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    .line 700
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 701
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-nez v0, :cond_1

    .line 702
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Internal error generating parser"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 705
    :cond_1
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBody(Lantlr/ParserGrammar;)V

    .line 706
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genInclude(Lantlr/ParserGrammar;)V

    return-void
.end method

.method public gen(Lantlr/RuleRefElement;)V
    .locals 6

    .line 713
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v0, :cond_1

    :cond_0
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

    .line 714
    :cond_1
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    const-string v1, "Rule \'"

    if-eqz v0, :cond_17

    .line 715
    invoke-virtual {v0}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 721
    :cond_2
    instance-of v2, v0, Lantlr/RuleSymbol;

    if-nez v2, :cond_3

    .line 724
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

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

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 728
    :cond_3
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 732
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v2, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v2, :cond_4

    .line 736
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " = (_t == ASTNULL) ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 741
    :cond_4
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    const/4 v3, 0x3

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getAutoGenType()I

    move-result v2

    if-ne v2, v3, :cond_6

    :cond_5
    const-string v2, "_saveIndex = text.length();"

    .line 743
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 747
    :cond_6
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->printTabs()V

    .line 748
    iget-object v2, p1, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 751
    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 753
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' has no return type"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v4

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 755
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/RuleRefElement;->idAssign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_0

    .line 758
    :cond_8
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-nez v2, :cond_9

    iget v2, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v2, :cond_9

    iget-object v0, v0, Lantlr/RuleSymbol;->block:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 760
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' returns a value"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLine()I

    move-result v4

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getColumn()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 765
    :cond_9
    :goto_0
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->GenRuleInvocation(Lantlr/RuleRefElement;)V

    .line 768
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getAutoGenType()I

    move-result v0

    if-ne v0, v3, :cond_b

    :cond_a
    const-string v0, "text.erase(_saveIndex);"

    .line 769
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 773
    :cond_b
    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_16

    .line 775
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->hasSyntacticPredicate:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getAutoGenType()I

    move-result v0

    if-ne v0, v1, :cond_e

    :cond_d
    const/4 v0, 0x1

    goto :goto_1

    :cond_e
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_f

    const-string v2, "if (inputState->guessing==0) {"

    .line 784
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 785
    iget v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v2, v1

    iput v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 788
    :cond_f
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 792
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "_AST = returnAST;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 795
    :cond_10
    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->genAST:Z

    if-eqz v2, :cond_14

    .line 797
    invoke-virtual {p1}, Lantlr/RuleRefElement;->getAutoGenType()I

    move-result v2

    if-eq v2, v1, :cond_12

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    goto :goto_2

    .line 808
    :cond_11
    iget-object v2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v3, "Internal: encountered ^ after rule reference"

    invoke-virtual {v2, v3}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 800
    :cond_12
    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v2, :cond_13

    .line 801
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "astFactory->addASTChild(currentAST, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "RefAST(returnAST));"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_13
    const-string v2, "astFactory->addASTChild( currentAST, returnAST );"

    .line 803
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 816
    :cond_14
    :goto_2
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-eqz v2, :cond_15

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 818
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleRefElement;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "=_returnToken;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_15
    if-eqz v0, :cond_16

    .line 823
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v0, v1

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo v0, "}"

    .line 824
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 827
    :cond_16
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    return-void

    .line 718
    :cond_17
    :goto_3
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lantlr/RuleRefElement;->targetRule:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' is not defined"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

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

    .line 833
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v0, :cond_1

    :cond_0
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

    .line 836
    :cond_1
    invoke-virtual {p1}, Lantlr/StringLiteralElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_2

    .line 837
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/StringLiteralElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 841
    :cond_2
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 844
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 845
    invoke-virtual {p1}, Lantlr/StringLiteralElement;->getAutoGenType()I

    move-result v2

    if-ne v2, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 848
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 850
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 853
    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_4

    const-string p1, "_t = _t->getNextSibling();"

    .line 854
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public gen(Lantlr/TokenRangeElement;)V
    .locals 2

    .line 861
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 862
    invoke-virtual {p1}, Lantlr/TokenRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 863
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/TokenRangeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 867
    :cond_0
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 870
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

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 871
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    return-void
.end method

.method public gen(Lantlr/TokenRefElement;)V
    .locals 3

    .line 877
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v0, :cond_1

    :cond_0
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

    .line 878
    :cond_1
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_2

    .line 879
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Token reference found in lexer"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 881
    :cond_2
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorTryForElement(Lantlr/AlternativeElement;)V

    .line 883
    invoke-virtual {p1}, Lantlr/TokenRefElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_3

    .line 884
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/TokenRefElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 888
    :cond_3
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 890
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    .line 891
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorCatchForElement(Lantlr/AlternativeElement;)V

    .line 894
    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_4

    const-string p1, "_t = _t->getNextSibling();"

    .line 895
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public gen(Lantlr/TreeElement;)V
    .locals 6

    .line 900
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " __t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lantlr/TreeElement;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " = _t;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 903
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 904
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v1}, Lantlr/GrammarAtom;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = (_t == ASTNULL) ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " : _t;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 908
    :cond_0
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/GrammarAtom;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 909
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/TreeElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/TreeElement;->getColumn()I

    move-result v4

    const-string v5, "Suffixing a root node with \'!\' is not implemented"

    invoke-virtual {v0, v5, v1, v3, v4}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 911
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0, v2}, Lantlr/GrammarAtom;->setAutoGenType(I)V

    .line 913
    :cond_1
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0}, Lantlr/GrammarAtom;->getAutoGenType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 914
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/TreeElement;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/TreeElement;->getColumn()I

    move-result v4

    const-string v5, "Suffixing a root node with \'^\' is redundant; already a root"

    invoke-virtual {v0, v5, v1, v3, v4}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 916
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {v0, v2}, Lantlr/GrammarAtom;->setAutoGenType(I)V

    .line 920
    :cond_2
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-direct {p0, v0}, Lantlr/CppCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 921
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    const-string v1, ";"

    if-eqz v0, :cond_3

    .line 923
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "ASTPair __currentAST"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/TreeElement;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " = currentAST;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "currentAST.root = currentAST.child;"

    .line 925
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 926
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "currentAST.child = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 930
    :cond_3
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    instance-of v0, v0, Lantlr/WildcardElement;

    if-eqz v0, :cond_4

    .line 931
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "if ( _t == ASTNULL ) throw "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "MismatchedTokenException();"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 934
    :cond_4
    iget-object v0, p1, Lantlr/TreeElement;->root:Lantlr/GrammarAtom;

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->genMatch(Lantlr/GrammarAtom;)V

    :goto_0
    const-string v0, "_t = _t->getFirstChild();"

    .line 937
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 940
    :goto_1
    invoke-virtual {p1}, Lantlr/TreeElement;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 941
    invoke-virtual {p1, v0}, Lantlr/TreeElement;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v2

    .line 942
    iget-object v2, v2, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    :goto_2
    if-eqz v2, :cond_5

    .line 944
    invoke-virtual {v2}, Lantlr/AlternativeElement;->generate()V

    .line 945
    iget-object v2, v2, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 949
    :cond_6
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    if-eqz v0, :cond_7

    .line 952
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "currentAST = __currentAST"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/TreeElement;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 955
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

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string p1, "_t = _t->getNextSibling();"

    .line 957
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public gen(Lantlr/TreeWalkerGrammar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->setGrammar(Lantlr/Grammar;)V

    .line 962
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-nez v0, :cond_0

    .line 963
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "Internal error generating tree-walker"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 966
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBody(Lantlr/TreeWalkerGrammar;)V

    .line 967
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genInclude(Lantlr/TreeWalkerGrammar;)V

    return-void
.end method

.method public gen(Lantlr/WildcardElement;)V
    .locals 2

    .line 974
    invoke-virtual {p1}, Lantlr/WildcardElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v0, :cond_0

    .line 975
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/WildcardElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 979
    :cond_0
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 981
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_1

    .line 982
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "if ( _t == "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " ) throw "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "MismatchedTokenException();"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 984
    :cond_1
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_5

    .line 985
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lantlr/WildcardElement;->getAutoGenType()I

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v0, "_saveIndex = text.length();"

    .line 987
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_3
    const-string v0, "matchNot(EOF/*_CHAR*/);"

    .line 989
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lantlr/WildcardElement;->getAutoGenType()I

    move-result p1

    if-ne p1, v1, :cond_6

    :cond_4
    const-string p1, "text.erase(_saveIndex);"

    .line 992
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 996
    :cond_5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "matchNot("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lantlr/CppCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1000
    :cond_6
    :goto_0
    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_7

    const-string p1, "_t = _t->getNextSibling();"

    .line 1001
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public gen(Lantlr/ZeroOrMoreBlock;)V
    .locals 9

    .line 1008
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v0, :cond_1

    :cond_0
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

    :cond_1
    const-string/jumbo v0, "{ // ( ... )*"

    .line 1009
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 1012
    invoke-virtual {p1}, Lantlr/ZeroOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1013
    invoke-virtual {p1}, Lantlr/ZeroOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1016
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_loop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lantlr/ZeroOrMoreBlock;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "for (;;) {"

    .line 1018
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1019
    iget v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1022
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 1025
    iget-object v1, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 1026
    invoke-virtual {p1}, Lantlr/ZeroOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1027
    invoke-virtual {p1}, Lantlr/ZeroOrMoreBlock;->getLabel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 1030
    :cond_3
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v3, p1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/ZeroOrMoreBlock;)Z

    .line 1043
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    .line 1045
    iget-boolean v4, p1, Lantlr/ZeroOrMoreBlock;->greedy:Z

    const/4 v5, 0x0

    if-nez v4, :cond_4

    iget v4, p1, Lantlr/ZeroOrMoreBlock;->exitLookaheadDepth:I

    iget-object v6, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget v6, v6, Lantlr/Grammar;->maxk:I

    if-gt v4, v6, :cond_4

    iget-object v4, p1, Lantlr/ZeroOrMoreBlock;->exitCache:[Lantlr/Lookahead;

    iget v6, p1, Lantlr/ZeroOrMoreBlock;->exitLookaheadDepth:I

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1050
    iget v3, p1, Lantlr/ZeroOrMoreBlock;->exitLookaheadDepth:I

    goto :goto_1

    .line 1052
    :cond_4
    iget-boolean v4, p1, Lantlr/ZeroOrMoreBlock;->greedy:Z

    if-nez v4, :cond_5

    iget v4, p1, Lantlr/ZeroOrMoreBlock;->exitLookaheadDepth:I

    const v6, 0x7fffffff

    if-ne v4, v6, :cond_5

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    const-string v6, ";"

    if-eqz v4, :cond_8

    .line 1058
    iget-boolean v4, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v4, :cond_7

    .line 1059
    :cond_6
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

    .line 1062
    :cond_7
    iget-object v4, p1, Lantlr/ZeroOrMoreBlock;->exitCache:[Lantlr/Lookahead;

    invoke-virtual {p0, v4, v3}, Lantlr/CppCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "// nongreedy exit test"

    .line 1065
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1066
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

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1069
    :cond_8
    invoke-virtual {p0, p1, v5}, Lantlr/CppCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CppBlockFinishingInfo;

    move-result-object p1

    .line 1070
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "goto "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lantlr/CppCodeGenerator;->genBlockFinish(Lantlr/CppBlockFinishingInfo;Ljava/lang/String;)V

    .line 1072
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr p1, v2

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 1073
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1074
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "} // ( ... )*"

    .line 1075
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1078
    iput-object v1, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;)V
    .locals 1

    .line 3116
    iget-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V
    .locals 1

    .line 3120
    invoke-virtual {p1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3125
    iget-object v0, p0, Lantlr/CppCodeGenerator;->declaredASTVariables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3128
    :cond_0
    iget-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    .line 3130
    instance-of v1, p1, Lantlr/GrammarAtom;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lantlr/GrammarAtom;

    invoke-virtual {v1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Ref"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3135
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "_AST = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ";"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3138
    iget-object p2, p0, Lantlr/CppCodeGenerator;->declaredASTVariables:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V
    .locals 8

    .line 1087
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {p1}, Lantlr/Alternative;->getAutoGen()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 1090
    iget-boolean v3, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v3, :cond_1

    .line 1091
    invoke-virtual {p1}, Lantlr/Alternative;->getAutoGen()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 1094
    iget-object v1, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 1095
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    .line 1098
    iget-object v4, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    if-eqz v4, :cond_2

    const-string v4, "try {      // for error handling"

    .line 1099
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1100
    iget v4, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v4, v2

    iput v4, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1103
    :cond_2
    iget-object v4, p1, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    .line 1104
    :goto_1
    instance-of v5, v4, Lantlr/BlockEndElement;

    if-nez v5, :cond_3

    .line 1105
    invoke-virtual {v4}, Lantlr/AlternativeElement;->generate()V

    .line 1106
    iget-object v4, v4, Lantlr/AlternativeElement;->next:Lantlr/AlternativeElement;

    goto :goto_1

    .line 1109
    :cond_3
    iget-boolean v4, p0, Lantlr/CppCodeGenerator;->genAST:Z

    if-eqz v4, :cond_6

    .line 1111
    instance-of v4, p2, Lantlr/RuleBlock;

    if-eqz v4, :cond_5

    .line 1114
    check-cast p2, Lantlr/RuleBlock;

    .line 1115
    iget-boolean v4, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v4, :cond_4

    .line 1116
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "_AST = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "(currentAST.root);"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1118
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

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1120
    :cond_5
    invoke-virtual {p2}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1123
    iget-object v4, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v5, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lantlr/AlternativeBlock;->getLine()I

    move-result v6

    invoke-virtual {p2}, Lantlr/AlternativeBlock;->getColumn()I

    move-result p2

    const-string v7, "Labeled subrules are not implemented"

    invoke-virtual {v4, v7, v5, v6, p2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1127
    :cond_6
    :goto_2
    iget-object p2, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    if-eqz p2, :cond_7

    .line 1130
    iget p2, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr p2, v2

    iput p2, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo p2, "}"

    .line 1131
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1132
    iget-object p1, p1, Lantlr/Alternative;->exceptionSpec:Lantlr/ExceptionSpec;

    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    .line 1135
    :cond_7
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 1136
    iput-boolean v3, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 1138
    iput-object v1, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    return-void
.end method

.method protected genBitsets(Lantlr/collections/impl/Vector;ILjava/lang/String;)V
    .locals 10

    .line 1160
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    const-string v1, ""

    .line 1162
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1164
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1166
    invoke-virtual {p1, v2}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/collections/impl/BitSet;

    .line 1168
    invoke-virtual {v3, p2}, Lantlr/collections/impl/BitSet;->growToInclude(I)V

    .line 1171
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "const unsigned long "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "_data_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "[] = { "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lantlr/collections/impl/BitSet;->toStringOfHalfWords()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " };"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "// "

    move-object v6, v4

    const/4 v5, 0x0

    .line 1180
    :goto_1
    invoke-interface {v0}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v7

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    const/16 v8, 0x20

    if-ge v5, v7, :cond_3

    .line 1182
    invoke-virtual {v3, v5}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1184
    iget-object v7, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/LexerGrammar;

    const-string v9, " "

    if-eqz v7, :cond_1

    if-gt v8, v5, :cond_0

    const/16 v7, 0x7f

    if-ge v5, v7, :cond_0

    .line 1188
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lantlr/CppCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    const/4 v8, 0x1

    invoke-interface {v6, v5, v8}, Lantlr/CharFormatter;->escapeChar(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1190
    :cond_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "0x"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1193
    :cond_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0, v5}, Lantlr/TokenManager;->getTokenStringAt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1195
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x46

    if-le v7, v8, :cond_2

    .line 1197
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    move-object v6, v4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eq v6, v4, :cond_4

    .line 1203
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1206
    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "const "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v5, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "BitSet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "_data_,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lantlr/collections/impl/BitSet;->size()I

    move-result v3

    div-int/2addr v3, v8

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ");"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method protected genBitsetsHeader(Lantlr/collections/impl/Vector;I)V
    .locals 3

    const-string v0, ""

    .line 1217
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1218
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1220
    invoke-virtual {p1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/collections/impl/BitSet;

    .line 1222
    invoke-virtual {v1, p2}, Lantlr/collections/impl/BitSet;->growToInclude(I)V

    .line 1224
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "static const unsigned long "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "_data_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "[];"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1226
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "static const "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "BitSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected genBlockInitAction(Lantlr/AlternativeBlock;)V
    .locals 3

    .line 1262
    iget-object v0, p1, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genLineNo(Lantlr/GrammarElement;)V

    .line 1264
    iget-object v0, p1, Lantlr/AlternativeBlock;->initAction:Ljava/lang/String;

    iget p1, p1, Lantlr/AlternativeBlock;->line:I

    iget-object v1, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->printAction(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    :cond_0
    return-void
.end method

.method protected genBlockPreamble(Lantlr/AlternativeBlock;)V
    .locals 8

    .line 1276
    instance-of v0, p1, Lantlr/RuleBlock;

    if-eqz v0, :cond_7

    .line 1277
    check-cast p1, Lantlr/RuleBlock;

    .line 1278
    iget-object v0, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 1279
    :goto_0
    iget-object v1, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1281
    iget-object v1, p1, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/AlternativeElement;

    .line 1287
    instance-of v2, v1, Lantlr/RuleRefElement;

    const-string v3, " = "

    const-string v4, " "

    const-string v5, ";"

    if-nez v2, :cond_2

    instance-of v6, v1, Lantlr/AlternativeBlock;

    if-eqz v6, :cond_0

    instance-of v6, v1, Lantlr/RuleBlock;

    if-nez v6, :cond_0

    instance-of v6, v1, Lantlr/SynPredBlock;

    if-nez v6, :cond_0

    goto :goto_1

    .line 1326
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1328
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_6

    .line 1330
    instance-of v2, v1, Lantlr/GrammarAtom;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lantlr/GrammarAtom;

    invoke-virtual {v2}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1334
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Ref"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1338
    :cond_1
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    goto/16 :goto_2

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 1293
    move-object v2, v1

    check-cast v2, Lantlr/AlternativeBlock;

    iget-boolean v6, v2, Lantlr/AlternativeBlock;->not:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lantlr/CppCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v7, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v7, v7, Lantlr/LexerGrammar;

    invoke-interface {v6, v2, v7}, Lantlr/LLkGrammarAnalyzer;->subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1300
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1301
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_6

    .line 1302
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    goto :goto_2

    .line 1307
    :cond_3
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_4

    .line 1311
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->genASTDeclaration(Lantlr/AlternativeElement;)V

    .line 1313
    :cond_4
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/LexerGrammar;

    if-eqz v2, :cond_5

    .line 1314
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "RefToken "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1316
    :cond_5
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_6

    .line 1318
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementInit:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public genBody(Lantlr/LexerGrammar;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1348
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ".cpp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1349
    iput v2, v0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 1350
    iget-object v3, v0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v4, v0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v3

    iput-object v3, v0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 v3, 0x0

    .line 1353
    iput-boolean v3, v0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 1354
    iput-boolean v2, v0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 1356
    iput v3, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1359
    iget-object v4, v0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    const-string v4, "pre_include_cpp"

    .line 1361
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 1363
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "#include \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ".hpp\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "#include <antlr/CharBuffer.hpp>"

    .line 1364
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "#include <antlr/TokenStreamException.hpp>"

    .line 1365
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "#include <antlr/TokenStreamIOException.hpp>"

    .line 1366
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "#include <antlr/TokenStreamRecognitionException.hpp>"

    .line 1367
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "#include <antlr/CharStreamException.hpp>"

    .line 1368
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "#include <antlr/CharStreamIOException.hpp>"

    .line 1369
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "#include <antlr/NoViableAltForCharException.hpp>"

    .line 1370
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1371
    iget-object v4, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v4, v4, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v4, :cond_0

    const-string v4, "#include <antlr/DebuggingInputBuffer.hpp>"

    .line 1372
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_0
    const-string v4, ""

    .line 1373
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "post_include_cpp"

    .line 1374
    invoke-virtual {v0, v5}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 1376
    sget-object v5, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v5, :cond_1

    .line 1377
    iget-object v6, v0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v5, v6}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 1380
    :cond_1
    iget-object v5, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {v0, v5}, Lantlr/CppCodeGenerator;->printAction(Lantlr/Token;)V

    .line 1384
    iget-object v5, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1385
    iget-object v5, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 1388
    :cond_2
    iget-object v5, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    .line 1389
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 1390
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1391
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1394
    :goto_0
    iget-boolean v6, v0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v7, "// constructor creation turned of with \'noConstructor\' option"

    if-eqz v6, :cond_4

    const-string v6, "#if 0"

    .line 1396
    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1402
    :cond_4
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v8}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "::"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v10, Lantlr/CppCodeGenerator;->namespaceStd:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "istream& in)"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1403
    iget v6, v0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v6, v2

    iput v6, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1405
    iget-object v6, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v6, v6, Lantlr/Grammar;->debuggingOutput:Z

    const-string v10, "(new "

    const-string v11, ")"

    const-string v12, ": "

    if-eqz v6, :cond_5

    .line 1406
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v13, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "DebuggingInputBuffer(new "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v13, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "CharBuffer(in)),"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v13, v1, Lantlr/LexerGrammar;->caseSensitive:Z

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1408
    :cond_5
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v13, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "CharBuffer(in),"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v13, v1, Lantlr/LexerGrammar;->caseSensitive:Z

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1409
    :goto_1
    iget v6, v0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v6, v2

    iput v6, v0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo v6, "{"

    .line 1410
    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1411
    iget v13, v0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v13, v2

    iput v13, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1415
    iget-object v13, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v13, v13, Lantlr/Grammar;->debuggingOutput:Z

    const-string v14, "setupDebugging();"

    const-string v15, "setSemPredNames(_semPredNames);"

    const-string v3, "setRuleNames(_ruleNames);"

    if-eqz v13, :cond_6

    .line 1416
    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {v0, v15}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {v0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_6
    const-string v13, "initLiterals();"

    .line 1422
    invoke-virtual {v0, v13}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    move-object/from16 v16, v7

    .line 1423
    iget v7, v0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v7, v2

    iput v7, v0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo v7, "}"

    .line 1424
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1428
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v17, v4

    iget-object v4, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "InputBuffer& ib)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1429
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1431
    iget-object v2, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v2, :cond_7

    .line 1432
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "DebuggingInputBuffer(ib),"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v4, v1, Lantlr/LexerGrammar;->caseSensitive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1434
    :cond_7
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "(ib,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v4, v1, Lantlr/LexerGrammar;->caseSensitive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1435
    :goto_2
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1436
    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1437
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v2, v4

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1441
    iget-object v2, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v2, :cond_8

    .line 1442
    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v0, v15}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1448
    :cond_8
    invoke-virtual {v0, v13}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1449
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1450
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    move-object/from16 v2, v17

    .line 1451
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1454
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "(const "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "LexerSharedInputState& state)"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1455
    iget v4, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1456
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "(state,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, v1, Lantlr/LexerGrammar;->caseSensitive:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1457
    iget v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    iput v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1458
    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1459
    iget v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v1, v4

    iput v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1463
    iget-object v1, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v1, :cond_9

    .line 1464
    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {v0, v15}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {v0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1470
    :cond_9
    invoke-virtual {v0, v13}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1471
    iget v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1472
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1475
    iget-boolean v1, v0, Lantlr/CppCodeGenerator;->noConstructors:Z

    if-eqz v1, :cond_a

    move-object/from16 v1, v16

    .line 1477
    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "#endif"

    .line 1478
    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1481
    :cond_a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "void "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "::initLiterals()"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1482
    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1483
    iget v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1487
    iget-object v1, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v1}, Lantlr/TokenManager;->getTokenSymbolKeys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1488
    :cond_b
    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1489
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    .line 1490
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v4, 0x22

    if-eq v5, v4, :cond_c

    goto :goto_3

    .line 1493
    :cond_c
    iget-object v4, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v4, v3}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v3

    .line 1494
    instance-of v4, v3, Lantlr/StringLiteralSymbol;

    if-eqz v4, :cond_b

    .line 1495
    check-cast v3, Lantlr/StringLiteralSymbol;

    .line 1496
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "literals["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lantlr/StringLiteralSymbol;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lantlr/StringLiteralSymbol;->getTokenType()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1501
    :cond_d
    iget v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1502
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1506
    iget-object v1, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v1, :cond_10

    .line 1507
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "const char* "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "::_ruleNames[] = {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1508
    iget v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1510
    iget-object v1, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 1512
    :cond_e
    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1513
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/GrammarSymbol;

    .line 1514
    instance-of v4, v3, Lantlr/RuleSymbol;

    if-eqz v4, :cond_e

    .line 1515
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast v3, Lantlr/RuleSymbol;

    invoke-virtual {v3}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    const-string v1, "0"

    .line 1517
    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1518
    iget v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo v1, "};"

    .line 1519
    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1525
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lantlr/CppCodeGenerator;->genNextToken()V

    .line 1528
    iget-object v1, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v4, 0x0

    .line 1530
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1531
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/RuleSymbol;

    .line 1533
    invoke-virtual {v3}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mnextToken"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    add-int/lit8 v5, v4, 0x1

    .line 1534
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v7}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v7, v4, v6}, Lantlr/CppCodeGenerator;->genRule(Lantlr/RuleSymbol;ZILjava/lang/String;)V

    move v4, v5

    goto :goto_6

    :cond_11
    const/4 v7, 0x0

    .line 1536
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto :goto_5

    .line 1540
    :cond_12
    iget-object v1, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v1, :cond_13

    .line 1541
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->genSemPredMap(Ljava/lang/String;)V

    .line 1544
    :cond_13
    iget-object v1, v0, Lantlr/CppCodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v3, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v3, Lantlr/LexerGrammar;

    iget-object v3, v3, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {v3}, Lantlr/collections/impl/BitSet;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lantlr/CppCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;ILjava/lang/String;)V

    .line 1546
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1547
    sget-object v1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v1, :cond_14

    .line 1548
    iget-object v2, v0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 1551
    :cond_14
    iget-object v1, v0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    const/4 v1, 0x0

    .line 1552
    iput-object v1, v0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public genBody(Lantlr/ParserGrammar;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1618
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".cpp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1619
    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 1620
    iget-object v1, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 1622
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->buildAST:Z

    iput-boolean v1, p0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v1, 0x0

    .line 1624
    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1627
    iget-object v2, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    const-string v2, "pre_include_cpp"

    .line 1629
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 1632
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "#include \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ".hpp\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "#include <antlr/NoViableAltException.hpp>"

    .line 1633
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "#include <antlr/SemanticException.hpp>"

    .line 1634
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "#include <antlr/ASTFactory.hpp>"

    .line 1635
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "post_include_cpp"

    .line 1637
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 1639
    sget-object v2, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v2, :cond_0

    .line 1640
    iget-object v3, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v2, v3}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 1643
    :cond_0
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->printAction(Lantlr/Token;)V

    .line 1646
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1647
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 1649
    :cond_1
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    .line 1650
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 1651
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1652
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1657
    :goto_0
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v3, v3, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v3, :cond_5

    .line 1658
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "const char* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "::_ruleNames[] = {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1659
    iget v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v3, v0

    iput v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1661
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v3}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 1663
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1664
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lantlr/GrammarSymbol;

    .line 1665
    instance-of v5, v4, Lantlr/RuleSymbol;

    if-eqz v5, :cond_3

    .line 1666
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast v4, Lantlr/RuleSymbol;

    invoke-virtual {v4}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v3, "0"

    .line 1668
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1669
    iget v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v3, v0

    iput v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo v3, "};"

    .line 1670
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1689
    :cond_5
    iget-boolean v3, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v4, "// constructor creation turned of with \'noConstructor\' option"

    if-eqz v3, :cond_6

    const-string v3, "#if 0"

    .line 1691
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1696
    :cond_6
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "::"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 1697
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "TokenBuffer& tokenBuf, int k)"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1698
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, ": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "(tokenBuf,k)"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "{"

    .line 1699
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v8, "}"

    .line 1703
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v9, ""

    .line 1704
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1706
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v11, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v11}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v11, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v11}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 1707
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v11, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, "TokenBuffer& tokenBuf)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1708
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, "(tokenBuf,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v11, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget v11, v11, Lantlr/Grammar;->maxk:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1717
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v12, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v12}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v12, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v12}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 1718
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v12, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v12, "TokenStream& lexer, int k)"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1719
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v12, "(lexer,k)"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1724
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1727
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v12, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v12}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v12, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v12}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 1728
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "TokenStream& lexer)"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1729
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "(lexer,"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget v10, v10, Lantlr/Grammar;->maxk:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1730
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1734
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1737
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v10}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v10}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 1738
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "(const "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v10, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "ParserSharedInputState& state)"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1739
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "(state,"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget v2, v2, Lantlr/Grammar;->maxk:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1740
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1744
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1747
    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    if-eqz v2, :cond_7

    .line 1749
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "#endif"

    .line 1750
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1753
    :cond_7
    new-instance v2, Lantlr/collections/impl/Vector;

    invoke-direct {v2}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v2, p0, Lantlr/CppCodeGenerator;->astTypes:Lantlr/collections/impl/Vector;

    .line 1756
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    const/4 v3, 0x0

    .line 1758
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1759
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lantlr/GrammarSymbol;

    .line 1760
    instance-of v6, v4, Lantlr/RuleSymbol;

    if-eqz v6, :cond_9

    .line 1761
    check-cast v4, Lantlr/RuleSymbol;

    .line 1762
    iget-object v6, v4, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v6}, Lantlr/collections/impl/Vector;->size()I

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :goto_3
    add-int/lit8 v7, v3, 0x1

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v10}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v6, v3, v8}, Lantlr/CppCodeGenerator;->genRule(Lantlr/RuleSymbol;ZILjava/lang/String;)V

    move v3, v7

    .line 1764
    :cond_9
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto :goto_2

    .line 1767
    :cond_a
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genInitFactory(Lantlr/Grammar;)V

    .line 1770
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genTokenStrings(Ljava/lang/String;)V

    .line 1773
    iget-object p1, p0, Lantlr/CppCodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lantlr/CppCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;ILjava/lang/String;)V

    .line 1776
    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_b

    .line 1777
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genSemPredMap(Ljava/lang/String;)V

    .line 1780
    :cond_b
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1781
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1782
    sget-object p1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz p1, :cond_c

    .line 1783
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 1786
    :cond_c
    iget-object p1, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 1787
    iput-object p1, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public genBody(Lantlr/TreeWalkerGrammar;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1792
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ".cpp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1793
    iput p1, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 1794
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 1797
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v0, 0x0

    .line 1798
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1801
    iget-object v1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    const-string v1, "pre_include_cpp"

    .line 1803
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 1806
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "#include \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ".hpp\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "#include <antlr/Token.hpp>"

    .line 1807
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "#include <antlr/AST.hpp>"

    .line 1808
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "#include <antlr/NoViableAltException.hpp>"

    .line 1809
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "#include <antlr/MismatchedTokenException.hpp>"

    .line 1810
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "#include <antlr/SemanticException.hpp>"

    .line 1811
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "#include <antlr/BitSet.hpp>"

    .line 1812
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "post_include_cpp"

    .line 1814
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 1816
    sget-object v1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v1, :cond_0

    .line 1817
    iget-object v2, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 1820
    :cond_0
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->printAction(Lantlr/Token;)V

    .line 1824
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1825
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->superClass:Ljava/lang/String;

    goto :goto_0

    .line 1828
    :cond_1
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    .line 1829
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1830
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1833
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v2, "// constructor creation turned of with \'noConstructor\' option"

    if-eqz v1, :cond_3

    const-string v1, "#if 0"

    .line 1835
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1840
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "::"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1841
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\t: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "TreeParser() {"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1842
    iget v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v1, p1

    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1844
    iget v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v1, p1

    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo v1, "}"

    .line 1845
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1847
    iget-boolean v1, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    if-eqz v1, :cond_4

    .line 1849
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "#endif"

    .line 1850
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_4
    const-string v1, ""

    .line 1852
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1854
    new-instance v2, Lantlr/collections/impl/Vector;

    invoke-direct {v2}, Lantlr/collections/impl/Vector;-><init>()V

    iput-object v2, p0, Lantlr/CppCodeGenerator;->astTypes:Lantlr/collections/impl/Vector;

    .line 1857
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    const/4 v4, 0x0

    .line 1860
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1861
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lantlr/GrammarSymbol;

    .line 1862
    instance-of v6, v5, Lantlr/RuleSymbol;

    if-eqz v6, :cond_6

    .line 1863
    check-cast v5, Lantlr/RuleSymbol;

    .line 1864
    iget-object v6, v5, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v6}, Lantlr/collections/impl/Vector;->size()I

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v7, v4, 0x1

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v4, v8}, Lantlr/CppCodeGenerator;->genRule(Lantlr/RuleSymbol;ZILjava/lang/String;)V

    move v4, v7

    .line 1866
    :cond_6
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto :goto_1

    .line 1870
    :cond_7
    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genInitFactory(Lantlr/Grammar;)V

    .line 1872
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genTokenStrings(Ljava/lang/String;)V

    .line 1875
    iget-object p1, p0, Lantlr/CppCodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lantlr/CppCodeGenerator;->genBitsets(Lantlr/collections/impl/Vector;ILjava/lang/String;)V

    .line 1878
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1881
    sget-object p1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz p1, :cond_8

    .line 1882
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 1885
    :cond_8
    iget-object p1, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 1886
    iput-object p1, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method protected genCases(Lantlr/collections/impl/BitSet;)V
    .locals 4

    .line 1892
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v0, :cond_1

    :cond_0
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

    .line 1895
    :cond_1
    invoke-virtual {p1}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object p1

    const/4 v0, 0x0

    .line 1900
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    const-string v1, ""

    .line 1902
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 1906
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "case "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget v3, p1, v0

    invoke-direct {p0, v3}, Lantlr/CppCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CppBlockFinishingInfo;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1939
    new-instance v2, Lantlr/CppBlockFinishingInfo;

    invoke-direct {v2}, Lantlr/CppBlockFinishingInfo;-><init>()V

    .line 1940
    iget-boolean v3, v0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "genCommonBlk("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1943
    :cond_1
    iget-boolean v3, v0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 1944
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, v0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 1946
    iget-boolean v6, v0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v6, :cond_3

    .line 1947
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAutoGen()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, v0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 1950
    iget-boolean v7, v1, Lantlr/AlternativeBlock;->not:Z

    const-string v8, ""

    if-eqz v7, :cond_8

    iget-object v7, v0, Lantlr/CppCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v9, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v9, v9, Lantlr/LexerGrammar;

    invoke-interface {v7, v1, v9}, Lantlr/LLkGrammarAnalyzer;->subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1953
    iget-object v3, v0, Lantlr/CppCodeGenerator;->analyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v3, v5, v1}, Lantlr/LLkGrammarAnalyzer;->look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;

    move-result-object v3

    .line 1955
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget v4, v0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    if-nez v4, :cond_4

    .line 1956
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v0, Lantlr/CppCodeGenerator;->lt1Value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1960
    :cond_4
    invoke-direct/range {p0 .. p1}, Lantlr/CppCodeGenerator;->genElementAST(Lantlr/AlternativeElement;)V

    .line 1963
    iget-object v1, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-eqz v1, :cond_6

    .line 1964
    iget-boolean v1, v0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v1, :cond_5

    .line 1965
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "RefAST"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "(_t),"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_5
    const-string v8, "_t,"

    .line 1971
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "match("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result v3

    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ");"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1974
    iget-object v1, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-eqz v1, :cond_7

    const-string v1, "_t = _t->getNextSibling();"

    .line 1976
    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    return-object v2

    .line 1982
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v7

    invoke-virtual {v7}, Lantlr/collections/impl/Vector;->size()I

    move-result v7

    if-ne v7, v5, :cond_b

    .line 1984
    invoke-virtual {v1, v4}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v7

    .line 1986
    iget-object v9, v7, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v9, :cond_9

    .line 1988
    iget-object v9, v0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v10, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

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

    .line 1997
    iget-object v3, v7, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 2000
    iget-object v3, v7, Lantlr/Alternative;->semPred:Ljava/lang/String;

    iget v4, v1, Lantlr/AlternativeBlock;->line:I

    invoke-virtual {v0, v3, v4}, Lantlr/CppCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    .line 2002
    :cond_a
    invoke-virtual {v0, v7, v1}, Lantlr/CppCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    return-object v2

    :cond_b
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 2018
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lantlr/AlternativeBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v10

    invoke-virtual {v10}, Lantlr/collections/impl/Vector;->size()I

    move-result v10

    if-ge v7, v10, :cond_d

    .line 2020
    invoke-virtual {v1, v7}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v10

    .line 2021
    invoke-static {v10}, Lantlr/CppCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v10

    if-eqz v10, :cond_c

    add-int/lit8 v9, v9, 0x1

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2026
    :cond_d
    iget v7, v0, Lantlr/CppCodeGenerator;->makeSwitchThreshold:I

    const-string/jumbo v10, "{"

    const-string v11, "_t = ASTNULL;"

    const-string v12, " )"

    const-string v13, "if (_t == "

    const-string/jumbo v14, "}"

    if-lt v9, v7, :cond_12

    .line 2029
    invoke-direct {v0, v5}, Lantlr/CppCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v7

    .line 2032
    iget-object v9, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v9, v9, Lantlr/TreeWalkerGrammar;

    if-eqz v9, :cond_e

    .line 2034
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v15, v0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2035
    iget v9, v0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v9, v5

    iput v9, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2036
    invoke-virtual {v0, v11}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2037
    iget v9, v0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v9, v5

    iput v9, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2039
    :cond_e
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "switch ( "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, ") {"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 2040
    :goto_4
    iget-object v9, v1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v9}, Lantlr/collections/impl/Vector;->size()I

    move-result v9

    if-ge v7, v9, :cond_11

    .line 2042
    invoke-virtual {v1, v7}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v9

    .line 2045
    invoke-static {v9}, Lantlr/CppCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v15

    if-nez v15, :cond_f

    move-object/from16 v17, v8

    goto :goto_5

    .line 2049
    :cond_f
    iget-object v15, v9, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v15, v15, v5

    .line 2050
    iget-object v4, v15, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v4}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v15}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v4

    if-nez v4, :cond_10

    .line 2052
    iget-object v4, v0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v15, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v15}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v15

    iget-object v5, v9, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    invoke-virtual {v5}, Lantlr/AlternativeElement;->getLine()I

    move-result v5

    iget-object v9, v9, Lantlr/Alternative;->head:Lantlr/AlternativeElement;

    invoke-virtual {v9}, Lantlr/AlternativeElement;->getColumn()I

    move-result v9

    move-object/from16 v17, v8

    const-string v8, "Alternate omitted due to empty prediction set"

    invoke-virtual {v4, v8, v15, v5, v9}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x1

    goto :goto_5

    :cond_10
    move-object/from16 v17, v8

    .line 2058
    iget-object v4, v15, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->genCases(Lantlr/collections/impl/BitSet;)V

    .line 2059
    invoke-virtual {v0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2060
    iget v4, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2061
    invoke-virtual {v0, v9, v1}, Lantlr/CppCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    const-string v4, "break;"

    .line 2062
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2063
    iget v4, v0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v4, v5

    iput v4, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2064
    invoke-virtual {v0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, v17

    const/4 v4, 0x0

    goto :goto_4

    :cond_11
    move-object/from16 v17, v8

    const-string v4, "default:"

    .line 2067
    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2068
    iget v4, v0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v4, v5

    iput v4, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v5, 0x1

    goto :goto_6

    :cond_12
    move-object/from16 v17, v8

    const/4 v5, 0x0

    .line 2085
    :goto_6
    iget-object v4, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v4, v4, Lantlr/LexerGrammar;

    if-eqz v4, :cond_13

    iget-object v4, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget v4, v4, Lantlr/Grammar;->maxk:I

    goto :goto_7

    :cond_13
    const/4 v4, 0x0

    :goto_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_8
    if-ltz v4, :cond_2d

    .line 2087
    iget-boolean v9, v0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v9, :cond_15

    iget-boolean v9, v0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v9, :cond_14

    goto :goto_9

    :cond_14
    move/from16 p2, v8

    goto :goto_a

    :cond_15
    :goto_9
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 p2, v8

    const-string v8, "checking depth "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_a
    move/from16 v8, p2

    const/4 v9, 0x0

    .line 2088
    :goto_b
    iget-object v15, v1, Lantlr/AlternativeBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v15}, Lantlr/collections/impl/Vector;->size()I

    move-result v15

    if-ge v9, v15, :cond_2c

    .line 2089
    invoke-virtual {v1, v9}, Lantlr/AlternativeBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v15

    move/from16 v18, v6

    .line 2090
    iget-boolean v6, v0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v6, :cond_17

    iget-boolean v6, v0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v6, :cond_16

    goto :goto_c

    :cond_16
    move/from16 v19, v3

    move-object/from16 v20, v14

    goto :goto_d

    :cond_17
    :goto_c
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move/from16 v19, v3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v20, v14

    const-string v14, "genAlt: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_d
    if-eqz v5, :cond_19

    .line 2094
    invoke-static {v15}, Lantlr/CppCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2097
    iget-boolean v3, v0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v3, :cond_18

    iget-boolean v3, v0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v3, :cond_1d

    .line 2098
    :cond_18
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "ignoring alt because it was in the switch"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 2105
    :cond_19
    iget-object v3, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v3, v3, Lantlr/LexerGrammar;

    if-eqz v3, :cond_1f

    .line 2108
    iget v3, v15, Lantlr/Alternative;->lookaheadDepth:I

    const v6, 0x7fffffff

    if-ne v3, v6, :cond_1a

    .line 2112
    iget-object v3, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    :cond_1a
    :goto_e
    const/4 v6, 0x1

    if-lt v3, v6, :cond_1b

    .line 2114
    iget-object v6, v15, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v6

    if-eqz v6, :cond_1b

    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    :cond_1b
    if-eq v3, v4, :cond_1e

    .line 2123
    iget-boolean v6, v0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v6, :cond_1c

    iget-boolean v6, v0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v6, :cond_1d

    .line 2124
    :cond_1c
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "ignoring alt because effectiveDepth!=altDepth;"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "!="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1d
    :goto_f
    move-object/from16 v26, v2

    move/from16 v22, v4

    move/from16 v21, v5

    move/from16 v23, v9

    move-object/from16 v25, v10

    move-object/from16 v2, v20

    goto/16 :goto_16

    .line 2127
    :cond_1e
    invoke-virtual {v0, v15, v3}, Lantlr/CppCodeGenerator;->lookaheadIsEmpty(Lantlr/Alternative;I)Z

    move-result v6

    .line 2128
    invoke-virtual {v0, v15, v3}, Lantlr/CppCodeGenerator;->getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    .line 2132
    :cond_1f
    iget-object v3, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    invoke-virtual {v0, v15, v3}, Lantlr/CppCodeGenerator;->lookaheadIsEmpty(Lantlr/Alternative;I)Z

    move-result v6

    .line 2133
    iget-object v3, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget v3, v3, Lantlr/Grammar;->maxk:I

    invoke-virtual {v0, v15, v3}, Lantlr/CppCodeGenerator;->getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;

    move-result-object v3

    .line 2138
    :goto_10
    iget-object v14, v15, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    const/16 v16, 0x1

    aget-object v14, v14, v16

    iget-object v14, v14, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v14}, Lantlr/collections/impl/BitSet;->degree()I

    move-result v14

    move/from16 v21, v5

    const-string v5, "if "

    move/from16 v22, v4

    const-string v4, "else if "

    move/from16 v23, v9

    const-string v9, " {"

    move/from16 v24, v7

    const/16 v7, 0x7f

    if-le v14, v7, :cond_22

    invoke-static {v15}, Lantlr/CppCodeGenerator;->suitableForCaseExpression(Lantlr/Alternative;)Z

    move-result v7

    if-eqz v7, :cond_22

    if-nez v8, :cond_21

    .line 2145
    iget-object v4, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v4, v4, Lantlr/TreeWalkerGrammar;

    if-eqz v4, :cond_20

    .line 2146
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2147
    iget v4, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2148
    invoke-virtual {v0, v11}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2149
    iget v4, v0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v4, v6

    iput v4, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2151
    :cond_20
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_11

    .line 2154
    :cond_21
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :goto_11
    move-object/from16 v26, v2

    move-object/from16 v25, v10

    goto/16 :goto_14

    :cond_22
    const-string v7, "else {"

    if-eqz v6, :cond_24

    .line 2156
    iget-object v6, v15, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-nez v6, :cond_24

    iget-object v6, v15, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-nez v6, :cond_24

    if-nez v8, :cond_23

    .line 2165
    invoke-virtual {v0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 2168
    :cond_23
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :goto_12
    const/4 v3, 0x0

    .line 2170
    iput-boolean v3, v2, Lantlr/CppBlockFinishingInfo;->needAnErrorClause:Z

    goto :goto_11

    .line 2176
    :cond_24
    iget-object v6, v15, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v6, :cond_27

    .line 2180
    new-instance v6, Lantlr/ActionTransInfo;

    invoke-direct {v6}, Lantlr/ActionTransInfo;-><init>()V

    .line 2181
    iget-object v14, v15, Lantlr/Alternative;->semPred:Ljava/lang/String;

    move-object/from16 v25, v10

    iget v10, v1, Lantlr/AlternativeBlock;->line:I

    move-object/from16 v26, v2

    iget-object v2, v0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v0, v14, v10, v2, v6}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2189
    iget-object v6, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v6, v6, Lantlr/Grammar;->debuggingOutput:Z

    const-string v10, "))"

    const-string v14, "("

    if-eqz v6, :cond_26

    iget-object v6, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/ParserGrammar;

    if-nez v6, :cond_25

    iget-object v6, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/LexerGrammar;

    if-eqz v6, :cond_26

    .line 2192
    :cond_25
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&& fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.PREDICTING,"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lantlr/CppCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v3, v2}, Lantlr/CharFormatter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->addSemPred(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    .line 2195
    :cond_26
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&&("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_27
    move-object/from16 v26, v2

    move-object/from16 v25, v10

    :goto_13
    if-lez v8, :cond_29

    .line 2200
    iget-object v2, v15, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v2, :cond_28

    .line 2201
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2202
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2203
    iget-object v2, v15, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v0, v2, v3}, Lantlr/CppCodeGenerator;->genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V

    add-int/lit8 v7, v24, 0x1

    goto :goto_15

    .line 2207
    :cond_28
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 2211
    :cond_29
    iget-object v2, v15, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v2, :cond_2a

    .line 2212
    iget-object v2, v15, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v0, v2, v3}, Lantlr/CppCodeGenerator;->genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V

    goto :goto_14

    .line 2217
    :cond_2a
    iget-object v2, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_2b

    .line 2218
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2219
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2220
    invoke-virtual {v0, v11}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2221
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v2, v4

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2223
    :cond_2b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :goto_14
    move/from16 v7, v24

    :goto_15
    add-int/lit8 v8, v8, 0x1

    .line 2230
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2231
    invoke-virtual {v0, v15, v1}, Lantlr/CppCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    .line 2232
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v2, v3

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    move-object/from16 v2, v20

    .line 2233
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :goto_16
    add-int/lit8 v9, v23, 0x1

    move-object v14, v2

    move/from16 v6, v18

    move/from16 v3, v19

    move/from16 v5, v21

    move/from16 v4, v22

    move-object/from16 v10, v25

    move-object/from16 v2, v26

    goto/16 :goto_b

    :cond_2c
    move-object/from16 v26, v2

    move/from16 v19, v3

    move/from16 v22, v4

    move/from16 v21, v5

    move/from16 v18, v6

    move/from16 v24, v7

    move-object/from16 v25, v10

    move-object v2, v14

    add-int/lit8 v4, v22, -0x1

    move-object/from16 v2, v26

    goto/16 :goto_8

    :cond_2d
    move-object/from16 v26, v2

    move/from16 v19, v3

    move/from16 v21, v5

    move/from16 v18, v6

    move/from16 p2, v8

    move-object v2, v14

    move-object/from16 v8, v17

    const/4 v5, 0x1

    :goto_17
    if-gt v5, v7, :cond_2e

    .line 2238
    iget v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2239
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_2e
    move/from16 v1, v19

    .line 2243
    iput-boolean v1, v0, Lantlr/CppCodeGenerator;->genAST:Z

    move/from16 v1, v18

    .line 2246
    iput-boolean v1, v0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v21, :cond_30

    .line 2250
    iget v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2251
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v26

    iput-object v1, v2, Lantlr/CppBlockFinishingInfo;->postscript:Ljava/lang/String;

    .line 2252
    iput-boolean v3, v2, Lantlr/CppBlockFinishingInfo;->generatedSwitch:Z

    if-lez p2, :cond_2f

    const/4 v4, 0x1

    goto :goto_18

    :cond_2f
    const/4 v4, 0x0

    .line 2253
    :goto_18
    iput-boolean v4, v2, Lantlr/CppBlockFinishingInfo;->generatedAnIf:Z

    goto :goto_1a

    :cond_30
    move-object/from16 v2, v26

    const/4 v3, 0x1

    .line 2258
    iput-object v8, v2, Lantlr/CppBlockFinishingInfo;->postscript:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2259
    iput-boolean v1, v2, Lantlr/CppBlockFinishingInfo;->generatedSwitch:Z

    if-lez p2, :cond_31

    const/4 v4, 0x1

    goto :goto_19

    :cond_31
    const/4 v4, 0x0

    .line 2260
    :goto_19
    iput-boolean v4, v2, Lantlr/CppBlockFinishingInfo;->generatedAnIf:Z

    :goto_1a
    return-object v2
.end method

.method protected genHeader(Ljava/lang/String;)V
    .locals 4

    .line 2526
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/* $ANTLR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    sget-object v1, Lantlr/Tool;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v3, v3, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lantlr/Tool;->fileMinusPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\"$ */"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genInclude(Lantlr/LexerGrammar;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2535
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".hpp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2536
    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 2537
    iget-object v1, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 v1, 0x0

    .line 2540
    iput-boolean v1, p0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 2541
    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 2543
    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2546
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "#ifndef INC_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "_hpp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2547
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "#define INC_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, ""

    .line 2548
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v3, "pre_include_hpp"

    .line 2550
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    const-string v3, "#include <antlr/config.hpp>"

    .line 2552
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2555
    iget-object v3, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    const-string v3, "#include <antlr/CommonToken.hpp>"

    .line 2558
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v3, "#include <antlr/InputBuffer.hpp>"

    .line 2559
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v3, "#include <antlr/BitSet.hpp>"

    .line 2560
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2561
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "#include \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v4}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lantlr/CppCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ".hpp\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2565
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2566
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->superClass:Ljava/lang/String;

    const-string v5, "\n// Include correct superclass header with a header statement for example:"

    .line 2568
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "// header \"post_include_hpp\" {"

    .line 2569
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2570
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "// #include \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "// }"

    .line 2571
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "// Or...."

    .line 2572
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "// header {"

    .line 2573
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2574
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "// }\n"

    .line 2575
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2578
    :cond_0
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    .line 2579
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 2580
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2581
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "#include <antlr/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ".hpp>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2582
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v5, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "post_include_hpp"

    .line 2586
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2588
    sget-object v4, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v4, :cond_2

    .line 2589
    iget-object v5, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v4, v5}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 2591
    :cond_2
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2594
    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 2595
    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2599
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "class CUSTOM_API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v5}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " : public "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 2600
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ", public "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v4}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lantlr/CppCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2602
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v4, "classHeaderSuffix"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/Token;

    if-eqz v3, :cond_4

    .line 2604
    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    invoke-static {v3, v4, v4}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2606
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v3, "{"

    .line 2609
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2612
    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 2613
    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->genLineNo(Lantlr/Token;)V

    .line 2614
    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v4}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v6, v6, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v6}, Lantlr/Token;->getLine()I

    move-result v6

    iget-object v7, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v4, v6, v7, v5}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 2619
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    .line 2623
    :cond_5
    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v4, "private:"

    .line 2624
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2625
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo v6, "void initLiterals();"

    .line 2626
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2629
    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v6, "public:"

    .line 2630
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2631
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v7, "bool getCaseSensitiveLiterals() const"

    .line 2632
    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2633
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2634
    iget v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v3, v0

    iput v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2635
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "return "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean p1, p1, Lantlr/LexerGrammar;->caseSensitiveLiterals:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string p1, ";"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2636
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr p1, v0

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 2637
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2640
    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2641
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2642
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2644
    iget-boolean p1, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v3, "// constructor creation turned of with \'noConstructor\' option"

    if-eqz p1, :cond_6

    .line 2646
    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string p1, "#if 0"

    .line 2647
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2648
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2649
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2653
    :cond_6
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "("

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceStd:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "istream& in);"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2656
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v7}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "InputBuffer& ib);"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2658
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "(const "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "LexerSharedInputState& state);"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2659
    iget-boolean p1, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    if-eqz p1, :cond_7

    .line 2661
    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2662
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string p1, "#endif"

    .line 2663
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2664
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2670
    :cond_7
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "RefToken nextToken();"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2673
    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 2674
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2675
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lantlr/RuleSymbol;

    .line 2677
    invoke-virtual {v3}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mnextToken"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 2678
    invoke-virtual {p0, v3, v1}, Lantlr/CppCodeGenerator;->genRuleHeader(Lantlr/RuleSymbol;Z)V

    .line 2680
    :cond_8
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto :goto_1

    .line 2684
    :cond_9
    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2685
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2686
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2689
    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_a

    const-string p1, "static const char* _ruleNames[];"

    .line 2690
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2694
    :cond_a
    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p1, p1, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p1, :cond_b

    const-string p1, "static const char* _semPredNames[];"

    .line 2695
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2698
    :cond_b
    iget-object p1, p0, Lantlr/CppCodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-object v0, v0, Lantlr/LexerGrammar;->charVocabulary:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lantlr/collections/impl/BitSet;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lantlr/CppCodeGenerator;->genBitsetsHeader(Lantlr/collections/impl/Vector;I)V

    .line 2700
    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo p1, "};"

    .line 2701
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2702
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2703
    sget-object p1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz p1, :cond_c

    .line 2704
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 2707
    :cond_c
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "#endif /*INC_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_hpp_*/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2710
    iget-object p1, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 2711
    iput-object v5, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public genInclude(Lantlr/ParserGrammar;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2716
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ".hpp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2717
    iput p1, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 2718
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 2721
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v0, 0x0

    .line 2723
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2726
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "#ifndef INC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "_hpp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2727
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "#define INC_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, ""

    .line 2728
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "pre_include_hpp"

    .line 2729
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    const-string v2, "#include <antlr/config.hpp>"

    .line 2730
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2733
    iget-object v2, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    const-string v2, "#include <antlr/TokenStream.hpp>"

    .line 2736
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "#include <antlr/TokenBuffer.hpp>"

    .line 2737
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2738
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "#include \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v3}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lantlr/CppCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ".hpp\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2742
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2743
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    const-string v4, "\n// Include correct superclass header with a header statement for example:"

    .line 2744
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "// header \"post_include_hpp\" {"

    .line 2745
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2746
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "// #include \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "// }"

    .line 2747
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "// Or...."

    .line 2748
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "// header {"

    .line 2749
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2750
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v3, "// }\n"

    .line 2751
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2754
    :cond_0
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    .line 2755
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 2756
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2757
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "#include <antlr/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ".hpp>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2758
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2760
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v3, "post_include_hpp"

    .line 2763
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2765
    sget-object v3, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v3, :cond_2

    .line 2766
    iget-object v4, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v3, v4}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 2768
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2771
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2772
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2776
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "class CUSTOM_API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " : public "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 2777
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ", public "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v3}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lantlr/CppCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2779
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v3, "classHeaderSuffix"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/Token;

    if-eqz v2, :cond_4

    .line 2781
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    invoke-static {v2, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2783
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v2, "{"

    .line 2785
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2789
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v3, v3, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v3, :cond_5

    const-string v3, "public: static const char* _ruleNames[];"

    .line 2790
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2793
    :cond_5
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 2794
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getLine()I

    move-result v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->genLineNo(I)V

    .line 2795
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v5}, Lantlr/Token;->getLine()I

    move-result v5

    iget-object v6, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v3, v5, v6, v4}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 2800
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    :cond_6
    const-string v3, "public:"

    .line 2802
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2803
    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2804
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "void initializeASTFactory( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "ASTFactory& factory );"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2809
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2810
    iget-boolean v5, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v6, "// constructor creation turned of with \'noConstructor\' option"

    if-eqz v5, :cond_7

    const-string v5, "#if 0"

    .line 2812
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2813
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    const-string v5, "protected:"

    .line 2815
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2816
    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2817
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v8}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "TokenBuffer& tokenBuf, int k);"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2818
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2819
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2820
    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2821
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "TokenBuffer& tokenBuf);"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2824
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2825
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2826
    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2827
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "TokenStream& lexer, int k);"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2828
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2829
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2830
    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2831
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "TokenStream& lexer);"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2833
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v8}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "(const "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "ParserSharedInputState& state);"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2834
    iget-boolean v7, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v8, "#endif"

    if-eqz v7, :cond_8

    .line 2836
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2837
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2838
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2839
    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    :cond_8
    const-string v6, "int getNumTokens() const"

    .line 2842
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2843
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iget v6, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v6, p1

    iput v6, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2844
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "::NUM_TOKENS;"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2845
    iget v6, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v6, p1

    iput v6, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo v6, "}"

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v9, "const char* getTokenName( int type ) const"

    .line 2846
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2847
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iget v9, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v9, p1

    iput v9, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v9, "if( type > getNumTokens() ) return 0;"

    .line 2848
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2849
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v10}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "::tokenNames[type];"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2850
    iget v9, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v9, p1

    iput v9, p0, Lantlr/CppCodeGenerator;->tabs:I

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v9, "const char* const* getTokenNames() const"

    .line 2851
    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2852
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iget v9, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v9, p1

    iput v9, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2853
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v10}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "::tokenNames;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2854
    iget v9, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v9, p1

    iput v9, p0, Lantlr/CppCodeGenerator;->tabs:I

    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2857
    iget-object v9, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v9, v9, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v9}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v9

    .line 2858
    :goto_1
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2859
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lantlr/GrammarSymbol;

    .line 2860
    instance-of v11, v10, Lantlr/RuleSymbol;

    if-eqz v11, :cond_a

    .line 2861
    check-cast v10, Lantlr/RuleSymbol;

    .line 2862
    iget-object v11, v10, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v11}, Lantlr/collections/impl/Vector;->size()I

    move-result v11

    if-nez v11, :cond_9

    const/4 v11, 0x1

    goto :goto_2

    :cond_9
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {p0, v10, v11}, Lantlr/CppCodeGenerator;->genRuleHeader(Lantlr/RuleSymbol;Z)V

    .line 2864
    :cond_a
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto :goto_1

    .line 2872
    :cond_b
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2873
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "RefAST getAST()"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2874
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2875
    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v2, :cond_c

    .line 2877
    iget v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v2, p1

    iput v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2878
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "RefAST(returnAST);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2879
    iget v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v2, p1

    iput v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    goto :goto_3

    .line 2883
    :cond_c
    iget v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v2, p1

    iput v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v2, "return returnAST;"

    .line 2884
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2885
    iget v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v2, p1

    iput v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2887
    :goto_3
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2888
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2890
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2891
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " returnAST;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2894
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v2, "private:"

    .line 2895
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2896
    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string p1, "static const char* tokenNames[];"

    .line 2899
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string p1, "#ifndef NO_STATIC_CONSTS"

    .line 2901
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2902
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "static const int NUM_TOKENS = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string p1, "#else"

    .line 2903
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    const-string p1, "enum {"

    .line 2904
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2905
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\tNUM_TOKENS = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "};"

    .line 2906
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2907
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2910
    iget-object v2, p0, Lantlr/CppCodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v3}, Lantlr/TokenManager;->maxTokenType()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lantlr/CppCodeGenerator;->genBitsetsHeader(Lantlr/collections/impl/Vector;I)V

    .line 2913
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v2, :cond_d

    const-string v2, "static const char* _semPredNames[];"

    .line 2914
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2917
    :cond_d
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2918
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2920
    sget-object p1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz p1, :cond_e

    .line 2921
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 2924
    :cond_e
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "#endif /*INC_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_hpp_*/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2927
    iget-object p1, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 2928
    iput-object v4, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public genInclude(Lantlr/TreeWalkerGrammar;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2933
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ".hpp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2934
    iput p1, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 2935
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 2938
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    iput-boolean v0, p0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v0, 0x0

    .line 2939
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 2942
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "#ifndef INC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "_hpp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2943
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "#define INC_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v3}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, ""

    .line 2944
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "pre_include_hpp"

    .line 2945
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    const-string v2, "#include <antlr/config.hpp>"

    .line 2946
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2947
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "#include \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v3}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lantlr/CppCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ".hpp\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2950
    iget-object v2, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    .line 2954
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2955
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->superClass:Ljava/lang/String;

    const-string v4, "\n// Include correct superclass header with a header statement for example:"

    .line 2956
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "// header \"post_include_hpp\" {"

    .line 2957
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2958
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "// #include \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "// }"

    .line 2959
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "// Or...."

    .line 2960
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v4, "// header {"

    .line 2961
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2962
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v3, "// }\n"

    .line 2963
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2966
    :cond_0
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getSuperClass()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    .line 2967
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 2968
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2969
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "#include <antlr/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ".hpp>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2970
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2972
    :goto_0
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v3, "post_include_hpp"

    .line 2977
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2979
    sget-object v3, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v3, :cond_2

    .line 2980
    iget-object v4, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v3, v4}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 2982
    :cond_2
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->printHeaderAction(Ljava/lang/String;)V

    .line 2985
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->comment:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2986
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->comment:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 2990
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "class CUSTOM_API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " : public "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 2991
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ", public "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v3}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lantlr/CppCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 2993
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->options:Ljava/util/Hashtable;

    const-string v3, "classHeaderSuffix"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/Token;

    if-eqz v2, :cond_4

    .line 2995
    invoke-virtual {v2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    invoke-static {v2, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2997
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v2, "{"

    .line 3000
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3003
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 3004
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getLine()I

    move-result v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->genLineNo(I)V

    .line 3005
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v3}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->classMemberAction:Lantlr/Token;

    invoke-virtual {v5}, Lantlr/Token;->getLine()I

    move-result v5

    iget-object v6, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, v3, v5, v6, v4}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 3010
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    .line 3014
    :cond_5
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v3, "public:"

    .line 3015
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3017
    iget-boolean v5, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    if-eqz v5, :cond_6

    const-string v5, "#if 0"

    .line 3019
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "// constructor creation turned of with \'noConstructor\' option"

    .line 3020
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3022
    :cond_6
    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3023
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "();"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3024
    iget-boolean v5, p0, Lantlr/CppCodeGenerator;->noConstructors:Z

    const-string v6, "#endif"

    if-eqz v5, :cond_7

    .line 3026
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3027
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3028
    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3032
    :cond_7
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "static void initializeASTFactory( "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "ASTFactory& factory );"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v5, "int getNumTokens() const"

    .line 3034
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iget v5, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v5, p1

    iput v5, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3036
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "return "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v8}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "::NUM_TOKENS;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3037
    iget v5, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v5, p1

    iput v5, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo v5, "}"

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v8, "const char* getTokenName( int type ) const"

    .line 3038
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3039
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iget v8, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v8, p1

    iput v8, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v8, "if( type > getNumTokens() ) return 0;"

    .line 3040
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3041
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "::tokenNames[type];"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3042
    iget v8, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v8, p1

    iput v8, p0, Lantlr/CppCodeGenerator;->tabs:I

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v8, "const char* const* getTokenNames() const"

    .line 3043
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3044
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iget v8, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v8, p1

    iput v8, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3045
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "::tokenNames;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3046
    iget v8, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v8, p1

    iput v8, p0, Lantlr/CppCodeGenerator;->tabs:I

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3049
    iget-object v8, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v8, v8, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v8}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .line 3051
    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 3052
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lantlr/GrammarSymbol;

    .line 3053
    instance-of v10, v9, Lantlr/RuleSymbol;

    if-eqz v10, :cond_9

    .line 3054
    check-cast v9, Lantlr/RuleSymbol;

    .line 3055
    iget-object v10, v9, Lantlr/RuleSymbol;->references:Lantlr/collections/impl/Vector;

    invoke-virtual {v10}, Lantlr/collections/impl/Vector;->size()I

    move-result v10

    if-nez v10, :cond_8

    const/4 v10, 0x1

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {p0, v9, v10}, Lantlr/CppCodeGenerator;->genRuleHeader(Lantlr/RuleSymbol;Z)V

    .line 3057
    :cond_9
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    goto :goto_1

    .line 3059
    :cond_a
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3060
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "RefAST getAST()"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3061
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3062
    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v2, :cond_b

    .line 3064
    iget v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v2, p1

    iput v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3065
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "RefAST(returnAST);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3066
    iget v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v2, p1

    iput v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    goto :goto_3

    .line 3070
    :cond_b
    iget v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v2, p1

    iput v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v2, "return returnAST;"

    .line 3071
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3072
    iget v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v2, p1

    iput v2, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3074
    :goto_3
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3075
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3077
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v2, "protected:"

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3078
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " returnAST;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3079
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " _retTree;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3082
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v2, "private:"

    .line 3083
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3084
    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string p1, "static const char* tokenNames[];"

    .line 3087
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string p1, "#ifndef NO_STATIC_CONSTS"

    .line 3089
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3090
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "static const int NUM_TOKENS = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string p1, "#else"

    .line 3091
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    const-string p1, "enum {"

    .line 3092
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3093
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\tNUM_TOKENS = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v2

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "};"

    .line 3094
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3095
    invoke-virtual {p0, v6}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3098
    iget-object v2, p0, Lantlr/CppCodeGenerator;->bitsetsUsed:Lantlr/collections/impl/Vector;

    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v3}, Lantlr/TokenManager;->maxTokenType()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lantlr/CppCodeGenerator;->genBitsetsHeader(Lantlr/collections/impl/Vector;I)V

    .line 3101
    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3102
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3103
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3104
    sget-object p1, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz p1, :cond_c

    .line 3105
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 3108
    :cond_c
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "#endif /*INC_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "_hpp_*/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3111
    iget-object p1, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 3112
    iput-object v4, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    return-void
.end method

.method public genInitFactory(Lantlr/Grammar;)V
    .locals 8

    .line 1559
    iget-boolean v0, p1, Lantlr/Grammar;->buildAST:Z

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "factory "

    .line 1562
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "void "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "::initializeASTFactory( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "ASTFactory& "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "{"

    .line 1563
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1564
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 1566
    iget-boolean p1, p1, Lantlr/Grammar;->buildAST:Z

    if-eqz p1, :cond_6

    .line 1571
    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    .line 1572
    invoke-interface {p1}, Lantlr/TokenManager;->getTokenSymbolKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1573
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1575
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1576
    invoke-interface {p1, v2}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v3

    .line 1579
    invoke-virtual {v3}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1582
    iget-object v4, p0, Lantlr/CppCodeGenerator;->astTypes:Lantlr/collections/impl/Vector;

    invoke-virtual {v3}, Lantlr/TokenSymbol;->getTokenType()I

    move-result v5

    invoke-virtual {v4, v5}, Lantlr/collections/impl/Vector;->ensureCapacity(I)V

    .line 1583
    iget-object v4, p0, Lantlr/CppCodeGenerator;->astTypes:Lantlr/collections/impl/Vector;

    invoke-virtual {v3}, Lantlr/TokenSymbol;->getTokenType()I

    move-result v5

    invoke-virtual {v4, v5}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1585
    iget-object v2, p0, Lantlr/CppCodeGenerator;->astTypes:Lantlr/collections/impl/Vector;

    invoke-virtual {v3}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lantlr/TokenSymbol;->getTokenType()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lantlr/collections/impl/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1589
    :cond_2
    invoke-virtual {v3}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1591
    iget-object v5, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " taking most specific AST type"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v6}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6, v1, v1}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1592
    iget-object v2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "  using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " ignoring "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lantlr/TokenSymbol;->getASTNodeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v4}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1, v1}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 1599
    :goto_2
    iget-object v0, p0, Lantlr/CppCodeGenerator;->astTypes:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 1601
    iget-object v0, p0, Lantlr/CppCodeGenerator;->astTypes:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1604
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "factory.registerFactory("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ", \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "::factory);"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1608
    :cond_5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "factory.setMaxNodeType("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->maxTokenType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 1610
    :cond_6
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr p1, v1

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo p1, "}"

    .line 1611
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genLineNo(I)V
    .locals 2

    if-nez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 205
    :cond_0
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->genHashLines:Z

    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "#line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v1, v1, Lantlr/Tool;->grammarFile:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lantlr/Tool;->fileMinusPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public genLineNo(Lantlr/GrammarElement;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Lantlr/GrammarElement;->getLine()I

    move-result p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genLineNo(I)V

    :cond_0
    return-void
.end method

.method public genLineNo(Lantlr/Token;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genLineNo(I)V

    :cond_0
    return-void
.end method

.method public genLineNo2()V
    .locals 2

    .line 224
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->genHashLines:Z

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "#line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lantlr/CppCodeGenerator;->outputLine:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected genMatch(Lantlr/GrammarAtom;)V
    .locals 3

    .line 3149
    instance-of v0, p1, Lantlr/StringLiteralElement;

    if-eqz v0, :cond_1

    .line 3150
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_0

    .line 3151
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genMatchUsingAtomText(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 3154
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genMatchUsingAtomTokenType(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 3157
    :cond_1
    instance-of v0, p1, Lantlr/CharLiteralElement;

    if-eqz v0, :cond_2

    .line 3159
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "cannot ref character literals in grammar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 3161
    :cond_2
    instance-of v0, p1, Lantlr/TokenRefElement;

    if-eqz v0, :cond_3

    .line 3162
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->genMatchUsingAtomTokenType(Lantlr/GrammarAtom;)V

    goto :goto_0

    .line 3163
    :cond_3
    instance-of v0, p1, Lantlr/WildcardElement;

    if-eqz v0, :cond_4

    .line 3164
    check-cast p1, Lantlr/WildcardElement;

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->gen(Lantlr/WildcardElement;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected genMatch(Lantlr/collections/impl/BitSet;)V
    .locals 0

    return-void
.end method

.method protected genMatchUsingAtomText(Lantlr/GrammarAtom;)V
    .locals 3

    .line 3170
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_1

    .line 3171
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_0

    .line 3172
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "RefAST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "(_t),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "_t,"

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 3178
    :goto_0
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    const/4 v2, 0x3

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getAutoGenType()I

    move-result v1

    if-ne v1, v2, :cond_3

    :cond_2
    const-string v1, "_saveIndex = text.length();"

    .line 3179
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3182
    :cond_3
    iget-boolean v1, p1, Lantlr/GrammarAtom;->not:Z

    if-eqz v1, :cond_4

    const-string v1, "matchNot("

    goto :goto_1

    :cond_4
    const-string v1, "match("

    :goto_1
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 3183
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3186
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    const-string v1, "EOF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3188
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Token::EOF_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_2

    .line 3192
    :cond_5
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_6

    .line 3194
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lantlr/CppCodeGenerator;->convertJavaToCppString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3195
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_2

    .line 3198
    :cond_6
    iget-object v0, p1, Lantlr/GrammarAtom;->atomText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    :goto_2
    const-string v0, ");"

    .line 3201
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3203
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->saveText:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getAutoGenType()I

    move-result p1

    if-ne p1, v2, :cond_8

    :cond_7
    const-string p1, "text.erase(_saveIndex);"

    .line 3204
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method protected genMatchUsingAtomTokenType(Lantlr/GrammarAtom;)V
    .locals 2

    .line 3210
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_1

    .line 3211
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_0

    .line 3212
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "RefAST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "(_t),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "_t,"

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 3218
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lantlr/CppCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3221
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

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genNextToken()V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3232
    :goto_0
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2}, Lantlr/collections/impl/Vector;->size()I

    move-result v2

    const-string v3, "public"

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    .line 3233
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    invoke-virtual {v2, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lantlr/RuleSymbol;

    .line 3234
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
    const-string v2, "RefToken "

    const-string v5, ""

    if-nez v1, :cond_2

    .line 3240
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3241
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "::nextToken() { return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "RefToken(new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "CommonToken("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Token::EOF_TYPE, \"\")); }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3242
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void

    .line 3247
    :cond_2
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v6, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v6, v6, Lantlr/Grammar;->rules:Lantlr/collections/impl/Vector;

    const-string v7, "nextToken"

    invoke-static {v1, v6, v7}, Lantlr/MakeGrammar;->createNextTokenRule(Lantlr/Grammar;Lantlr/collections/impl/Vector;Ljava/lang/String;)Lantlr/RuleBlock;

    move-result-object v1

    .line 3249
    new-instance v6, Lantlr/RuleSymbol;

    const-string v7, "mnextToken"

    invoke-direct {v6, v7}, Lantlr/RuleSymbol;-><init>(Ljava/lang/String;)V

    .line 3250
    invoke-virtual {v6}, Lantlr/RuleSymbol;->setDefined()V

    .line 3251
    invoke-virtual {v6, v1}, Lantlr/RuleSymbol;->setBlock(Lantlr/RuleBlock;)V

    const-string v7, "private"

    .line 3252
    iput-object v7, v6, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    .line 3253
    iget-object v7, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v7, v6}, Lantlr/Grammar;->define(Lantlr/RuleSymbol;)V

    .line 3255
    iget-object v6, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v6, v6, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v6, v1}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    const/4 v6, 0x0

    .line 3259
    iget-object v7, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v7, Lantlr/LexerGrammar;

    iget-boolean v7, v7, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v7, :cond_3

    .line 3260
    iget-object v6, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v6, Lantlr/LexerGrammar;

    iget-object v6, v6, Lantlr/LexerGrammar;->filterRule:Ljava/lang/String;

    .line 3263
    :cond_3
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3264
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "::nextToken()"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "{"

    .line 3265
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3266
    iget v7, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v7, v4

    iput v7, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3267
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "RefToken theRetToken;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v7, "for (;;) {"

    .line 3268
    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3269
    iget v7, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v7, v4

    iput v7, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3270
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3271
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "int _ttype = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "Token::INVALID_TYPE;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3272
    iget-object v7, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v7, Lantlr/LexerGrammar;

    iget-boolean v7, v7, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v7, :cond_7

    const-string v7, "setCommitToPath(false);"

    .line 3273
    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    if-eqz v6, :cond_7

    .line 3276
    iget-object v7, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-static {v6}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lantlr/Grammar;->isDefined(Ljava/lang/String;)Z

    move-result v7

    const-string v8, " does not exist in this lexer"

    const-string v9, "Filter rule "

    if-nez v7, :cond_4

    .line 3277
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 3280
    :cond_4
    iget-object v7, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-static {v6}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v7

    check-cast v7, Lantlr/RuleSymbol;

    .line 3281
    invoke-virtual {v7}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v10

    if-nez v10, :cond_5

    .line 3282
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 3284
    :cond_5
    iget-object v7, v7, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3285
    iget-object v3, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " must be protected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lantlr/Tool;->error(Ljava/lang/String;)V

    :cond_6
    :goto_2
    const-string v3, "int _m;"

    .line 3288
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v3, "_m = mark();"

    .line 3289
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_7
    const-string v3, "resetText();"

    .line 3292
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v7, "try {   // for lexical and char stream error handling"

    .line 3295
    invoke-virtual {p0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3296
    iget v7, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v7, v4

    iput v7, p0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v7, 0x0

    .line 3299
    :goto_3
    invoke-virtual {v1}, Lantlr/RuleBlock;->getAlternatives()Lantlr/collections/impl/Vector;

    move-result-object v8

    invoke-virtual {v8}, Lantlr/collections/impl/Vector;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 3300
    invoke-virtual {v1, v7}, Lantlr/RuleBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v8

    .line 3301
    iget-object v8, v8, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3302
    iget-object v8, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v9, "found optional path in nextToken()"

    invoke-virtual {v8, v9}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    const-string v7, "line.separator"

    .line 3307
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3308
    invoke-virtual {p0, v1, v0}, Lantlr/CppCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CppBlockFinishingInfo;

    move-result-object v0

    .line 3309
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "if (LA(1)==EOF_CHAR)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\t\t\t\t{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\t\t\t\t\tuponEOF();"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\t\t\t\t\t_returnToken = makeToken("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "Token::EOF_TYPE);"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\t\t\t\t}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3313
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\t\t\t\t"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3314
    iget-object v10, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v10, Lantlr/LexerGrammar;

    iget-boolean v10, v10, Lantlr/LexerGrammar;->filterMode:Z

    const-string v11, "RecognitionException& e) {"

    const-string v12, "(false);}"

    const-string v13, "else {"

    const-string/jumbo v14, "}"

    if-eqz v10, :cond_b

    if-nez v6, :cond_a

    .line 3316
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "else {consume(); goto tryAgain;}"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 3319
    :cond_a
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\t\t\t\t\tcommit();"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\t\t\t\t\ttry {m"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\t\t\t\t\tcatch("

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\t\t\t\t\t\t// catastrophic failure"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\t\t\t\t\t\treportError(e);"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\t\t\t\t\t\tconsume();"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\t\t\t\t\t}"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\t\t\t\t\tgoto tryAgain;"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 3332
    :cond_b
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3334
    :goto_4
    invoke-direct {p0, v0, v8}, Lantlr/CppCodeGenerator;->genBlockFinish(Lantlr/CppBlockFinishingInfo;Ljava/lang/String;)V

    .line 3337
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-boolean v0, v0, Lantlr/LexerGrammar;->filterMode:Z

    if-eqz v0, :cond_c

    if-eqz v6, :cond_c

    const-string v0, "commit();"

    .line 3338
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3344
    :cond_c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "if ( !_returnToken )"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\t\t\t\tgoto tryAgain; // found SKIP token"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "_ttype = _returnToken->getType();"

    .line 3346
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3347
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    invoke-virtual {v0}, Lantlr/LexerGrammar;->getTestLiterals()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3348
    invoke-direct {p0}, Lantlr/CppCodeGenerator;->genLiteralsTest()V

    :cond_d
    const-string v0, "_returnToken->setType(_ttype);"

    .line 3352
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "return _returnToken;"

    .line 3353
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3356
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3357
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3358
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "catch ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v8, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3359
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3360
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    iget-boolean v0, v0, Lantlr/LexerGrammar;->filterMode:Z

    const-string v8, "consume();"

    if-eqz v0, :cond_f

    const-string v0, "if ( !getCommitToPath() ) {"

    if-nez v6, :cond_e

    .line 3362
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3363
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3364
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "goto tryAgain;"

    .line 3365
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3366
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3367
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 3370
    :cond_e
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3371
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v0, "rewind(_m);"

    .line 3372
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3373
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3374
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "try {m"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3375
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "catch("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "RecognitionException& ee) {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\t// horrendous failure: error in filter rule"

    .line 3376
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\treportError(ee);"

    .line 3377
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "\tconsume();"

    .line 3378
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3381
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3382
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "else"

    .line 3383
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3386
    :cond_f
    :goto_5
    invoke-virtual {v1}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3387
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3388
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v0, "reportError(e);"

    .line 3389
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3390
    invoke-virtual {p0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3391
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3392
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 3396
    :cond_10
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v0, v4

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3397
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "throw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "TokenStreamRecognitionException(e);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3398
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3402
    :goto_6
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3403
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3404
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "CharStreamIOException& csie) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3405
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\tthrow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "TokenStreamIOException(csie.io);"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3406
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3407
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "CharStreamException& cse) {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3408
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "TokenStreamException(cse.getMessage());"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3409
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "tryAgain:;"

    .line 3412
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3413
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3414
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3417
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v0, v4

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3418
    invoke-virtual {p0, v14}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3419
    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genRule(Lantlr/RuleSymbol;ZILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 3439
    iget-boolean v3, v0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "genRule("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3440
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3441
    iget-object v2, v0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

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

    .line 3446
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v3

    .line 3448
    iput-object v3, v0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    .line 3449
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 3452
    iget-object v4, v0, Lantlr/CppCodeGenerator;->declaredASTVariables:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 3455
    iget-boolean v4, v0, Lantlr/CppCodeGenerator;->genAST:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 3456
    invoke-virtual {v3}, Lantlr/RuleBlock;->getAutoGen()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    iput-boolean v7, v0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 3459
    invoke-virtual {v3}, Lantlr/RuleBlock;->getAutoGen()Z

    move-result v7

    iput-boolean v7, v0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 3462
    iget-object v7, v1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 3463
    iget-object v7, v1, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3467
    :cond_4
    iget-object v7, v3, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    const-string v8, " "

    if-eqz v7, :cond_5

    .line 3470
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, v3, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v3}, Lantlr/RuleBlock;->getLine()I

    move-result v10

    invoke-virtual {v3}, Lantlr/RuleBlock;->getColumn()I

    move-result v11

    invoke-virtual {v0, v9, v10, v11}, Lantlr/CppCodeGenerator;->extractTypeOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v7, "void "

    .line 3473
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3477
    :goto_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v9, p4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3480
    iget-object v7, v0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3481
    iget-object v7, v0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v3, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-eqz v7, :cond_6

    const-string v7, ","

    .line 3482
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3486
    :cond_6
    iget-object v7, v3, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    const-string v9, ") "

    const-string v10, ""

    if-eqz v7, :cond_9

    .line 3489
    invoke-virtual {v0, v10}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3492
    iget v7, v0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v7, v6

    iput v7, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3502
    iget-object v7, v3, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    const/16 v11, 0x3d

    .line 3506
    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_8

    const-string v14, ", "

    move-object v11, v10

    move v15, v12

    const/4 v6, 0x0

    move-object v12, v7

    move-object v7, v11

    :goto_2
    if-eq v6, v13, :cond_8

    .line 3512
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v6, 0x2c

    .line 3514
    invoke-virtual {v12, v6, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-eq v6, v13, :cond_7

    add-int/lit8 v11, v6, 0x1

    .line 3518
    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const/16 v11, 0x3d

    .line 3519
    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    :cond_7
    move-object v11, v14

    goto :goto_2

    .line 3526
    :cond_8
    invoke-virtual {v0, v7}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3529
    iget v6, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3530
    invoke-virtual {v0, v9}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/4 v7, 0x1

    .line 3534
    invoke-virtual {v0, v9}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    :goto_3
    const-string/jumbo v6, "{"

    .line 3536
    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3537
    iget v6, v0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v6, v7

    iput v6, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3539
    iget-object v6, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v6, v6, Lantlr/Grammar;->traceRules:Z

    if-eqz v6, :cond_c

    .line 3540
    iget-object v6, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/TreeWalkerGrammar;

    if-eqz v6, :cond_b

    .line 3541
    iget-boolean v6, v0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    const-string v7, "Tracer traceInOut(this,\""

    if-eqz v6, :cond_a

    .line 3542
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "RefAST"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "(_t));"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3544
    :cond_a
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "\",_t);"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3547
    :cond_b
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Tracer traceInOut(this, \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "\");"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3552
    :cond_c
    :goto_4
    iget-object v6, v3, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    const-string v7, ";"

    if-eqz v6, :cond_d

    .line 3554
    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->genLineNo(Lantlr/GrammarElement;)V

    .line 3555
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, v3, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3556
    invoke-virtual/range {p0 .. p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    .line 3560
    :cond_d
    iget-object v6, v0, Lantlr/CppCodeGenerator;->commonLocalVars:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 3561
    iget-object v6, v0, Lantlr/CppCodeGenerator;->commonLocalVars:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3563
    :cond_e
    iget-object v6, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/LexerGrammar;

    if-eqz v6, :cond_10

    .line 3568
    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v9, "mEOF"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v9, "_ttype = "

    if-eqz v6, :cond_f

    .line 3569
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "Token::EOF_TYPE;"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 3571
    :cond_f
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :goto_5
    const-string v6, "int _saveIndex;"

    .line 3572
    invoke-virtual {v0, v6}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3582
    :cond_10
    iget-object v6, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v6, v6, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v6, :cond_12

    .line 3583
    iget-object v6, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/ParserGrammar;

    const-string v9, "fireEnterRule("

    if-eqz v6, :cond_11

    .line 3584
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ",0);"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 3585
    :cond_11
    iget-object v6, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v6, v6, Lantlr/LexerGrammar;

    if-eqz v6, :cond_12

    .line 3586
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ",_ttype);"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3595
    :cond_12
    :goto_6
    iget-object v2, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_13

    .line 3598
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, v0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "_AST_in = (_t == ASTNULL) ? "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " : _t;"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3600
    :cond_13
    iget-object v2, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    const-string v6, "returnAST = "

    if-eqz v2, :cond_14

    .line 3602
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, v0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3604
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v9, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "ASTPair currentAST;"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3606
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v9, v0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "_AST = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3609
    :cond_14
    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->genBlockPreamble(Lantlr/AlternativeBlock;)V

    .line 3610
    invoke-virtual {v0, v3}, Lantlr/CppCodeGenerator;->genBlockInitAction(Lantlr/AlternativeBlock;)V

    .line 3611
    invoke-virtual {v0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3614
    invoke-virtual {v3, v10}, Lantlr/RuleBlock;->findExceptionSpec(Ljava/lang/String;)Lantlr/ExceptionSpec;

    move-result-object v2

    if-nez v2, :cond_16

    .line 3617
    invoke-virtual {v3}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_7

    :cond_15
    const/4 v9, 0x1

    goto :goto_8

    :cond_16
    :goto_7
    const-string v8, "try {      // for error handling"

    .line 3618
    invoke-virtual {v0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3619
    iget v8, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3623
    :goto_8
    iget-object v8, v3, Lantlr/RuleBlock;->alternatives:Lantlr/collections/impl/Vector;

    invoke-virtual {v8}, Lantlr/collections/impl/Vector;->size()I

    move-result v8

    if-ne v8, v9, :cond_19

    .line 3626
    invoke-virtual {v3, v5}, Lantlr/RuleBlock;->getAlternativeAt(I)Lantlr/Alternative;

    move-result-object v5

    .line 3627
    iget-object v8, v5, Lantlr/Alternative;->semPred:Ljava/lang/String;

    if-eqz v8, :cond_17

    .line 3629
    iget-object v9, v0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget v9, v9, Lantlr/RuleBlock;->line:I

    invoke-virtual {v0, v8, v9}, Lantlr/CppCodeGenerator;->genSemPred(Ljava/lang/String;I)V

    .line 3630
    :cond_17
    iget-object v8, v5, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    if-eqz v8, :cond_18

    .line 3631
    iget-object v8, v0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v9, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {v9}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v5, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v11}, Lantlr/SynPredBlock;->getLine()I

    move-result v11

    iget-object v12, v5, Lantlr/Alternative;->synPred:Lantlr/SynPredBlock;

    invoke-virtual {v12}, Lantlr/SynPredBlock;->getColumn()I

    move-result v12

    const-string v13, "Syntactic predicate ignored for single alternative"

    invoke-virtual {v8, v13, v9, v11, v12}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    .line 3638
    :cond_18
    invoke-virtual {v0, v5, v3}, Lantlr/CppCodeGenerator;->genAlt(Lantlr/Alternative;Lantlr/AlternativeBlock;)V

    goto :goto_9

    .line 3643
    :cond_19
    iget-object v8, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v8, v8, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    invoke-interface {v8, v3}, Lantlr/LLkGrammarAnalyzer;->deterministic(Lantlr/AlternativeBlock;)Z

    .line 3645
    invoke-virtual {v0, v3, v5}, Lantlr/CppCodeGenerator;->genCommonBlock(Lantlr/AlternativeBlock;Z)Lantlr/CppBlockFinishingInfo;

    move-result-object v5

    .line 3646
    iget-object v8, v0, Lantlr/CppCodeGenerator;->throwNoViable:Ljava/lang/String;

    invoke-direct {v0, v5, v8}, Lantlr/CppCodeGenerator;->genBlockFinish(Lantlr/CppBlockFinishingInfo;Ljava/lang/String;)V

    :goto_9
    const-string/jumbo v5, "}"

    if-nez v2, :cond_1a

    .line 3650
    invoke-virtual {v3}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 3652
    :cond_1a
    iget v8, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3653
    invoke-virtual {v0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_1b
    if-eqz v2, :cond_1c

    .line 3659
    invoke-direct {v0, v2}, Lantlr/CppCodeGenerator;->genErrorHandler(Lantlr/ExceptionSpec;)V

    goto/16 :goto_b

    .line 3661
    :cond_1c
    invoke-virtual {v3}, Lantlr/RuleBlock;->getDefaultErrorHandler()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3664
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "catch ("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v0, Lantlr/CppCodeGenerator;->exceptionThrown:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "& ex) {"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3665
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v8, 0x1

    add-int/2addr v2, v8

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3667
    iget-object v2, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v2, :cond_1d

    const-string v2, "if( inputState->guessing == 0 ) {"

    .line 3668
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3669
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v2, v8

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    :cond_1d
    const-string v2, "reportError(ex);"

    .line 3671
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3672
    iget-object v2, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-nez v2, :cond_1e

    .line 3675
    iget-object v2, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->theLLkAnalyzer:Lantlr/LLkGrammarAnalyzer;

    iget-object v8, v3, Lantlr/RuleBlock;->endNode:Lantlr/RuleEndElement;

    const/4 v9, 0x1

    invoke-interface {v2, v9, v8}, Lantlr/LLkGrammarAnalyzer;->FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;

    move-result-object v2

    .line 3676
    iget-object v2, v2, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->getBitsetName(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "consume();"

    .line 3677
    invoke-virtual {v0, v8}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3678
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "consumeUntil("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ");"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_a

    .line 3683
    :cond_1e
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "if ( _t != "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v0, Lantlr/CppCodeGenerator;->labeledElementASTInit:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " )"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3684
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v8, 0x1

    add-int/2addr v2, v8

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v2, "_t = _t->getNextSibling();"

    .line 3685
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3686
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v2, v8

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3688
    :goto_a
    iget-object v2, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->hasSyntacticPredicate:Z

    if-eqz v2, :cond_1f

    .line 3690
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v2, v8

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo v2, "} else {"

    .line 3692
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3693
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v2, v8

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v2, "throw;"

    .line 3694
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3695
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v2, v8

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3696
    invoke-virtual {v0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3699
    :cond_1f
    iget v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v2, v8

    iput v2, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3700
    invoke-virtual {v0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3704
    :cond_20
    :goto_b
    iget-object v2, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v2, v2, Lantlr/Grammar;->buildAST:Z

    if-eqz v2, :cond_21

    .line 3705
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "_AST;"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3709
    :cond_21
    iget-object v2, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v2, v2, Lantlr/TreeWalkerGrammar;

    if-eqz v2, :cond_22

    const-string v2, "_retTree = _t;"

    .line 3710
    invoke-virtual {v0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3714
    :cond_22
    invoke-virtual {v3}, Lantlr/RuleBlock;->getTestLiterals()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3715
    iget-object v1, v1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    const-string v2, "protected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3716
    invoke-direct/range {p0 .. p0}, Lantlr/CppCodeGenerator;->genLiteralsTestForPartialToken()V

    goto :goto_c

    .line 3719
    :cond_23
    invoke-direct/range {p0 .. p0}, Lantlr/CppCodeGenerator;->genLiteralsTest()V

    .line 3724
    :cond_24
    :goto_c
    iget-object v1, v0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-eqz v1, :cond_25

    .line 3725
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "if ( _createToken && _token=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "nullToken && _ttype!="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "Token::SKIP ) {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "   _token = makeToken(_ttype);"

    .line 3726
    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "   _token->setText(text.substr(_begin, text.length()-_begin));"

    .line 3727
    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3728
    invoke-virtual {v0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "_returnToken = _token;"

    .line 3729
    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "_saveIndex=0;"

    .line 3732
    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3736
    :cond_25
    iget-object v1, v3, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 3737
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v3, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v3}, Lantlr/RuleBlock;->getLine()I

    move-result v6

    invoke-virtual {v3}, Lantlr/RuleBlock;->getColumn()I

    move-result v3

    invoke-virtual {v0, v2, v6, v3}, Lantlr/CppCodeGenerator;->extractIdOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3765
    :cond_26
    iget v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3766
    invoke-virtual {v0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3767
    invoke-virtual {v0, v10}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3770
    iput-boolean v4, v0, Lantlr/CppCodeGenerator;->genAST:Z

    return-void
.end method

.method public genRuleHeader(Lantlr/RuleSymbol;Z)V
    .locals 7

    const/4 p2, 0x1

    .line 3776
    iput p2, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3777
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    const-string v1, ")"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "genRuleHeader("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3778
    :cond_1
    invoke-virtual {p1}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3779
    iget-object p2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "undefined rule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-void

    .line 3784
    :cond_2
    invoke-virtual {p1}, Lantlr/RuleSymbol;->getBlock()Lantlr/RuleBlock;

    move-result-object v0

    .line 3785
    iput-object v0, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    .line 3786
    invoke-virtual {p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lantlr/CppCodeGenerator;->currentASTResult:Ljava/lang/String;

    .line 3789
    iget-boolean v2, p0, Lantlr/CppCodeGenerator;->genAST:Z

    if-eqz v2, :cond_3

    .line 3790
    invoke-virtual {v0}, Lantlr/RuleBlock;->getAutoGen()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lantlr/CppCodeGenerator;->genAST:Z

    .line 3793
    invoke-virtual {v0}, Lantlr/RuleBlock;->getAutoGen()Z

    move-result v3

    iput-boolean v3, p0, Lantlr/CppCodeGenerator;->saveText:Z

    .line 3796
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p1, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    .line 3799
    iget-object v3, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 3802
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, v0, Lantlr/RuleBlock;->returnAction:Ljava/lang/String;

    invoke-virtual {v0}, Lantlr/RuleBlock;->getLine()I

    move-result v5

    invoke-virtual {v0}, Lantlr/RuleBlock;->getColumn()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lantlr/CppCodeGenerator;->extractTypeOfAction(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "void "

    .line 3805
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3809
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/RuleSymbol;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3812
    iget-object p1, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3813
    iget-object p1, p0, Lantlr/CppCodeGenerator;->commonExtraParams:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string p1, ","

    .line 3814
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    .line 3818
    :cond_5
    iget-object p1, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string p1, ""

    .line 3821
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3822
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr p1, p2

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3823
    iget-object p1, v0, Lantlr/RuleBlock;->argAction:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3824
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr p1, p2

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3825
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 3828
    :cond_6
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->_print(Ljava/lang/String;)V

    :goto_2
    const-string p1, ";"

    .line 3830
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    .line 3832
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr p1, p2

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3835
    iput-boolean v2, p0, Lantlr/CppCodeGenerator;->genAST:Z

    return-void
.end method

.method protected genSemPred(Ljava/lang/String;I)V
    .locals 2

    .line 3906
    new-instance v0, Lantlr/ActionTransInfo;

    invoke-direct {v0}, Lantlr/ActionTransInfo;-><init>()V

    .line 3907
    iget-object v1, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p0, p1, p2, v1, v0}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    .line 3909
    iget-object p2, p0, Lantlr/CppCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {p2, p1}, Lantlr/CharFormatter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3913
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_1

    .line 3915
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "fireSemanticPredicateEvaluated(antlr.debug.SemanticPredicateEvent.VALIDATING,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->addSemPred(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3917
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

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3918
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3919
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "throw "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "SemanticException(\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3920
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    return-void
.end method

.method protected genSemPredMap(Ljava/lang/String;)V
    .locals 3

    .line 3926
    iget-object v0, p0, Lantlr/CppCodeGenerator;->semPreds:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 3927
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "const char* "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "_semPredNames[] = {"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3928
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3929
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3930
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 3931
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3932
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo p1, "};"

    .line 3933
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genSynPred(Lantlr/SynPredBlock;Ljava/lang/String;)V
    .locals 5

    .line 3936
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CODE_GENERATOR:Z

    const-string v1, ")"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->DEBUG_CPP_CODE_GENERATOR:Z

    if-eqz v0, :cond_1

    :cond_0
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

    .line 3939
    :cond_1
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

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3941
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "if ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ") {"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3942
    iget p2, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3945
    iget-object p2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p2, p2, Lantlr/TreeWalkerGrammar;

    if-eqz p2, :cond_2

    .line 3946
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lantlr/CppCodeGenerator;->labeledElementType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " __t"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " = _t;"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3949
    :cond_2
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

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3953
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

    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string p2, "inputState->guessing++;"

    .line 3954
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3957
    iget-object p2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean p2, p2, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p2, p2, Lantlr/ParserGrammar;

    if-nez p2, :cond_3

    iget-object p2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p2, p2, Lantlr/LexerGrammar;

    if-eqz p2, :cond_4

    :cond_3
    const-string p2, "fireSyntacticPredicateStarted();"

    .line 3959
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3962
    :cond_4
    iget p2, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    const-string p2, "try {"

    .line 3963
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3964
    iget p2, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3965
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->gen(Lantlr/AlternativeBlock;)V

    .line 3966
    iget p2, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo p2, "}"

    .line 3968
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3969
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "catch ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/CppCodeGenerator;->exceptionThrown:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "& pe) {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3970
    iget v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3971
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3973
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3974
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3977
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-eqz v0, :cond_5

    .line 3978
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

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3981
    :cond_5
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

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :goto_1
    const-string v0, "inputState->guessing--;"

    .line 3984
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3987
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->debuggingOutput:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-nez v0, :cond_6

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/LexerGrammar;

    if-eqz v0, :cond_7

    .line 3989
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "if (synPredMatched"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lantlr/SynPredBlock;->ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  fireSyntacticPredicateSucceeded();"

    .line 3990
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "else"

    .line 3991
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v0, "  fireSyntacticPredicateFailed();"

    .line 3992
    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 3995
    :cond_7
    iget v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CppCodeGenerator;->syntacticPredLevel:I

    .line 3996
    iget v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 3999
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4002
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

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method public genTokenStrings(Ljava/lang/String;)V
    .locals 5

    .line 4016
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "const char* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "tokenNames[] = {"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4017
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 4021
    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object p1

    const/4 v0, 0x0

    .line 4022
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4024
    invoke-virtual {p1, v0}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "<"

    if-nez v1, :cond_0

    .line 4027
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v3, "\""

    .line 4029
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4030
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v2, v1}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4031
    invoke-virtual {v2}, Lantlr/TokenSymbol;->getParaphrase()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4032
    invoke-virtual {v2}, Lantlr/TokenSymbol;->getParaphrase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v3}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4035
    :cond_1
    iget-object v2, p0, Lantlr/CppCodeGenerator;->charFormatter:Lantlr/CharFormatter;

    invoke-interface {v2, v1}, Lantlr/CharFormatter;->literalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->print(Ljava/lang/String;)V

    const-string v1, ","

    .line 4036
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->_println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "0"

    .line 4038
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4041
    iget p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo p1, "};"

    .line 4042
    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected genTokenTypes(Lantlr/TokenManager;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4047
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/CppCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".hpp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4048
    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 4049
    iget-object v1, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    iget-object v2, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lantlr/Tool;->openOutputFile(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    const/4 v1, 0x0

    .line 4052
    iput v1, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 4055
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "#ifndef INC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/CppCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "_hpp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4056
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "#define INC_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lantlr/CppCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, ""

    .line 4057
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4059
    sget-object v2, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v2, :cond_0

    .line 4060
    iget-object v3, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v2, v3}, Lantlr/NameSpace;->emitDeclarations(Ljava/io/PrintWriter;)V

    .line 4063
    :cond_0
    iget-object v2, p0, Lantlr/CppCodeGenerator;->outputFile:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->genHeader(Ljava/lang/String;)V

    .line 4067
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "#ifndef CUSTOM_API"

    .line 4068
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "# define CUSTOM_API"

    .line 4069
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v2, "#endif"

    .line 4070
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4071
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const-string v1, "#ifdef __cplusplus"

    .line 4074
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4075
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "struct CUSTOM_API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lantlr/CppCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4076
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4077
    iget v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v3, v0

    iput v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string v3, "enum {"

    .line 4078
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4079
    iget v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    add-int/2addr v3, v0

    iput v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 4082
    invoke-interface {p1}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object v3

    const-string v4, "EOF_ = 1,"

    .line 4085
    invoke-virtual {p0, v4}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    const/4 v4, 0x4

    .line 4090
    :goto_0
    invoke-virtual {v3}, Lantlr/collections/impl/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 4091
    invoke-virtual {v3, v4}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v6, "\""

    .line 4093
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, ","

    const-string v8, " = "

    if-eqz v6, :cond_4

    .line 4095
    invoke-interface {p1, v5}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object v6

    check-cast v6, Lantlr/StringLiteralSymbol;

    if-nez v6, :cond_1

    .line 4097
    iget-object v6, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "String literal "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " not in symbol table"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4099
    :cond_1
    iget-object v9, v6, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 4100
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, v6, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 4103
    :cond_2
    invoke-direct {p0, v5}, Lantlr/CppCodeGenerator;->mangleLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 4106
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4108
    iput-object v9, v6, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    goto :goto_1

    .line 4111
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "// "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v6, "<"

    .line 4115
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4116
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v3, "NULL_TREE_LOOKAHEAD = 3"

    .line 4122
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4125
    iget v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v3, v0

    iput v3, p0, Lantlr/CppCodeGenerator;->tabs:I

    const-string/jumbo v3, "};"

    .line 4126
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4129
    iget v4, p0, Lantlr/CppCodeGenerator;->tabs:I

    sub-int/2addr v4, v0

    iput v4, p0, Lantlr/CppCodeGenerator;->tabs:I

    .line 4130
    invoke-virtual {p0, v1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4131
    invoke-virtual {p0, v3}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4132
    invoke-virtual {p0, v2}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4134
    sget-object v0, Lantlr/CppCodeGenerator;->nameSpace:Lantlr/NameSpace;

    if-eqz v0, :cond_7

    .line 4135
    iget-object v1, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Lantlr/NameSpace;->emitClosures(Ljava/io/PrintWriter;)V

    .line 4138
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "#endif /*INC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lantlr/TokenManager;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p1, Lantlr/CppCodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "_hpp_*/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 4141
    iget-object p1, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    const/4 p1, 0x0

    .line 4142
    iput-object p1, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    .line 4143
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->exitIfError()V

    return-void
.end method

.method public getASTCreateString(Lantlr/GrammarAtom;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ")"

    const-string v1, "astFactory->create("

    if-eqz p1, :cond_0

    .line 4191
    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4197
    iget-object v2, p0, Lantlr/CppCodeGenerator;->astTypes:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lantlr/collections/impl/Vector;->ensureCapacity(I)V

    .line 4198
    iget-object v2, p0, Lantlr/CppCodeGenerator;->astTypes:Lantlr/collections/impl/Vector;

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getASTNodeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lantlr/GrammarAtom;->getType()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lantlr/collections/impl/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 4200
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x2c

    .line 4209
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    .line 4210
    iget-object v2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lantlr/TokenManager;->tokenDefined(Ljava/lang/String;)Z

    move-result v4

    .line 4213
    :cond_1
    iget-boolean p1, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of p1, p1, Lantlr/TreeWalkerGrammar;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1, p2}, Lantlr/TokenManager;->tokenDefined(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    if-nez v4, :cond_2

    .line 4217
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "RefAST("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "))"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4219
    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getASTCreateString(Lantlr/collections/impl/Vector;)Ljava/lang/String;
    .locals 5

    .line 4172
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 4175
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4178
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "(astFactory->make((new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "ASTArray("

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

    .line 4181
    :goto_0
    invoke-virtual {p1}, Lantlr/collections/impl/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4182
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "->add("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4184
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4185
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getASTCreateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4228
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_0

    .line 4229
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lantlr/CppCodeGenerator;->labeledElementASTType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "(astFactory->create("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "RefAST("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")))"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4231
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "astFactory->create("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLookaheadTestExpression(Lantlr/Alternative;I)Ljava/lang/String;
    .locals 2

    .line 4264
    iget v0, p1, Lantlr/Alternative;->lookaheadDepth:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 4268
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "true"

    return-object p1

    .line 4300
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    invoke-virtual {p0, p1, v0}, Lantlr/CppCodeGenerator;->getLookaheadTestExpression([Lantlr/Lookahead;I)Ljava/lang/String;

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

    .line 4235
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "("

    .line 4238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-gt v1, p2, :cond_2

    .line 4240
    aget-object v3, p1, v1

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    if-nez v2, :cond_0

    const-string v2, ") && ("

    .line 4242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v2, 0x0

    .line 4249
    aget-object v4, p1, v1

    invoke-virtual {v4}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "true"

    .line 4250
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4252
    :cond_1
    invoke-virtual {p0, v1, v3}, Lantlr/CppCodeGenerator;->getLookaheadTestTerm(ILantlr/collections/impl/BitSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ")"

    .line 4255
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4257
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLookaheadTestTerm(ILantlr/collections/impl/BitSet;)Ljava/lang/String;
    .locals 4

    .line 4312
    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v0

    .line 4315
    invoke-virtual {p2}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object v1

    .line 4316
    invoke-static {v1}, Lantlr/CppCodeGenerator;->elementsAreRange([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4317
    invoke-virtual {p0, p1, v1}, Lantlr/CppCodeGenerator;->getRangeExpression(I[I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4322
    :cond_0
    invoke-virtual {p2}, Lantlr/collections/impl/BitSet;->degree()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "true"

    return-object p1

    .line 4327
    :cond_1
    iget v2, p0, Lantlr/CppCodeGenerator;->bitsetTestThreshold:I

    if-lt p1, v2, :cond_2

    .line 4328
    invoke-virtual {p0, p2}, Lantlr/CppCodeGenerator;->markBitsetForGen(Lantlr/collections/impl/BitSet;)I

    move-result p1

    .line 4329
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->getBitsetName(I)Ljava/lang/String;

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

    .line 4333
    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p2, 0x0

    .line 4334
    :goto_0
    array-length v2, v1

    if-ge p2, v2, :cond_4

    .line 4336
    aget v2, v1, p2

    invoke-direct {p0, v2}, Lantlr/CppCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v2

    if-lez p2, :cond_3

    const-string v3, " || "

    .line 4339
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4340
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " == "

    .line 4341
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4342
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 4344
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRangeExpression(I[I)Ljava/lang/String;
    .locals 3

    .line 4352
    invoke-static {p2}, Lantlr/CppCodeGenerator;->elementsAreRange([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4353
    iget-object v0, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    const-string v1, "getRangeExpression called with non-range"

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 4355
    aget v0, p2, v0

    .line 4356
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget p2, p2, v1

    .line 4357
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v0}, Lantlr/CppCodeGenerator;->getValueString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " && "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lantlr/CppCodeGenerator;->lookaheadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " <= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Lantlr/CppCodeGenerator;->getValueString(I)Ljava/lang/String;

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

    .line 4404
    iget v0, p1, Lantlr/Alternative;->lookaheadDepth:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 4406
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget v0, v0, Lantlr/Grammar;->maxk:I

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v0, :cond_2

    if-gt v2, p2, :cond_2

    .line 4409
    iget-object v3, p1, Lantlr/Alternative;->cache:[Lantlr/Lookahead;

    aget-object v3, v3, v2

    iget-object v3, v3, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    .line 4410
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
    .locals 7

    .line 4450
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    if-nez v0, :cond_0

    return-object p1

    .line 4455
    :cond_0
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    const-string v1, "_in"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 4460
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v0, v0, Lantlr/Grammar;->buildAST:Z

    xor-int/2addr v0, v2

    .line 4467
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    if-ne v4, v6, :cond_1

    .line 4470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 4479
    :goto_0
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0}, Lantlr/collections/impl/Vector;->size()I

    move-result v0

    const-string v4, "_AST"

    if-ge v3, v0, :cond_5

    .line 4481
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    iget-object v0, v0, Lantlr/RuleBlock;->labeledElements:Lantlr/collections/impl/Vector;

    invoke-virtual {v0, v3}, Lantlr/collections/impl/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/AlternativeElement;

    .line 4482
    invoke-virtual {v0}, Lantlr/AlternativeElement;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    .line 4486
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

    .line 4493
    :cond_5
    iget-object v0, p0, Lantlr/CppCodeGenerator;->treeVariableMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 4496
    sget-object p2, Lantlr/CppCodeGenerator;->NONUNIQUE:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, " in rule "

    const-string v5, "Ambiguous reference to AST element "

    if-ne v0, p2, :cond_6

    .line 4501
    iget-object p2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-object v3

    .line 4505
    :cond_6
    iget-object p2, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p2}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 4511
    iget-object p2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {p1}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    return-object v3

    :cond_7
    if-eqz v2, :cond_8

    .line 4519
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0

    .line 4526
    :cond_9
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentRule:Lantlr/RuleBlock;

    invoke-virtual {v0}, Lantlr/RuleBlock;->getRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4528
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

    .line 4531
    iput-object p1, p2, Lantlr/ActionTransInfo;->refRuleRoot:Ljava/lang/String;

    :cond_b
    return-object p1
.end method

.method public printAction(Lantlr/Token;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->genLineNo(I)V

    .line 158
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->printTabs()V

    .line 159
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->_printAction(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    :cond_0
    return-void
.end method

.method public printHeaderAction(Ljava/lang/String;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lantlr/CppCodeGenerator;->behavior:Lantlr/DefineGrammarSymbols;

    iget-object v0, v0, Lantlr/DefineGrammarSymbols;->headerActions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/Token;

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p0, v0}, Lantlr/CppCodeGenerator;->genLineNo(I)V

    .line 173
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lantlr/CppCodeGenerator;->processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->println(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->genLineNo2()V

    :cond_0
    return-void
.end method

.method protected println(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p0}, Lantlr/CppCodeGenerator;->printTabs()V

    .line 195
    iget v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    invoke-virtual {p0, p1}, Lantlr/CppCodeGenerator;->countLines(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/CppCodeGenerator;->outputLine:I

    .line 196
    iget-object v0, p0, Lantlr/CppCodeGenerator;->currentOutput:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected processActionForSpecialSymbols(Ljava/lang/String;ILantlr/RuleBlock;Lantlr/ActionTransInfo;)Ljava/lang/String;
    .locals 3

    const-string v0, "Error reading action:"

    if-eqz p1, :cond_6

    .line 4593
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 4598
    :cond_0
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    if-nez v1, :cond_1

    return-object p1

    .line 4601
    :cond_1
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-boolean v1, v1, Lantlr/Grammar;->buildAST:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    :cond_2
    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/TreeWalkerGrammar;

    if-nez v1, :cond_4

    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/LexerGrammar;

    if-nez v1, :cond_3

    iget-object v1, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v1, v1, Lantlr/ParserGrammar;

    if-eqz v1, :cond_5

    :cond_3
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 4608
    :cond_4
    new-instance v1, Lantlr/actions/cpp/ActionLexer;

    invoke-direct {v1, p1, p3, p0, p4}, Lantlr/actions/cpp/ActionLexer;-><init>(Ljava/lang/String;Lantlr/RuleBlock;Lantlr/CodeGenerator;Lantlr/ActionTransInfo;)V

    .line 4610
    invoke-virtual {v1, p2}, Lantlr/actions/cpp/ActionLexer;->setLineOffset(I)V

    .line 4611
    iget-object p2, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    invoke-virtual {p2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lantlr/actions/cpp/ActionLexer;->setFilename(Ljava/lang/String;)V

    .line 4612
    iget-object p2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    invoke-virtual {v1, p2}, Lantlr/actions/cpp/ActionLexer;->setTool(Lantlr/Tool;)V

    const/4 p2, 0x1

    .line 4615
    :try_start_0
    invoke-virtual {v1, p2}, Lantlr/actions/cpp/ActionLexer;->mACTION(Z)V

    .line 4616
    invoke-virtual {v1}, Lantlr/actions/cpp/ActionLexer;->getTokenObject()Lantlr/Token;

    move-result-object p2

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lantlr/TokenStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/CharStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object p1

    .line 4629
    :catch_0
    iget-object p2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    return-object p1

    .line 4625
    :catch_1
    iget-object p2, p0, Lantlr/CppCodeGenerator;->antlrTool:Lantlr/Tool;

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

    .line 4621
    invoke-virtual {v1, p2}, Lantlr/actions/cpp/ActionLexer;->reportError(Lantlr/RecognitionException;)V

    return-object p1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public processStringForASTConstructor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4153
    iget-boolean v0, p0, Lantlr/CppCodeGenerator;->usingCustomAST:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/TreeWalkerGrammar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    instance-of v0, v0, Lantlr/ParserGrammar;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lantlr/CppCodeGenerator;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0, p1}, Lantlr/TokenManager;->tokenDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lantlr/CppCodeGenerator;->namespaceAntlr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "RefAST("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method
