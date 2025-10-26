.class public Lcom/ibm/icu/impl/UnicodeSetStringSpan;
.super Ljava/lang/Object;
.source "UnicodeSetStringSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x7f

.field static final ALL_CP_CONTAINED:S = 0xffs

.field public static final BACK:I = 0x10

.field public static final BACK_UTF16_CONTAINED:I = 0x12

.field public static final BACK_UTF16_NOT_CONTAINED:I = 0x11

.field public static final CONTAINED:I = 0x2

.field public static final FWD:I = 0x20

.field public static final FWD_UTF16_CONTAINED:I = 0x22

.field public static final FWD_UTF16_NOT_CONTAINED:I = 0x21

.field static final LONG_SPAN:S = 0xfes

.field public static final NOT_CONTAINED:I = 0x1

.field public static final WITH_COUNT:I = 0x40


# instance fields
.field private all:Z

.field private final maxLength16:I

.field private offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

.field private someRelevant:Z

.field private spanLengths:[S

.field private spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

.field private spanSet:Lcom/ibm/icu/text/UnicodeSet;

.field private strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/UnicodeSetStringSpan;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/UnicodeSetStringSpan;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iget-object v0, p1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    iput-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 220
    iput-object p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    .line 221
    iget p2, p1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    iput p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    .line 222
    iget-boolean p2, p1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    iput-boolean p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    const/4 p2, 0x1

    .line 223
    iput-boolean p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    .line 224
    iget-object p2, p1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    iget-object v0, p1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {p2, v0}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 225
    iget-object p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    iput-object p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 227
    :cond_0
    iget-object p2, p1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p2}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/text/UnicodeSet;

    iput-object p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 229
    :goto_0
    new-instance p2, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-direct {p2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    .line 231
    iget-object p1, p1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    iput-object p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/UnicodeSet;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    iput-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 91
    iput-object p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    const/4 p2, 0x1

    const/16 v2, 0x7f

    if-ne p3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 92
    :goto_0
    iput-boolean v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    .line 93
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    iput-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 99
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    .line 108
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 112
    iput-boolean v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 114
    iget-object v4, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 118
    iget-object v4, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 122
    :cond_2
    iget-object v6, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v7, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v6, v4, v7}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v4

    if-ge v4, v5, :cond_3

    .line 124
    iput-boolean p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    :cond_3
    if-le v5, v3, :cond_4

    move v3, v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 131
    :cond_5
    iput v3, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    .line 132
    iget-boolean p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    if-nez p2, :cond_6

    and-int/lit8 p2, p3, 0x40

    if-nez p2, :cond_6

    return-void

    .line 138
    :cond_6
    iget-boolean p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz p2, :cond_7

    .line 139
    iget-object p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p2}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 146
    :cond_7
    iget-boolean p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz p2, :cond_8

    mul-int/lit8 v2, v0, 0x2

    goto :goto_2

    :cond_8
    move v2, v0

    .line 152
    :goto_2
    new-array v2, v2, [S

    iput-object v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    if-eqz p2, :cond_9

    move p2, v0

    goto :goto_3

    :cond_9
    const/4 p2, 0x0

    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_11

    .line 165
    iget-object v3, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 166
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 167
    iget-object v5, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v6, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v5, v3, v6}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v5

    if-ge v5, v4, :cond_e

    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_b

    and-int/lit8 v6, p3, 0x20

    if-eqz v6, :cond_a

    .line 172
    iget-object v6, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    invoke-static {v5}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->makeSpanLengthByte(I)S

    move-result v5

    aput-short v5, v6, v2

    :cond_a
    and-int/lit8 v5, p3, 0x10

    if-eqz v5, :cond_c

    .line 175
    iget-object v5, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v6, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 176
    invoke-virtual {v5, v3, v4, v6}, Lcom/ibm/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v5

    sub-int v5, v4, v5

    .line 177
    iget-object v6, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v7, p2, v2

    invoke-static {v5}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->makeSpanLengthByte(I)S

    move-result v5

    aput-short v5, v6, v7

    goto :goto_5

    .line 180
    :cond_b
    iget-object v5, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v6, p2, v2

    aput-short v1, v5, v6

    aput-short v1, v5, v2

    :cond_c
    :goto_5
    if-eqz p1, :cond_10

    and-int/lit8 v5, p3, 0x20

    if-eqz v5, :cond_d

    .line 189
    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 190
    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->addToSpanNotSet(I)V

    :cond_d
    and-int/lit8 v5, p3, 0x10

    if-eqz v5, :cond_10

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/String;->codePointBefore(I)I

    move-result v3

    .line 194
    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->addToSpanNotSet(I)V

    goto :goto_6

    .line 198
    :cond_e
    iget-boolean v3, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    const/16 v4, 0xff

    if-eqz v3, :cond_f

    .line 199
    iget-object v3, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v5, p2, v2

    aput-short v4, v3, v5

    aput-short v4, v3, v2

    goto :goto_6

    .line 202
    :cond_f
    iget-object v3, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aput-short v4, v3, v2

    :cond_10
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 208
    :cond_11
    iget-boolean p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz p1, :cond_12

    .line 209
    iget-object p1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    :cond_12
    return-void
.end method

.method private addToSpanNotSet(I)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->cloneAsThawed()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method static makeSpanLengthByte(I)S
    .locals 1

    const/16 v0, 0xfe

    if-ge p0, v0, :cond_0

    int-to-short v0, p0

    :cond_0
    return v0
.end method

.method private static matches16(Ljava/lang/CharSequence;ILjava/lang/String;I)Z
    .locals 2

    add-int/2addr p1, p3

    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 950
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq p3, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move p3, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    .locals 0

    .line 968
    invoke-static {p0, p1, p3, p4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16(Ljava/lang/CharSequence;ILjava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_2

    if-lez p1, :cond_0

    add-int/lit8 p3, p1, -0x1

    .line 969
    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 970
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p3

    if-nez p3, :cond_2

    :cond_0
    add-int/2addr p1, p4

    if-ge p1, p2, :cond_1

    add-int/lit8 p2, p1, -0x1

    .line 971
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 972
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private declared-synchronized spanContainedAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/util/OutputInt;)I
    .locals 10

    monitor-enter p0

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    iget v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    .line 608
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 609
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v2, v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 615
    iget-object v5, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v5, p1, p2, v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanOne(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v5

    if-lez v5, :cond_0

    .line 617
    iget-object v6, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffsetAndCount(II)V

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_2

    .line 621
    iget-object v6, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 622
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v2, :cond_1

    .line 625
    iget-object v8, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v7, v9}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->hasCountAtOffset(II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 626
    invoke-static {p1, p2, v1, v6, v7}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 627
    iget-object v6, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v6, v7, v9}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffsetAndCount(II)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 631
    :cond_2
    iget-object v5, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 632
    iput v4, p3, Lcom/ibm/icu/util/OutputInt;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    monitor-exit p0

    return p2

    .line 636
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v4, p3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Lcom/ibm/icu/util/OutputInt;)I

    move-result v4

    .line 637
    iget v5, p3, Lcom/ibm/icu/util/OutputInt;->value:I

    add-int/2addr p2, v4

    sub-int/2addr v2, v4

    move v4, v5

    goto :goto_0

    .line 641
    :cond_4
    iput v4, p3, Lcom/ibm/icu/util/OutputInt;->value:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private spanNot(Ljava/lang/CharSequence;ILcom/ibm/icu/util/OutputInt;)I
    .locals 9

    .line 846
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 848
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    if-nez p3, :cond_1

    .line 855
    iget-object v4, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v5, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v4, p1, p2, v5}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p2

    goto :goto_0

    .line 857
    :cond_1
    iget-object v4, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v5, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v4, p1, p2, v5, p3}, Lcom/ibm/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result p2

    .line 858
    iget v4, p3, Lcom/ibm/icu/util/OutputInt;->value:I

    add-int/2addr v3, v4

    iput v3, p3, Lcom/ibm/icu/util/OutputInt;->value:I

    :goto_0
    if-ne p2, v0, :cond_2

    return v0

    :cond_2
    sub-int v4, v0, p2

    .line 868
    iget-object v5, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v5, p1, p2, v4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanOne(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v5

    if-lez v5, :cond_3

    return p2

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_6

    .line 875
    iget-object v7, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v7, v7, v6

    const/16 v8, 0xff

    if-ne v7, v8, :cond_4

    goto :goto_2

    .line 878
    :cond_4
    iget-object v7, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 880
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v4, :cond_5

    .line 881
    invoke-static {p1, p2, v0, v7, v8}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    return p2

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    sub-int/2addr p2, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_0

    if-eqz p3, :cond_7

    .line 894
    iput v3, p3, Lcom/ibm/icu/util/OutputInt;->value:I

    :cond_7
    return v0
.end method

.method private spanNotBack(Ljava/lang/CharSequence;I)I
    .locals 8

    .line 901
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, p2

    .line 905
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v3, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v2, p1, v1, v3}, Lcom/ibm/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 912
    :cond_1
    iget-object v3, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v3, p1, v1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanOneBack(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I

    move-result v3

    if-lez v3, :cond_2

    return v1

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_5

    .line 922
    iget-object v5, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v5, v5, v4

    const/16 v6, 0xff

    if-ne v5, v6, :cond_3

    goto :goto_1

    .line 925
    :cond_3
    iget-object v5, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 927
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v1, :cond_4

    sub-int v7, v1, v6

    .line 928
    invoke-static {p1, v7, p2, v5, v6}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    return v1

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    add-int/2addr v1, v3

    if-nez v1, :cond_0

    return v2
.end method

.method static spanOne(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I
    .locals 3

    .line 980
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    const v2, 0xd800

    if-lt v0, v2, :cond_1

    const v2, 0xdbff

    if-gt v0, v2, :cond_1

    const/4 v2, 0x2

    if-lt p3, v2, :cond_1

    add-int/2addr p2, v1

    .line 982
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 983
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 984
    invoke-static {v0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    .line 985
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    :goto_0
    return v2

    .line 988
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method static spanOneBack(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I
    .locals 2

    add-int/lit8 v0, p2, -0x1

    .line 992
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xdc00

    if-lt v0, v1, :cond_1

    const v1, 0xdfff

    if-gt v0, v1, :cond_1

    const/4 v1, 0x2

    if-lt p2, v1, :cond_1

    sub-int/2addr p2, v1

    .line 994
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 995
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 996
    invoke-static {p1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    .line 997
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    :goto_0
    return v1

    .line 1000
    :cond_1
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private declared-synchronized spanWithStrings(Ljava/lang/CharSequence;IILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    monitor-enter p0

    .line 395
    :try_start_0
    sget-object v3, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne v2, v3, :cond_0

    .line 397
    iget v3, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 399
    :goto_0
    iget-object v5, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v5, v3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    .line 400
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v5, v3, p3

    sub-int v6, p3, p2

    .line 403
    iget-object v7, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v6

    move v6, v5

    move/from16 v5, p3

    .line 405
    :goto_1
    sget-object v9, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    const/16 v10, 0xfe

    if-ne v2, v9, :cond_8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_10

    .line 407
    iget-object v11, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v11, v11, v9

    const/16 v12, 0xff

    if-ne v11, v12, :cond_1

    goto :goto_4

    .line 411
    :cond_1
    iget-object v12, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 413
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v11, v10, :cond_2

    const/4 v11, -0x1

    .line 419
    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v11

    :cond_2
    if-le v11, v8, :cond_3

    move v11, v8

    :cond_3
    sub-int v14, v13, v11

    :goto_3
    if-le v14, v6, :cond_4

    goto :goto_4

    .line 431
    :cond_4
    iget-object v15, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v15, v14}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->containsOffset(I)Z

    move-result v15

    if-nez v15, :cond_6

    sub-int v15, v5, v11

    invoke-static {v0, v15, v3, v12, v13}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v15, :cond_6

    if-ne v14, v6, :cond_5

    .line 433
    monitor-exit p0

    return v3

    .line 435
    :cond_5
    :try_start_1
    iget-object v15, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v15, v14}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffset(I)V

    :cond_6
    if-nez v11, :cond_7

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_5
    if-ge v9, v7, :cond_f

    .line 447
    iget-object v13, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v13, v13, v9

    .line 451
    iget-object v14, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 453
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v13, v10, :cond_9

    move v13, v15

    :cond_9
    if-le v13, v8, :cond_a

    move v13, v8

    :cond_a
    sub-int v16, v15, v13

    move/from16 v4, v16

    :goto_6
    if-gt v4, v6, :cond_e

    if-ge v13, v12, :cond_b

    goto :goto_7

    :cond_b
    if-gt v13, v12, :cond_c

    if-le v4, v11, :cond_d

    :cond_c
    sub-int v10, v5, v13

    .line 471
    invoke-static {v0, v10, v3, v14, v15}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_d

    move v11, v4

    move v12, v13

    goto :goto_7

    :cond_d
    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v4, v4, 0x1

    const/16 v10, 0xfe

    goto :goto_6

    :cond_e
    :goto_7
    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0xfe

    goto :goto_5

    :cond_f
    if-nez v11, :cond_18

    if-eqz v12, :cond_10

    goto :goto_a

    :cond_10
    if-nez v8, :cond_16

    if-nez v5, :cond_11

    goto :goto_9

    .line 507
    :cond_11
    iget-object v4, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 510
    iget-object v4, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v8, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v4, v0, v5, v8}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int v8, v4, v5

    if-eq v8, v6, :cond_13

    if-nez v8, :cond_12

    goto :goto_8

    :cond_12
    add-int/2addr v5, v8

    sub-int/2addr v6, v8

    goto/16 :goto_1

    .line 515
    :cond_13
    :goto_8
    monitor-exit p0

    return v4

    .line 524
    :cond_14
    :try_start_2
    iget-object v4, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v4, v0, v5, v6}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanOne(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v4, :cond_17

    if-ne v4, v6, :cond_15

    .line 527
    monitor-exit p0

    return v3

    :cond_15
    add-int/2addr v5, v4

    sub-int/2addr v6, v4

    .line 534
    :try_start_3
    iget-object v8, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v8, v4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->shift(I)V

    goto :goto_b

    .line 501
    :cond_16
    :goto_9
    iget-object v4, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_17

    .line 502
    monitor-exit p0

    return v5

    .line 541
    :cond_17
    :try_start_4
    iget-object v4, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Lcom/ibm/icu/util/OutputInt;)I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/2addr v5, v4

    sub-int/2addr v6, v4

    goto :goto_b

    :cond_18
    :goto_a
    add-int/2addr v5, v11

    sub-int/2addr v6, v11

    if-nez v6, :cond_19

    .line 487
    monitor-exit p0

    return v3

    :cond_19
    :goto_b
    const/4 v8, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public needsStringSpanUTF16()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    return v0
.end method

.method public span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 2

    .line 375
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    .line 376
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNot(Ljava/lang/CharSequence;ILcom/ibm/icu/util/OutputInt;)I

    move-result p1

    return p1

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    .line 379
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    return v0

    .line 382
    :cond_1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanWithStrings(Ljava/lang/CharSequence;IILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result p1

    return p1
.end method

.method public spanAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I
    .locals 8

    .line 564
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_0

    .line 565
    invoke-direct {p0, p1, p2, p4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNot(Ljava/lang/CharSequence;ILcom/ibm/icu/util/OutputInt;)I

    move-result p1

    return p1

    .line 569
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_1

    .line 570
    invoke-direct {p0, p1, p2, p4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanContainedAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/util/OutputInt;)I

    move-result p1

    return p1

    .line 573
    :cond_1
    iget-object p3, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 574
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v1, v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 580
    iget-object v4, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v4, p1, p2, v1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanOne(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, p3, :cond_4

    .line 584
    iget-object v6, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 585
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_3

    if-gt v7, v1, :cond_3

    .line 587
    invoke-static {p1, p2, v0, v6, v7}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v7

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    .line 593
    iput v3, p4, Lcom/ibm/icu/util/OutputInt;->value:I

    return p2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    add-int/2addr p2, v4

    sub-int/2addr v1, v4

    goto :goto_0

    .line 601
    :cond_6
    iput v3, p4, Lcom/ibm/icu/util/OutputInt;->value:I

    return p2
.end method

.method public declared-synchronized spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 653
    :try_start_0
    sget-object v4, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne v3, v4, :cond_0

    .line 654
    invoke-direct/range {p0 .. p2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotBack(Ljava/lang/CharSequence;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 656
    :cond_0
    :try_start_1
    iget-object v4, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v5, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v4, v0, v2, v5}, Lcom/ibm/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 658
    monitor-exit p0

    return v5

    :cond_1
    sub-int v6, v2, v4

    .line 664
    :try_start_2
    sget-object v7, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne v3, v7, :cond_2

    .line 666
    iget v7, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 668
    :goto_0
    iget-object v8, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v8, v7}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    .line 669
    iget-object v7, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 671
    iget-boolean v8, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v8, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 675
    :goto_1
    sget-object v9, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    const/16 v10, 0xfe

    if-ne v3, v9, :cond_b

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_13

    .line 677
    iget-object v11, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v12, v8, v9

    aget-short v11, v11, v12

    const/16 v12, 0xff

    if-ne v11, v12, :cond_4

    goto :goto_4

    .line 681
    :cond_4
    iget-object v12, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 683
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v11, v10, :cond_5

    const/4 v11, 0x1

    .line 690
    invoke-virtual {v12, v5, v11}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v11

    sub-int v11, v13, v11

    :cond_5
    if-le v11, v6, :cond_6

    move v11, v6

    :cond_6
    sub-int v14, v13, v11

    :goto_3
    if-le v14, v4, :cond_7

    goto :goto_4

    .line 702
    :cond_7
    iget-object v15, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v15, v14}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->containsOffset(I)Z

    move-result v15

    if-nez v15, :cond_9

    sub-int v15, v4, v14

    invoke-static {v0, v15, v2, v12, v13}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_9

    if-ne v14, v4, :cond_8

    .line 704
    monitor-exit p0

    return v5

    .line 706
    :cond_8
    :try_start_3
    iget-object v15, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v15, v14}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffset(I)V

    :cond_9
    if-nez v11, :cond_a

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_a
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_b
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_5
    if-ge v9, v7, :cond_12

    .line 718
    iget-object v13, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v14, v8, v9

    aget-short v13, v13, v14

    .line 722
    iget-object v14, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 724
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v13, v10, :cond_c

    move v13, v15

    :cond_c
    if-le v13, v6, :cond_d

    move v13, v6

    :cond_d
    sub-int v16, v15, v13

    move/from16 v10, v16

    :goto_6
    if-gt v10, v4, :cond_11

    if-ge v13, v12, :cond_e

    goto :goto_7

    :cond_e
    if-gt v13, v12, :cond_f

    if-le v10, v11, :cond_10

    :cond_f
    sub-int v5, v4, v10

    .line 742
    invoke-static {v0, v5, v2, v14, v15}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_10

    move v11, v10

    move v12, v13

    goto :goto_7

    :cond_10
    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    goto :goto_6

    :cond_11
    :goto_7
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    const/16 v10, 0xfe

    goto :goto_5

    :cond_12
    if-nez v11, :cond_1b

    if-eqz v12, :cond_13

    goto :goto_a

    :cond_13
    if-nez v6, :cond_19

    if-ne v4, v2, :cond_14

    goto :goto_9

    .line 777
    :cond_14
    iget-object v5, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 781
    iget-object v5, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v6, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v5, v0, v4, v6}, Lcom/ibm/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int v6, v4, v5

    if-eqz v5, :cond_16

    if-nez v6, :cond_15

    goto :goto_8

    :cond_15
    move v4, v5

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 786
    :cond_16
    :goto_8
    monitor-exit p0

    return v5

    .line 793
    :cond_17
    :try_start_4
    iget-object v5, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v5, v0, v4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanOneBack(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lez v5, :cond_1a

    if-ne v5, v4, :cond_18

    .line 796
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_18
    sub-int/2addr v4, v5

    .line 802
    :try_start_5
    iget-object v6, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v6, v5}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->shift(I)V

    goto :goto_b

    .line 771
    :cond_19
    :goto_9
    iget-object v5, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_1a

    .line 772
    monitor-exit p0

    return v4

    .line 809
    :cond_1a
    :try_start_6
    iget-object v5, v1, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Lcom/ibm/icu/util/OutputInt;)I

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v4, v5

    goto :goto_b

    :cond_1b
    :goto_a
    sub-int/2addr v4, v11

    if-nez v4, :cond_1c

    .line 757
    monitor-exit p0

    const/4 v5, 0x0

    return v5

    :cond_1c
    :goto_b
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method
