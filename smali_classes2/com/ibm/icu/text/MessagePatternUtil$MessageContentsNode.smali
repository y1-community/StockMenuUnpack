.class public Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;
.super Lcom/ibm/icu/text/MessagePatternUtil$Node;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageContentsNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;
    }
.end annotation


# instance fields
.field private type:Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;)V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePatternUtil$Node;-><init>(Lcom/ibm/icu/text/MessagePatternUtil$1;)V

    .line 172
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;->type:Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;Lcom/ibm/icu/text/MessagePatternUtil$1;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;)V

    return-void
.end method

.method static synthetic access$600()Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;
    .locals 1

    .line 126
    invoke-static {}, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;->createReplaceNumberNode()Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;

    move-result-object v0

    return-object v0
.end method

.method private static createReplaceNumberNode()Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;
    .locals 2

    .line 175
    new-instance v0, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;

    sget-object v1, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;)V

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;->type:Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "{REPLACE_NUMBER}"

    return-object v0
.end method
