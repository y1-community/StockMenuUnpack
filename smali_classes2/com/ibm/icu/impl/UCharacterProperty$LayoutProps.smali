.class final Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayoutProps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps$IsAcceptable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DATA_FORMAT:I = 0x4c61796f

.field static final INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;

.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps$IsAcceptable;

.field private static final IX_INPC_TRIE_TOP:I = 0x1

.field private static final IX_INSC_TRIE_TOP:I = 0x2

.field private static final IX_MAX_VALUES:I = 0x9

.field private static final IX_VO_TRIE_TOP:I = 0x3

.field private static final MAX_INPC_SHIFT:I = 0x18

.field private static final MAX_INSC_SHIFT:I = 0x10

.field private static final MAX_VO_SHIFT:I = 0x8


# instance fields
.field inpcTrie:Lcom/ibm/icu/util/CodePointTrie;

.field inscTrie:Lcom/ibm/icu/util/CodePointTrie;

.field maxInpcValue:I

.field maxInscValue:I

.field maxVoValue:I

.field voTrie:Lcom/ibm/icu/util/CodePointTrie;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 114
    const-class v0, Lcom/ibm/icu/impl/UCharacterProperty;

    .line 121
    new-instance v0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps$IsAcceptable;-><init>(Lcom/ibm/icu/impl/UCharacterProperty$1;)V

    sput-object v0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps$IsAcceptable;

    .line 145
    new-instance v0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->inpcTrie:Lcom/ibm/icu/util/CodePointTrie;

    .line 148
    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->inscTrie:Lcom/ibm/icu/util/CodePointTrie;

    .line 149
    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->voTrie:Lcom/ibm/icu/util/CodePointTrie;

    const/4 v1, 0x0

    .line 151
    iput v1, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->maxInpcValue:I

    .line 152
    iput v1, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->maxInscValue:I

    .line 153
    iput v1, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->maxVoValue:I

    const-string v2, "ulayout.icu"

    .line 156
    invoke-static {v2}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const v3, 0x4c61796f    # 5.9106748E7f

    .line 158
    :try_start_0
    sget-object v4, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps$IsAcceptable;

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)Lcom/ibm/icu/util/VersionInfo;

    .line 159
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 160
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const/16 v5, 0xc

    if-lt v4, v5, :cond_4

    .line 165
    new-array v5, v4, [I

    .line 166
    aput v4, v5, v1

    const/4 v1, 0x1

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v4, :cond_0

    .line 168
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v4, v4, 0x4

    .line 172
    aget v1, v5, v1

    sub-int v4, v1, v4

    const/16 v6, 0x10

    if-lt v4, v6, :cond_1

    .line 175
    invoke-static {v0, v0, v2}, Lcom/ibm/icu/util/CodePointTrie;->fromBinary(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Lcom/ibm/icu/util/CodePointTrie;

    move-result-object v4

    iput-object v4, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->inpcTrie:Lcom/ibm/icu/util/CodePointTrie;

    .line 177
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int v4, v1, v4

    .line 179
    invoke-static {v2, v4}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/4 v4, 0x2

    .line 181
    aget v4, v5, v4

    sub-int v1, v4, v1

    if-lt v1, v6, :cond_2

    .line 184
    invoke-static {v0, v0, v2}, Lcom/ibm/icu/util/CodePointTrie;->fromBinary(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Lcom/ibm/icu/util/CodePointTrie;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->inscTrie:Lcom/ibm/icu/util/CodePointTrie;

    .line 186
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v3

    sub-int v1, v4, v1

    .line 188
    invoke-static {v2, v1}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/4 v1, 0x3

    .line 190
    aget v1, v5, v1

    sub-int v4, v1, v4

    if-lt v4, v6, :cond_3

    .line 193
    invoke-static {v0, v0, v2}, Lcom/ibm/icu/util/CodePointTrie;->fromBinary(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Lcom/ibm/icu/util/CodePointTrie;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->voTrie:Lcom/ibm/icu/util/CodePointTrie;

    .line 195
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, v3

    sub-int/2addr v1, v0

    .line 197
    invoke-static {v2, v1}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v0, 0x9

    .line 199
    aget v0, v5, v0

    ushr-int/lit8 v1, v0, 0x18

    .line 200
    iput v1, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->maxInpcValue:I

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 201
    iput v1, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->maxInscValue:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 202
    iput v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->maxVoValue:I

    return-void

    .line 162
    :cond_4
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string v1, "Text layout properties data: not enough indexes"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 204
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public addPropertyStarts(ILcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 221
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->voTrie:Lcom/ibm/icu/util/CodePointTrie;

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->inscTrie:Lcom/ibm/icu/util/CodePointTrie;

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->inpcTrie:Lcom/ibm/icu/util/CodePointTrie;

    :goto_0
    if-eqz v0, :cond_1

    .line 231
    new-instance p1, Lcom/ibm/icu/util/CodePointMap$Range;

    invoke-direct {p1}, Lcom/ibm/icu/util/CodePointMap$Range;-><init>()V

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    .line 233
    invoke-virtual {v0, v1, v2, p1}, Lcom/ibm/icu/util/CodePointTrie;->getRange(ILcom/ibm/icu/util/CodePointMap$ValueFilter;Lcom/ibm/icu/util/CodePointMap$Range;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {p2, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 235
    invoke-virtual {p1}, Lcom/ibm/icu/util/CodePointMap$Range;->getEnd()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    return-object p2

    .line 225
    :cond_1
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no data for one of the text layout properties; src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LayoutProps"

    const-string v1, ""

    invoke-direct {p2, p1, v0, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
