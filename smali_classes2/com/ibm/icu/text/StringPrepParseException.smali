.class public Lcom/ibm/icu/text/StringPrepParseException;
.super Ljava/text/ParseException;
.source "StringPrepParseException.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACE_PREFIX_ERROR:I = 0x6

.field public static final BUFFER_OVERFLOW_ERROR:I = 0x9

.field public static final CHECK_BIDI_ERROR:I = 0x4

.field public static final DOMAIN_NAME_TOO_LONG_ERROR:I = 0xb

.field public static final ILLEGAL_CHAR_FOUND:I = 0x1

.field public static final INVALID_CHAR_FOUND:I = 0x0

.field public static final LABEL_TOO_LONG_ERROR:I = 0x8

.field private static final PARSE_CONTEXT_LEN:I = 0x10

.field public static final PROHIBITED_ERROR:I = 0x2

.field public static final STD3_ASCII_RULES_ERROR:I = 0x5

.field public static final UNASSIGNED_ERROR:I = 0x3

.field public static final VERIFICATION_ERROR:I = 0x7

.field public static final ZERO_LENGTH_LABEL:I = 0xa

.field static final serialVersionUID:J = 0x635e5eec90e16737L


# instance fields
.field private error:I

.field private line:I

.field private postContext:Ljava/lang/StringBuffer;

.field private preContext:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    .line 84
    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 191
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    .line 197
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    .line 85
    iput p2, p0, Lcom/ibm/icu/text/StringPrepParseException;->error:I

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lcom/ibm/icu/text/StringPrepParseException;->line:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    .line 100
    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 191
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    .line 197
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    .line 101
    iput p2, p0, Lcom/ibm/icu/text/StringPrepParseException;->error:I

    .line 102
    invoke-direct {p0, p3, p4}, Lcom/ibm/icu/text/StringPrepParseException;->setContext(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 103
    iput p1, p0, Lcom/ibm/icu/text/StringPrepParseException;->line:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1

    const/4 v0, -0x1

    .line 120
    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 191
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    .line 197
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    .line 121
    iput p2, p0, Lcom/ibm/icu/text/StringPrepParseException;->error:I

    .line 122
    invoke-direct {p0, p3, p4}, Lcom/ibm/icu/text/StringPrepParseException;->setContext(Ljava/lang/String;I)V

    .line 123
    iput p5, p0, Lcom/ibm/icu/text/StringPrepParseException;->line:I

    return-void
.end method

.method private setContext(Ljava/lang/String;I)V
    .locals 0

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/StringPrepParseException;->setPreContext(Ljava/lang/String;I)V

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/StringPrepParseException;->setPostContext(Ljava/lang/String;I)V

    return-void
.end method

.method private setPostContext(Ljava/lang/String;I)V
    .locals 0

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/StringPrepParseException;->setPostContext([CI)V

    return-void
.end method

.method private setPostContext([CI)V
    .locals 2

    .line 218
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 219
    iget-object v1, p0, Lcom/ibm/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method private setPreContext(Ljava/lang/String;I)V
    .locals 0

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/StringPrepParseException;->setPreContext([CI)V

    return-void
.end method

.method private setPreContext([CI)V
    .locals 2

    const/16 v0, 0x10

    if-gt p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0xf

    :goto_0
    if-gt p2, v0, :cond_1

    move v0, p2

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 136
    instance-of v0, p1, Lcom/ibm/icu/text/StringPrepParseException;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 139
    :cond_0
    check-cast p1, Lcom/ibm/icu/text/StringPrepParseException;

    iget p1, p1, Lcom/ibm/icu/text/StringPrepParseException;->error:I

    iget v0, p0, Lcom/ibm/icu/text/StringPrepParseException;->error:I

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getError()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/ibm/icu/text/StringPrepParseException;->error:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-super {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". line:  "

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v1, p0, Lcom/ibm/icu/text/StringPrepParseException;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". preContext:  "

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Lcom/ibm/icu/text/StringPrepParseException;->preContext:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    const-string v1, ". postContext: "

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lcom/ibm/icu/text/StringPrepParseException;->postContext:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
