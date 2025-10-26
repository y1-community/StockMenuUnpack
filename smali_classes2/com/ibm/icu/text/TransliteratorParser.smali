.class Lcom/ibm/icu/text/TransliteratorParser;
.super Ljava/lang/Object;
.source "TransliteratorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;,
        Lcom/ibm/icu/text/TransliteratorParser$RuleArray;,
        Lcom/ibm/icu/text/TransliteratorParser$RuleBody;,
        Lcom/ibm/icu/text/TransliteratorParser$ParseData;
    }
.end annotation


# static fields
.field private static final ALT_FORWARD_RULE_OP:C = '\u2192'

.field private static final ALT_FUNCTION:C = '\u2206'

.field private static final ALT_FWDREV_RULE_OP:C = '\u2194'

.field private static final ALT_REVERSE_RULE_OP:C = '\u2190'

.field private static final ANCHOR_START:C = '^'

.field private static final CONTEXT_ANTE:C = '{'

.field private static final CONTEXT_POST:C = '}'

.field private static final CURSOR_OFFSET:C = '@'

.field private static final CURSOR_POS:C = '|'

.field private static final DOT:C = '.'

.field private static final DOT_SET:Ljava/lang/String; = "[^[:Zp:][:Zl:]\\r\\n$]"

.field private static final END_OF_RULE:C = ';'

.field private static final ESCAPE:C = '\\'

.field private static final FORWARD_RULE_OP:C = '>'

.field private static final FUNCTION:C = '&'

.field private static final FWDREV_RULE_OP:C = '~'

.field private static final HALF_ENDERS:Ljava/lang/String; = "=><\u2190\u2192\u2194;"

.field private static final ID_TOKEN:Ljava/lang/String; = "::"

.field private static final ID_TOKEN_LEN:I = 0x2

.field private static ILLEGAL_FUNC:Lcom/ibm/icu/text/UnicodeSet; = null

.field private static ILLEGAL_SEG:Lcom/ibm/icu/text/UnicodeSet; = null

.field private static ILLEGAL_TOP:Lcom/ibm/icu/text/UnicodeSet; = null

.field private static final KLEENE_STAR:C = '*'

.field private static final ONE_OR_MORE:C = '+'

.field private static final OPERATORS:Ljava/lang/String; = "=><\u2190\u2192\u2194"

.field private static final QUOTE:C = '\''

.field private static final REVERSE_RULE_OP:C = '<'

.field private static final RULE_COMMENT_CHAR:C = '#'

.field private static final SEGMENT_CLOSE:C = ')'

.field private static final SEGMENT_OPEN:C = '('

.field private static final VARIABLE_DEF_OP:C = '='

.field private static final ZERO_OR_ONE:C = '?'


# instance fields
.field public compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

.field private curData:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

.field public dataVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/RuleBasedTransliterator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private direction:I

.field private dotStandIn:I

.field public idBlockVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parseData:Lcom/ibm/icu/text/TransliteratorParser$ParseData;

.field private segmentObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/StringMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private segmentStandins:Ljava/lang/StringBuffer;

.field private undefinedVariableName:Ljava/lang/String;

.field private variableLimit:C

.field private variableNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field private variableNext:C

.field private variablesVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 184
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[\\)]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/TransliteratorParser;->ILLEGAL_TOP:Lcom/ibm/icu/text/UnicodeSet;

    .line 187
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[\\{\\}\\|\\@]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/TransliteratorParser;->ILLEGAL_SEG:Lcom/ibm/icu/text/UnicodeSet;

    .line 190
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[\\^\\(\\.\\*\\+\\?\\{\\}\\|\\@]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/TransliteratorParser;->ILLEGAL_FUNC:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->dotStandIn:I

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/text/TransliteratorParser;)Ljava/util/Map;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ibm/icu/text/TransliteratorParser;)Lcom/ibm/icu/text/RuleBasedTransliterator$Data;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ibm/icu/text/TransliteratorParser;->curData:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ibm/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/TransliteratorParser;->appendVariableDef(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ibm/icu/text/TransliteratorParser;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ibm/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 23
    sget-object v0, Lcom/ibm/icu/text/TransliteratorParser;->ILLEGAL_TOP:Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ibm/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/text/ParsePosition;)C
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/TransliteratorParser;->parseSet(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/ibm/icu/text/TransliteratorParser;ILjava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/TransliteratorParser;->checkVariableRange(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 23
    sget-object v0, Lcom/ibm/icu/text/TransliteratorParser;->ILLEGAL_SEG:Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$800()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 23
    sget-object v0, Lcom/ibm/icu/text/TransliteratorParser;->ILLEGAL_FUNC:Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ibm/icu/text/TransliteratorParser;)Lcom/ibm/icu/text/TransliteratorParser$ParseData;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/ibm/icu/text/TransliteratorParser;->parseData:Lcom/ibm/icu/text/TransliteratorParser$ParseData;

    return-object p0
.end method

.method private appendVariableDef(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 2

    .line 1542
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-nez v0, :cond_2

    .line 1548
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1549
    iput-object p1, p0, Lcom/ibm/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    .line 1550
    iget-char p1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableNext:C

    iget-char v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableLimit:C

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    int-to-char p1, v0

    .line 1553
    iput-char p1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableLimit:C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1551
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Private use variables exhausted"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1555
    :cond_1
    new-instance p2, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined variable $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1559
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method private checkVariableRange(ILjava/lang/String;I)V
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->curData:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    iget-char v0, v0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    if-lt p1, v0, :cond_0

    iget-char v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableLimit:C

    if-ge p1, v0, :cond_0

    const-string p1, "Variable range character in rule"

    .line 1333
    invoke-static {p1, p2, p3}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private parsePragma(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    add-int/lit8 p2, p2, 0x4

    const-string v1, "~variable range # #~;"

    .line 1397
    invoke-static {p1, p2, p3, v1, v0}, Lcom/ibm/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    aget p1, v0, v2

    const/4 p2, 0x1

    aget p2, v0, p2

    .line 1399
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/TransliteratorParser;->setVariableRange(II)V

    return v1

    :cond_0
    const-string v1, "~maximum backup #~;"

    .line 1403
    invoke-static {p1, p2, p3, v1, v0}, Lcom/ibm/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    if-ltz v1, :cond_1

    aget p1, v0, v2

    .line 1405
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/TransliteratorParser;->pragmaMaximumBackup(I)V

    return v1

    :cond_1
    const-string v0, "~nfd rules~;"

    const/4 v1, 0x0

    .line 1409
    invoke-static {p1, p2, p3, v0, v1}, Lcom/ibm/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 1411
    sget-object p1, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/TransliteratorParser;->pragmaNormalizeRules(Lcom/ibm/icu/text/Normalizer$Mode;)V

    return v0

    :cond_2
    const-string v0, "~nfc rules~;"

    .line 1415
    invoke-static {p1, p2, p3, v0, v1}, Lcom/ibm/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result p1

    if-ltz p1, :cond_3

    .line 1417
    sget-object p2, Lcom/ibm/icu/text/Normalizer;->NFC:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-direct {p0, p2}, Lcom/ibm/icu/text/TransliteratorParser;->pragmaNormalizeRules(Lcom/ibm/icu/text/Normalizer$Mode;)V

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method private parseRule(Ljava/lang/String;II)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1145
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, v0, Lcom/ibm/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    .line 1146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/ibm/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    .line 1148
    new-instance v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;-><init>(Lcom/ibm/icu/text/TransliteratorParser$1;)V

    .line 1149
    new-instance v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;

    invoke-direct {v6, v5}, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;-><init>(Lcom/ibm/icu/text/TransliteratorParser$1;)V

    .line 1151
    iput-object v5, v0, Lcom/ibm/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    .line 1152
    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->parse(Ljava/lang/String;IILcom/ibm/icu/text/TransliteratorParser;)I

    move-result v7

    const/4 v8, 0x0

    if-eq v7, v3, :cond_0

    add-int/lit8 v7, v7, -0x1

    .line 1155
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const-string v10, "=><\u2190\u2192\u2194"

    invoke-virtual {v10, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 1156
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No operator pos="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1, v2}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    const/4 v10, 0x1

    add-int/2addr v7, v10

    const/16 v11, 0x3c

    const/16 v12, 0x3e

    const/16 v13, 0x7e

    if-ne v9, v11, :cond_2

    if-ge v7, v3, :cond_2

    .line 1162
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v12, :cond_2

    add-int/lit8 v7, v7, 0x1

    const/16 v9, 0x7e

    :cond_2
    const/16 v14, 0x2190

    if-eq v9, v14, :cond_5

    const/16 v11, 0x2192

    if-eq v9, v11, :cond_4

    const/16 v11, 0x2194

    if-eq v9, v11, :cond_3

    move v11, v9

    goto :goto_1

    :cond_3
    const/16 v11, 0x7e

    goto :goto_1

    :cond_4
    const/16 v11, 0x3e

    .line 1180
    :cond_5
    :goto_1
    invoke-virtual {v6, v1, v7, v3, v0}, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->parse(Ljava/lang/String;IILcom/ibm/icu/text/TransliteratorParser;)I

    move-result v7

    if-ge v7, v3, :cond_7

    add-int/lit8 v7, v7, -0x1

    .line 1183
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x3b

    if-ne v3, v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    const-string v3, "Unquoted operator"

    .line 1187
    invoke-static {v3, v1, v2}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    :goto_2
    const/16 v3, 0x3d

    if-ne v11, v3, :cond_d

    .line 1199
    iget-object v3, v0, Lcom/ibm/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    if-nez v3, :cond_8

    const-string v3, "Missing \'$\' or duplicate definition"

    .line 1200
    invoke-static {v3, v1, v2}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1202
    :cond_8
    iget-object v3, v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v10, :cond_9

    iget-object v3, v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v5, v0, Lcom/ibm/icu/text/TransliteratorParser;->variableLimit:C

    if-eq v3, v5, :cond_a

    :cond_9
    const-string v3, "Malformed LHS"

    .line 1203
    invoke-static {v3, v1, v2}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1205
    :cond_a
    iget-boolean v3, v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v3, :cond_b

    iget-boolean v3, v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-nez v3, :cond_b

    iget-boolean v3, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v3, :cond_b

    iget-boolean v3, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-eqz v3, :cond_c

    :cond_b
    const-string v3, "Malformed variable def"

    .line 1207
    invoke-static {v3, v1, v2}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1210
    :cond_c
    iget-object v1, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1211
    new-array v2, v1, [C

    .line 1212
    iget-object v3, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v3, v8, v1, v2, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1213
    iget-object v1, v0, Lcom/ibm/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    iget-object v3, v0, Lcom/ibm/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    iget-char v1, v0, Lcom/ibm/icu/text/TransliteratorParser;->variableLimit:C

    add-int/2addr v1, v10

    int-to-char v1, v1

    iput-char v1, v0, Lcom/ibm/icu/text/TransliteratorParser;->variableLimit:C

    return v7

    .line 1221
    :cond_d
    iget-object v3, v0, Lcom/ibm/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 1222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Undefined variable $"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/ibm/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1227
    :cond_e
    iget-object v3, v0, Lcom/ibm/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v9, v0, Lcom/ibm/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v3, v9, :cond_f

    const-string v3, "Undefined segment reference"

    .line 1228
    invoke-static {v3, v1, v2}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_f
    const/4 v3, 0x0

    .line 1230
    :goto_3
    iget-object v9, v0, Lcom/ibm/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    const-string v14, "Internal error"

    if-ge v3, v9, :cond_11

    .line 1231
    iget-object v9, v0, Lcom/ibm/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    if-nez v9, :cond_10

    .line 1232
    invoke-static {v14, v1, v2}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_11
    const/4 v3, 0x0

    .line 1235
    :goto_4
    iget-object v9, v0, Lcom/ibm/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_13

    .line 1236
    iget-object v9, v0, Lcom/ibm/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_12

    .line 1237
    invoke-static {v14, v1, v2}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_13
    if-eq v11, v13, :cond_16

    .line 1243
    iget v3, v0, Lcom/ibm/icu/text/TransliteratorParser;->direction:I

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_5

    :cond_14
    const/4 v3, 0x0

    :goto_5
    if-ne v11, v12, :cond_15

    const/4 v9, 0x1

    goto :goto_6

    :cond_15
    const/4 v9, 0x0

    :goto_6
    if-eq v3, v9, :cond_16

    return v7

    .line 1250
    :cond_16
    iget v3, v0, Lcom/ibm/icu/text/TransliteratorParser;->direction:I

    if-ne v3, v10, :cond_17

    goto :goto_7

    :cond_17
    move-object/from16 v19, v6

    move-object v6, v4

    move-object/from16 v4, v19

    :goto_7
    if-ne v11, v13, :cond_18

    .line 1260
    invoke-virtual {v4}, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->removeContext()V

    const/4 v3, -0x1

    .line 1261
    iput v3, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    .line 1262
    iput v8, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    .line 1266
    :cond_18
    iget v3, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->ante:I

    if-gez v3, :cond_19

    .line 1267
    iput v8, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->ante:I

    .line 1269
    :cond_19
    iget v3, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-gez v3, :cond_1a

    .line 1270
    iget-object v3, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->post:I

    .line 1279
    :cond_1a
    iget v3, v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->ante:I

    if-gez v3, :cond_1c

    iget v3, v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-gez v3, :cond_1c

    iget v3, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-gez v3, :cond_1c

    iget v3, v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    if-eqz v3, :cond_1b

    iget v3, v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-ltz v3, :cond_1c

    :cond_1b
    iget-boolean v3, v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v3, :cond_1c

    iget-boolean v3, v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-nez v3, :cond_1c

    .line 1288
    invoke-virtual {v6, v0}, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->isValidInput(Lcom/ibm/icu/text/TransliteratorParser;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->isValidOutput(Lcom/ibm/icu/text/TransliteratorParser;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget v3, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->ante:I

    iget v8, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-le v3, v8, :cond_1d

    :cond_1c
    const-string v3, "Malformed rule"

    .line 1290
    invoke-static {v3, v1, v2}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1295
    :cond_1d
    iget-object v1, v0, Lcom/ibm/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1296
    iget-object v1, v0, Lcom/ibm/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Lcom/ibm/icu/text/UnicodeMatcher;

    .line 1297
    iget-object v1, v0, Lcom/ibm/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_1e
    move-object v15, v5

    .line 1300
    iget-object v1, v0, Lcom/ibm/icu/text/TransliteratorParser;->curData:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    iget-object v1, v1, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->ruleSet:Lcom/ibm/icu/text/TransliterationRuleSet;

    new-instance v2, Lcom/ibm/icu/text/TransliterationRule;

    iget-object v9, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    iget v10, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->ante:I

    iget v11, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->post:I

    iget-object v12, v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    iget v13, v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    iget v14, v4, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    iget-boolean v3, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    iget-boolean v4, v6, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    iget-object v5, v0, Lcom/ibm/icu/text/TransliteratorParser;->curData:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    move-object v8, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v8 .. v18}, Lcom/ibm/icu/text/TransliterationRule;-><init>(Ljava/lang/String;IILjava/lang/String;II[Lcom/ibm/icu/text/UnicodeMatcher;ZZLcom/ibm/icu/text/RuleBasedTransliterator$Data;)V

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/TransliterationRuleSet;->addRule(Lcom/ibm/icu/text/TransliterationRule;)V

    return v7
.end method

.method private final parseSet(Ljava/lang/String;Ljava/text/ParsePosition;)C
    .locals 2

    .line 1453
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorParser;->parseData:Lcom/ibm/icu/text/TransliteratorParser$ParseData;

    invoke-direct {v0, p1, p2, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/SymbolTable;)V

    .line 1454
    iget-char p1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableNext:C

    iget-char p2, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableLimit:C

    if-ge p1, p2, :cond_0

    .line 1457
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->compact()Lcom/ibm/icu/text/UnicodeSet;

    .line 1458
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result p1

    return p1

    .line 1455
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Private use variables exhausted"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pragmaMaximumBackup(I)V
    .locals 1

    .line 1347
    new-instance p1, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    const-string v0, "use maximum backup pragma not implemented yet"

    invoke-direct {p1, v0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pragmaNormalizeRules(Lcom/ibm/icu/text/Normalizer$Mode;)V
    .locals 1

    .line 1361
    new-instance p1, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    const-string v0, "use normalize rules pragma not implemented yet"

    invoke-direct {p1, v0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static resemblesPragma(Ljava/lang/String;II)Z
    .locals 2

    const-string v0, "use "

    const/4 v1, 0x0

    .line 1373
    invoke-static {p0, p1, p2, v0, v1}, Lcom/ibm/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static final ruleEnd(Ljava/lang/String;II)I
    .locals 1

    const-string v0, ";"

    .line 1441
    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/impl/Utility;->quotedIndexOf(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move p2, p0

    :goto_0
    return p2
.end method

.method private setVariableRange(II)V
    .locals 3

    if-gt p1, p2, :cond_1

    if-ltz p1, :cond_1

    const v0, 0xffff

    if-gt p2, v0, :cond_1

    .line 1318
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->curData:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    int-to-char p1, p1

    iput-char p1, v0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    .line 1320
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    iput-char p1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableNext:C

    add-int/lit8 p2, p2, 0x1

    int-to-char p1, p2

    .line 1322
    iput-char p1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableLimit:C

    :cond_0
    return-void

    .line 1315
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid variable range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final syntaxError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1435
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/ibm/icu/text/TransliteratorParser;->ruleEnd(Ljava/lang/String;II)I

    move-result v0

    .line 1436
    new-instance v1, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in \""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method generateStandInFor(Ljava/lang/Object;)C
    .locals 2

    const/4 v0, 0x0

    .line 1470
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1471
    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1472
    iget-object p1, p0, Lcom/ibm/icu/text/TransliteratorParser;->curData:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    iget-char p1, p1, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    add-int/2addr p1, v0

    int-to-char p1, p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1476
    :cond_1
    iget-char v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableNext:C

    iget-char v1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableLimit:C

    if-ge v0, v1, :cond_2

    .line 1479
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1480
    iget-char p1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableNext:C

    add-int/lit8 v0, p1, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableNext:C

    return p1

    .line 1477
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Variable range exhausted"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method getDotStandIn()C
    .locals 2

    .line 1530
    iget v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->dotStandIn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1531
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[^[:Zp:][:Zl:]\\r\\n$]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->dotStandIn:I

    .line 1533
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->dotStandIn:I

    int-to-char v0, v0

    return v0
.end method

.method public getSegmentStandin(I)C
    .locals 3

    .line 1487
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-nez v0, :cond_2

    .line 1492
    iget-char v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableNext:C

    iget-char v1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableLimit:C

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    .line 1495
    iput-char v1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variableNext:C

    .line 1499
    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_0

    .line 1493
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Variable range exhausted"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return v0
.end method

.method public parse(Ljava/lang/String;I)V
    .locals 3

    .line 873
    new-instance v0, Lcom/ibm/icu/text/TransliteratorParser$RuleArray;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/TransliteratorParser$RuleArray;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/text/TransliteratorParser;->parseRules(Lcom/ibm/icu/text/TransliteratorParser$RuleBody;I)V

    return-void
.end method

.method parseRules(Lcom/ibm/icu/text/TransliteratorParser$RuleBody;I)V
    .locals 18

    move-object/from16 v1, p0

    .line 905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    .line 906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    const/4 v2, 0x0

    .line 907
    iput-object v2, v1, Lcom/ibm/icu/text/TransliteratorParser;->curData:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    move/from16 v0, p2

    .line 908
    iput v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->direction:I

    .line 909
    iput-object v2, v1, Lcom/ibm/icu/text/TransliteratorParser;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    .line 911
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    .line 912
    new-instance v0, Lcom/ibm/icu/text/TransliteratorParser$ParseData;

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/TransliteratorParser$ParseData;-><init>(Lcom/ibm/icu/text/TransliteratorParser;Lcom/ibm/icu/text/TransliteratorParser$1;)V

    iput-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->parseData:Lcom/ibm/icu/text/TransliteratorParser$ParseData;

    .line 914
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 917
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/TransliteratorParser$RuleBody;->reset()V

    .line 919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 926
    iput-object v2, v1, Lcom/ibm/icu/text/TransliteratorParser;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 931
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/TransliteratorParser$RuleBody;->nextLine()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    goto/16 :goto_e

    .line 936
    :cond_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    move/from16 v17, v8

    move v8, v0

    :goto_1
    move/from16 v0, v17

    :cond_1
    :goto_2
    if-ge v13, v12, :cond_23

    add-int/lit8 v14, v13, 0x1

    .line 938
    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 939
    invoke-static {v13}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_3

    :cond_2
    const/16 v15, 0x23

    if-ne v13, v15, :cond_3

    const-string v13, "\n"

    .line 944
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    add-int/2addr v13, v6

    if-nez v13, :cond_1

    goto/16 :goto_17

    :cond_3
    const/16 v15, 0x3b

    if-ne v13, v15, :cond_4

    :goto_3
    move v13, v14

    goto :goto_2

    :cond_4
    add-int/lit8 v13, v0, 0x1

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v5, v14, 0x2

    add-int/lit8 v0, v5, 0x1

    if-gt v0, v12, :cond_10

    :try_start_0
    const-string v0, "::"

    const/4 v15, 0x2

    .line 968
    invoke-virtual {v11, v14, v0, v7, v15}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_10

    .line 970
    :try_start_1
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move v14, v5

    .line 971
    :goto_4
    :try_start_2
    invoke-static {v0}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ge v14, v12, :cond_5

    add-int/lit8 v14, v14, 0x1

    .line 973
    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    :cond_5
    new-array v0, v6, [I

    aput v14, v0, v7

    if-nez v8, :cond_8

    .line 978
    iget-object v5, v1, Lcom/ibm/icu/text/TransliteratorParser;->curData:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    if-eqz v5, :cond_7

    .line 979
    iget v15, v1, Lcom/ibm/icu/text/TransliteratorParser;->direction:I

    if-nez v15, :cond_6

    .line 980
    iget-object v15, v1, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 982
    :cond_6
    iget-object v15, v1, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v15, v7, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 983
    :goto_5
    iput-object v2, v1, Lcom/ibm/icu/text/TransliteratorParser;->curData:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    :cond_7
    const/4 v8, 0x1

    .line 988
    :cond_8
    iget v5, v1, Lcom/ibm/icu/text/TransliteratorParser;->direction:I

    .line 989
    invoke-static {v11, v0, v5}, Lcom/ibm/icu/text/TransliteratorIDParser;->parseSingleID(Ljava/lang/String;[II)Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v5

    aget v15, v0, v7

    if-eq v15, v14, :cond_a

    const/16 v15, 0x3b

    .line 991
    invoke-static {v11, v0, v15}, Lcom/ibm/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 994
    iget v2, v1, Lcom/ibm/icu/text/TransliteratorParser;->direction:I

    if-nez v2, :cond_9

    .line 995
    iget-object v2, v5, Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 997
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_a
    new-array v2, v6, [I

    const/4 v15, -0x1

    aput v15, v2, v7

    .line 1003
    iget v5, v1, Lcom/ibm/icu/text/TransliteratorParser;->direction:I

    const/4 v15, 0x0

    invoke-static {v11, v0, v5, v2, v15}, Lcom/ibm/icu/text/TransliteratorIDParser;->parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v5

    if-eqz v5, :cond_e

    const/16 v15, 0x3b

    .line 1004
    invoke-static {v11, v0, v15}, Lcom/ibm/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1005
    iget v15, v1, Lcom/ibm/icu/text/TransliteratorParser;->direction:I

    if-nez v15, :cond_b

    const/4 v15, 0x1

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    :goto_6
    aget v2, v2, v7

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    :goto_7
    if-ne v15, v2, :cond_f

    .line 1007
    iget-object v2, v1, Lcom/ibm/icu/text/TransliteratorParser;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v2, :cond_d

    const-string v2, "Multiple global filters"

    .line 1009
    invoke-static {v2, v11, v14}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1011
    :cond_d
    iput-object v5, v1, Lcom/ibm/icu/text/TransliteratorParser;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    move v9, v13

    goto :goto_8

    :cond_e
    const-string v2, "Invalid ::ID"

    .line 1017
    invoke-static {v2, v11, v14}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_f
    :goto_8
    aget v0, v0, v7

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v2, v0

    move v14, v5

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v2, v0

    :goto_9
    move v0, v8

    goto :goto_d

    :cond_10
    if-eqz v8, :cond_12

    .line 1024
    iget v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->direction:I

    if-nez v0, :cond_11

    .line 1025
    iget-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1027
    :cond_11
    iget-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1028
    :goto_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v4, v7, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1030
    :try_start_3
    new-instance v0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {v0}, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;-><init>()V

    iput-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->curData:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    const v0, 0xf000

    const v2, 0xf8ff

    .line 1036
    invoke-direct {v1, v0, v2}, Lcom/ibm/icu/text/TransliteratorParser;->setVariableRange(II)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v8, 0x0

    goto :goto_b

    :catch_2
    move-exception v0

    move-object v2, v0

    const/4 v0, 0x0

    goto :goto_d

    .line 1039
    :cond_12
    :goto_b
    :try_start_4
    invoke-static {v11, v14, v12}, Lcom/ibm/icu/text/TransliteratorParser;->resemblesPragma(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1040
    invoke-direct {v1, v11, v14, v12}, Lcom/ibm/icu/text/TransliteratorParser;->parsePragma(Ljava/lang/String;II)I

    move-result v0

    if-gez v0, :cond_14

    const-string v2, "Unrecognized pragma"

    .line 1042
    invoke-static {v2, v11, v14}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_c

    .line 1047
    :cond_13
    invoke-direct {v1, v11, v14, v12}, Lcom/ibm/icu/text/TransliteratorParser;->parseRule(Ljava/lang/String;II)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_14
    :goto_c
    const/4 v5, 0x0

    goto/16 :goto_16

    :goto_d
    const/16 v5, 0x1e

    if-ne v10, v5, :cond_22

    .line 1052
    new-instance v5, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    const-string v8, "\nMore than 30 errors; further messages squelched"

    invoke-direct {v5, v8}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v5, v2}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;->initCause(Ljava/lang/Throwable;)Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    .line 1054
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v13

    :goto_e
    if-eqz v0, :cond_16

    .line 1064
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_16

    .line 1065
    iget v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->direction:I

    if-nez v0, :cond_15

    .line 1066
    iget-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1068
    :cond_15
    iget-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_f

    :cond_16
    if-nez v0, :cond_18

    .line 1070
    iget-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->curData:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    if-eqz v0, :cond_18

    .line 1071
    iget v2, v1, Lcom/ibm/icu/text/TransliteratorParser;->direction:I

    if-nez v2, :cond_17

    .line 1072
    iget-object v2, v1, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1074
    :cond_17
    iget-object v2, v1, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_18
    :goto_f
    const/4 v0, 0x0

    .line 1078
    :goto_10
    iget-object v2, v1, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 1079
    iget-object v2, v1, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    .line 1080
    iget-object v4, v1, Lcom/ibm/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, v2, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    .line 1081
    iget-object v4, v1, Lcom/ibm/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    iget-object v5, v2, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1082
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v2, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    .line 1083
    iget-object v2, v2, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    iget-object v4, v1, Lcom/ibm/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_19
    const/4 v5, 0x0

    .line 1085
    iput-object v5, v1, Lcom/ibm/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    .line 1089
    :try_start_5
    iget-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v0, :cond_1c

    .line 1090
    iget v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->direction:I

    if-nez v0, :cond_1a

    if-ne v9, v6, :cond_1b

    :cond_1a
    if-ne v0, v6, :cond_1c

    if-ne v9, v8, :cond_1b

    goto :goto_11

    .line 1094
    :cond_1b
    new-instance v0, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    const-string v2, "Compound filters misplaced"

    invoke-direct {v0, v2}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_11
    const/4 v0, 0x0

    .line 1098
    :goto_12
    iget-object v2, v1, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 1099
    iget-object v2, v1, Lcom/ibm/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    .line 1100
    iget-object v2, v2, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->ruleSet:Lcom/ibm/icu/text/TransliterationRuleSet;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TransliterationRuleSet;->freeze()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1103
    :cond_1d
    iget-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_1e

    iget-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1104
    iget-object v0, v1, Lcom/ibm/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_13

    :catch_3
    move-exception v0

    .line 1107
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1108
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    :cond_1e
    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_21

    .line 1112
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    :goto_14
    if-lez v0, :cond_20

    add-int/lit8 v2, v0, -0x1

    .line 1113
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/RuntimeException;

    .line 1114
    :goto_15
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 1115
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/RuntimeException;

    goto :goto_15

    .line 1117
    :cond_1f
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 1119
    :cond_20
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_21
    return-void

    :cond_22
    const/4 v5, 0x0

    .line 1057
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1058
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    .line 1060
    invoke-static {v11, v14, v12}, Lcom/ibm/icu/text/TransliteratorParser;->ruleEnd(Ljava/lang/String;II)I

    move-result v2

    add-int/2addr v2, v6

    move v8, v0

    move v0, v2

    :goto_16
    move-object v2, v5

    move/from16 v17, v13

    move v13, v0

    goto/16 :goto_1

    :cond_23
    :goto_17
    move-object v5, v2

    move-object v2, v5

    move/from16 v17, v8

    move v8, v0

    move/from16 v0, v17

    goto/16 :goto_0
.end method

.method public setSegmentObject(ILcom/ibm/icu/text/StringMatcher;)V
    .locals 2

    .line 1513
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1516
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/TransliteratorParser;->getSegmentStandin(I)C

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorParser;->curData:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    iget-char v1, v1, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int/2addr v0, v1

    .line 1517
    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    .line 1518
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1521
    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1522
    iget-object p1, p0, Lcom/ibm/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1519
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
