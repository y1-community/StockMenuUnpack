.class public Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;
.super Lcom/ibm/icu/text/MessagePatternUtil$Node;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComplexArgStyleNode"
.end annotation


# instance fields
.field private argType:Lcom/ibm/icu/text/MessagePattern$ArgType;

.field private explicitOffset:Z

.field private volatile list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;",
            ">;"
        }
    .end annotation
.end field

.field private offset:D


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/MessagePattern$ArgType;)V
    .locals 1

    const/4 v0, 0x0

    .line 382
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePatternUtil$Node;-><init>(Lcom/ibm/icu/text/MessagePatternUtil$1;)V

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    .line 383
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->argType:Lcom/ibm/icu/text/MessagePattern$ArgType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/MessagePattern$ArgType;Lcom/ibm/icu/text/MessagePatternUtil$1;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Lcom/ibm/icu/text/MessagePattern$ArgType;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->addVariant(Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 0

    .line 300
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->freeze()Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2202(Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;Z)Z
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->explicitOffset:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;D)D
    .locals 0

    .line 300
    iput-wide p1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->offset:D

    return-wide p1
.end method

.method private addVariant(Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private freeze()Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->argType:Lcom/ibm/icu/text/MessagePattern$ArgType;

    return-object v0
.end method

.method public getOffset()D
    .locals 2

    .line 321
    iget-wide v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->offset:D

    return-wide v0
.end method

.method public getVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    return-object v0
.end method

.method public getVariantsByType(Ljava/util/List;Ljava/util/List;)Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;",
            ">;)",
            "Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 349
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 351
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 353
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;

    .line 354
    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;->isSelectorNumeric()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 355
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;->getSelector()Ljava/lang/String;

    move-result-object v3

    const-string v4, "other"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 362
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public hasExplicitOffset()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->explicitOffset:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->argType:Lcom/ibm/icu/text/MessagePattern$ArgType;

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " style) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->hasExplicitOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "offset:"

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->offset:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->list:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
