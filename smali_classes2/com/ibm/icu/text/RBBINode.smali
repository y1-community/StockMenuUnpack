.class Lcom/ibm/icu/text/RBBINode;
.super Ljava/lang/Object;
.source "RBBINode.java"


# static fields
.field static final endMark:I = 0x6

.field static gLastSerial:I = 0x0

.field static final leafChar:I = 0x3

.field static final lookAhead:I = 0x4

.field static final nodeTypeLimit:I = 0x10

.field static final nodeTypeNames:[Ljava/lang/String;

.field static final opBreak:I = 0xd

.field static final opCat:I = 0x8

.field static final opLParen:I = 0xf

.field static final opOr:I = 0x9

.field static final opPlus:I = 0xb

.field static final opQuestion:I = 0xc

.field static final opReverse:I = 0xe

.field static final opStar:I = 0xa

.field static final opStart:I = 0x7

.field static final precLParen:I = 0x2

.field static final precOpCat:I = 0x4

.field static final precOpOr:I = 0x3

.field static final precStart:I = 0x1

.field static final precZero:I = 0x0

.field static final setRef:I = 0x0

.field static final tag:I = 0x5

.field static final uset:I = 0x1

.field static final varRef:I = 0x2


# instance fields
.field fChainIn:Z

.field fFirstPos:I

.field fFirstPosSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fFollowPos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fInputSet:Lcom/ibm/icu/text/UnicodeSet;

.field fLastPos:I

.field fLastPosSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fLeftChild:Lcom/ibm/icu/text/RBBINode;

.field fLookAheadEnd:Z

.field fNullable:Z

.field fParent:Lcom/ibm/icu/text/RBBINode;

.field fPrecedence:I

.field fRightChild:Lcom/ibm/icu/text/RBBINode;

.field fRuleRoot:Z

.field fSerialNum:I

.field fText:Ljava/lang/String;

.field fType:I

.field fVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "setRef"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "uset"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "varRef"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "leafChar"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lookAhead"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tag"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "endMark"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "opStart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "opCat"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "opOr"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "opStar"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "opPlus"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "opQuestion"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "opBreak"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "opReverse"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "opLParen"

    aput-object v2, v0, v1

    .line 42
    sput-object v0, Lcom/ibm/icu/text/RBBINode;->nodeTypeNames:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/ibm/icu/text/RBBINode;->fPrecedence:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 109
    :goto_0
    invoke-static {v2}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 110
    sget v2, Lcom/ibm/icu/text/RBBINode;->gLastSerial:I

    add-int/2addr v2, v1

    sput v2, Lcom/ibm/icu/text/RBBINode;->gLastSerial:I

    iput v2, p0, Lcom/ibm/icu/text/RBBINode;->fSerialNum:I

    .line 111
    iput p1, p0, Lcom/ibm/icu/text/RBBINode;->fType:I

    .line 113
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    .line 114
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    .line 115
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    const/4 p1, 0x4

    .line 117
    iput p1, p0, Lcom/ibm/icu/text/RBBINode;->fPrecedence:I

    goto :goto_1

    :cond_1
    const/16 v2, 0x9

    if-ne p1, v2, :cond_2

    const/4 p1, 0x3

    .line 119
    iput p1, p0, Lcom/ibm/icu/text/RBBINode;->fPrecedence:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x7

    if-ne p1, v2, :cond_3

    .line 121
    iput v1, p0, Lcom/ibm/icu/text/RBBINode;->fPrecedence:I

    goto :goto_1

    :cond_3
    const/16 v1, 0xf

    if-ne p1, v1, :cond_4

    const/4 p1, 0x2

    .line 123
    iput p1, p0, Lcom/ibm/icu/text/RBBINode;->fPrecedence:I

    goto :goto_1

    .line 125
    :cond_4
    iput v0, p0, Lcom/ibm/icu/text/RBBINode;->fPrecedence:I

    :goto_1
    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/RBBINode;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/ibm/icu/text/RBBINode;->fPrecedence:I

    .line 130
    sget v1, Lcom/ibm/icu/text/RBBINode;->gLastSerial:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ibm/icu/text/RBBINode;->gLastSerial:I

    iput v1, p0, Lcom/ibm/icu/text/RBBINode;->fSerialNum:I

    .line 131
    iget v1, p1, Lcom/ibm/icu/text/RBBINode;->fType:I

    iput v1, p0, Lcom/ibm/icu/text/RBBINode;->fType:I

    .line 132
    iget-object v1, p1, Lcom/ibm/icu/text/RBBINode;->fInputSet:Lcom/ibm/icu/text/UnicodeSet;

    iput-object v1, p0, Lcom/ibm/icu/text/RBBINode;->fInputSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 133
    iget v1, p1, Lcom/ibm/icu/text/RBBINode;->fPrecedence:I

    iput v1, p0, Lcom/ibm/icu/text/RBBINode;->fPrecedence:I

    .line 134
    iget-object v1, p1, Lcom/ibm/icu/text/RBBINode;->fText:Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 135
    iget v1, p1, Lcom/ibm/icu/text/RBBINode;->fFirstPos:I

    iput v1, p0, Lcom/ibm/icu/text/RBBINode;->fFirstPos:I

    .line 136
    iget v1, p1, Lcom/ibm/icu/text/RBBINode;->fLastPos:I

    iput v1, p0, Lcom/ibm/icu/text/RBBINode;->fLastPos:I

    .line 137
    iget-boolean v1, p1, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    iput-boolean v1, p0, Lcom/ibm/icu/text/RBBINode;->fNullable:Z

    .line 138
    iget v1, p1, Lcom/ibm/icu/text/RBBINode;->fVal:I

    iput v1, p0, Lcom/ibm/icu/text/RBBINode;->fVal:I

    .line 139
    iput-boolean v0, p0, Lcom/ibm/icu/text/RBBINode;->fRuleRoot:Z

    .line 140
    iget-boolean v0, p1, Lcom/ibm/icu/text/RBBINode;->fChainIn:Z

    iput-boolean v0, p0, Lcom/ibm/icu/text/RBBINode;->fChainIn:Z

    .line 141
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    .line 142
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p1, Lcom/ibm/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    return-void
.end method

.method static printHex(II)V
    .locals 3

    const/16 v0, 0x10

    .line 330
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v2, "00000"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 334
    invoke-static {p0, p1}, Lcom/ibm/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    return-void
.end method

.method static printInt(II)V
    .locals 1

    .line 323
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Lcom/ibm/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    return-void
.end method

.method static printNode(Lcom/ibm/icu/text/RBBINode;)V
    .locals 3

    if-nez p0, :cond_0

    .line 283
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " -- null --\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 285
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/RBBINode;->fSerialNum:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    .line 286
    sget-object v0, Lcom/ibm/icu/text/RBBINode;->nodeTypeNames:[Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/text/RBBINode;->fType:I

    aget-object v0, v0, v1

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    .line 287
    iget-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/ibm/icu/text/RBBINode;->fSerialNum:I

    :goto_0
    invoke-static {v0, v1}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    .line 288
    iget-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget v0, v0, Lcom/ibm/icu/text/RBBINode;->fSerialNum:I

    :goto_1
    invoke-static {v0, v1}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    .line 289
    iget-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget v2, v0, Lcom/ibm/icu/text/RBBINode;->fSerialNum:I

    :goto_2
    const/16 v0, 0xc

    invoke-static {v2, v0}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    .line 290
    iget v1, p0, Lcom/ibm/icu/text/RBBINode;->fFirstPos:I

    invoke-static {v1, v0}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    .line 291
    iget v0, p0, Lcom/ibm/icu/text/RBBINode;->fVal:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RBBINode;->printInt(II)V

    .line 293
    iget v0, p0, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 294
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ibm/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 297
    :cond_4
    :goto_3
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static printString(Ljava/lang/String;I)V
    .locals 3

    move v0, p1

    :goto_0
    const/16 v1, 0x20

    if-gez v0, :cond_0

    .line 308
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 311
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method cloneTree()Lcom/ibm/icu/text/RBBINode;
    .locals 2

    .line 158
    iget v0, p0, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBINode;->cloneTree()Lcom/ibm/icu/text/RBBINode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    goto :goto_0

    .line 165
    :cond_1
    new-instance v0, Lcom/ibm/icu/text/RBBINode;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/RBBINode;-><init>(Lcom/ibm/icu/text/RBBINode;)V

    .line 166
    iget-object v1, p0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {v1}, Lcom/ibm/icu/text/RBBINode;->cloneTree()Lcom/ibm/icu/text/RBBINode;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 168
    iput-object v0, v1, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    if-eqz v1, :cond_3

    .line 171
    invoke-virtual {v1}, Lcom/ibm/icu/text/RBBINode;->cloneTree()Lcom/ibm/icu/text/RBBINode;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    .line 172
    iput-object v0, v1, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    :cond_3
    :goto_0
    return-object v0
.end method

.method findNodes(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/RBBINode;",
            ">;I)V"
        }
    .end annotation

    .line 261
    iget v0, p0, Lcom/ibm/icu/text/RBBINode;->fType:I

    if-ne v0, p2, :cond_0

    .line 262
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method flattenSets()V
    .locals 2

    .line 226
    iget v0, p0, Lcom/ibm/icu/text/RBBINode;->fType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 228
    iget-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    if-eqz v0, :cond_2

    .line 229
    iget v1, v0, Lcom/ibm/icu/text/RBBINode;->fType:I

    if-nez v1, :cond_1

    .line 231
    iget-object v0, v0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 232
    iget-object v0, v0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 233
    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBINode;->cloneTree()Lcom/ibm/icu/text/RBBINode;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 234
    iput-object p0, v0, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBINode;->flattenSets()V

    .line 240
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    if-eqz v0, :cond_4

    .line 241
    iget v1, v0, Lcom/ibm/icu/text/RBBINode;->fType:I

    if-nez v1, :cond_3

    .line 243
    iget-object v0, v0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 244
    iget-object v0, v0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 245
    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBINode;->cloneTree()Lcom/ibm/icu/text/RBBINode;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    .line 246
    iput-object p0, v0, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    goto :goto_2

    .line 249
    :cond_3
    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBINode;->flattenSets()V

    :cond_4
    :goto_2
    return-void
.end method

.method flattenVariables()Lcom/ibm/icu/text/RBBINode;
    .locals 2

    .line 199
    iget v0, p0, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBINode;->cloneTree()Lcom/ibm/icu/text/RBBINode;

    move-result-object v0

    .line 201
    iget-boolean v1, p0, Lcom/ibm/icu/text/RBBINode;->fRuleRoot:Z

    iput-boolean v1, v0, Lcom/ibm/icu/text/RBBINode;->fRuleRoot:Z

    .line 202
    iget-boolean v1, p0, Lcom/ibm/icu/text/RBBINode;->fChainIn:Z

    iput-boolean v1, v0, Lcom/ibm/icu/text/RBBINode;->fChainIn:Z

    return-object v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBINode;->flattenVariables()Lcom/ibm/icu/text/RBBINode;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    .line 208
    iput-object p0, v0, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {v0}, Lcom/ibm/icu/text/RBBINode;->flattenVariables()Lcom/ibm/icu/text/RBBINode;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    .line 212
    iput-object p0, v0, Lcom/ibm/icu/text/RBBINode;->fParent:Lcom/ibm/icu/text/RBBINode;

    :cond_2
    return-object p0
.end method

.method printTree(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 347
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "-------------------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "    Serial       type     Parent  LeftChild  RightChild    position  value"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/text/RBBINode;->printNode(Lcom/ibm/icu/text/RBBINode;)V

    .line 353
    iget p1, p0, Lcom/ibm/icu/text/RBBINode;->fType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 354
    iget-object p1, p0, Lcom/ibm/icu/text/RBBINode;->fLeftChild:Lcom/ibm/icu/text/RBBINode;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 355
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/RBBINode;->printTree(Z)V

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/text/RBBINode;->fRightChild:Lcom/ibm/icu/text/RBBINode;

    if-eqz p1, :cond_2

    .line 359
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/RBBINode;->printTree(Z)V

    :cond_2
    return-void
.end method
