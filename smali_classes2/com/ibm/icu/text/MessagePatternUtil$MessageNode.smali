.class public Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;
.super Lcom/ibm/icu/text/MessagePatternUtil$Node;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageNode"
.end annotation


# instance fields
.field private volatile list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePatternUtil$Node;-><init>(Lcom/ibm/icu/text/MessagePatternUtil$1;)V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/MessagePatternUtil$1;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->addContentsNode(Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;)Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->freeze()Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p0

    return-object p0
.end method

.method private addContentsNode(Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;)V
    .locals 3

    .line 102
    instance-of v0, p1, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;

    .line 105
    instance-of v1, v0, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;

    if-eqz v1, :cond_0

    .line 106
    check-cast v0, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;->access$100(Lcom/ibm/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;

    invoke-static {p1}, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;->access$100(Lcom/ibm/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;->access$102(Lcom/ibm/icu/text/MessagePatternUtil$TextNode;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private freeze()Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->list:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
