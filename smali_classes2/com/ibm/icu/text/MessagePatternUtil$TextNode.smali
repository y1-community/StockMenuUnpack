.class public Lcom/ibm/icu/text/MessagePatternUtil$TextNode;
.super Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextNode"
.end annotation


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 203
    sget-object v0, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;->TEXT:Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;Lcom/ibm/icu/text/MessagePatternUtil$1;)V

    .line 204
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/MessagePatternUtil$1;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ibm/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ibm/icu/text/MessagePatternUtil$TextNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u00ab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u00bb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
