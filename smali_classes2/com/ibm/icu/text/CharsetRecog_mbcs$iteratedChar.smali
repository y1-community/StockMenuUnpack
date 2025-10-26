.class Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;
.super Ljava/lang/Object;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "iteratedChar"
.end annotation


# instance fields
.field charValue:I

.field done:Z

.field error:Z

.field nextIndex:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 145
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    .line 146
    iput-boolean v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 147
    iput-boolean v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    return-void
.end method


# virtual methods
.method nextByte(Lcom/ibm/icu/text/CharsetDetector;)I
    .locals 2

    .line 157
    iget v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iget v1, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    const/4 p1, -0x1

    return p1

    .line 161
    :cond_0
    iget-object p1, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    iget v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 151
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    .line 152
    iput-boolean v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 153
    iput-boolean v0, p0, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    return-void
.end method
