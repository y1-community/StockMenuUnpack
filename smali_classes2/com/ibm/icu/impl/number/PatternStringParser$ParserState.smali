.class Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;
.super Ljava/lang/Object;
.source "PatternStringParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/PatternStringParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParserState"
.end annotation


# instance fields
.field offset:I

.field final pattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    const/4 p1, 0x0

    .line 217
    iput p1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->offset:I

    return-void
.end method


# virtual methods
.method next()I
    .locals 3

    .line 229
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->peek()I

    move-result v0

    .line 230
    iget v1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->offset:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->offset:I

    return v0
.end method

.method peek()I
    .locals 2

    .line 221
    iget v0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->offset:I

    iget-object v1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed pattern for ICU DecimalFormat: \""

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\": "

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at position "

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget p1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParserState;->offset:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
