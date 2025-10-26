.class public Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;
.super Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArgNode"
.end annotation


# instance fields
.field private argType:Lcom/ibm/icu/text/MessagePattern$ArgType;

.field private complexStyle:Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

.field private name:Ljava/lang/String;

.field private number:I

.field private style:Ljava/lang/String;

.field private typeName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 281
    sget-object v0, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;->ARG:Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode$Type;Lcom/ibm/icu/text/MessagePatternUtil$1;)V

    const/4 v0, -0x1

    .line 289
    iput v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->number:I

    return-void
.end method

.method static synthetic access$1002(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;I)I
    .locals 0

    .line 214
    iput p1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->number:I

    return p1
.end method

.method static synthetic access$1202(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    return-object p1
.end method

.method static synthetic access$800()Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;
    .locals 1

    .line 214
    invoke-static {}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->createArgNode()Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Lcom/ibm/icu/text/MessagePattern$ArgType;)Lcom/ibm/icu/text/MessagePattern$ArgType;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->argType:Lcom/ibm/icu/text/MessagePattern$ArgType;

    return-object p1
.end method

.method private static createArgNode()Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;
    .locals 1

    .line 284
    new-instance v0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;

    invoke-direct {v0}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->argType:Lcom/ibm/icu/text/MessagePattern$ArgType;

    return-object v0
.end method

.method public getComplexStyle()Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->number:I

    return v0
.end method

.method public getSimpleStyle()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->argType:Lcom/ibm/icu/text/MessagePattern$ArgType;

    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2c

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v2, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->argType:Lcom/ibm/icu/text/MessagePattern$ArgType;

    sget-object v3, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v2, v3, :cond_0

    .line 270
    iget-object v2, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const/16 v1, 0x7d

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
