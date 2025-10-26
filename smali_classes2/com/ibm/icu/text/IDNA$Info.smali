.class public final Lcom/ibm/icu/text/IDNA$Info;
.super Ljava/lang/Object;
.source "IDNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/IDNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# instance fields
.field private errors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field

.field private isBiDi:Z

.field private isOkBiDi:Z

.field private isTransDiff:Z

.field private labelErrors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const-class v0, Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    .line 224
    const-class v0, Lcom/ibm/icu/text/IDNA$Error;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/ibm/icu/text/IDNA$Info;->isTransDiff:Z

    .line 226
    iput-boolean v0, p0, Lcom/ibm/icu/text/IDNA$Info;->isBiDi:Z

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/ibm/icu/text/IDNA$Info;->isOkBiDi:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/text/IDNA$Info;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Lcom/ibm/icu/text/IDNA$Info;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/ibm/icu/text/IDNA$Info;)Ljava/util/EnumSet;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/ibm/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ibm/icu/text/IDNA$Info;)Ljava/util/EnumSet;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/ibm/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ibm/icu/text/IDNA$Info;Z)Z
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcom/ibm/icu/text/IDNA$Info;->isTransDiff:Z

    return p1
.end method

.method static synthetic access$400(Lcom/ibm/icu/text/IDNA$Info;)Z
    .locals 0

    .line 217
    iget-boolean p0, p0, Lcom/ibm/icu/text/IDNA$Info;->isBiDi:Z

    return p0
.end method

.method static synthetic access$402(Lcom/ibm/icu/text/IDNA$Info;Z)Z
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcom/ibm/icu/text/IDNA$Info;->isBiDi:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ibm/icu/text/IDNA$Info;)Z
    .locals 0

    .line 217
    iget-boolean p0, p0, Lcom/ibm/icu/text/IDNA$Info;->isOkBiDi:Z

    return p0
.end method

.method static synthetic access$502(Lcom/ibm/icu/text/IDNA$Info;Z)Z
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcom/ibm/icu/text/IDNA$Info;->isOkBiDi:Z

    return p1
.end method

.method private reset()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/ibm/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    .line 258
    iget-object v0, p0, Lcom/ibm/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/ibm/icu/text/IDNA$Info;->isTransDiff:Z

    .line 260
    iput-boolean v0, p0, Lcom/ibm/icu/text/IDNA$Info;->isBiDi:Z

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/ibm/icu/text/IDNA$Info;->isOkBiDi:Z

    return-void
.end method


# virtual methods
.method public getErrors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/ibm/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/ibm/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTransitionalDifferent()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/ibm/icu/text/IDNA$Info;->isTransDiff:Z

    return v0
.end method
