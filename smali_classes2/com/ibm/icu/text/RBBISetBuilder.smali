.class Lcom/ibm/icu/text/RBBISetBuilder;
.super Ljava/lang/Object;
.source "RBBISetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_CHAR_CATEGORIES_FOR_8BITS_TRIE:I = 0xff


# instance fields
.field fDictCategoriesStart:I

.field fFrozenTrie:Lcom/ibm/icu/util/CodePointTrie;

.field fGroupCount:I

.field fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

.field fRangeList:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

.field fSawBOF:Z

.field fTrie:Lcom/ibm/icu/util/MutableCodePointTrie;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/RBBIRuleBuilder;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    return-void
.end method


# virtual methods
.method addValToSet(Lcom/ibm/icu/text/RBBINode;I)V
    .locals 2

    .line 408
    new-instance v0, Lcom/ibm/icu/text/RBBINode;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/RBBINode;-><init>(I)V

    .line 409
    iput p2, v0, Lcom/ibm/icu/text/RBBINode;->fVal:I

    .line 410
    iget-object p2, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    if-nez p2, :cond_0

    .line 411
    iput-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 412
    iput-object p1, v0, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    goto :goto_0

    .line 417
    :cond_0
    new-instance p2, Lcom/ibm/icu/text/RBBINode;

    const/16 v1, 0x9

    invoke-direct {p2, v1}, Lcom/ibm/icu/text/RBBINode;-><init>(I)V

    .line 418
    iget-object v1, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iput-object v1, p2, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 419
    iput-object v0, p2, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    .line 420
    iget-object v0, p2, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iput-object p2, v0, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    .line 421
    iget-object v0, p2, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    iput-object p2, v0, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    .line 422
    iput-object p2, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 423
    iput-object p1, p2, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    :goto_0
    return-void
.end method

.method addValToSets(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/RBBINode;",
            ">;I)V"
        }
    .end annotation

    .line 402
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/RBBINode;

    .line 403
    invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/text/RBBISetBuilder;->addValToSet(Lcom/ibm/icu/text/RBBINode;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method buildRanges()V
    .locals 10

    .line 159
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v1, "usets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBISetBuilder;->printSets()V

    .line 164
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    invoke-direct {v0}, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRangeList:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    const/4 v1, 0x0

    .line 165
    iput v1, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    .line 166
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRangeList:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    const v2, 0x10ffff

    iput v2, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    .line 171
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/RBBINode;

    .line 172
    iget-object v3, v2, Lcom/ibm/icu/text/RBBINode;->fInputSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 173
    invoke-virtual {v3}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v4

    .line 175
    iget-object v5, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRangeList:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v4, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v3, v6}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v7

    .line 182
    invoke-virtual {v3, v6}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v8

    .line 186
    :goto_2
    iget v9, v5, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-ge v9, v7, :cond_2

    .line 187
    iget-object v5, v5, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_2

    .line 196
    :cond_2
    iget v9, v5, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    if-ge v9, v7, :cond_3

    .line 197
    invoke-virtual {v5, v7}, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->split(I)V

    goto :goto_1

    .line 206
    :cond_3
    iget v7, v5, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-le v7, v8, :cond_4

    add-int/lit8 v7, v8, 0x1

    .line 207
    invoke-virtual {v5, v7}, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->split(I)V

    .line 212
    :cond_4
    iget-object v7, v5, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_5

    .line 213
    iget-object v7, v5, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_5
    iget v7, v5, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-ne v8, v7, :cond_6

    add-int/lit8 v6, v6, 0x1

    .line 220
    :cond_6
    iget-object v5, v5, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_1

    .line 224
    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v2, "range"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBISetBuilder;->printRanges()V

    .line 240
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRangeList:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_3
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_d

    .line 241
    iget-object v4, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRangeList:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_4
    if-eq v4, v0, :cond_a

    .line 242
    iget-object v5, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    iget-object v6, v4, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 243
    iget v5, v4, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    iput v5, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 244
    iget-boolean v4, v4, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    iput-boolean v4, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    goto :goto_5

    .line 241
    :cond_9
    iget-object v4, v4, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_4

    .line 248
    :cond_a
    :goto_5
    iget v4, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    if-nez v4, :cond_c

    .line 249
    iput-boolean v3, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    .line 250
    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->isDictionaryRange()Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v1, v1, 0x1

    .line 251
    iput v1, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 252
    iput-boolean v3, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    goto :goto_6

    .line 254
    :cond_b
    iget v4, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/2addr v4, v2

    .line 255
    iput v4, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 256
    iget-object v3, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    iget v4, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/ibm/icu/text/RBBISetBuilder;->addValToSets(Ljava/util/List;I)V

    .line 240
    :cond_c
    :goto_6
    iget-object v0, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_3

    .line 264
    :cond_d
    iget v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fDictCategoriesStart:I

    .line 265
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRangeList:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_7
    if-eqz v0, :cond_f

    .line 266
    iget-boolean v4, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    if-eqz v4, :cond_e

    .line 267
    iget v4, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    iget v5, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fDictCategoriesStart:I

    sub-int/2addr v5, v3

    add-int/2addr v4, v5

    iput v4, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 268
    iget-boolean v4, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    if-eqz v4, :cond_e

    .line 269
    iget-object v4, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    iget v5, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/text/RBBISetBuilder;->addValToSets(Ljava/util/List;I)V

    .line 265
    :cond_e
    iget-object v0, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_7

    .line 273
    :cond_f
    iget v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fGroupCount:I

    .line 290
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/RBBINode;

    .line 291
    iget-object v4, v1, Lcom/ibm/icu/text/RBBINode;->fInputSet:Lcom/ibm/icu/text/UnicodeSet;

    const-string v5, "eof"

    .line 292
    invoke-virtual {v4, v5}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 293
    invoke-virtual {p0, v1, v3}, Lcom/ibm/icu/text/RBBISetBuilder;->addValToSet(Lcom/ibm/icu/text/RBBINode;I)V

    :cond_11
    const-string v5, "bof"

    .line 295
    invoke-virtual {v4, v5}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 296
    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/text/RBBISetBuilder;->addValToSet(Lcom/ibm/icu/text/RBBINode;I)V

    .line 297
    iput-boolean v3, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fSawBOF:Z

    goto :goto_8

    .line 302
    :cond_12
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v1, "rgroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_13

    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBISetBuilder;->printRangeGroups()V

    .line 303
    :cond_13
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v1, "esets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_14

    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBISetBuilder;->printSets()V

    :cond_14
    return-void
.end method

.method buildTrie()V
    .locals 5

    .line 314
    new-instance v0, Lcom/ibm/icu/util/MutableCodePointTrie;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/ibm/icu/util/MutableCodePointTrie;-><init>(II)V

    iput-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fTrie:Lcom/ibm/icu/util/MutableCodePointTrie;

    .line 317
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRangeList:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_0
    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fTrie:Lcom/ibm/icu/util/MutableCodePointTrie;

    iget v2, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    iget v3, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    iget v4, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/ibm/icu/util/MutableCodePointTrie;->setRange(III)V

    .line 317
    iget-object v0, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_0

    :cond_0
    return-void
.end method

.method freezeTrieIfNotYet()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fFrozenTrie:Lcom/ibm/icu/util/CodePointTrie;

    if-nez v0, :cond_2

    .line 357
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 358
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fTrie:Lcom/ibm/icu/util/MutableCodePointTrie;

    sget-object v2, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_8:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_16:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/ibm/icu/util/MutableCodePointTrie;->buildImmutable(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;)Lcom/ibm/icu/util/CodePointTrie;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fFrozenTrie:Lcom/ibm/icu/util/CodePointTrie;

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fTrie:Lcom/ibm/icu/util/MutableCodePointTrie;

    :cond_2
    return-void
.end method

.method getDictCategoriesStart()I
    .locals 1

    .line 444
    iget v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fDictCategoriesStart:I

    return v0
.end method

.method getFirstChar(I)I
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRangeList:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_0
    if-eqz v0, :cond_1

    .line 468
    iget v1, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    if-ne v1, p1, :cond_0

    .line 469
    iget p1, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    goto :goto_1

    .line 467
    :cond_0
    iget-object v0, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method getNumCharCategories()I
    .locals 1

    .line 434
    iget v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method getTrieSize()I
    .locals 2

    .line 372
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBISetBuilder;->freezeTrieIfNotYet()V

    .line 373
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fFrozenTrie:Lcom/ibm/icu/util/CodePointTrie;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/CodePointTrie;->toBinary(Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method mergeCategories(Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;)V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRangeList:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_0
    if-eqz v0, :cond_2

    .line 336
    iget v1, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 337
    iget v2, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-ne v1, v2, :cond_0

    .line 338
    iget v1, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    iput v1, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    goto :goto_1

    .line 339
    :cond_0
    iget v2, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-le v1, v2, :cond_1

    .line 340
    iget v1, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 335
    :cond_1
    :goto_1
    iget-object v0, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_0

    .line 343
    :cond_2
    iget v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fGroupCount:I

    .line 344
    iget p1, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    iget v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fDictCategoriesStart:I

    if-gt p1, v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 345
    iput v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fDictCategoriesStart:I

    :cond_3
    return-void
.end method

.method printRangeGroups()V
    .locals 8

    .line 520
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\nRanges grouped by Unicode Set Membership...\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRangeList:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_0
    const-string v1, "\n"

    if-eqz v0, :cond_8

    .line 522
    iget-boolean v2, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    if-eqz v2, :cond_7

    .line 523
    iget v2, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    const/16 v3, 0xa

    const-string v4, " "

    if-ge v2, v3, :cond_0

    .line 524
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 525
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 527
    iget v3, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fDictCategoriesStart:I

    if-lt v2, v3, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " <DICT> "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 529
    :goto_1
    iget-object v5, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 530
    iget-object v5, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/text/RBBINode;

    .line 532
    iget-object v5, v5, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    if-eqz v5, :cond_2

    .line 534
    iget-object v5, v5, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    if-eqz v5, :cond_2

    .line 535
    iget v6, v5, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 536
    iget-object v5, v5, Lcom/ibm/icu/text/RBBINode;->fText:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v5, "anon"

    .line 539
    :goto_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    :goto_3
    if-eqz v3, :cond_6

    .line 544
    iget v5, v3, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    iget v6, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v4, 0x1

    .line 545
    rem-int/lit8 v4, v4, 0x5

    if-nez v4, :cond_4

    .line 546
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "\n    "

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 548
    :cond_4
    iget v4, v3, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    const/4 v6, -0x1

    invoke-static {v4, v6}, Lcom/ibm/icu/text/RBBINode;->printHex(II)V

    .line 549
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 550
    iget v4, v3, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    invoke-static {v4, v2}, Lcom/ibm/icu/text/RBBINode;->printHex(II)V

    move v4, v5

    .line 543
    :cond_5
    iget-object v3, v3, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_3

    .line 553
    :cond_6
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 521
    :cond_7
    iget-object v0, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    goto/16 :goto_0

    .line 556
    :cond_8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method printRanges()V
    .locals 7

    .line 488
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n\n Nonoverlapping Ranges ...\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRangeList:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_0
    if-eqz v0, :cond_2

    .line 490
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "%04x-%04x "

    invoke-virtual {v1, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 492
    :goto_1
    iget-object v1, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_1

    .line 493
    iget-object v1, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/RBBINode;

    .line 495
    iget-object v1, v1, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, v1, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    if-eqz v1, :cond_0

    .line 498
    iget v3, v1, Lcom/ibm/icu/text/RBBINode;->fType:I

    if-ne v3, v2, :cond_0

    .line 499
    iget-object v1, v1, Lcom/ibm/icu/text/RBBINode;->fText:Ljava/lang/String;

    goto :goto_2

    :cond_0
    const-string v1, "anon"

    .line 502
    :goto_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 504
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    iget-object v0, v0, Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Lcom/ibm/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_0

    :cond_2
    return-void
.end method

.method printSets()V
    .locals 7

    .line 570
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n\nUnicode Sets List\n------------------\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 571
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "\n"

    if-ge v0, v1, :cond_2

    .line 577
    iget-object v1, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/RBBINode;

    const/4 v3, 0x2

    .line 580
    invoke-static {v3, v0}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    .line 582
    iget-object v4, v1, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    if-eqz v4, :cond_0

    .line 584
    iget-object v4, v4, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    if-eqz v4, :cond_0

    .line 585
    iget v5, v4, Lcom/ibm/icu/text/RBBINode;->fType:I

    if-ne v5, v3, :cond_0

    .line 586
    iget-object v3, v4, Lcom/ibm/icu/text/RBBINode;->fText:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v3, "anonymous"

    .line 589
    :goto_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 590
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 591
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, v1, Lcom/ibm/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 592
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 593
    iget-object v2, v1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    if-eqz v2, :cond_1

    .line 594
    iget-object v1, v1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/RBBINode;->printTree(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method sawBOF()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fSawBOF:Z

    return v0
.end method

.method serializeTrie(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBISetBuilder;->freezeTrieIfNotYet()V

    .line 384
    iget-object v0, p0, Lcom/ibm/icu/text/RBBISetBuilder;->fFrozenTrie:Lcom/ibm/icu/util/CodePointTrie;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/CodePointTrie;->toBinary(Ljava/io/OutputStream;)I

    return-void
.end method
