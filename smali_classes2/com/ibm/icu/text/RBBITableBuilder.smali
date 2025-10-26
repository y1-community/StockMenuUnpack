.class Lcom/ibm/icu/text/RBBITableBuilder;
.super Ljava/lang/Object;
.source "RBBITableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_STATE_FOR_8BITS_TABLE:I = 0xff


# instance fields
.field private fDStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field fLASlotsInUse:I

.field fLookAheadRuleMap:[I

.field private fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

.field private fRootIx:I

.field private fSafeTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[S>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/RBBIRuleBuilder;I)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fLASlotsInUse:I

    .line 96
    iput p2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    .line 97
    iput-object p1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addRuleRootNodes(Ljava/util/List;Lcom/ibm/icu/text/RBBINode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/RBBINode;",
            ">;",
            "Lcom/ibm/icu/text/RBBINode;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 389
    :cond_0
    iget-boolean v0, p2, Lcom/ibm/icu/text/RBBINode;->fRuleRoot:Z

    if-eqz v0, :cond_1

    .line 390
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 395
    :cond_1
    iget-object v0, p2, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->addRuleRootNodes(Ljava/util/List;Lcom/ibm/icu/text/RBBINode;)V

    .line 396
    iget-object p2, p2, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/RBBITableBuilder;->addRuleRootNodes(Ljava/util/List;Lcom/ibm/icu/text/RBBINode;)V

    return-void
.end method

.method bofFixup()V
    .locals 6

    .line 504
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 505
    iget v1, v0, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 506
    iget v1, v0, Lcom/ibm/icu/text/RBBINode;->fVal:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 513
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    .line 514
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/RBBINode;

    .line 515
    iget v3, v2, Lcom/ibm/icu/text/RBBINode;->fType:I

    if-eq v3, v4, :cond_3

    goto :goto_2

    .line 519
    :cond_3
    iget v3, v2, Lcom/ibm/icu/text/RBBINode;->fVal:I

    iget v5, v0, Lcom/ibm/icu/text/RBBINode;->fVal:I

    if-ne v3, v5, :cond_2

    .line 525
    iget-object v3, v0, Lcom/ibm/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v2, v2, Lcom/ibm/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method buildForwardTable()V
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    iget-object v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/ibm/icu/text/RBBINode;->flattenVariables()Lcom/ibm/icu/text/RBBINode;

    move-result-object v2

    aput-object v2, v0, v1

    .line 122
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v2, "ftree"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 123
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Parse tree after flattening variable references."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/RBBINode;->printTree(Z)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBISetBuilder;->sawBOF()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 134
    new-instance v0, Lcom/ibm/icu/text/RBBINode;

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/RBBINode;-><init>(I)V

    .line 135
    new-instance v3, Lcom/ibm/icu/text/RBBINode;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/ibm/icu/text/RBBINode;-><init>(I)V

    .line 136
    iput-object v3, v0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 137
    iget-object v4, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v4, v4, v5

    iput-object v4, v0, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    .line 138
    iput-object v0, v3, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    const/4 v4, 0x2

    .line 139
    iput v4, v3, Lcom/ibm/icu/text/RBBINode;->fVal:I

    .line 140
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v4, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aput-object v0, v3, v4

    .line 148
    :cond_2
    new-instance v0, Lcom/ibm/icu/text/RBBINode;

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/RBBINode;-><init>(I)V

    .line 149
    iget-object v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 150
    iget-object v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v2, v2, v3

    iput-object v0, v2, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    .line 151
    new-instance v2, Lcom/ibm/icu/text/RBBINode;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/ibm/icu/text/RBBINode;-><init>(I)V

    iput-object v2, v0, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    .line 152
    iget-object v3, v0, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    iput-object v0, v3, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    .line 153
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v4, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aput-object v0, v3, v4

    .line 159
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBINode;->flattenSets()V

    .line 160
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v3, "stree"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 161
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Parse tree after flattening Unicode Set references."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/RBBINode;->printTree(Z)V

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->calcNullable(Lcom/ibm/icu/text/RBBINode;)V

    .line 174
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->calcFirstPos(Lcom/ibm/icu/text/RBBINode;)V

    .line 175
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->calcLastPos(Lcom/ibm/icu/text/RBBINode;)V

    .line 176
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->calcFollowPos(Lcom/ibm/icu/text/RBBINode;)V

    .line 177
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v1, "pos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 178
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->printPosSets(Lcom/ibm/icu/text/RBBINode;)V

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-boolean v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fChainRules:Z

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/ibm/icu/text/RBBITableBuilder;->calcChainedFollowPos(Lcom/ibm/icu/text/RBBINode;Lcom/ibm/icu/text/RBBINode;)V

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBISetBuilder;->sawBOF()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 193
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBITableBuilder;->bofFixup()V

    .line 199
    :cond_6
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBITableBuilder;->buildStateTable()V

    .line 200
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBITableBuilder;->mapLookAheadRules()V

    .line 201
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBITableBuilder;->flagAcceptingStates()V

    .line 202
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBITableBuilder;->flagLookAheadStates()V

    .line 203
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBITableBuilder;->flagTaggedStates()V

    .line 210
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBITableBuilder;->mergeRuleStatusVals()V

    return-void
.end method

.method buildSafeReverseTable()V
    .locals 11

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1204
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v1

    .line 1205
    iget-object v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_4

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v2, :cond_2

    .line 1212
    iget-object v9, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 1213
    iget-object v9, v9, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v9, v9, v4

    .line 1214
    iget-object v10, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 1215
    iget-object v9, v9, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v9, v9, v6

    if-gez v7, :cond_0

    move v7, v9

    goto :goto_3

    :cond_0
    if-eq v7, v9, :cond_1

    goto :goto_4

    :cond_1
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    :goto_4
    if-ne v7, v9, :cond_3

    int-to-char v7, v4

    .line 1225
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v7, v6

    .line 1226
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1243
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    const/4 v2, 0x0

    :goto_5
    add-int/lit8 v4, v1, 0x2

    if-ge v2, v4, :cond_6

    .line 1245
    iget-object v4, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    new-array v6, v1, [S

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1249
    :cond_6
    iget-object v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v1, :cond_7

    add-int/lit8 v7, v6, 0x2

    int-to-short v7, v7

    .line 1252
    aput-short v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x2

    const/4 v6, 0x2

    :goto_7
    if-ge v6, v4, :cond_8

    .line 1258
    iget-object v7, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    array-length v8, v2

    invoke-static {v2, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    .line 1263
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 1264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    add-int/lit8 v6, v2, 0x1

    .line 1265
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1267
    iget-object v7, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    add-int/2addr v6, v1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [S

    .line 1268
    aput-short v3, v6, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_8

    .line 1272
    :cond_9
    new-instance v0, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;

    invoke-direct {v0, v5, v3}, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;-><init>(II)V

    .line 1273
    :goto_9
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->findDuplicateSafeState(Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1275
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->removeSafeState(Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;)V

    goto :goto_9

    :cond_a
    return-void
.end method

.method buildStateTable()V
    .locals 10

    .line 542
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 543
    new-instance v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    invoke-direct {v2, v0}, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    .line 544
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    invoke-direct {v2, v0}, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    .line 549
    iget-object v3, v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    iget-object v4, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 550
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x1

    .line 556
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 557
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 558
    iget-boolean v5, v3, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fMarked:Z

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_3

    return-void

    .line 568
    :cond_3
    iput-boolean v1, v3, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fMarked:Z

    const/4 v2, 0x1

    :goto_2
    if-gt v2, v0, :cond_0

    .line 577
    iget-object v5, v3, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v4

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ibm/icu/text/RBBINode;

    .line 578
    iget v8, v7, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    iget v8, v7, Lcom/ibm/icu/text/RBBINode;->fVal:I

    if-ne v8, v2, :cond_4

    if-nez v6, :cond_5

    .line 580
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 582
    :cond_5
    iget-object v7, v7, Lcom/ibm/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_b

    .line 590
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v7, 0x0

    if-lez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    const/4 v5, 0x0

    .line 592
    :goto_5
    iget-object v8, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_9

    .line 594
    iget-object v8, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 595
    iget-object v9, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v6, v9}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 596
    iget-object v6, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    const/4 v7, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-nez v7, :cond_a

    .line 606
    new-instance v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    invoke-direct {v5, v0}, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    .line 607
    iput-object v6, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    .line 608
    iget-object v6, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .line 613
    :cond_a
    iget-object v6, v3, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aput v5, v6, v2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method calcChainedFollowPos(Lcom/ibm/icu/text/RBBINode;Lcom/ibm/icu/text/RBBINode;)V
    .locals 7

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    .line 410
    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 417
    invoke-virtual {p0, v2, p1}, Lcom/ibm/icu/text/RBBITableBuilder;->addRuleRootNodes(Ljava/util/List;Lcom/ibm/icu/text/RBBINode;)V

    .line 419
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 420
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/RBBINode;

    .line 421
    iget-boolean v4, v3, Lcom/ibm/icu/text/RBBINode;->fChainIn:Z

    if-eqz v4, :cond_0

    .line 422
    iget-object v3, v3, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 428
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/RBBINode;

    .line 438
    iget-object v3, v2, Lcom/ibm/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 448
    :cond_3
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-boolean v3, v3, Lcom/ibm/icu/text/RBBIRuleBuilder;->fLBCMNoChain:Z

    if-eqz v3, :cond_4

    .line 449
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    iget v4, v2, Lcom/ibm/icu/text/RBBINode;->fVal:I

    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/RBBISetBuilder;->getFirstChar(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    const/16 v4, 0x1008

    .line 452
    invoke-static {v3, v4}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    goto :goto_1

    .line 462
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/text/RBBINode;

    .line 463
    iget v5, v4, Lcom/ibm/icu/text/RBBINode;->fType:I

    if-eq v5, v1, :cond_6

    goto :goto_2

    .line 467
    :cond_6
    iget v5, v2, Lcom/ibm/icu/text/RBBINode;->fVal:I

    iget v6, v4, Lcom/ibm/icu/text/RBBINode;->fVal:I

    if-ne v5, v6, :cond_5

    .line 475
    iget-object v5, v2, Lcom/ibm/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v4, v4, Lcom/ibm/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_7
    return-void
.end method

.method calcFirstPos(Lcom/ibm/icu/text/RBBINode;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 271
    :cond_0
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 282
    :cond_1
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->calcFirstPos(Lcom/ibm/icu/text/RBBINode;)V

    .line 283
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->calcFirstPos(Lcom/ibm/icu/text/RBBINode;)V

    .line 286
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 287
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 288
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 290
    :cond_2
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 291
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 292
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget-boolean v0, v0, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    if-eqz v0, :cond_5

    .line 293
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 296
    :cond_3
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    .line 299
    :cond_4
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_0
    return-void

    .line 276
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method calcFollowPos(Lcom/ibm/icu/text/RBBINode;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 354
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 360
    :cond_0
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->calcFollowPos(Lcom/ibm/icu/text/RBBINode;)V

    .line 361
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->calcFollowPos(Lcom/ibm/icu/text/RBBINode;)V

    .line 364
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 365
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/RBBINode;

    .line 366
    iget-object v1, v1, Lcom/ibm/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v2, p1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    iget-object v2, v2, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 371
    :cond_1
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 373
    :cond_2
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/RBBINode;

    .line 374
    iget-object v1, v1, Lcom/ibm/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v2, p1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method calcLastPos(Lcom/ibm/icu/text/RBBINode;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 314
    :cond_0
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 325
    :cond_1
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->calcLastPos(Lcom/ibm/icu/text/RBBINode;)V

    .line 326
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->calcLastPos(Lcom/ibm/icu/text/RBBINode;)V

    .line 329
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 330
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 331
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 333
    :cond_2
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 334
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 335
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    iget-boolean v0, v0, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    if-eqz v0, :cond_5

    .line 336
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 339
    :cond_3
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    .line 342
    :cond_4
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_0
    return-void

    .line 319
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method calcNullable(Lcom/ibm/icu/text/RBBINode;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 224
    :cond_0
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    goto :goto_3

    .line 231
    :cond_1
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v2, :cond_a

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    goto :goto_2

    .line 241
    :cond_2
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->calcNullable(Lcom/ibm/icu/text/RBBINode;)V

    .line 242
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->calcNullable(Lcom/ibm/icu/text/RBBINode;)V

    .line 245
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_5

    .line 246
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget-boolean v0, v0, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    iget-boolean v0, v0, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p1, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    goto :goto_1

    .line 248
    :cond_5
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_7

    .line 249
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    iget-boolean v0, v0, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    iget-boolean v0, v0, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, p1, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    goto :goto_1

    .line 251
    :cond_7
    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_9

    iget v0, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_8

    goto :goto_0

    .line 255
    :cond_8
    iput-boolean v1, p1, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    goto :goto_1

    .line 252
    :cond_9
    :goto_0
    iput-boolean v3, p1, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    :goto_1
    return-void

    .line 234
    :cond_a
    :goto_2
    iput-boolean v3, p1, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    return-void

    .line 227
    :cond_b
    :goto_3
    iput-boolean v1, p1, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    return-void
.end method

.method exportSafeTable()Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;
    .locals 14

    .line 1306
    new-instance v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    invoke-direct {v0}, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;-><init>()V

    .line 1307
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    .line 1308
    iget v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    const/16 v2, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1309
    :goto_0
    iget-object v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [S

    array-length v5, v5

    add-int/lit8 v6, v5, 0x3

    .line 1315
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBITableBuilder;->getSafeTableSize()I

    move-result v7

    sget v8, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    sub-int/2addr v7, v8

    if-eqz v1, :cond_1

    .line 1317
    iget v8, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    .line 1318
    new-array v7, v7, [C

    iput-object v7, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    .line 1319
    iput v6, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    goto :goto_1

    .line 1321
    :cond_1
    div-int/lit8 v7, v7, 0x2

    .line 1322
    new-array v7, v7, [C

    iput-object v7, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    mul-int/lit8 v7, v6, 0x2

    .line 1323
    iput v7, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    :goto_1
    const/4 v7, 0x0

    .line 1326
    :goto_2
    iget v8, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    if-ge v7, v8, :cond_5

    .line 1327
    iget-object v8, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [S

    mul-int v9, v7, v6

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v5, :cond_4

    if-eqz v1, :cond_3

    .line 1332
    aget-short v11, v8, v10

    if-gt v11, v2, :cond_2

    const/4 v11, 0x1

    goto :goto_4

    :cond_2
    const/4 v11, 0x0

    :goto_4
    invoke-static {v11}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 1334
    :cond_3
    iget-object v11, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v12, v9, 0x3

    add-int/2addr v12, v10

    aget-short v13, v8, v10

    int-to-char v13, v13

    aput-char v13, v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method exportTable()Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;
    .locals 14

    .line 1133
    new-instance v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    invoke-direct {v0}, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;-><init>()V

    .line 1134
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    return-object v0

    .line 1138
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v1

    const/16 v2, 0x7fff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    .line 1139
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1138
    :goto_0
    invoke-static {v1}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 1140
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    .line 1141
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RBBISetBuilder;->getDictCategoriesStart()I

    move-result v1

    iput v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    .line 1142
    iget v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fLASlotsInUse:I

    if-ne v1, v4, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    add-int/2addr v1, v4

    :goto_1
    iput v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    .line 1144
    iget v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    const/16 v2, 0xff

    if-gt v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 1147
    :goto_2
    iget-object v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v5}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    if-eqz v1, :cond_4

    .line 1150
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v6

    sget v7, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    sub-int/2addr v6, v7

    .line 1151
    new-array v6, v6, [C

    iput-object v6, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    .line 1152
    iput v5, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    goto :goto_3

    .line 1154
    :cond_4
    invoke-virtual {p0}, Lcom/ibm/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v6

    sget v7, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 1155
    new-array v6, v6, [C

    iput-object v6, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    mul-int/lit8 v6, v5, 0x2

    .line 1156
    iput v6, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    .line 1159
    :goto_3
    iget-object v6, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-boolean v6, v6, Lcom/ibm/icu/text/RBBIRuleBuilder;->fLookAheadHardBreak:Z

    if-eqz v6, :cond_5

    .line 1160
    iget v6, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    or-int/2addr v6, v4

    iput v6, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    .line 1162
    :cond_5
    iget-object v6, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v6, v6, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v6}, Lcom/ibm/icu/text/RBBISetBuilder;->sawBOF()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1163
    iget v6, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    :cond_6
    if-eqz v1, :cond_7

    .line 1166
    iget v6, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    .line 1169
    :cond_7
    iget-object v6, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v6, v6, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v6}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v6

    const/4 v7, 0x0

    .line 1170
    :goto_4
    iget v8, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    if-ge v7, v8, :cond_10

    .line 1171
    iget-object v8, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    mul-int v9, v7, v5

    if-eqz v1, :cond_a

    .line 1174
    iget v10, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-ltz v10, :cond_8

    iget v10, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-gt v10, v2, :cond_8

    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    :goto_5
    invoke-static {v10}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 1175
    iget v10, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    if-ltz v10, :cond_9

    iget v10, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    if-gt v10, v2, :cond_9

    const/4 v10, 0x1

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    :goto_6
    invoke-static {v10}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    goto :goto_9

    .line 1177
    :cond_a
    iget v10, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    const v11, 0xffff

    if-ltz v10, :cond_b

    iget v10, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-gt v10, v11, :cond_b

    const/4 v10, 0x1

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    :goto_7
    invoke-static {v10}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 1178
    iget v10, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    if-ltz v10, :cond_c

    iget v10, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    if-gt v10, v11, :cond_c

    const/4 v10, 0x1

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    :goto_8
    invoke-static {v10}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 1180
    :goto_9
    iget-object v10, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v11, v9, 0x0

    iget v12, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    int-to-char v12, v12

    aput-char v12, v10, v11

    .line 1181
    iget-object v10, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v11, v9, 0x1

    iget v12, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    int-to-char v12, v12

    aput-char v12, v10, v11

    .line 1182
    iget-object v10, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v11, v9, 0x2

    iget v12, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    int-to-char v12, v12

    aput-char v12, v10, v11

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v6, :cond_f

    if-eqz v1, :cond_e

    .line 1185
    iget-object v11, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v11, v11, v10

    if-ltz v11, :cond_d

    iget-object v11, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v11, v11, v10

    if-gt v11, v2, :cond_d

    const/4 v11, 0x1

    goto :goto_b

    :cond_d
    const/4 v11, 0x0

    :goto_b
    invoke-static {v11}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 1187
    :cond_e
    iget-object v11, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v12, v9, 0x3

    add-int/2addr v12, v10

    iget-object v13, v8, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v13, v13, v10

    int-to-char v13, v13

    aput-char v13, v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_10
    return-object v0
.end method

.method findDuplCharClassFrom(Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;)Z
    .locals 10

    .line 902
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 903
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 907
    :goto_0
    iget v5, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_5

    .line 912
    iget v5, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    iget-object v6, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v6, v6, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v6}, Lcom/ibm/icu/text/RBBISetBuilder;->getDictCategoriesStart()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    .line 913
    invoke-virtual {v5}, Lcom/ibm/icu/text/RBBISetBuilder;->getDictCategoriesStart()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v1

    .line 914
    :goto_1
    iget v6, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    const/4 v7, 0x1

    :goto_2
    add-int/2addr v6, v7

    iput v6, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    iget v6, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-ge v6, v5, :cond_4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v0, :cond_2

    .line 916
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 917
    iget-object v4, v3, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    iget v8, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    aget v4, v4, v8

    .line 918
    iget-object v3, v3, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    iget v8, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    aget v3, v3, v8

    if-eq v4, v3, :cond_1

    move v9, v4

    move v4, v3

    move v3, v9

    goto :goto_4

    :cond_1
    add-int/lit8 v6, v6, 0x1

    move v9, v4

    move v4, v3

    move v3, v9

    goto :goto_3

    :cond_2
    :goto_4
    if-ne v3, v4, :cond_3

    return v7

    .line 914
    :cond_3
    iget v6, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    goto :goto_2

    .line 907
    :cond_4
    iget v5, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    add-int/2addr v5, v7

    iput v5, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    goto :goto_0

    :cond_5
    return v2
.end method

.method findDuplicateSafeState(Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;)Z
    .locals 10

    .line 996
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 998
    :goto_0
    iget v1, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_6

    .line 999
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    iget v2, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    .line 1000
    iget v2, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    const/4 v4, 0x1

    :goto_1
    add-int/2addr v2, v4

    iput v2, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    iget v2, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-ge v2, v0, :cond_5

    .line 1001
    iget-object v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    iget v5, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    .line 1003
    array-length v5, v1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    .line 1005
    aget-short v7, v1, v6

    .line 1006
    aget-short v8, v2, v6

    if-eq v7, v8, :cond_2

    .line 1007
    iget v9, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    if-eq v7, v9, :cond_0

    iget v9, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-ne v7, v9, :cond_1

    :cond_0
    iget v7, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    if-eq v8, v7, :cond_2

    iget v7, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-eq v8, v7, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_4

    return v4

    .line 1000
    :cond_4
    iget v2, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    goto :goto_1

    .line 998
    :cond_5
    iget v1, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    add-int/2addr v1, v4

    iput v1, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    goto :goto_0

    :cond_6
    return v3
.end method

.method findDuplicateState(Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;)Z
    .locals 10

    .line 957
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 958
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v1

    .line 960
    :goto_0
    iget v2, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_7

    .line 961
    iget-object v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    iget v3, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 962
    iget v3, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    const/4 v5, 0x1

    :goto_1
    add-int/2addr v3, v5

    iput v3, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    iget v3, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-ge v3, v0, :cond_6

    .line 963
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    iget v6, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 964
    iget v6, v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    iget v7, v3, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-ne v6, v7, :cond_5

    iget v6, v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    iget v7, v3, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    if-ne v6, v7, :cond_5

    iget v6, v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    iget v7, v3, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    if-eq v6, v7, :cond_0

    goto :goto_4

    :cond_0
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_4

    .line 971
    iget-object v7, v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v7, v7, v6

    .line 972
    iget-object v8, v3, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v8, v8, v6

    if-eq v7, v8, :cond_3

    .line 973
    iget v9, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    if-eq v7, v9, :cond_1

    iget v9, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-ne v7, v9, :cond_2

    :cond_1
    iget v7, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    if-eq v8, v7, :cond_3

    iget v7, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-eq v8, v7, :cond_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_5

    return v5

    .line 962
    :cond_5
    :goto_4
    iget v3, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    goto :goto_1

    .line 960
    :cond_6
    iget v2, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    add-int/2addr v2, v5

    iput v2, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    goto :goto_0

    :cond_7
    return v4
.end method

.method flagAcceptingStates()V
    .locals 9

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 694
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v2

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/ibm/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 696
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 697
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/RBBINode;

    const/4 v4, 0x0

    .line 698
    :goto_1
    iget-object v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 699
    iget-object v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 700
    iget-object v6, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 705
    iget v6, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    const/4 v7, 0x1

    if-nez v6, :cond_0

    .line 707
    iget-object v6, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fLookAheadRuleMap:[I

    iget v8, v3, Lcom/ibm/icu/text/RBBINode;->fVal:I

    aget v6, v6, v8

    iput v6, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    .line 708
    iget v6, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-nez v6, :cond_0

    .line 709
    iput v7, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    .line 712
    :cond_0
    iget v6, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-ne v6, v7, :cond_1

    iget v6, v3, Lcom/ibm/icu/text/RBBINode;->fVal:I

    if-eqz v6, :cond_1

    .line 716
    iget-object v6, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fLookAheadRuleMap:[I

    iget v7, v3, Lcom/ibm/icu/text/RBBINode;->fVal:I

    aget v6, v6, v7

    iput v6, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method flagLookAheadStates()V
    .locals 8

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 737
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/ibm/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 738
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 739
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/RBBINode;

    const/4 v4, 0x0

    .line 740
    :goto_1
    iget-object v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 741
    iget-object v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 742
    iget-object v6, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 743
    iget-object v6, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fLookAheadRuleMap:[I

    iget v7, v3, Lcom/ibm/icu/text/RBBINode;->fVal:I

    aget v6, v6, v7

    .line 745
    iput v6, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method flagTaggedStates()V
    .locals 7

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 765
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v2

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/ibm/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 766
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 767
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/RBBINode;

    const/4 v4, 0x0

    .line 769
    :goto_1
    iget-object v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 770
    iget-object v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 771
    iget-object v6, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 772
    iget-object v5, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagVals:Ljava/util/SortedSet;

    iget v6, v3, Lcom/ibm/icu/text/RBBINode;->fVal:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method getSafeTableSize()I
    .locals 6

    .line 1284
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1287
    :cond_0
    sget v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    .line 1288
    iget-object v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1289
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [S

    array-length v3, v3

    const/16 v4, 0xff

    const/4 v5, 0x1

    if-gt v2, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    :goto_0
    add-int/lit8 v3, v3, 0x3

    mul-int v5, v5, v3

    mul-int v2, v2, v5

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    return v0
.end method

.method getTableSize()I
    .locals 6

    .line 1109
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fTreeRoots:[Lcom/ibm/icu/text/RBBINode;

    iget v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1112
    :cond_0
    sget v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    .line 1113
    iget-object v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1114
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v3}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v3

    const/16 v4, 0xff

    const/4 v5, 0x1

    if-gt v2, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    :goto_0
    add-int/lit8 v3, v3, 0x3

    mul-int v5, v5, v3

    mul-int v2, v2, v5

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    return v0
.end method

.method mapLookAheadRules()V
    .locals 9

    .line 624
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fScanner:Lcom/ibm/icu/text/RBBIRuleScanner;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBIRuleScanner;->numRules()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fLookAheadRuleMap:[I

    .line 626
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 636
    iget-object v3, v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/text/RBBINode;

    .line 637
    iget v8, v6, Lcom/ibm/icu/text/RBBINode;->fType:I

    if-eq v8, v7, :cond_1

    goto :goto_1

    .line 641
    :cond_1
    iget v4, v6, Lcom/ibm/icu/text/RBBINode;->fVal:I

    .line 644
    iget-object v6, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fLookAheadRuleMap:[I

    aget v4, v6, v4

    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    move v5, v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    .line 659
    iget v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fLASlotsInUse:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fLASlotsInUse:I

    .line 666
    :cond_5
    iget-object v2, v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/RBBINode;

    .line 667
    iget v4, v3, Lcom/ibm/icu/text/RBBINode;->fType:I

    if-eq v4, v7, :cond_6

    goto :goto_2

    .line 670
    :cond_6
    iget v3, v3, Lcom/ibm/icu/text/RBBINode;->fVal:I

    .line 671
    iget-object v4, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fLookAheadRuleMap:[I

    aget v6, v4, v3

    .line 673
    aput v5, v4, v3

    goto :goto_2

    :cond_7
    return-void
.end method

.method mergeRuleStatusVals()V
    .locals 6

    .line 819
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 821
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 824
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Lcom/ibm/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 827
    invoke-interface {v0, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 828
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Lcom/ibm/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 834
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 835
    iget-object v2, v0, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagVals:Ljava/util/SortedSet;

    .line 836
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Lcom/ibm/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 842
    iget-object v3, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Lcom/ibm/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 843
    iget-object v4, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Lcom/ibm/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    iget-object v4, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Lcom/ibm/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object v4, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Lcom/ibm/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 852
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method printPosSets(Lcom/ibm/icu/text/RBBINode;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 873
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/text/RBBINode;->printNode(Lcom/ibm/icu/text/RBBINode;)V

    .line 874
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Nullable:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 876
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "         firstpos:  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 877
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    .line 879
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "         lastpos:   "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 880
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    .line 882
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "         followpos: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 883
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    .line 885
    iget-object v0, p1, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->printPosSets(Lcom/ibm/icu/text/RBBINode;)V

    .line 886
    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RBBITableBuilder;->printPosSets(Lcom/ibm/icu/text/RBBINode;)V

    return-void
.end method

.method printReverseTable()V
    .locals 12

    .line 1402
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    .line 1423
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "    Safe Reverse Table \n"

    .line 1402
    invoke-virtual {v0, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1403
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1404
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "   --- nullptr ---\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void

    .line 1407
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    array-length v0, v0

    .line 1408
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "state |           i n p u t     s y m b o l s \n"

    invoke-virtual {v3, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1409
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "      | Acc  LA    Tag"

    invoke-virtual {v3, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/4 v3, 0x0

    :goto_0
    const-string v4, " %2d"

    const/4 v5, 0x1

    if-ge v3, v0, :cond_1

    .line 1411
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v6, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1413
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "\n"

    invoke-virtual {v3, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1414
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v6, v1, [Ljava/lang/Object;

    const-string v8, "      |---------------"

    invoke-virtual {v3, v8, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 1416
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "---"

    invoke-virtual {v6, v9, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1418
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/4 v3, 0x0

    .line 1420
    :goto_2
    iget-object v6, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 1421
    iget-object v6, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [S

    .line 1422
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    const-string v10, "  %3d | "

    invoke-virtual {v8, v10, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1423
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v1

    aput-object v2, v9, v5

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const-string v10, "%3d %3d %5d "

    invoke-virtual {v8, v10, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_3

    .line 1425
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v10, v5, [Ljava/lang/Object;

    aget-short v11, v6, v8

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-virtual {v9, v4, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1427
    :cond_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1429
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "\n\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method printRuleStatusTable()V
    .locals 5

    .line 1446
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Lcom/ibm/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    .line 1448
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "index |  tags \n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1449
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "-------------------\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1451
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1453
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x7

    .line 1454
    invoke-static {v1, v3}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_0

    .line 1456
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1457
    invoke-static {v4, v3}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    goto :goto_1

    .line 1459
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    .line 1461
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method printSet(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/ibm/icu/text/RBBINode;",
            ">;)V"
        }
    .end annotation

    .line 1348
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/RBBINode;

    .line 1349
    iget v0, v0, Lcom/ibm/icu/text/RBBINode;->fSerialNum:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    goto :goto_0

    .line 1351
    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method printStates()V
    .locals 7

    .line 1366
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "state |           i n p u t     s y m b o l s \n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1367
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "      | Acc  LA    Tag"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1368
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v2}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v2

    const/4 v3, 0x4

    if-ge v1, v2, :cond_0

    .line 1369
    invoke-static {v1, v3}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1371
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1372
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "      |---------------"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1373
    :goto_1
    iget-object v4, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v4}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1374
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "----"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1376
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1378
    :goto_2
    iget-object v4, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1379
    iget-object v4, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    const/4 v5, 0x5

    .line 1380
    invoke-static {v1, v5}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    .line 1381
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1383
    iget v5, v4, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    .line 1384
    iget v5, v4, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    invoke-static {v5, v3}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    .line 1385
    iget v5, v4, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    .line 1386
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1387
    :goto_3
    iget-object v6, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v6, v6, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v6}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1388
    iget-object v6, v4, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v6, v6, v5

    invoke-static {v6, v3}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1390
    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1392
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method removeColumn(I)V
    .locals 7

    .line 936
    iget-object v0, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 938
    iget-object v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 940
    iget-object v3, v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    iget-object v4, v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 941
    iget-object v4, v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    add-int/lit8 v5, p1, 0x1

    array-length v6, v3

    sub-int/2addr v6, p1

    invoke-static {v4, v5, v3, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 942
    iput-object v3, v2, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method removeDuplicateStates()I
    .locals 3

    .line 1090
    new-instance v0, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;-><init>(II)V

    .line 1093
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->findDuplicateState(Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1095
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RBBITableBuilder;->removeState(Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method removeSafeState(Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;)V
    .locals 7

    .line 1061
    iget v0, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    .line 1062
    iget p1, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    .line 1066
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1067
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 1069
    iget-object v4, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [S

    const/4 v5, 0x0

    .line 1070
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 1071
    aget-short v6, v4, v5

    if-ne v6, p1, :cond_0

    move v6, v0

    goto :goto_2

    :cond_0
    if-le v6, p1, :cond_1

    add-int/lit8 v6, v6, -0x1

    :cond_1
    :goto_2
    int-to-short v6, v6

    .line 1078
    aput-short v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method removeState(Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;)V
    .locals 9

    .line 1029
    iget v0, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->first:I

    .line 1030
    iget p1, p1, Lcom/ibm/icu/text/RBBIRuleBuilder$IntPair;->second:I

    .line 1034
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1036
    iget-object v1, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1037
    iget-object v2, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fRB:Lcom/ibm/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Lcom/ibm/icu/text/RBBIRuleBuilder;->fSetBuilder:Lcom/ibm/icu/text/RBBISetBuilder;

    invoke-virtual {v2}, Lcom/ibm/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 1039
    iget-object v5, p0, Lcom/ibm/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_2

    .line 1041
    iget-object v7, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v7, v7, v6

    if-ne v7, p1, :cond_0

    move v7, v0

    goto :goto_2

    :cond_0
    if-le v7, p1, :cond_1

    add-int/lit8 v7, v7, -0x1

    .line 1048
    :cond_1
    :goto_2
    iget-object v8, v5, Lcom/ibm/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aput v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
