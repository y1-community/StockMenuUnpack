.class public final Lcom/ibm/icu/text/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/Normalizer$CharsAppendable;,
        Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;,
        Lcom/ibm/icu/text/Normalizer$QuickCheckResult;,
        Lcom/ibm/icu/text/Normalizer$FCDMode;,
        Lcom/ibm/icu/text/Normalizer$NFKCMode;,
        Lcom/ibm/icu/text/Normalizer$NFCMode;,
        Lcom/ibm/icu/text/Normalizer$NFKDMode;,
        Lcom/ibm/icu/text/Normalizer$NFDMode;,
        Lcom/ibm/icu/text/Normalizer$NONEMode;,
        Lcom/ibm/icu/text/Normalizer$Mode;,
        Lcom/ibm/icu/text/Normalizer$FCD32ModeImpl;,
        Lcom/ibm/icu/text/Normalizer$NFKC32ModeImpl;,
        Lcom/ibm/icu/text/Normalizer$NFC32ModeImpl;,
        Lcom/ibm/icu/text/Normalizer$NFKD32ModeImpl;,
        Lcom/ibm/icu/text/Normalizer$NFD32ModeImpl;,
        Lcom/ibm/icu/text/Normalizer$Unicode32;,
        Lcom/ibm/icu/text/Normalizer$FCDModeImpl;,
        Lcom/ibm/icu/text/Normalizer$NFKCModeImpl;,
        Lcom/ibm/icu/text/Normalizer$NFCModeImpl;,
        Lcom/ibm/icu/text/Normalizer$NFKDModeImpl;,
        Lcom/ibm/icu/text/Normalizer$NFDModeImpl;,
        Lcom/ibm/icu/text/Normalizer$ModeImpl;
    }
.end annotation


# static fields
.field public static final COMPARE_CODE_POINT_ORDER:I = 0x8000

.field private static final COMPARE_EQUIV:I = 0x80000

.field public static final COMPARE_IGNORE_CASE:I = 0x10000

.field public static final COMPARE_NORM_OPTIONS_SHIFT:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMPOSE:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMPOSE_COMPAT:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DECOMP:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DECOMP_COMPAT:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DONE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FCD:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLD_CASE_DEFAULT:I = 0x0

.field public static final FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1

.field public static final IGNORE_HANGUL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INPUT_IS_FCD:I = 0x20000

.field public static final MAYBE:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

.field public static final NFC:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFD:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFKC:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFKD:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

.field public static final NONE:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NO_OP:Lcom/ibm/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNICODE_3_2:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;


# instance fields
.field private buffer:Ljava/lang/StringBuilder;

.field private bufferPos:I

.field private currentIndex:I

.field private mode:Lcom/ibm/icu/text/Normalizer$Mode;

.field private nextIndex:I

.field private norm2:Lcom/ibm/icu/text/Normalizer2;

.field private options:I

.field private text:Lcom/ibm/icu/text/UCharacterIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 294
    new-instance v0, Lcom/ibm/icu/text/Normalizer$NONEMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/Normalizer$NONEMode;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->NONE:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 302
    new-instance v2, Lcom/ibm/icu/text/Normalizer$NFDMode;

    invoke-direct {v2, v1}, Lcom/ibm/icu/text/Normalizer$NFDMode;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v2, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 310
    new-instance v3, Lcom/ibm/icu/text/Normalizer$NFKDMode;

    invoke-direct {v3, v1}, Lcom/ibm/icu/text/Normalizer$NFKDMode;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v3, Lcom/ibm/icu/text/Normalizer;->NFKD:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 318
    new-instance v4, Lcom/ibm/icu/text/Normalizer$NFCMode;

    invoke-direct {v4, v1}, Lcom/ibm/icu/text/Normalizer$NFCMode;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v4, Lcom/ibm/icu/text/Normalizer;->NFC:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 326
    sput-object v4, Lcom/ibm/icu/text/Normalizer;->DEFAULT:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 334
    new-instance v5, Lcom/ibm/icu/text/Normalizer$NFKCMode;

    invoke-direct {v5, v1}, Lcom/ibm/icu/text/Normalizer$NFKCMode;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v5, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 342
    new-instance v6, Lcom/ibm/icu/text/Normalizer$FCDMode;

    invoke-direct {v6, v1}, Lcom/ibm/icu/text/Normalizer$FCDMode;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v6, Lcom/ibm/icu/text/Normalizer;->FCD:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 359
    sput-object v0, Lcom/ibm/icu/text/Normalizer;->NO_OP:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 378
    sput-object v4, Lcom/ibm/icu/text/Normalizer;->COMPOSE:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 397
    sput-object v5, Lcom/ibm/icu/text/Normalizer;->COMPOSE_COMPAT:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 416
    sput-object v2, Lcom/ibm/icu/text/Normalizer;->DECOMP:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 435
    sput-object v3, Lcom/ibm/icu/text/Normalizer;->DECOMP_COMPAT:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 473
    new-instance v0, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    .line 479
    new-instance v0, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    .line 486
    new-instance v0, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/Normalizer$QuickCheckResult;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer;->MAYBE:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/UCharacterIterator;Lcom/ibm/icu/text/Normalizer$Mode;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/UCharacterIterator;

    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    .line 613
    iput-object p2, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 614
    iput p3, p0, Lcom/ibm/icu/text/Normalizer;->options:I

    .line 615
    invoke-virtual {p2, p3}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    .line 616
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 618
    new-instance p2, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    .line 568
    iput-object p2, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 569
    iput p3, p0, Lcom/ibm/icu/text/Normalizer;->options:I

    .line 570
    invoke-virtual {p2, p3}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    .line 571
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/Normalizer$Mode;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/CharacterIterator;

    invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    .line 592
    iput-object p2, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 593
    iput p3, p0, Lcom/ibm/icu/text/Normalizer;->options:I

    .line 594
    invoke-virtual {p2, p3}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    .line 595
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private clearBuffer()V
    .locals 2

    .line 1893
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1894
    iput v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    return-void
.end method

.method static cmpEquivFold(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 27

    move/from16 v0, p2

    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 2146
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v3

    iget-object v3, v3, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    .line 2151
    sget-object v5, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    .line 2152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2161
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 2163
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x0

    move v12, v8

    move v13, v9

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    :goto_2
    if-gez v14, :cond_4

    move/from16 v14, v17

    :goto_3
    if-ne v14, v12, :cond_3

    if-nez v16, :cond_2

    move/from16 v22, v14

    move/from16 v2, v16

    const/4 v14, -0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v16, v16, -0x1

    .line 2191
    aget-object v8, v18, v16

    iget-object v8, v8, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    if-eqz v8, :cond_2

    .line 2193
    aget-object v12, v18, v16

    iget v14, v12, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->s:I

    .line 2194
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v12

    goto :goto_3

    :cond_3
    add-int/lit8 v17, v14, 0x1

    .line 2184
    invoke-interface {v8, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    :cond_4
    move/from16 v2, v16

    move/from16 v22, v17

    :goto_4
    if-gez v15, :cond_7

    move/from16 v15, v20

    :goto_5
    if-ne v15, v13, :cond_6

    if-nez v19, :cond_5

    move/from16 v24, v15

    move/from16 v23, v19

    const/4 v15, -0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v19, v19, -0x1

    .line 2214
    aget-object v9, v21, v19

    iget-object v9, v9, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    if-eqz v9, :cond_5

    .line 2216
    aget-object v13, v21, v19

    iget v15, v13, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->s:I

    .line 2217
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v13

    goto :goto_5

    :cond_6
    add-int/lit8 v20, v15, 0x1

    .line 2207
    invoke-interface {v9, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    :cond_7
    move/from16 v23, v19

    move/from16 v24, v20

    :goto_6
    if-ne v14, v15, :cond_9

    if-gez v14, :cond_8

    return v11

    :cond_8
    move/from16 v16, v2

    move/from16 v17, v22

    move/from16 v19, v23

    move/from16 v20, v24

    const/4 v14, -0x1

    const/4 v15, -0x1

    goto :goto_2

    :cond_9
    if-gez v14, :cond_a

    return v10

    :cond_a
    if-gez v15, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    int-to-char v10, v14

    .line 2240
    invoke-static {v10}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 2243
    invoke-static {v14}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v19

    if-eqz v19, :cond_c

    move/from16 v11, v22

    move/from16 v20, v12

    if-eq v11, v12, :cond_e

    .line 2244
    invoke-interface {v8, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 2246
    invoke-static {v10, v12}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v12

    goto :goto_7

    :cond_c
    move/from16 v20, v12

    move/from16 v11, v22

    add-int/lit8 v12, v11, -0x2

    if-ltz v12, :cond_e

    .line 2249
    invoke-interface {v8, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 2250
    invoke-static {v12, v10}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v12

    :goto_7
    move-object/from16 v22, v3

    goto :goto_8

    :cond_d
    move/from16 v20, v12

    move/from16 v11, v22

    :cond_e
    move-object/from16 v22, v3

    move v12, v14

    :goto_8
    int-to-char v3, v15

    .line 2256
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 2259
    invoke-static {v15}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v25

    if-eqz v25, :cond_f

    move/from16 v25, v1

    move/from16 v1, v24

    move/from16 v24, v13

    if-eq v1, v13, :cond_11

    .line 2260
    invoke-interface {v9, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 2262
    invoke-static {v3, v13}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v13

    goto :goto_9

    :cond_f
    move/from16 v25, v1

    move/from16 v1, v24

    move/from16 v24, v13

    add-int/lit8 v13, v1, -0x2

    if-ltz v13, :cond_11

    .line 2265
    invoke-interface {v9, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 2266
    invoke-static {v13, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v13

    :goto_9
    move/from16 v26, v15

    goto :goto_a

    :cond_10
    move/from16 v25, v1

    move/from16 v1, v24

    move/from16 v24, v13

    :cond_11
    move v13, v15

    move/from16 v26, v13

    :goto_a
    if-nez v2, :cond_16

    if-eqz v4, :cond_16

    .line 2277
    invoke-virtual {v5, v12, v6, v0}, Lcom/ibm/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v15

    if-ltz v15, :cond_16

    .line 2280
    invoke-static {v10}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2281
    invoke-static {v14}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v3, v11, 0x1

    move/from16 v20, v1

    move v11, v3

    goto :goto_b

    :cond_12
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v1, -0x1

    .line 2293
    invoke-interface {v9, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move/from16 v20, v1

    move/from16 v26, v3

    goto :goto_b

    :cond_13
    move/from16 v20, v1

    :goto_b
    if-nez v18, :cond_14

    .line 2299
    invoke-static {}, Lcom/ibm/icu/text/Normalizer;->createCmpEquivLevelStack()[Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v18

    :cond_14
    const/4 v1, 0x0

    .line 2301
    aget-object v3, v18, v1

    iput-object v8, v3, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2302
    aget-object v3, v18, v1

    iput v11, v3, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->s:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x1f

    if-gt v15, v3, :cond_15

    .line 2308
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v15

    invoke-virtual {v6, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 2310
    :cond_15
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2311
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2317
    :goto_c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    move/from16 v16, v2

    move-object v8, v6

    move-object/from16 v3, v22

    move/from16 v19, v23

    move/from16 v13, v24

    move/from16 v1, v25

    move/from16 v15, v26

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v14, -0x1

    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_16
    move/from16 v15, v23

    if-nez v15, :cond_1b

    if-eqz v4, :cond_1b

    move/from16 v23, v4

    .line 2325
    invoke-virtual {v5, v13, v7, v0}, Lcom/ibm/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v4

    if-ltz v4, :cond_1c

    .line 2328
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2329
    invoke-static/range {v26 .. v26}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v3

    if-eqz v3, :cond_17

    add-int/lit8 v24, v1, 0x1

    move/from16 v1, v24

    goto :goto_d

    :cond_17
    add-int/lit8 v3, v11, -0x1

    add-int/lit8 v10, v3, -0x1

    .line 2341
    invoke-interface {v8, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    move v11, v3

    move v14, v10

    :cond_18
    :goto_d
    if-nez v21, :cond_19

    .line 2347
    invoke-static {}, Lcom/ibm/icu/text/Normalizer;->createCmpEquivLevelStack()[Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v21

    :cond_19
    const/4 v3, 0x0

    .line 2349
    aget-object v10, v21, v3

    iput-object v9, v10, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2350
    aget-object v9, v21, v3

    iput v1, v9, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->s:I

    add-int/lit8 v19, v15, 0x1

    const/16 v1, 0x1f

    if-gt v4, v1, :cond_1a

    .line 2356
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v7, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 2358
    :cond_1a
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2359
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2365
    :goto_e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    move/from16 v16, v2

    move-object v9, v7

    move/from16 v17, v11

    move/from16 v12, v20

    move-object/from16 v3, v22

    :goto_f
    move/from16 v4, v23

    move/from16 v1, v25

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v15, -0x1

    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_1b
    move/from16 v23, v4

    :cond_1c
    const/4 v4, 0x2

    if-ge v2, v4, :cond_21

    if-eqz v25, :cond_21

    move-object/from16 v4, v22

    .line 2373
    invoke-virtual {v4, v12}, Lcom/ibm/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_22

    .line 2376
    invoke-static {v10}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2377
    invoke-static {v14}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    add-int/lit8 v22, v11, 0x1

    move/from16 v20, v1

    move/from16 v11, v22

    goto :goto_10

    :cond_1d
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v1, -0x1

    .line 2389
    invoke-interface {v9, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move/from16 v20, v1

    move/from16 v26, v3

    goto :goto_10

    :cond_1e
    move/from16 v20, v1

    :goto_10
    if-nez v18, :cond_1f

    .line 2395
    invoke-static {}, Lcom/ibm/icu/text/Normalizer;->createCmpEquivLevelStack()[Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v18

    .line 2397
    :cond_1f
    aget-object v1, v18, v2

    iput-object v8, v1, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2398
    aget-object v1, v18, v2

    iput v11, v1, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->s:I

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x2

    if-ge v2, v1, :cond_20

    add-int/lit8 v1, v2, 0x1

    .line 2403
    aget-object v2, v18, v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    goto :goto_11

    :cond_20
    move v1, v2

    .line 2409
    :goto_11
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v16, v1

    move-object v3, v4

    move-object v8, v12

    move/from16 v19, v15

    move/from16 v4, v23

    move/from16 v13, v24

    move/from16 v1, v25

    move/from16 v15, v26

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v14, -0x1

    const/16 v17, 0x0

    move v12, v2

    goto/16 :goto_2

    :cond_21
    move-object/from16 v4, v22

    :cond_22
    const/4 v12, 0x2

    if-ge v15, v12, :cond_27

    if-eqz v25, :cond_27

    .line 2417
    invoke-virtual {v4, v13}, Lcom/ibm/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_27

    .line 2420
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2421
    invoke-static/range {v26 .. v26}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v3

    if-eqz v3, :cond_23

    add-int/lit8 v24, v1, 0x1

    move/from16 v1, v24

    goto :goto_12

    :cond_23
    add-int/lit8 v22, v11, -0x1

    add-int/lit8 v3, v22, -0x1

    .line 2433
    invoke-interface {v8, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v14, v3

    move/from16 v11, v22

    :cond_24
    :goto_12
    if-nez v21, :cond_25

    .line 2439
    invoke-static {}, Lcom/ibm/icu/text/Normalizer;->createCmpEquivLevelStack()[Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v21

    .line 2441
    :cond_25
    aget-object v3, v21, v15

    iput-object v9, v3, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2442
    aget-object v3, v21, v15

    iput v1, v3, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->s:I

    add-int/lit8 v1, v15, 0x1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_26

    add-int/lit8 v3, v1, 0x1

    .line 2447
    aget-object v1, v21, v1

    const/4 v13, 0x0

    iput-object v13, v1, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    move v1, v3

    goto :goto_13

    :cond_26
    const/4 v13, 0x0

    .line 2453
    :goto_13
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v19, v1

    move/from16 v16, v2

    move v13, v3

    move-object v3, v4

    move/from16 v17, v11

    move-object v9, v12

    move/from16 v12, v20

    goto/16 :goto_f

    :cond_27
    const v2, 0xd800

    move/from16 v15, v26

    if-lt v14, v2, :cond_2d

    if-lt v15, v2, :cond_2d

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2d

    const v0, 0xdbff

    if-gt v14, v0, :cond_28

    move/from16 v12, v20

    if-eq v11, v12, :cond_28

    .line 2480
    invoke-interface {v8, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 2481
    :cond_28
    invoke-static {v10}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_29

    add-int/lit8 v22, v11, -0x1

    if-eqz v22, :cond_29

    const/4 v2, 0x2

    add-int/lit8 v4, v11, -0x2

    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_14

    :cond_29
    add-int/lit16 v14, v14, -0x2800

    :cond_2a
    :goto_14
    if-gt v15, v0, :cond_2b

    move/from16 v13, v24

    if-eq v1, v13, :cond_2b

    .line 2490
    invoke-interface {v9, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2491
    :cond_2b
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2c

    add-int/lit8 v24, v1, -0x1

    if-eqz v24, :cond_2c

    const/4 v0, 0x2

    add-int/lit8 v0, v1, -0x2

    invoke-interface {v9, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_15

    :cond_2c
    add-int/lit16 v15, v15, -0x2800

    :cond_2d
    :goto_15
    sub-int/2addr v14, v15

    return v14
.end method

.method public static compare(III)I
    .locals 1

    .line 1262
    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/high16 v0, 0x20000

    or-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static compare(ILjava/lang/String;I)I
    .locals 0

    .line 1274
    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1213
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static compare([CII[CIII)I
    .locals 0

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-eqz p3, :cond_0

    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    if-lt p2, p1, :cond_0

    if-lt p5, p4, :cond_0

    sub-int/2addr p2, p1

    .line 1160
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    sub-int/2addr p5, p4

    .line 1161
    invoke-static {p3, p4, p5}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 1160
    invoke-static {p0, p1, p6}, Lcom/ibm/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    .line 1158
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static compare([C[CI)I
    .locals 0

    .line 1250
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static compose([CII[CIIZI)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p2, p1

    .line 738
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 739
    new-instance p1, Lcom/ibm/icu/text/Normalizer$CharsAppendable;

    invoke-direct {p1, p3, p4, p5}, Lcom/ibm/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    .line 740
    invoke-static {p6, p7}, Lcom/ibm/icu/text/Normalizer;->getComposeNormalizer2(ZI)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 741
    invoke-virtual {p1}, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->length()I

    move-result p0

    return p0
.end method

.method public static compose([C[CZI)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 712
    array-length v2, p0

    array-length v5, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/text/Normalizer;->compose([CII[CIIZI)I

    move-result p0

    return p0
.end method

.method public static compose(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 676
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Normalizer;->compose(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compose(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 692
    invoke-static {p1, p2}, Lcom/ibm/icu/text/Normalizer;->getComposeNormalizer2(ZI)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static concatenate([CII[CII[CIILcom/ibm/icu/text/Normalizer$Mode;I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p6, :cond_3

    if-ne p3, p6, :cond_1

    if-ge p4, p8, :cond_1

    if-lt p7, p5, :cond_0

    goto :goto_0

    .line 1332
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "overlapping right and dst ranges"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1336
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int/2addr p2, p1

    add-int v1, p2, p5

    sub-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1337
    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    sub-int/2addr p5, p4

    .line 1338
    invoke-static {p3, p4, p5}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 1339
    invoke-virtual {p9, p10}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/ibm/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p8, p7

    if-gt p0, p8, :cond_2

    const/4 p1, 0x0

    .line 1342
    invoke-virtual {v0, p1, p0, p6, p7}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return p0

    .line 1345
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1327
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static concatenate(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    invoke-virtual {p2, p3}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static concatenate([C[CLcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1379
    invoke-virtual {p2, p3}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p0

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final createCmpEquivLevelStack()[Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;

    .line 2099
    new-instance v1, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/Normalizer$CmpEquivLevel;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static decompose([CII[CIIZI)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p2, p1

    .line 818
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 819
    new-instance p1, Lcom/ibm/icu/text/Normalizer$CharsAppendable;

    invoke-direct {p1, p3, p4, p5}, Lcom/ibm/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    .line 820
    invoke-static {p6, p7}, Lcom/ibm/icu/text/Normalizer;->getDecomposeNormalizer2(ZI)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 821
    invoke-virtual {p1}, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->length()I

    move-result p0

    return p0
.end method

.method public static decompose([C[CZI)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 792
    array-length v2, p0

    array-length v5, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/text/Normalizer;->decompose([CII[CIIZI)I

    move-result p0

    return p0
.end method

.method public static decompose(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 756
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Normalizer;->decompose(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decompose(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 772
    invoke-static {p1, p2}, Lcom/ibm/icu/text/Normalizer;->getDecomposeNormalizer2(ZI)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getComposeNormalizer2(ZI)Lcom/ibm/icu/text/Normalizer2;
    .locals 0

    if-eqz p0, :cond_0

    .line 658
    sget-object p0, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ibm/icu/text/Normalizer;->NFC:Lcom/ibm/icu/text/Normalizer$Mode;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p0

    return-object p0
.end method

.method private static final getDecomposeNormalizer2(ZI)Lcom/ibm/icu/text/Normalizer2;
    .locals 0

    if-eqz p0, :cond_0

    .line 661
    sget-object p0, Lcom/ibm/icu/text/Normalizer;->NFKD:Lcom/ibm/icu/text/Normalizer$Mode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p0

    return-object p0
.end method

.method public static getFC_NFKC_Closure(I[C)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1428
    invoke-static {p0}, Lcom/ibm/icu/text/Normalizer;->getFC_NFKC_Closure(I)Ljava/lang/String;

    move-result-object p0

    .line 1429
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1430
    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v1, 0x0

    .line 1431
    invoke-virtual {p0, v1, v0, p1, v1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_0
    return v0
.end method

.method public static getFC_NFKC_Closure(I)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1449
    invoke-static {}, Lcom/ibm/icu/text/Normalizer$NFKCModeImpl;->access$1000()Lcom/ibm/icu/text/Normalizer$ModeImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/Normalizer$ModeImpl;->access$300(Lcom/ibm/icu/text/Normalizer$ModeImpl;)Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    .line 1450
    sget-object v1, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    .line 1452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 1453
    invoke-virtual {v1, p0, v2, v3}, Lcom/ibm/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v1

    const-string v4, ""

    if-gez v1, :cond_1

    .line 1455
    move-object v1, v0

    check-cast v1, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    iget-object v1, v1, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 1456
    invoke-virtual {v1, p0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCompQuickCheck(I)I

    move-result v1

    if-eqz v1, :cond_0

    return-object v4

    .line 1459
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x1f

    if-le v1, p0, :cond_2

    .line 1462
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1465
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1467
    invoke-static {p0, v3}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1469
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v4

    :cond_3
    return-object v0
.end method

.method private static internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 6

    ushr-int/lit8 v0, p2, 0x14

    const/high16 v1, 0x80000

    or-int/2addr p2, v1

    const/high16 v1, 0x20000

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_3

    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 1972
    sget-object v1, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    goto :goto_0

    .line 1974
    :cond_1
    sget-object v1, Lcom/ibm/icu/text/Normalizer;->FCD:Lcom/ibm/icu/text/Normalizer$Mode;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    .line 1978
    :goto_0
    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1979
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1990
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_2

    .line 1991
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1992
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {p0, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/ibm/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1994
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 1995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1996
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2000
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/Normalizer;->cmpEquivFold(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static isNormalized(ILcom/ibm/icu/text/Normalizer$Mode;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1095
    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Z

    move-result p0

    return p0
.end method

.method public static isNormalized(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1079
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isNormalized([CIILcom/ibm/icu/text/Normalizer$Mode;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p2, p1

    .line 1056
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 1057
    invoke-virtual {p3, p4}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private nextNormalize()Z
    .locals 4

    .line 1898
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->clearBuffer()V

    .line 1899
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I

    iput v0, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I

    .line 1900
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    .line 1902
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 1906
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1907
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v2

    if-ltz v2, :cond_2

    .line 1908
    iget-object v3, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1909
    iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    goto :goto_1

    .line 1912
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1914
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I

    .line 1915
    iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    iget-object v3, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v3}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1916
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static normalize([CII[CIILcom/ibm/icu/text/Normalizer$Mode;I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p2, p1

    .line 904
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 905
    new-instance p1, Lcom/ibm/icu/text/Normalizer$CharsAppendable;

    invoke-direct {p1, p3, p4, p5}, Lcom/ibm/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    .line 906
    invoke-virtual {p6, p7}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 907
    invoke-virtual {p1}, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->length()I

    move-result p0

    return p0
.end method

.method public static normalize([C[CLcom/ibm/icu/text/Normalizer$Mode;I)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 877
    array-length v2, p0

    array-length v5, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/text/Normalizer;->normalize([CII[CIILcom/ibm/icu/text/Normalizer$Mode;I)I

    move-result p0

    return p0
.end method

.method public static normalize(ILcom/ibm/icu/text/Normalizer$Mode;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 941
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Normalizer;->normalize(ILcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(ILcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 922
    sget-object v0, Lcom/ibm/icu/text/Normalizer;->NFD:Lcom/ibm/icu/text/Normalizer$Mode;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 923
    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFCInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 925
    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    .line 929
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/Normalizer;->normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 857
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Normalizer;->normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 841
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private previousNormalize()Z
    .locals 4

    .line 1920
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->clearBuffer()V

    .line 1921
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I

    iput v0, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I

    .line 1922
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1925
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    const v3, 0xffff

    if-gt v1, v3, :cond_1

    int-to-char v3, v1

    .line 1927
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1929
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 1931
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v3, v1}, Lcom/ibm/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1935
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v1

    iput v1, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I

    .line 1936
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    iget-object v3, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v3}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1937
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    .line 1938
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public static quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 956
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object p0

    return-object p0
.end method

.method public static quickCheck(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 981
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object p0

    return-object p0
.end method

.method public static quickCheck([CIILcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p2, p1

    .line 1028
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 1029
    invoke-virtual {p3, p4}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object p0

    return-object p0
.end method

.method public static quickCheck([CLcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 999
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Lcom/ibm/icu/text/Normalizer;->quickCheck([CIILcom/ibm/icu/text/Normalizer$Mode;I)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 637
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/Normalizer;

    .line 638
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/UCharacterIterator;

    iput-object v1, v0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    .line 639
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;

    iput-object v1, v0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 640
    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->options:I

    iput v1, v0, Lcom/ibm/icu/text/Normalizer;->options:I

    .line 641
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    iput-object v1, v0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    .line 643
    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    iput v1, v0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    .line 644
    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I

    iput v1, v0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I

    .line 645
    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I

    iput v1, v0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 649
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public current()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1487
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->nextNormalize()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    return v0

    .line 1488
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method public endIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1684
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    return v0
.end method

.method public first()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1620
    invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->reset()V

    .line 1621
    invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->next()I

    move-result v0

    return v0
.end method

.method public getBeginIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getEndIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1610
    invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->endIndex()I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1656
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1657
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I

    return v0

    .line 1659
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I

    return v0
.end method

.method public getLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1795
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    return v0
.end method

.method public getMode()Lcom/ibm/icu/text/Normalizer$Mode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1729
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;

    return-object v0
.end method

.method public getOption(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1767
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->options:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getText([C)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1785
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UCharacterIterator;->getText([C)I

    move-result p1

    return p1
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1805
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public last()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1633
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->setToLimit()V

    .line 1634
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I

    iput v0, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I

    .line 1635
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->clearBuffer()V

    .line 1636
    invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->previous()I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1503
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->nextNormalize()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    return v0

    .line 1504
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    .line 1505
    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    return v0
.end method

.method public previous()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1522
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->previousNormalize()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    return v0

    .line 1523
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v0

    .line 1524
    iget v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/text/Normalizer;->bufferPos:I

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1538
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UCharacterIterator;->setToStart()V

    const/4 v0, 0x0

    .line 1539
    iput v0, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I

    iput v0, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I

    .line 1540
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->clearBuffer()V

    return-void
.end method

.method public setIndex(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1583
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Normalizer;->setIndexOnly(I)V

    .line 1584
    invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->current()I

    move-result p1

    return p1
.end method

.method public setIndexOnly(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1554
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UCharacterIterator;->setIndex(I)V

    .line 1555
    iput p1, p0, Lcom/ibm/icu/text/Normalizer;->nextIndex:I

    iput p1, p0, Lcom/ibm/icu/text/Normalizer;->currentIndex:I

    .line 1556
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer;->clearBuffer()V

    return-void
.end method

.method public setMode(Lcom/ibm/icu/text/Normalizer$Mode;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1718
    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;

    .line 1719
    iget v0, p0, Lcom/ibm/icu/text/Normalizer;->options:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    return-void
.end method

.method public setOption(IZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 1752
    iget p2, p0, Lcom/ibm/icu/text/Normalizer;->options:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/text/Normalizer;->options:I

    goto :goto_0

    .line 1754
    :cond_0
    iget p2, p0, Lcom/ibm/icu/text/Normalizer;->options:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/text/Normalizer;->options:I

    .line 1756
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/text/Normalizer;->mode:Lcom/ibm/icu/text/Normalizer$Mode;

    iget p2, p0, Lcom/ibm/icu/text/Normalizer;->options:I

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/Normalizer$Mode;->getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->norm2:Lcom/ibm/icu/text/Normalizer2;

    return-void
.end method

.method public setText(Lcom/ibm/icu/text/UCharacterIterator;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1881
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/UCharacterIterator;

    if-eqz p1, :cond_0

    .line 1885
    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    .line 1886
    invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->reset()V

    return-void

    .line 1883
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not create a new UCharacterIterator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1888
    new-instance v0, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    const-string v1, "Could not clone the UCharacterIterator"

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1848
    invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1852
    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    .line 1853
    invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->reset()V

    return-void

    .line 1850
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not create a new UCharacterIterator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/StringBuffer;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1816
    invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1820
    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    .line 1821
    invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->reset()V

    return-void

    .line 1818
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not create a new UCharacterIterator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1864
    invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1868
    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    .line 1869
    invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->reset()V

    return-void

    .line 1866
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not create a new UCharacterIterator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText([C)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1832
    invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance([C)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1836
    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer;->text:Lcom/ibm/icu/text/UCharacterIterator;

    .line 1837
    invoke-virtual {p0}, Lcom/ibm/icu/text/Normalizer;->reset()V

    return-void

    .line 1834
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not create a new UCharacterIterator"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
