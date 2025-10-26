.class public final Lcom/ibm/icu/impl/UCharacterProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/UCharacterProperty$IsAcceptable;,
        Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;,
        Lcom/ibm/icu/impl/UCharacterProperty$CombiningClassIntProperty;,
        Lcom/ibm/icu/impl/UCharacterProperty$BiDiIntProperty;,
        Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;,
        Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;,
        Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;,
        Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;,
        Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AGE_SHIFT_:I = 0x18

.field private static final ALPHABETIC_PROPERTY_:I = 0x8

.field private static final ASCII_HEX_DIGIT_PROPERTY_:I = 0x7

.field private static final BLOCK_MASK_:I = 0x1ff00

.field private static final BLOCK_SHIFT_:I = 0x8

.field private static final CGJ:I = 0x34f

.field private static final CR:I = 0xd

.field private static final DASH_PROPERTY_:I = 0x1

.field private static final DATA_FILE_NAME_:Ljava/lang/String; = "uprops.icu"

.field private static final DATA_FORMAT:I = 0x5550726f

.field private static final DECOMPOSITION_TYPE_MASK_:I = 0x1f

.field private static final DEFAULT_IGNORABLE_CODE_POINT_PROPERTY_:I = 0x13

.field private static final DEL:I = 0x7f

.field private static final DEPRECATED_PROPERTY_:I = 0x14

.field private static final DIACRITIC_PROPERTY_:I = 0xa

.field private static final EAST_ASIAN_MASK_:I = 0xe0000

.field private static final EAST_ASIAN_SHIFT_:I = 0x11

.field private static final EXTENDER_PROPERTY_:I = 0xb

.field private static final FIGURESP:I = 0x2007

.field private static final FIRST_NIBBLE_SHIFT_:I = 0x4

.field private static final GCB_MASK:I = 0x3e0

.field private static final GCB_SHIFT:I = 0x5

.field private static final GC_CC_MASK:I

.field private static final GC_CN_MASK:I

.field private static final GC_CS_MASK:I

.field private static final GC_ZL_MASK:I

.field private static final GC_ZP_MASK:I

.field private static final GC_ZS_MASK:I

.field private static final GC_Z_MASK:I

.field private static final GRAPHEME_BASE_PROPERTY_:I = 0x1a

.field private static final GRAPHEME_EXTEND_PROPERTY_:I = 0xd

.field private static final GRAPHEME_LINK_PROPERTY_:I = 0xe

.field private static final HAIRSP:I = 0x200a

.field private static final HEX_DIGIT_PROPERTY_:I = 0x6

.field private static final HYPHEN_PROPERTY_:I = 0x2

.field private static final IDEOGRAPHIC_PROPERTY_:I = 0x9

.field private static final IDS_BINARY_OPERATOR_PROPERTY_:I = 0xf

.field private static final IDS_TRINARY_OPERATOR_PROPERTY_:I = 0x10

.field private static final ID_CONTINUE_PROPERTY_:I = 0x19

.field private static final ID_START_PROPERTY_:I = 0x18

.field private static final INHSWAP:I = 0x206a

.field public static final INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

.field private static final LAST_NIBBLE_MASK_:I = 0xf

.field public static final LATIN_CAPITAL_LETTER_I_WITH_DOT_ABOVE_:C = '\u0130'

.field public static final LATIN_SMALL_LETTER_DOTLESS_I_:C = '\u0131'

.field public static final LATIN_SMALL_LETTER_I_:C = 'i'

.field private static final LB_MASK:I = 0x3f00000

.field private static final LB_SHIFT:I = 0x14

.field private static final LOGICAL_ORDER_EXCEPTION_PROPERTY_:I = 0x15

.field private static final MATH_PROPERTY_:I = 0x5

.field public static final MAX_SCRIPT:I = 0x3ff

.field static final MY_MASK:I = 0x1e

.field private static final NBSP:I = 0xa0

.field private static final NL:I = 0x85

.field private static final NNBSP:I = 0x202f

.field private static final NOMDIG:I = 0x206f

.field private static final NONCHARACTER_CODE_POINT_PROPERTY_:I = 0xc

.field private static final NTV_BASE60_START_:I = 0x300

.field private static final NTV_DECIMAL_START_:I = 0x1

.field private static final NTV_DIGIT_START_:I = 0xb

.field private static final NTV_FRACTION20_START_:I = 0x324

.field private static final NTV_FRACTION32_START_:I = 0x33c

.field private static final NTV_FRACTION_START_:I = 0xb0

.field private static final NTV_LARGE_START_:I = 0x1e0

.field private static final NTV_NONE_:I = 0x0

.field private static final NTV_NUMERIC_START_:I = 0x15

.field private static final NTV_RESERVED_START_:I = 0x34c

.field private static final NUMERIC_TYPE_VALUE_SHIFT_:I = 0x6

.field private static final PATTERN_SYNTAX:I = 0x1d

.field private static final PATTERN_WHITE_SPACE:I = 0x1e

.field private static final PREPENDED_CONCATENATION_MARK:I = 0x1f

.field private static final PROPS_2_EMOJI:I = 0x1c

.field private static final PROPS_2_EMOJI_COMPONENT:I = 0x1b

.field private static final PROPS_2_EMOJI_MODIFIER:I = 0x1e

.field private static final PROPS_2_EMOJI_MODIFIER_BASE:I = 0x1f

.field private static final PROPS_2_EMOJI_PRESENTATION:I = 0x1d

.field private static final PROPS_2_EXTENDED_PICTOGRAPHIC:I = 0x1a

.field private static final QUOTATION_MARK_PROPERTY_:I = 0x3

.field private static final RADICAL_PROPERTY_:I = 0x11

.field private static final RLM:I = 0x200f

.field private static final SB_MASK:I = 0xf8000

.field private static final SB_SHIFT:I = 0xf

.field public static final SCRIPT_HIGH_MASK:I = 0x300000

.field public static final SCRIPT_HIGH_SHIFT:I = 0xc

.field public static final SCRIPT_LOW_MASK:I = 0xff

.field public static final SCRIPT_X_MASK:I = 0xf000ff

.field public static final SCRIPT_X_WITH_COMMON:I = 0x400000

.field public static final SCRIPT_X_WITH_INHERITED:I = 0x800000

.field public static final SCRIPT_X_WITH_OTHER:I = 0xc00000

.field public static final SRC_BIDI:I = 0x5

.field public static final SRC_CASE:I = 0x4

.field public static final SRC_CASE_AND_NORM:I = 0x7

.field public static final SRC_CHAR:I = 0x1

.field public static final SRC_CHAR_AND_PROPSVEC:I = 0x6

.field public static final SRC_COUNT:I = 0xf

.field public static final SRC_INPC:I = 0xc

.field public static final SRC_INSC:I = 0xd

.field public static final SRC_NAMES:I = 0x3

.field public static final SRC_NFC:I = 0x8

.field public static final SRC_NFC_CANON_ITER:I = 0xb

.field public static final SRC_NFKC:I = 0x9

.field public static final SRC_NFKC_CF:I = 0xa

.field public static final SRC_NONE:I = 0x0

.field public static final SRC_PROPSVEC:I = 0x2

.field public static final SRC_VO:I = 0xe

.field private static final S_TERM_PROPERTY_:I = 0x1b

.field private static final TAB:I = 0x9

.field private static final TERMINAL_PUNCTUATION_PROPERTY_:I = 0x4

.field public static final TYPE_MASK:I = 0x1f

.field private static final UNIFIED_IDEOGRAPH_PROPERTY_:I = 0x12

.field private static final U_A:I = 0x41

.field private static final U_F:I = 0x46

.field private static final U_FW_A:I = 0xff21

.field private static final U_FW_F:I = 0xff26

.field private static final U_FW_Z:I = 0xff3a

.field private static final U_FW_a:I = 0xff41

.field private static final U_FW_f:I = 0xff46

.field private static final U_FW_z:I = 0xff5a

.field private static final U_Z:I = 0x5a

.field private static final U_a:I = 0x61

.field private static final U_f:I = 0x66

.field private static final U_z:I = 0x7a

.field private static final VARIATION_SELECTOR_PROPERTY_:I = 0x1c

.field private static final WB_MASK:I = 0x7c00

.field private static final WB_SHIFT:I = 0xa

.field private static final WHITE_SPACE_PROPERTY_:I = 0x0

.field private static final WJ:I = 0x2060

.field private static final XID_CONTINUE_PROPERTY_:I = 0x17

.field private static final XID_START_PROPERTY_:I = 0x16

.field private static final ZWNBSP:I = 0xfeff

.field private static final gcbToHst:[I


# instance fields
.field binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

.field intProps:[Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

.field m_additionalColumnsCount_:I

.field m_additionalTrie_:Lcom/ibm/icu/impl/Trie2_16;

.field m_additionalVectors_:[I

.field m_maxBlockScriptValue_:I

.field m_maxJTGValue_:I

.field public m_scriptExtensions_:[C

.field public m_trie_:Lcom/ibm/icu/impl/Trie2_16;

.field public m_unicodeVersion_:Lcom/ibm/icu/util/VersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 297
    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CN_MASK:I

    const/16 v0, 0xf

    .line 298
    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CC_MASK:I

    const/16 v0, 0x12

    .line 299
    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CS_MASK:I

    const/16 v0, 0xc

    .line 300
    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZS_MASK:I

    const/16 v1, 0xd

    .line 301
    invoke-static {v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v1

    sput v1, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZL_MASK:I

    const/16 v2, 0xe

    .line 302
    invoke-static {v2}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v2

    sput v2, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZP_MASK:I

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    .line 304
    sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_Z_MASK:I

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 572
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->gcbToHst:[I

    .line 1650
    :try_start_0
    new-instance v0, Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UCharacterProperty;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1653
    new-instance v1, Ljava/util/MissingResourceException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {v1, v0, v2, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x4
        0x5
        0x3
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1421
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x41

    new-array v2, v1, [Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    .line 367
    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x100

    invoke-direct {v3, v0, v4, v5}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v6, 0x80

    invoke-direct {v3, v0, v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$1;

    const/4 v6, 0x5

    invoke-direct {v3, v0, v6}, Lcom/ibm/icu/impl/UCharacterProperty$1;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/4 v7, 0x2

    aput-object v3, v2, v7

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$2;

    invoke-direct {v3, v0, v6}, Lcom/ibm/icu/impl/UCharacterProperty$2;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/4 v8, 0x3

    aput-object v3, v2, v8

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v4, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/4 v9, 0x4

    aput-object v3, v2, v9

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v10, 0x80000

    invoke-direct {v3, v0, v4, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v10, 0x100000

    invoke-direct {v3, v0, v4, v10}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/4 v10, 0x6

    aput-object v3, v2, v10

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v11, 0x400

    invoke-direct {v3, v0, v4, v11}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/4 v11, 0x7

    aput-object v3, v2, v11

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v12, 0x800

    invoke-direct {v3, v0, v4, v12}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v12, 0x8

    aput-object v3, v2, v12

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$3;

    invoke-direct {v3, v0, v12}, Lcom/ibm/icu/impl/UCharacterProperty$3;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v13, 0x9

    aput-object v3, v2, v13

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v14, 0x4000000

    invoke-direct {v3, v0, v4, v14}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v14, 0xa

    aput-object v3, v2, v14

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v15, 0x2000

    invoke-direct {v3, v0, v4, v15}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v15, 0xb

    aput-object v3, v2, v15

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v1, 0x4000

    invoke-direct {v3, v0, v4, v1}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v1, 0xc

    aput-object v3, v2, v1

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v1, 0x40

    invoke-direct {v3, v0, v4, v1}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v1, 0xd

    aput-object v3, v2, v1

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v4, v9}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v1, 0xe

    aput-object v3, v2, v1

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v1, 0x2000000

    invoke-direct {v3, v0, v4, v1}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v1, 0xf

    aput-object v3, v2, v1

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v1, 0x1000000

    invoke-direct {v3, v0, v4, v1}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v1, 0x10

    aput-object v3, v2, v1

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v9, 0x200

    invoke-direct {v3, v0, v4, v9}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v9, 0x11

    aput-object v3, v2, v9

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const v9, 0x8000

    invoke-direct {v3, v0, v4, v9}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v9, 0x12

    aput-object v3, v2, v9

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v9, 0x10000

    invoke-direct {v3, v0, v4, v9}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v9, 0x13

    aput-object v3, v2, v9

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$4;

    invoke-direct {v3, v0, v6}, Lcom/ibm/icu/impl/UCharacterProperty$4;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v9, 0x14

    aput-object v3, v2, v9

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v9, 0x200000

    invoke-direct {v3, v0, v4, v9}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v9, 0x15

    aput-object v3, v2, v9

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v9, 0x16

    invoke-direct {v3, v0, v9}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v9

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v9, 0x20

    invoke-direct {v3, v0, v4, v9}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v9, 0x17

    aput-object v3, v2, v9

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v9, 0x1000

    invoke-direct {v3, v0, v4, v9}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v9, 0x18

    aput-object v3, v2, v9

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v4, v12}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v9, 0x19

    aput-object v3, v2, v9

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x20000

    invoke-direct {v3, v0, v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x1a

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x1b

    invoke-direct {v3, v0, v6}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v4, v1}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x1c

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x40000

    invoke-direct {v3, v0, v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x1d

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x1e

    invoke-direct {v3, v0, v6}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v4, v4}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x1f

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x800000

    invoke-direct {v3, v0, v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x20

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x400000

    invoke-direct {v3, v0, v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x21

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x22

    invoke-direct {v3, v0, v6}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x8000000

    invoke-direct {v3, v0, v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x23

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x10000000

    invoke-direct {v3, v0, v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x24

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v6, 0x25

    invoke-direct {v3, v0, v12, v6}, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v6, 0x26

    invoke-direct {v3, v0, v13, v6}, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v6, 0x27

    invoke-direct {v3, v0, v12, v6}, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v6, 0x28

    invoke-direct {v3, v0, v13, v6}, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$5;

    invoke-direct {v3, v0, v15}, Lcom/ibm/icu/impl/UCharacterProperty$5;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x29

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x20000000

    invoke-direct {v3, v0, v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x2a

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v3, v0, v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x2b

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$6;

    invoke-direct {v3, v0, v10}, Lcom/ibm/icu/impl/UCharacterProperty$6;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x2c

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$7;

    invoke-direct {v3, v0, v4}, Lcom/ibm/icu/impl/UCharacterProperty$7;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x2d

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$8;

    invoke-direct {v3, v0, v4}, Lcom/ibm/icu/impl/UCharacterProperty$8;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x2e

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$9;

    invoke-direct {v3, v0, v4}, Lcom/ibm/icu/impl/UCharacterProperty$9;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x2f

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$10;

    invoke-direct {v3, v0, v4}, Lcom/ibm/icu/impl/UCharacterProperty$10;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x30

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x31

    invoke-direct {v3, v0, v6}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x32

    invoke-direct {v3, v0, v6}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x33

    invoke-direct {v3, v0, v6}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x34

    invoke-direct {v3, v0, v6}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x35

    invoke-direct {v3, v0, v6}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$11;

    invoke-direct {v3, v0, v11}, Lcom/ibm/icu/impl/UCharacterProperty$11;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x36

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x37

    invoke-direct {v3, v0, v6}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$12;

    invoke-direct {v3, v0, v14}, Lcom/ibm/icu/impl/UCharacterProperty$12;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x38

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x10000000

    invoke-direct {v3, v0, v7, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x39

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x20000000

    invoke-direct {v3, v0, v7, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x3a

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v3, v0, v7, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x3b

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, -0x80000000

    invoke-direct {v3, v0, v7, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x3c

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x8000000

    invoke-direct {v3, v0, v7, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x3d

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$13;

    invoke-direct {v3, v0, v7}, Lcom/ibm/icu/impl/UCharacterProperty$13;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x3e

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, -0x80000000

    invoke-direct {v3, v0, v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x3f

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x4000000

    invoke-direct {v3, v0, v7, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x40

    aput-object v3, v2, v6

    iput-object v2, v0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    new-array v2, v9, [Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    .line 652
    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$14;

    invoke-direct {v3, v0}, Lcom/ibm/icu/impl/UCharacterProperty$14;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;)V

    aput-object v3, v2, v5

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const v6, 0x1ff00

    invoke-direct {v3, v0, v5, v6, v12}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v3, v2, v4

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$15;

    invoke-direct {v3, v0, v12}, Lcom/ibm/icu/impl/UCharacterProperty$15;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const/16 v6, 0x1f

    invoke-direct {v3, v0, v7, v6, v5}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v3, v2, v8

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const/high16 v6, 0xe0000

    const/16 v8, 0x11

    invoke-direct {v3, v0, v5, v6, v8}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    const/4 v6, 0x4

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$16;

    invoke-direct {v3, v0, v4}, Lcom/ibm/icu/impl/UCharacterProperty$16;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/4 v6, 0x5

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$17;

    invoke-direct {v3, v0}, Lcom/ibm/icu/impl/UCharacterProperty$17;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$18;

    invoke-direct {v3, v0}, Lcom/ibm/icu/impl/UCharacterProperty$18;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;)V

    aput-object v3, v2, v11

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const/high16 v6, 0x3f00000

    const/16 v8, 0x14

    invoke-direct {v3, v0, v7, v6, v8}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v3, v2, v12

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$19;

    invoke-direct {v3, v0, v4}, Lcom/ibm/icu/impl/UCharacterProperty$19;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v13

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$20;

    invoke-direct {v3, v0, v7}, Lcom/ibm/icu/impl/UCharacterProperty$20;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v14

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$21;

    invoke-direct {v3, v0, v7}, Lcom/ibm/icu/impl/UCharacterProperty$21;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v15

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v6, 0x100c

    invoke-direct {v3, v0, v12, v6, v4}, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    const/16 v6, 0xc

    aput-object v3, v2, v6

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v6, 0x100d

    invoke-direct {v3, v0, v13, v6, v4}, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    const/16 v4, 0xd

    aput-object v3, v2, v4

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v4, 0x100e

    invoke-direct {v3, v0, v12, v4, v7}, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    const/16 v4, 0xe

    aput-object v3, v2, v4

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v4, 0x100f

    invoke-direct {v3, v0, v13, v4, v7}, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    const/16 v4, 0xf

    aput-object v3, v2, v4

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$22;

    invoke-direct {v3, v0, v12}, Lcom/ibm/icu/impl/UCharacterProperty$22;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v1

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$23;

    invoke-direct {v3, v0, v12}, Lcom/ibm/icu/impl/UCharacterProperty$23;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x11

    aput-object v3, v2, v4

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const/16 v4, 0x3e0

    const/4 v6, 0x5

    invoke-direct {v3, v0, v7, v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    const/16 v4, 0x12

    aput-object v3, v2, v4

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const v4, 0xf8000

    const/16 v6, 0xf

    invoke-direct {v3, v0, v7, v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    const/16 v4, 0x13

    aput-object v3, v2, v4

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const/16 v4, 0x7c00

    invoke-direct {v3, v0, v7, v4, v14}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    const/16 v4, 0x14

    aput-object v3, v2, v4

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$24;

    invoke-direct {v3, v0}, Lcom/ibm/icu/impl/UCharacterProperty$24;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;)V

    const/16 v4, 0x15

    aput-object v3, v2, v4

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$25;

    const/16 v4, 0xc

    invoke-direct {v3, v0, v4}, Lcom/ibm/icu/impl/UCharacterProperty$25;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x16

    aput-object v3, v2, v4

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$26;

    const/16 v4, 0xd

    invoke-direct {v3, v0, v4}, Lcom/ibm/icu/impl/UCharacterProperty$26;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x17

    aput-object v3, v2, v4

    new-instance v3, Lcom/ibm/icu/impl/UCharacterProperty$27;

    const/16 v4, 0xe

    invoke-direct {v3, v0, v4}, Lcom/ibm/icu/impl/UCharacterProperty$27;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x18

    aput-object v3, v2, v4

    iput-object v2, v0, Lcom/ibm/icu/impl/UCharacterProperty;->intProps:[Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    .line 1423
    iget-object v3, v0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    array-length v3, v3

    const/16 v4, 0x41

    if-ne v3, v4, :cond_5

    .line 1426
    array-length v2, v2

    if-ne v2, v9, :cond_4

    const-string v2, "uprops.icu"

    .line 1431
    invoke-static {v2}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const v3, 0x5550726f

    .line 1432
    new-instance v4, Lcom/ibm/icu/impl/UCharacterProperty$IsAcceptable;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$IsAcceptable;-><init>(Lcom/ibm/icu/impl/UCharacterProperty$1;)V

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_unicodeVersion_:Lcom/ibm/icu/util/VersionInfo;

    .line 1434
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 1435
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1436
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1437
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 1438
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 1439
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    iput v8, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    .line 1440
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 1441
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 1442
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1443
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1444
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_maxBlockScriptValue_:I

    .line 1445
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_maxJTGValue_:I

    .line 1446
    invoke-static {v2, v1}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1449
    invoke-static {v2}, Lcom/ibm/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2_16;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trie_:Lcom/ibm/icu/impl/Trie2_16;

    add-int/lit8 v10, v3, -0x10

    const/4 v11, 0x4

    mul-int/lit8 v10, v10, 0x4

    .line 1451
    invoke-virtual {v1}, Lcom/ibm/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v1

    if-gt v1, v10, :cond_3

    sub-int/2addr v10, v1

    .line 1456
    invoke-static {v2, v10}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    sub-int v1, v4, v3

    mul-int/lit8 v1, v1, 0x4

    .line 1459
    invoke-static {v2, v1}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1461
    iget v1, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lez v1, :cond_1

    .line 1463
    invoke-static {v2}, Lcom/ibm/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2_16;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalTrie_:Lcom/ibm/icu/impl/Trie2_16;

    sub-int v3, v6, v4

    mul-int/lit8 v3, v3, 0x4

    .line 1465
    invoke-virtual {v1}, Lcom/ibm/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v1

    if-gt v1, v3, :cond_0

    sub-int/2addr v3, v1

    .line 1470
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    sub-int v1, v8, v6

    .line 1474
    invoke-static {v2, v1, v5}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    goto :goto_0

    .line 1467
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "uprops.icu: not enough bytes for additional-properties trie"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    sub-int/2addr v9, v8

    mul-int/lit8 v9, v9, 0x2

    if-lez v9, :cond_2

    .line 1480
    invoke-static {v2, v9, v5}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_scriptExtensions_:[C

    :cond_2
    return-void

    .line 1453
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "uprops.icu: not enough bytes for main trie"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1427
    :cond_4
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    const-string v2, "intProps.length!=(UProperty.INT_LIMIT-UProperty.INT_START)"

    invoke-direct {v1, v2}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1424
    :cond_5
    new-instance v1, Lcom/ibm/icu/util/ICUException;

    const-string v2, "binProps.length!=UProperty.BINARY_LIMIT"

    invoke-direct {v1, v2}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(I)Z
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterProperty;->isgraphPOSIX(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(I)I
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(I)I
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterProperty;->ntvGetType(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400()[I
    .locals 1

    .line 47
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->gcbToHst:[I

    return-object v0
.end method

.method public static getEuropeanDigit(I)I
    .locals 7

    const v0, 0xff21

    const/16 v1, 0x7a

    if-le p0, v1, :cond_0

    if-lt p0, v0, :cond_6

    :cond_0
    const/16 v2, 0x41

    if-lt p0, v2, :cond_6

    const/16 v3, 0x61

    const/16 v4, 0x5a

    if-le p0, v4, :cond_1

    if-lt p0, v3, :cond_6

    :cond_1
    const v5, 0xff5a

    if-gt p0, v5, :cond_6

    const v5, 0xff41

    const v6, 0xff3a

    if-le p0, v6, :cond_2

    if-ge p0, v5, :cond_2

    goto :goto_1

    :cond_2
    if-gt p0, v1, :cond_4

    add-int/lit8 v0, p0, 0xa

    if-gt p0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x61

    :goto_0
    sub-int/2addr v0, v2

    return v0

    :cond_4
    if-gt p0, v6, :cond_5

    add-int/lit8 p0, p0, 0xa

    sub-int/2addr p0, v0

    return p0

    :cond_5
    add-int/lit8 p0, p0, 0xa

    sub-int/2addr p0, v5

    return p0

    :cond_6
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final getMask(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private static final getNumericTypeValue(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method private static final isgraphPOSIX(I)Z
    .locals 2

    .line 316
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result p0

    sget v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CC_MASK:I

    sget v1, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CS_MASK:I

    or-int/2addr v0, v1

    sget v1, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CN_MASK:I

    or-int/2addr v0, v1

    sget v1, Lcom/ibm/icu/impl/UCharacterProperty;->GC_Z_MASK:I

    or-int/2addr v0, v1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final mergeScriptCodeOrIndex(I)I
    .locals 1

    const/high16 v0, 0x300000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0xc

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static final ntvGetType(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    if-ge p0, v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method static ulayout_addPropertyStarts(ILcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 1643
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty$LayoutProps;->addPropertyStarts(ILcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 1540
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trie_:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1542
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 1543
    iget v1, v1, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 1549
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0xa

    .line 1550
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0xe

    .line 1553
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x1c

    .line 1554
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x20

    .line 1555
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x85

    .line 1556
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x86

    .line 1557
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x7f

    .line 1560
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x200a

    .line 1561
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x2010

    .line 1562
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x206a

    .line 1563
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x2070

    .line 1564
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0xfeff

    .line 1565
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0xff00

    .line 1566
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0xa0

    .line 1569
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0xa1

    .line 1570
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x2007

    .line 1571
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x2008

    .line 1572
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x202f

    .line 1573
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x2030

    .line 1574
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x3007

    .line 1579
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x3008

    .line 1580
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x4e00

    .line 1581
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x4e01

    .line 1582
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x4e8c

    .line 1583
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x4e8d

    .line 1584
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x4e09

    .line 1585
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x4e0a

    .line 1586
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x56db

    .line 1587
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x56dc

    .line 1588
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x4e94

    .line 1589
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x4e95

    .line 1590
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x516d

    .line 1591
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x516e

    .line 1592
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x4e03

    .line 1593
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x4e04

    .line 1594
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x516b

    .line 1595
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x516c

    .line 1596
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x4e5d

    .line 1597
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x4e5e

    .line 1598
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x61

    .line 1601
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x7b

    .line 1602
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x41

    .line 1603
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x5b

    .line 1604
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0xff41

    .line 1605
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0xff5b

    .line 1606
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0xff21

    .line 1607
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0xff3b

    .line 1608
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x67

    .line 1611
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x47

    .line 1612
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0xff47

    .line 1613
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0xff27

    .line 1614
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x2060

    .line 1617
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0xfff0

    .line 1618
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0xfffc

    .line 1619
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/high16 v0, 0xe0000

    .line 1620
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const v0, 0xe1000

    .line 1621
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x34f

    .line 1624
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x350

    .line 1625
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    return-object p1
.end method

.method public digit(I)I
    .locals 1

    .line 997
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getAdditional(II)I
    .locals 2

    .line 263
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lt p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalTrie_:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result p1

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public getAge(I)Lcom/ibm/icu/util/VersionInfo;
    .locals 2

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result p1

    shr-int/lit8 p1, p1, 0x18

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    and-int/lit8 p1, p1, 0xf

    .line 292
    invoke-static {v1, p1, v0, v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object p1

    return-object p1
.end method

.method public getIntPropertyMaxValue(I)I
    .locals 2

    const/16 v0, 0x1000

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_1

    const/16 v0, 0x41

    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v0, 0x1019

    if-ge p1, v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->intProps:[Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    add-int/lit16 v1, p1, -0x1000

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->getMaxValue(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getIntPropertyValue(II)I
    .locals 2

    const/16 v0, 0x1000

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_2

    const/16 v0, 0x41

    if-ge p2, v0, :cond_2

    .line 793
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;->contains(I)Z

    move-result p1

    return p1

    :cond_0
    const/16 v1, 0x1019

    if-ge p2, v1, :cond_1

    .line 796
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->intProps:[Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    sub-int/2addr p2, v0

    aget-object p2, v1, p2

    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->getValue(I)I

    move-result p1

    return p1

    :cond_1
    const/16 v0, 0x2000

    if-ne p2, v0, :cond_2

    .line 798
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getType(I)I

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getMaxValues(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 953
    :cond_0
    iget p1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_maxJTGValue_:I

    return p1

    .line 951
    :cond_1
    iget p1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_maxBlockScriptValue_:I

    return p1
.end method

.method public getNumericValue(I)I
    .locals 4

    .line 1007
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getEuropeanDigit(I)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0xb

    const/4 v1, 0x1

    if-ge v0, p1, :cond_1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    const/16 v2, 0x15

    if-ge v0, v2, :cond_2

    sub-int/2addr v0, p1

    return v0

    :cond_2
    const/16 p1, 0xb0

    if-ge v0, p1, :cond_3

    sub-int/2addr v0, v2

    return v0

    :cond_3
    const/16 p1, 0x1e0

    const/4 v2, -0x2

    if-ge v0, p1, :cond_4

    return v2

    :cond_4
    const/16 p1, 0x300

    const/4 v3, 0x2

    if-ge v0, p1, :cond_7

    shr-int/lit8 p1, v0, 0x5

    add-int/lit8 p1, p1, -0xe

    and-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    if-ne v0, v1, :cond_5

    if-gt p1, v3, :cond_5

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    :goto_0
    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_6

    return p1

    :cond_7
    const/16 p1, 0x324

    if-ge v0, p1, :cond_c

    shr-int/lit8 p1, v0, 0x2

    add-int/lit16 p1, p1, -0xbf

    const/4 v2, 0x3

    and-int/2addr v0, v2

    add-int/2addr v0, v1

    if-eq v0, v1, :cond_b

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    goto :goto_2

    :cond_8
    const v0, 0xc5c100

    goto :goto_1

    :cond_9
    const v0, 0x34bc0

    :goto_1
    mul-int p1, p1, v0

    goto :goto_2

    :cond_a
    mul-int/lit16 p1, p1, 0xe10

    goto :goto_2

    :cond_b
    mul-int/lit8 p1, p1, 0x3c

    :goto_2
    return p1

    :cond_c
    return v2
.end method

.method public final getProperty(I)I
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trie_:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result p1

    return p1
.end method

.method final getSource(I)I
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x41

    if-ge p1, v1, :cond_1

    .line 818
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;->getSource()I

    move-result p1

    return p1

    :cond_1
    const/16 v1, 0x1000

    if-ge p1, v1, :cond_2

    return v0

    :cond_2
    const/16 v2, 0x1019

    if-ge p1, v2, :cond_3

    .line 822
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->intProps:[Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->getSource()I

    move-result p1

    return p1

    :cond_3
    const/16 v1, 0x4000

    if-ge p1, v1, :cond_5

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_4

    const/16 v1, 0x3000

    if-eq p1, v1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    const/16 v1, 0x400e

    const/4 v2, 0x2

    if-ge p1, v1, :cond_6

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p1, 0x3

    return p1

    :pswitch_1
    const/4 p1, 0x4

    return p1

    :pswitch_2
    const/4 p1, 0x5

    return p1

    :pswitch_3
    return v2

    :cond_6
    const/16 v1, 0x7000

    if-eq p1, v1, :cond_7

    return v0

    :cond_7
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x4000
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(I)I
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    return p1
.end method

.method public getUnicodeNumericValue(I)D
    .locals 9

    .line 1071
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result p1

    const-wide v0, -0x3e6290cbac000000L    # -1.23456789E8

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/16 v2, 0xb

    const/4 v3, 0x1

    if-ge p1, v2, :cond_1

    sub-int/2addr p1, v3

    int-to-double v0, p1

    return-wide v0

    :cond_1
    const/16 v4, 0x15

    if-ge p1, v4, :cond_2

    sub-int/2addr p1, v2

    int-to-double v0, p1

    return-wide v0

    :cond_2
    const/16 v2, 0xb0

    if-ge p1, v2, :cond_3

    sub-int/2addr p1, v4

    int-to-double v0, p1

    return-wide v0

    :cond_3
    const/16 v2, 0x1e0

    if-ge p1, v2, :cond_4

    shr-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, -0xc

    and-int/lit8 p1, p1, 0xf

    add-int/2addr p1, v3

    int-to-double v0, v0

    int-to-double v2, p1

    .line 1088
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0

    :cond_4
    const/16 v2, 0x300

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge p1, v2, :cond_9

    shr-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, -0xe

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, v6

    int-to-double v0, v0

    :goto_0
    if-lt p1, v4, :cond_5

    const-wide v7, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v7

    add-int/lit8 p1, p1, -0x4

    goto :goto_0

    :cond_5
    if-eq p1, v3, :cond_8

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_6

    goto :goto_2

    :cond_6
    const-wide v2, 0x408f400000000000L    # 1000.0

    goto :goto_1

    :cond_7
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    goto :goto_1

    :cond_8
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :goto_1
    mul-double v0, v0, v2

    :goto_2
    return-wide v0

    :cond_9
    const/16 v2, 0x324

    if-ge p1, v2, :cond_e

    shr-int/lit8 v0, p1, 0x2

    add-int/lit16 v0, v0, -0xbf

    and-int/2addr p1, v5

    add-int/2addr p1, v3

    if-eq p1, v3, :cond_d

    if-eq p1, v6, :cond_c

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_a

    goto :goto_4

    :cond_a
    const p1, 0xc5c100

    goto :goto_3

    :cond_b
    const p1, 0x34bc0

    :goto_3
    mul-int v0, v0, p1

    goto :goto_4

    :cond_c
    mul-int/lit16 v0, v0, 0xe10

    goto :goto_4

    :cond_d
    mul-int/lit8 v0, v0, 0x3c

    :goto_4
    int-to-double v0, v0

    return-wide v0

    :cond_e
    const/16 v4, 0x33c

    if-ge p1, v4, :cond_f

    sub-int/2addr p1, v2

    and-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    const/16 v1, 0x14

    shr-int/2addr p1, v6

    shl-int p1, v1, p1

    int-to-double v0, v0

    int-to-double v2, p1

    .line 1146
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0

    :cond_f
    const/16 v2, 0x34c

    if-ge p1, v2, :cond_10

    sub-int/2addr p1, v4

    and-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    const/16 v1, 0x20

    shr-int/2addr p1, v6

    shl-int p1, v1, p1

    int-to-double v0, v0

    int-to-double v2, p1

    .line 1152
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    :cond_10
    return-wide v0
.end method

.method public hasBinaryProperty(II)Z
    .locals 1

    if-ltz p2, :cond_1

    const/16 v0, 0x41

    if-gt v0, p2, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;->contains(I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public upropsvec_addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    .line 1632
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lez v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalTrie_:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1636
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 1637
    iget v1, v1, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    return-void
.end method
