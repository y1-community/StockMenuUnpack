.class Lcom/ibm/icu/text/RBBIRuleBuilder;
.super Ljava/lang/Object;
.source "RBBIRuleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final U_BRK_ASSIGN_ERROR:I = 0x10206

.field static final U_BRK_ERROR_LIMIT:I = 0x10210

.field static final U_BRK_ERROR_START:I = 0x10200

.field static final U_BRK_HEX_DIGITS_EXPECTED:I = 0x10202

.field static final U_BRK_INIT_ERROR:I = 0x1020b

.field static final U_BRK_INTERNAL_ERROR:I = 0x10201

.field static final U_BRK_MALFORMED_RULE_TAG:I = 0x1020e

.field static final U_BRK_MALFORMED_SET:I = 0x1020f

.field static final U_BRK_MISMATCHED_PAREN:I = 0x10208

.field static final U_BRK_NEW_LINE_IN_QUOTED_STRING:I = 0x10209

.field static final U_BRK_RULE_EMPTY_SET:I = 0x1020c

.field static final U_BRK_RULE_SYNTAX:I = 0x10204

.field static final U_BRK_SEMICOLON_EXPECTED:I = 0x10203

.field static final U_BRK_UNCLOSED_SET:I = 0x10205

.field static final U_BRK_UNDEFINED_VARIABLE:I = 0x1020a

.field static final U_BRK_UNRECOGNIZED_OPTION:I = 0x1020d

.field static final U_BRK_VARIABLE_REDFINITION:I = 0x10207

.field static final U_ILLEGAL_CHAR_FOUND:I = 0xc

.field static final fForwardTree:I = 0x0

.field static final fReverseTree:I = 0x1

.field static final fSafeFwdTree:I = 0x2

.field static final fSafeRevTree:I = 0x3


# instance fields
.field fChainRules:Z

.field fDebugEnv:Ljava/lang/String;

.field fDefaultTree:I

.field fForwardTable:Lcom/ibm/icu/text/RBBITableBuilder;

.field fLBCMNoChain:Z

.field fLookAheadHardBreak:Z

.field fRuleStatusVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fRules:Ljava/lang/String;

.field fScanner:Lcom/ibm/icu/text/RBBIRuleScanner;

.field fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

.field fStatusSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fStrippedRules:Ljava/lang/StringBuilder;

.field fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

.field fUSetNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/text/RBBINode;

    .line 45
    iput-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    const-string v0, "rbbi"

    .line 148
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fStrippedRules:Ljava/lang/StringBuilder;

    .line 152
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    .line 153
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    .line 154
    new-instance p1, Lcom/ibm/icu/text/RBBIRuleScanner;

    invoke-direct {p1, p0}, Lcom/ibm/icu/text/RBBIRuleScanner;-><init>(Lcom/ibm/icu/text/RBBIRuleBuilder;)V

    iput-object p1, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fScanner:Lcom/ibm/icu/text/RBBIRuleScanner;

    .line 155
    new-instance p1, Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-direct {p1, p0}, Lcom/ibm/icu/text/RBBISetBuilder;-><init>(Lcom/ibm/icu/text/RBBIRuleBuilder;)V

    iput-object p1, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    return-void
.end method

.method static final align8(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x7

    and-int/lit8 p0, p0, -0x8

    return p0
.end method

.method static compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    new-instance v0, Lcom/ibm/icu/text/RBBIRuleBuilder;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/RBBIRuleBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/RBBIRuleBuilder;->build(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method build(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fScanner:Lcom/ibm/icu/text/RBBIRuleScanner;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBIRuleScanner;->parse()V

    .line 302
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBISetBuilder;->buildRanges()V

    .line 307
    new-instance v0, Lcom/ibm/icu/text/RBBITableBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/text/RBBITableBuilder;-><init>(Lcom/ibm/icu/text/RBBIRuleBuilder;I)V

    iput-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fForwardTable:Lcom/ibm/icu/text/RBBITableBuilder;

    .line 308
    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBITableBuilder;->buildForwardTable()V

    .line 313
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBIRuleBuilder;->optimizeTables()V

    .line 314
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fForwardTable:Lcom/ibm/icu/text/RBBITableBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBITableBuilder;->buildSafeReverseTable()V

    .line 317
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "states"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fForwardTable:Lcom/ibm/icu/text/RBBITableBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBITableBuilder;->printStates()V

    .line 320
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fForwardTable:Lcom/ibm/icu/text/RBBITableBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBITableBuilder;->printRuleStatusTable()V

    .line 321
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fForwardTable:Lcom/ibm/icu/text/RBBITableBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBITableBuilder;->printReverseTable()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBISetBuilder;->buildTrie()V

    .line 331
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RBBIRuleBuilder;->flattenData(Ljava/io/OutputStream;)V

    return-void
.end method

.method flattenData(Ljava/io/OutputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 177
    iget-object v1, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fStrippedRules:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/text/RBBIRuleScanner;->stripRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fForwardTable:Lcom/ibm/icu/text/RBBITableBuilder;

    invoke-virtual {v2}, Lcom/ibm/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v2

    .line 186
    iget-object v3, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fForwardTable:Lcom/ibm/icu/text/RBBITableBuilder;

    invoke-virtual {v3}, Lcom/ibm/icu/text/RBBITableBuilder;->getSafeTableSize()I

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v3

    .line 187
    iget-object v4, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v4}, Lcom/ibm/icu/text/RBBISetBuilder;->getTrieSize()I

    move-result v4

    invoke-static {v4}, Lcom/ibm/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v4

    .line 188
    iget-object v5, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Lcom/ibm/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v5

    .line 190
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 191
    array-length v7, v1

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-static {v7}, Lcom/ibm/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v7

    add-int/lit8 v9, v2, 0x50

    add-int/2addr v9, v3

    add-int/2addr v9, v5

    add-int/2addr v9, v4

    add-int/2addr v9, v7

    const v7, 0x42726b20

    const/high16 v10, 0x6000000

    const/4 v11, 0x0

    .line 202
    invoke-static {v7, v10, v11, v0}, Lcom/ibm/icu/impl/ICUBinary;->writeHeader(IIILjava/io/DataOutputStream;)I

    const/16 v7, 0x14

    new-array v12, v7, [I

    const v13, 0xb1a0

    aput v13, v12, v11

    aput v10, v12, v8

    const/4 v10, 0x2

    aput v9, v12, v10

    .line 211
    iget-object v9, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v9}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v9

    const/4 v10, 0x3

    aput v9, v12, v10

    const/16 v9, 0x50

    aput v9, v12, v6

    const/4 v9, 0x5

    aput v2, v12, v9

    aget v6, v12, v6

    add-int/2addr v6, v2

    const/4 v2, 0x6

    aput v6, v12, v2

    const/4 v6, 0x7

    aput v3, v12, v6

    aget v3, v12, v2

    aget v6, v12, v6

    add-int/2addr v3, v6

    const/16 v6, 0x8

    aput v3, v12, v6

    .line 221
    iget-object v3, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v3}, Lcom/ibm/icu/text/RBBISetBuilder;->getTrieSize()I

    move-result v3

    const/16 v9, 0x9

    aput v3, v12, v9

    aget v3, v12, v6

    add-int/2addr v3, v4

    const/16 v4, 0xc

    aput v3, v12, v4

    const/16 v3, 0xd

    aput v5, v12, v3

    aget v3, v12, v4

    add-int/2addr v3, v5

    const/16 v5, 0xa

    aput v3, v12, v5

    .line 227
    array-length v3, v1

    const/16 v10, 0xb

    aput v3, v12, v10

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v3, v7, :cond_0

    .line 229
    aget v13, v12, v3

    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fForwardTable:Lcom/ibm/icu/text/RBBITableBuilder;

    invoke-virtual {v3}, Lcom/ibm/icu/text/RBBITableBuilder;->exportTable()Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    move-result-object v3

    .line 236
    invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->put(Ljava/io/DataOutputStream;)I

    move-result v3

    add-int/2addr v10, v3

    .line 238
    iget-object v3, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fForwardTable:Lcom/ibm/icu/text/RBBITableBuilder;

    invoke-virtual {v3}, Lcom/ibm/icu/text/RBBITableBuilder;->exportSafeTable()Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    move-result-object v3

    aget v2, v12, v2

    if-ne v10, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 239
    :goto_1
    invoke-static {v2}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 240
    invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->put(Ljava/io/DataOutputStream;)I

    move-result v2

    add-int/2addr v10, v2

    aget v2, v12, v6

    if-ne v10, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 243
    :goto_2
    invoke-static {v2}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 244
    iget-object v2, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/RBBISetBuilder;->serializeTrie(Ljava/io/OutputStream;)V

    aget p1, v12, v9

    add-int/2addr v10, p1

    .line 246
    :goto_3
    rem-int/lit8 p1, v10, 0x8

    if-eqz p1, :cond_3

    .line 247
    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    aget p1, v12, v4

    if-ne v10, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    .line 252
    :goto_4
    invoke-static {p1}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 253
    iget-object p1, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 254
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v10, v10, 0x4

    goto :goto_5

    .line 258
    :cond_5
    :goto_6
    rem-int/lit8 p1, v10, 0x8

    if-eqz p1, :cond_6

    .line 259
    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_6
    aget p1, v12, v5

    if-ne v10, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_7

    :cond_7
    const/4 p1, 0x0

    .line 265
    :goto_7
    invoke-static {p1}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 266
    array-length p1, v1

    invoke-virtual {v0, v1, v11, p1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 267
    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 268
    array-length p1, v1

    add-int/2addr p1, v8

    add-int/2addr v10, p1

    .line 269
    :goto_8
    rem-int/lit8 p1, v10, 0x8

    if-eqz p1, :cond_8

    .line 270
    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_8
    return-void
.end method

.method optimizeTables()V
    .locals 4

    .line 351
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;-><init>(II)V

    const/4 v1, 0x1

    .line 352
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fForwardTable:Lcom/ibm/icu/text/RBBITableBuilder;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->findDuplCharClassFrom(Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    iget-object v2, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/RBBISetBuilder;->mergeCategories(Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;)V

    .line 354
    iget-object v2, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fForwardTable:Lcom/ibm/icu/text/RBBITableBuilder;

    iget v3, v0, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/RBBITableBuilder;->removeColumn(I)V

    const/4 v2, 0x1

    goto :goto_0

    .line 357
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fForwardTable:Lcom/ibm/icu/text/RBBITableBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBITableBuilder;->removeDuplicateStates()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_0

    return-void
.end method
