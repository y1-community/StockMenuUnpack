.class public Lcom/ibm/icu/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/Bidi$LevState;,
        Lcom/ibm/icu/text/Bidi$ImpTabPair;,
        Lcom/ibm/icu/text/Bidi$Isolate;,
        Lcom/ibm/icu/text/Bidi$BracketData;,
        Lcom/ibm/icu/text/Bidi$IsoRun;,
        Lcom/ibm/icu/text/Bidi$Opening;,
        Lcom/ibm/icu/text/Bidi$InsertPoints;,
        Lcom/ibm/icu/text/Bidi$Point;
    }
.end annotation


# static fields
.field static final AL:B = 0xdt

.field static final AN:B = 0x5t

.field static final B:B = 0x7t

.field static final BN:B = 0x12t

.field public static final CLASS_DEFAULT:I = 0x17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CR:C = '\r'

.field static final CS:B = 0x6t

.field public static final DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = 0x7e

.field public static final DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = 0x7f

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final DO_MIRRORING:S = 0x2s

.field static final DirPropFlagE:[I

.field static final DirPropFlagLR:[I

.field static final DirPropFlagMultiRuns:I

.field static final DirPropFlagO:[I

.field static final EN:B = 0x2t

.field static final ENL:B = 0x17t

.field static final ENR:B = 0x18t

.field static final ES:B = 0x3t

.field static final ET:B = 0x4t

.field static final FIRSTALLOC:I = 0xa

.field static final FOUND_L:B

.field static final FOUND_R:B

.field static final FSI:B = 0x13t

.field private static final IMPTABLEVELS_COLUMNS:I = 0x8

.field private static final IMPTABLEVELS_RES:I = 0x7

.field private static final IMPTABPROPS_COLUMNS:I = 0x10

.field private static final IMPTABPROPS_RES:I = 0xf

.field public static final INSERT_LRM_FOR_NUMERIC:S = 0x4s

.field static final ISOLATE:I = 0x100

.field public static final KEEP_BASE_COMBINING:S = 0x1s

.field static final L:B = 0x0t

.field public static final LEVEL_DEFAULT_LTR:B = 0x7et

.field public static final LEVEL_DEFAULT_RTL:B = 0x7ft

.field public static final LEVEL_OVERRIDE:B = -0x80t

.field private static final LF:C = '\n'

.field static final LOOKING_FOR_PDI:I = 0x3

.field static final LRE:B = 0xbt

.field static final LRI:B = 0x14t

.field static final LRM_AFTER:I = 0x2

.field static final LRM_BEFORE:I = 0x1

.field static final LRO:B = 0xct

.field public static final LTR:B = 0x0t

.field public static final MAP_NOWHERE:I = -0x1

.field static final MASK_BN_EXPLICIT:I

.field static final MASK_B_S:I

.field static final MASK_EMBEDDING:I

.field static final MASK_EXPLICIT:I

.field static final MASK_ISO:I

.field static final MASK_LTR:I

.field static final MASK_POSSIBLE_N:I

.field static final MASK_RTL:I

.field static final MASK_R_AL:I

.field static final MASK_STRONG_EN_AN:I

.field static final MASK_WS:I

.field public static final MAX_EXPLICIT_LEVEL:B = 0x7dt

.field public static final MIXED:B = 0x2t

.field public static final NEUTRAL:B = 0x3t

.field static final NOT_SEEKING_STRONG:I = 0x0

.field static final NSM:B = 0x11t

.field static final ON:B = 0xat

.field public static final OPTION_DEFAULT:I = 0x0

.field public static final OPTION_INSERT_MARKS:I = 0x1

.field public static final OPTION_REMOVE_CONTROLS:I = 0x2

.field public static final OPTION_STREAMING:I = 0x4

.field public static final OUTPUT_REVERSE:S = 0x10s

.field static final PDF:B = 0x10t

.field static final PDI:B = 0x16t

.field static final R:B = 0x1t

.field public static final REMOVE_BIDI_CONTROLS:S = 0x8s

.field static final REORDER_COUNT:S = 0x7s

.field public static final REORDER_DEFAULT:S = 0x0s

.field public static final REORDER_GROUP_NUMBERS_WITH_R:S = 0x2s

.field public static final REORDER_INVERSE_FOR_NUMBERS_SPECIAL:S = 0x6s

.field public static final REORDER_INVERSE_LIKE_DIRECT:S = 0x5s

.field public static final REORDER_INVERSE_NUMBERS_AS_L:S = 0x4s

.field static final REORDER_LAST_LOGICAL_TO_VISUAL:S = 0x1s

.field public static final REORDER_NUMBERS_SPECIAL:S = 0x1s

.field public static final REORDER_RUNS_ONLY:S = 0x3s

.field static final RLE:B = 0xet

.field static final RLI:B = 0x15t

.field static final RLM_AFTER:I = 0x8

.field static final RLM_BEFORE:I = 0x4

.field static final RLO:B = 0xft

.field public static final RTL:B = 0x1t

.field static final S:B = 0x8t

.field static final SEEKING_STRONG_FOR_FSI:I = 0x2

.field static final SEEKING_STRONG_FOR_PARA:I = 0x1

.field static final SIMPLE_OPENINGS_COUNT:I = 0x14

.field static final SIMPLE_PARAS_COUNT:I = 0xa

.field static final WS:B = 0x9t

.field private static final _AN:S = 0x3s

.field private static final _B:S = 0x6s

.field private static final _EN:S = 0x2s

.field private static final _L:S = 0x0s

.field private static final _ON:S = 0x4s

.field private static final _R:S = 0x1s

.field private static final _S:S = 0x5s

.field private static final groupProp:[S

.field private static final impAct0:[S

.field private static final impAct1:[S

.field private static final impAct2:[S

.field private static final impAct3:[S

.field private static final impTabL_DEFAULT:[[B

.field private static final impTabL_GROUP_NUMBERS_WITH_R:[[B

.field private static final impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

.field private static final impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

.field private static final impTabL_INVERSE_NUMBERS_AS_L:[[B

.field private static final impTabL_NUMBERS_SPECIAL:[[B

.field private static final impTabProps:[[S

.field private static final impTabR_DEFAULT:[[B

.field private static final impTabR_GROUP_NUMBERS_WITH_R:[[B

.field private static final impTabR_INVERSE_LIKE_DIRECT:[[B

.field private static final impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

.field private static final impTabR_INVERSE_NUMBERS_AS_L:[[B

.field private static final impTab_DEFAULT:Lcom/ibm/icu/text/Bidi$ImpTabPair;

.field private static final impTab_GROUP_NUMBERS_WITH_R:Lcom/ibm/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_FOR_NUMBERS_SPECIAL:Lcom/ibm/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Lcom/ibm/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_LIKE_DIRECT:Lcom/ibm/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Lcom/ibm/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_NUMBERS_AS_L:Lcom/ibm/icu/text/Bidi$ImpTabPair;

.field private static final impTab_NUMBERS_SPECIAL:Lcom/ibm/icu/text/Bidi$ImpTabPair;


# instance fields
.field final bdp:Lcom/ibm/icu/impl/UBiDiProps;

.field controlCount:I

.field customClassifier:Lcom/ibm/icu/text/BidiClassifier;

.field defaultParaLevel:B

.field dirProps:[B

.field dirPropsMemory:[B

.field direction:B

.field epilogue:Ljava/lang/String;

.field flags:I

.field impTabPair:Lcom/ibm/icu/text/Bidi$ImpTabPair;

.field insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

.field isGoodLogicalToVisualRunsMap:Z

.field isInverse:Z

.field isolateCount:I

.field isolates:[Lcom/ibm/icu/text/Bidi$Isolate;

.field lastArabicPos:I

.field length:I

.field levels:[B

.field levelsMemory:[B

.field logicalToVisualRunsMap:[I

.field mayAllocateRuns:Z

.field mayAllocateText:Z

.field orderParagraphsLTR:Z

.field originalLength:I

.field paraBidi:Lcom/ibm/icu/text/Bidi;

.field paraCount:I

.field paraLevel:B

.field paras_level:[B

.field paras_limit:[I

.field prologue:Ljava/lang/String;

.field reorderingMode:I

.field reorderingOptions:I

.field resultLength:I

.field runCount:I

.field runs:[Lcom/ibm/icu/text/BidiRun;

.field runsMemory:[Lcom/ibm/icu/text/BidiRun;

.field simpleRuns:[Lcom/ibm/icu/text/BidiRun;

.field text:[C

.field trailingWSStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const/4 v0, 0x0

    .line 1010
    invoke-static {v0}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    int-to-byte v1, v1

    sput-byte v1, Lcom/ibm/icu/text/Bidi;->FOUND_L:B

    const/4 v1, 0x1

    .line 1011
    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    int-to-byte v2, v2

    sput-byte v2, Lcom/ibm/icu/text/Bidi;->FOUND_R:B

    const/16 v2, 0x1f

    .line 1146
    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    sput v2, Lcom/ibm/icu/text/Bidi;->DirPropFlagMultiRuns:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 1149
    invoke-static {v0}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    aput v4, v3, v0

    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    aput v4, v3, v1

    sput-object v3, Lcom/ibm/icu/text/Bidi;->DirPropFlagLR:[I

    new-array v3, v2, [I

    const/16 v4, 0xb

    .line 1150
    invoke-static {v4}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v5

    aput v5, v3, v0

    const/16 v5, 0xe

    invoke-static {v5}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    aput v6, v3, v1

    sput-object v3, Lcom/ibm/icu/text/Bidi;->DirPropFlagE:[I

    new-array v3, v2, [I

    const/16 v6, 0xc

    .line 1151
    invoke-static {v6}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    aput v7, v3, v0

    const/16 v7, 0xf

    invoke-static {v7}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    aput v8, v3, v1

    sput-object v3, Lcom/ibm/icu/text/Bidi;->DirPropFlagO:[I

    .line 1161
    invoke-static {v0}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    or-int/2addr v3, v8

    const/16 v8, 0x17

    invoke-static {v8}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    or-int/2addr v3, v9

    const/16 v9, 0x18

    invoke-static {v9}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v3, v10

    const/4 v10, 0x5

    invoke-static {v10}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v11

    or-int/2addr v3, v11

    invoke-static {v4}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v11

    or-int/2addr v3, v11

    invoke-static {v6}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v11

    or-int/2addr v3, v11

    const/16 v11, 0x14

    invoke-static {v11}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v12

    or-int/2addr v3, v12

    sput v3, Lcom/ibm/icu/text/Bidi;->MASK_LTR:I

    .line 1162
    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    const/16 v12, 0xd

    invoke-static {v12}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v13

    or-int/2addr v3, v13

    invoke-static {v5}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v13

    or-int/2addr v3, v13

    invoke-static {v7}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v13

    or-int/2addr v3, v13

    const/16 v13, 0x15

    invoke-static {v13}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v14

    or-int/2addr v3, v14

    sput v3, Lcom/ibm/icu/text/Bidi;->MASK_RTL:I

    .line 1164
    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    invoke-static {v12}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v14

    or-int/2addr v3, v14

    sput v3, Lcom/ibm/icu/text/Bidi;->MASK_R_AL:I

    .line 1165
    invoke-static {v0}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v14

    or-int/2addr v3, v14

    invoke-static {v12}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v14

    or-int/2addr v3, v14

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v14

    or-int/2addr v3, v14

    invoke-static {v10}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v14

    or-int/2addr v3, v14

    sput v3, Lcom/ibm/icu/text/Bidi;->MASK_STRONG_EN_AN:I

    .line 1167
    invoke-static {v4}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    invoke-static {v6}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v14

    or-int/2addr v3, v14

    invoke-static {v5}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v14

    or-int/2addr v3, v14

    invoke-static {v7}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v14

    or-int/2addr v3, v14

    const/16 v14, 0x10

    invoke-static {v14}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v15

    or-int/2addr v3, v15

    sput v3, Lcom/ibm/icu/text/Bidi;->MASK_EXPLICIT:I

    const/16 v15, 0x12

    .line 1168
    invoke-static {v15}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v16

    or-int v3, v16, v3

    sput v3, Lcom/ibm/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    .line 1171
    invoke-static {v11}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v16

    invoke-static {v13}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v17

    or-int v16, v16, v17

    const/16 v17, 0x13

    invoke-static/range {v17 .. v17}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v18

    or-int v16, v16, v18

    const/16 v18, 0x16

    invoke-static/range {v18 .. v18}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v19

    or-int v16, v16, v19

    sput v16, Lcom/ibm/icu/text/Bidi;->MASK_ISO:I

    const/4 v8, 0x7

    .line 1174
    invoke-static {v8}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    const/16 v13, 0x8

    invoke-static {v13}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v21

    or-int v20, v20, v21

    sput v20, Lcom/ibm/icu/text/Bidi;->MASK_B_S:I

    const/16 v21, 0x9

    .line 1177
    invoke-static/range {v21 .. v21}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v21

    or-int v20, v20, v21

    or-int v3, v20, v3

    or-int v3, v3, v16

    sput v3, Lcom/ibm/icu/text/Bidi;->MASK_WS:I

    const/16 v16, 0xa

    .line 1180
    invoke-static/range {v16 .. v16}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v16

    const/4 v11, 0x6

    invoke-static {v11}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v21

    or-int v16, v16, v21

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v22

    or-int v16, v16, v22

    const/4 v15, 0x4

    invoke-static {v15}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v23

    or-int v16, v16, v23

    or-int v3, v16, v3

    sput v3, Lcom/ibm/icu/text/Bidi;->MASK_POSSIBLE_N:I

    const/16 v16, 0x11

    .line 1187
    invoke-static/range {v16 .. v16}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v16

    or-int v3, v16, v3

    sput v3, Lcom/ibm/icu/text/Bidi;->MASK_EMBEDDING:I

    const/16 v3, 0x19

    new-array v3, v3, [S

    .line 2781
    fill-array-data v3, :array_0

    sput-object v3, Lcom/ibm/icu/text/Bidi;->groupProp:[S

    new-array v3, v9, [[S

    new-array v9, v14, [S

    .line 2828
    fill-array-data v9, :array_1

    aput-object v9, v3, v0

    new-array v9, v14, [S

    fill-array-data v9, :array_2

    aput-object v9, v3, v1

    new-array v9, v14, [S

    fill-array-data v9, :array_3

    aput-object v9, v3, v2

    new-array v9, v14, [S

    fill-array-data v9, :array_4

    aput-object v9, v3, v21

    new-array v9, v14, [S

    fill-array-data v9, :array_5

    aput-object v9, v3, v15

    new-array v9, v14, [S

    fill-array-data v9, :array_6

    aput-object v9, v3, v10

    new-array v9, v14, [S

    fill-array-data v9, :array_7

    aput-object v9, v3, v11

    new-array v9, v14, [S

    fill-array-data v9, :array_8

    aput-object v9, v3, v8

    new-array v9, v14, [S

    fill-array-data v9, :array_9

    aput-object v9, v3, v13

    new-array v9, v14, [S

    fill-array-data v9, :array_a

    const/16 v16, 0x9

    aput-object v9, v3, v16

    new-array v9, v14, [S

    fill-array-data v9, :array_b

    const/16 v16, 0xa

    aput-object v9, v3, v16

    new-array v9, v14, [S

    fill-array-data v9, :array_c

    aput-object v9, v3, v4

    new-array v4, v14, [S

    fill-array-data v4, :array_d

    aput-object v4, v3, v6

    new-array v4, v14, [S

    fill-array-data v4, :array_e

    aput-object v4, v3, v12

    new-array v4, v14, [S

    fill-array-data v4, :array_f

    aput-object v4, v3, v5

    new-array v4, v14, [S

    fill-array-data v4, :array_10

    aput-object v4, v3, v7

    new-array v4, v14, [S

    fill-array-data v4, :array_11

    aput-object v4, v3, v14

    new-array v4, v14, [S

    fill-array-data v4, :array_12

    const/16 v5, 0x11

    aput-object v4, v3, v5

    new-array v4, v14, [S

    fill-array-data v4, :array_13

    const/16 v5, 0x12

    aput-object v4, v3, v5

    new-array v4, v14, [S

    fill-array-data v4, :array_14

    aput-object v4, v3, v17

    new-array v4, v14, [S

    fill-array-data v4, :array_15

    const/16 v5, 0x14

    aput-object v4, v3, v5

    new-array v4, v14, [S

    fill-array-data v4, :array_16

    const/16 v5, 0x15

    aput-object v4, v3, v5

    new-array v4, v14, [S

    fill-array-data v4, :array_17

    aput-object v4, v3, v18

    new-array v4, v14, [S

    fill-array-data v4, :array_18

    const/16 v5, 0x17

    aput-object v4, v3, v5

    sput-object v3, Lcom/ibm/icu/text/Bidi;->impTabProps:[[S

    new-array v3, v11, [[B

    new-array v4, v13, [B

    .line 2927
    fill-array-data v4, :array_19

    aput-object v4, v3, v0

    new-array v4, v13, [B

    fill-array-data v4, :array_1a

    aput-object v4, v3, v1

    new-array v4, v13, [B

    fill-array-data v4, :array_1b

    aput-object v4, v3, v2

    new-array v4, v13, [B

    fill-array-data v4, :array_1c

    aput-object v4, v3, v21

    new-array v4, v13, [B

    fill-array-data v4, :array_1d

    aput-object v4, v3, v15

    new-array v4, v13, [B

    fill-array-data v4, :array_1e

    aput-object v4, v3, v10

    sput-object v3, Lcom/ibm/icu/text/Bidi;->impTabL_DEFAULT:[[B

    new-array v4, v11, [[B

    new-array v5, v13, [B

    .line 2941
    fill-array-data v5, :array_1f

    aput-object v5, v4, v0

    new-array v5, v13, [B

    fill-array-data v5, :array_20

    aput-object v5, v4, v1

    new-array v5, v13, [B

    fill-array-data v5, :array_21

    aput-object v5, v4, v2

    new-array v5, v13, [B

    fill-array-data v5, :array_22

    aput-object v5, v4, v21

    new-array v5, v13, [B

    fill-array-data v5, :array_23

    aput-object v5, v4, v15

    new-array v5, v13, [B

    fill-array-data v5, :array_24

    aput-object v5, v4, v10

    sput-object v4, Lcom/ibm/icu/text/Bidi;->impTabR_DEFAULT:[[B

    new-array v5, v10, [S

    .line 2955
    fill-array-data v5, :array_25

    sput-object v5, Lcom/ibm/icu/text/Bidi;->impAct0:[S

    .line 2957
    new-instance v6, Lcom/ibm/icu/text/Bidi$ImpTabPair;

    invoke-direct {v6, v3, v4, v5, v5}, Lcom/ibm/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v6, Lcom/ibm/icu/text/Bidi;->impTab_DEFAULT:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    new-array v6, v10, [[B

    new-array v7, v13, [B

    .line 2960
    fill-array-data v7, :array_26

    aput-object v7, v6, v0

    new-array v7, v13, [B

    fill-array-data v7, :array_27

    aput-object v7, v6, v1

    new-array v7, v13, [B

    fill-array-data v7, :array_28

    aput-object v7, v6, v2

    new-array v7, v13, [B

    fill-array-data v7, :array_29

    aput-object v7, v6, v21

    new-array v7, v13, [B

    fill-array-data v7, :array_2a

    aput-object v7, v6, v15

    sput-object v6, Lcom/ibm/icu/text/Bidi;->impTabL_NUMBERS_SPECIAL:[[B

    .line 2971
    new-instance v7, Lcom/ibm/icu/text/Bidi$ImpTabPair;

    invoke-direct {v7, v6, v4, v5, v5}, Lcom/ibm/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v7, Lcom/ibm/icu/text/Bidi;->impTab_NUMBERS_SPECIAL:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    new-array v4, v11, [[B

    new-array v7, v13, [B

    .line 2974
    fill-array-data v7, :array_2b

    aput-object v7, v4, v0

    new-array v7, v13, [B

    fill-array-data v7, :array_2c

    aput-object v7, v4, v1

    new-array v7, v13, [B

    fill-array-data v7, :array_2d

    aput-object v7, v4, v2

    new-array v7, v13, [B

    fill-array-data v7, :array_2e

    aput-object v7, v4, v21

    new-array v7, v13, [B

    fill-array-data v7, :array_2f

    aput-object v7, v4, v15

    new-array v7, v13, [B

    fill-array-data v7, :array_30

    aput-object v7, v4, v10

    sput-object v4, Lcom/ibm/icu/text/Bidi;->impTabL_GROUP_NUMBERS_WITH_R:[[B

    new-array v7, v10, [[B

    new-array v9, v13, [B

    .line 2986
    fill-array-data v9, :array_31

    aput-object v9, v7, v0

    new-array v9, v13, [B

    fill-array-data v9, :array_32

    aput-object v9, v7, v1

    new-array v9, v13, [B

    fill-array-data v9, :array_33

    aput-object v9, v7, v2

    new-array v9, v13, [B

    fill-array-data v9, :array_34

    aput-object v9, v7, v21

    new-array v9, v13, [B

    fill-array-data v9, :array_35

    aput-object v9, v7, v15

    sput-object v7, Lcom/ibm/icu/text/Bidi;->impTabR_GROUP_NUMBERS_WITH_R:[[B

    .line 2997
    new-instance v9, Lcom/ibm/icu/text/Bidi$ImpTabPair;

    invoke-direct {v9, v4, v7, v5, v5}, Lcom/ibm/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v9, Lcom/ibm/icu/text/Bidi;->impTab_GROUP_NUMBERS_WITH_R:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    new-array v4, v11, [[B

    new-array v7, v13, [B

    .line 3001
    fill-array-data v7, :array_36

    aput-object v7, v4, v0

    new-array v7, v13, [B

    fill-array-data v7, :array_37

    aput-object v7, v4, v1

    new-array v7, v13, [B

    fill-array-data v7, :array_38

    aput-object v7, v4, v2

    new-array v7, v13, [B

    fill-array-data v7, :array_39

    aput-object v7, v4, v21

    new-array v7, v13, [B

    fill-array-data v7, :array_3a

    aput-object v7, v4, v15

    new-array v7, v13, [B

    fill-array-data v7, :array_3b

    aput-object v7, v4, v10

    sput-object v4, Lcom/ibm/icu/text/Bidi;->impTabL_INVERSE_NUMBERS_AS_L:[[B

    new-array v7, v11, [[B

    new-array v9, v13, [B

    .line 3013
    fill-array-data v9, :array_3c

    aput-object v9, v7, v0

    new-array v9, v13, [B

    fill-array-data v9, :array_3d

    aput-object v9, v7, v1

    new-array v9, v13, [B

    fill-array-data v9, :array_3e

    aput-object v9, v7, v2

    new-array v9, v13, [B

    fill-array-data v9, :array_3f

    aput-object v9, v7, v21

    new-array v9, v13, [B

    fill-array-data v9, :array_40

    aput-object v9, v7, v15

    new-array v9, v13, [B

    fill-array-data v9, :array_41

    aput-object v9, v7, v10

    sput-object v7, Lcom/ibm/icu/text/Bidi;->impTabR_INVERSE_NUMBERS_AS_L:[[B

    .line 3025
    new-instance v9, Lcom/ibm/icu/text/Bidi$ImpTabPair;

    invoke-direct {v9, v4, v7, v5, v5}, Lcom/ibm/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v9, Lcom/ibm/icu/text/Bidi;->impTab_INVERSE_NUMBERS_AS_L:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    new-array v4, v8, [[B

    new-array v7, v13, [B

    .line 3029
    fill-array-data v7, :array_42

    aput-object v7, v4, v0

    new-array v7, v13, [B

    fill-array-data v7, :array_43

    aput-object v7, v4, v1

    new-array v7, v13, [B

    fill-array-data v7, :array_44

    aput-object v7, v4, v2

    new-array v7, v13, [B

    fill-array-data v7, :array_45

    aput-object v7, v4, v21

    new-array v7, v13, [B

    fill-array-data v7, :array_46

    aput-object v7, v4, v15

    new-array v7, v13, [B

    fill-array-data v7, :array_47

    aput-object v7, v4, v10

    new-array v7, v13, [B

    fill-array-data v7, :array_48

    aput-object v7, v4, v11

    sput-object v4, Lcom/ibm/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT:[[B

    new-array v7, v15, [S

    .line 3042
    fill-array-data v7, :array_49

    sput-object v7, Lcom/ibm/icu/text/Bidi;->impAct1:[S

    .line 3043
    new-instance v9, Lcom/ibm/icu/text/Bidi$ImpTabPair;

    invoke-direct {v9, v3, v4, v5, v7}, Lcom/ibm/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v9, Lcom/ibm/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    new-array v3, v8, [[B

    new-array v9, v13, [B

    .line 3046
    fill-array-data v9, :array_4a

    aput-object v9, v3, v0

    new-array v9, v13, [B

    fill-array-data v9, :array_4b

    aput-object v9, v3, v1

    new-array v9, v13, [B

    fill-array-data v9, :array_4c

    aput-object v9, v3, v2

    new-array v9, v13, [B

    fill-array-data v9, :array_4d

    aput-object v9, v3, v21

    new-array v9, v13, [B

    fill-array-data v9, :array_4e

    aput-object v9, v3, v15

    new-array v9, v13, [B

    fill-array-data v9, :array_4f

    aput-object v9, v3, v10

    new-array v9, v13, [B

    fill-array-data v9, :array_50

    aput-object v9, v3, v11

    sput-object v3, Lcom/ibm/icu/text/Bidi;->impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    new-array v9, v8, [[B

    new-array v12, v13, [B

    .line 3058
    fill-array-data v12, :array_51

    aput-object v12, v9, v0

    new-array v12, v13, [B

    fill-array-data v12, :array_52

    aput-object v12, v9, v1

    new-array v12, v13, [B

    fill-array-data v12, :array_53

    aput-object v12, v9, v2

    new-array v12, v13, [B

    fill-array-data v12, :array_54

    aput-object v12, v9, v21

    new-array v12, v13, [B

    fill-array-data v12, :array_55

    aput-object v12, v9, v15

    new-array v12, v13, [B

    fill-array-data v12, :array_56

    aput-object v12, v9, v10

    new-array v12, v13, [B

    fill-array-data v12, :array_57

    aput-object v12, v9, v11

    sput-object v9, Lcom/ibm/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    new-array v8, v8, [S

    .line 3071
    fill-array-data v8, :array_58

    sput-object v8, Lcom/ibm/icu/text/Bidi;->impAct2:[S

    new-array v11, v11, [S

    .line 3072
    fill-array-data v11, :array_59

    sput-object v11, Lcom/ibm/icu/text/Bidi;->impAct3:[S

    .line 3073
    new-instance v12, Lcom/ibm/icu/text/Bidi$ImpTabPair;

    invoke-direct {v12, v3, v9, v8, v11}, Lcom/ibm/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v12, Lcom/ibm/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    .line 3077
    new-instance v3, Lcom/ibm/icu/text/Bidi$ImpTabPair;

    invoke-direct {v3, v6, v4, v5, v7}, Lcom/ibm/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v3, Lcom/ibm/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    new-array v3, v10, [[B

    new-array v4, v13, [B

    .line 3080
    fill-array-data v4, :array_5a

    aput-object v4, v3, v0

    new-array v0, v13, [B

    fill-array-data v0, :array_5b

    aput-object v0, v3, v1

    new-array v0, v13, [B

    fill-array-data v0, :array_5c

    aput-object v0, v3, v2

    new-array v0, v13, [B

    fill-array-data v0, :array_5d

    aput-object v0, v3, v21

    new-array v0, v13, [B

    fill-array-data v0, :array_5e

    aput-object v0, v3, v15

    sput-object v3, Lcom/ibm/icu/text/Bidi;->impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

    .line 3090
    new-instance v0, Lcom/ibm/icu/text/Bidi$ImpTabPair;

    invoke-direct {v0, v3, v9, v8, v11}, Lcom/ibm/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Lcom/ibm/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x7s
        0x8s
        0x3s
        0x9s
        0x6s
        0x5s
        0x4s
        0x4s
        0xas
        0xas
        0xcs
        0xas
        0xas
        0xas
        0xbs
        0xas
        0x4s
        0x4s
        0x4s
        0x4s
        0xds
        0xes
    .end array-data

    nop

    :array_1
    .array-data 2
        0x1s
        0x2s
        0x4s
        0x5s
        0x7s
        0xfs
        0x11s
        0x7s
        0x9s
        0x7s
        0x0s
        0x7s
        0x3s
        0x12s
        0x15s
        0x4s
    .end array-data

    :array_2
    .array-data 2
        0x1s
        0x22s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x27s
        0x1s
        0x1s
        0x23s
        0x32s
        0x35s
        0x0s
    .end array-data

    :array_3
    .array-data 2
        0x21s
        0x2s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x27s
        0x2s
        0x2s
        0x23s
        0x32s
        0x35s
        0x1s
    .end array-data

    :array_4
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x28s
        0x30s
        0x31s
        0x28s
        0x28s
        0x28s
        0x3s
        0x3s
        0x3s
        0x32s
        0x35s
        0x1s
    .end array-data

    :array_5
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x4as
        0xbs
        0x4as
        0x4s
        0x4s
        0x23s
        0x12s
        0x15s
        0x2s
    .end array-data

    :array_6
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x5s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x4cs
        0x5s
        0x5s
        0x23s
        0x32s
        0x35s
        0x3s
    .end array-data

    :array_7
    .array-data 2
        0x21s
        0x22s
        0x6s
        0x6s
        0x28s
        0x30s
        0x31s
        0x28s
        0x28s
        0x4ds
        0x6s
        0x6s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_8
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0x4es
        0x7s
        0x7s
        0x7s
        0x23s
        0x32s
        0x35s
        0x4s
    .end array-data

    :array_9
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x8s
        0x30s
        0x31s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x23s
        0x32s
        0x35s
        0x4s
    .end array-data

    :array_a
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0x9s
        0x7s
        0x9s
        0x9s
        0x23s
        0x12s
        0x15s
        0x4s
    .end array-data

    :array_b
    .array-data 2
        0x61s
        0x62s
        0x4s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0xas
        0x87s
        0x63s
        0x12s
        0x15s
        0x2s
    .end array-data

    :array_c
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0xbs
        0x27s
        0xbs
        0xbs
        0x23s
        0x12s
        0x15s
        0x2s
    .end array-data

    :array_d
    .array-data 2
        0x61s
        0x62s
        0x64s
        0x5s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0xcs
        0x87s
        0x63s
        0x72s
        0x75s
        0x3s
    .end array-data

    :array_e
    .array-data 2
        0x61s
        0x62s
        0x6s
        0x6s
        0x88s
        0x70s
        0x71s
        0x88s
        0x88s
        0x88s
        0xds
        0x88s
        0x63s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_f
    .array-data 2
        0x21s
        0x22s
        0x84s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0xes
        0x7s
        0xes
        0xes
        0x23s
        0x92s
        0x95s
        0x4s
    .end array-data

    :array_10
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x27s
        0xfs
        0x31s
        0x27s
        0x29s
        0x27s
        0xfs
        0x27s
        0x23s
        0x32s
        0x35s
        0x5s
    .end array-data

    :array_11
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x28s
        0x10s
        0x31s
        0x28s
        0x28s
        0x28s
        0x10s
        0x28s
        0x23s
        0x32s
        0x35s
        0x5s
    .end array-data

    :array_12
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x11s
        0x27s
        0x29s
        0x27s
        0x11s
        0x27s
        0x23s
        0x32s
        0x35s
        0x6s
    .end array-data

    :array_13
    .array-data 2
        0x21s
        0x22s
        0x12s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x53s
        0x14s
        0x53s
        0x12s
        0x12s
        0x23s
        0x12s
        0x15s
        0x0s
    .end array-data

    :array_14
    .array-data 2
        0x61s
        0x62s
        0x12s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0x13s
        0x87s
        0x63s
        0x12s
        0x15s
        0x0s
    .end array-data

    :array_15
    .array-data 2
        0x21s
        0x22s
        0x12s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x14s
        0x27s
        0x14s
        0x14s
        0x23s
        0x12s
        0x15s
        0x0s
    .end array-data

    :array_16
    .array-data 2
        0x21s
        0x22s
        0x15s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x56s
        0x17s
        0x56s
        0x15s
        0x15s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_17
    .array-data 2
        0x61s
        0x62s
        0x15s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0x16s
        0x87s
        0x63s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_18
    .array-data 2
        0x21s
        0x22s
        0x15s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x17s
        0x27s
        0x17s
        0x17s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_19
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1a
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x3t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_1b
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x2t
        0x15t
        0x15t
        0x0t
        0x2t
    .end array-data

    :array_1c
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x3t
        0x14t
        0x14t
        0x0t
        0x2t
    .end array-data

    :array_1d
    .array-data 1
        0x0t
        0x21t
        0x33t
        0x33t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    :array_1e
    .array-data 1
        0x0t
        0x21t
        0x0t
        0x32t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_1f
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_20
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_21
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_22
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x5t
        0x5t
        0x0t
        0x1t
    .end array-data

    :array_23
    .array-data 1
        0x21t
        0x0t
        0x21t
        0x3t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    :array_24
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_25
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
    .end array-data

    nop

    :array_26
    .array-data 1
        0x0t
        0x2t
        0x11t
        0x11t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_27
    .array-data 1
        0x0t
        0x42t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_28
    .array-data 1
        0x0t
        0x2t
        0x4t
        0x4t
        0x13t
        0x13t
        0x0t
        0x1t
    .end array-data

    :array_29
    .array-data 1
        0x0t
        0x22t
        0x34t
        0x34t
        0x3t
        0x3t
        0x0t
        0x0t
    .end array-data

    :array_2a
    .array-data 1
        0x0t
        0x2t
        0x4t
        0x4t
        0x13t
        0x13t
        0x0t
        0x2t
    .end array-data

    :array_2b
    .array-data 1
        0x0t
        0x3t
        0x11t
        0x11t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2c
    .array-data 1
        0x20t
        0x3t
        0x1t
        0x1t
        0x2t
        0x20t
        0x20t
        0x2t
    .end array-data

    :array_2d
    .array-data 1
        0x20t
        0x3t
        0x1t
        0x1t
        0x2t
        0x20t
        0x20t
        0x1t
    .end array-data

    :array_2e
    .array-data 1
        0x0t
        0x3t
        0x5t
        0x5t
        0x14t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_2f
    .array-data 1
        0x20t
        0x3t
        0x5t
        0x5t
        0x4t
        0x20t
        0x20t
        0x1t
    .end array-data

    :array_30
    .array-data 1
        0x0t
        0x3t
        0x5t
        0x5t
        0x14t
        0x0t
        0x0t
        0x2t
    .end array-data

    :array_31
    .array-data 1
        0x2t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_32
    .array-data 1
        0x2t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_33
    .array-data 1
        0x2t
        0x0t
        0x14t
        0x14t
        0x13t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_34
    .array-data 1
        0x22t
        0x0t
        0x4t
        0x4t
        0x3t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_35
    .array-data 1
        0x22t
        0x0t
        0x4t
        0x4t
        0x3t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_36
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_37
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_38
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x15t
        0x15t
        0x0t
        0x2t
    .end array-data

    :array_39
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x14t
        0x14t
        0x0t
        0x2t
    .end array-data

    :array_3a
    .array-data 1
        0x20t
        0x1t
        0x20t
        0x20t
        0x4t
        0x4t
        0x20t
        0x1t
    .end array-data

    :array_3b
    .array-data 1
        0x20t
        0x1t
        0x20t
        0x20t
        0x5t
        0x5t
        0x20t
        0x1t
    .end array-data

    :array_3c
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3d
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_3e
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3f
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x1t
    .end array-data

    :array_40
    .array-data 1
        0x21t
        0x0t
        0x21t
        0x21t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    :array_41
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_42
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_43
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x2t
        0x13t
        0x13t
        0x0t
        0x1t
    .end array-data

    :array_44
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_45
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x3t
        0x3t
        0x30t
        0x0t
    .end array-data

    :array_46
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x5t
        0x5t
        0x30t
        0x3t
    .end array-data

    :array_47
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x5t
        0x5t
        0x30t
        0x2t
    .end array-data

    :array_48
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x3t
        0x3t
        0x30t
        0x1t
    .end array-data

    :array_49
    .array-data 2
        0x0s
        0x1s
        0xds
        0xes
    .end array-data

    :array_4a
    .array-data 1
        0x0t
        0x63t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4b
    .array-data 1
        0x0t
        0x63t
        0x0t
        0x1t
        0x12t
        0x30t
        0x0t
        0x4t
    .end array-data

    :array_4c
    .array-data 1
        0x20t
        0x63t
        0x20t
        0x1t
        0x2t
        0x30t
        0x20t
        0x3t
    .end array-data

    :array_4d
    .array-data 1
        0x0t
        0x63t
        0x55t
        0x56t
        0x14t
        0x30t
        0x0t
        0x3t
    .end array-data

    :array_4e
    .array-data 1
        0x30t
        0x43t
        0x55t
        0x56t
        0x4t
        0x30t
        0x30t
        0x3t
    .end array-data

    :array_4f
    .array-data 1
        0x30t
        0x43t
        0x5t
        0x56t
        0x14t
        0x30t
        0x30t
        0x4t
    .end array-data

    :array_50
    .array-data 1
        0x30t
        0x43t
        0x55t
        0x6t
        0x14t
        0x30t
        0x30t
        0x4t
    .end array-data

    :array_51
    .array-data 1
        0x13t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_52
    .array-data 1
        0x23t
        0x0t
        0x1t
        0x1t
        0x2t
        0x40t
        0x0t
        0x1t
    .end array-data

    :array_53
    .array-data 1
        0x23t
        0x0t
        0x1t
        0x1t
        0x2t
        0x40t
        0x0t
        0x0t
    .end array-data

    :array_54
    .array-data 1
        0x3t
        0x0t
        0x3t
        0x36t
        0x14t
        0x40t
        0x0t
        0x1t
    .end array-data

    :array_55
    .array-data 1
        0x53t
        0x40t
        0x5t
        0x36t
        0x4t
        0x40t
        0x40t
        0x0t
    .end array-data

    :array_56
    .array-data 1
        0x53t
        0x40t
        0x5t
        0x36t
        0x4t
        0x40t
        0x40t
        0x1t
    .end array-data

    :array_57
    .array-data 1
        0x53t
        0x40t
        0x6t
        0x6t
        0x4t
        0x40t
        0x40t
        0x3t
    .end array-data

    :array_58
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x5s
        0x6s
        0x7s
        0x8s
    .end array-data

    nop

    :array_59
    .array-data 2
        0x0s
        0x1s
        0x9s
        0xas
        0xbs
        0xcs
    .end array-data

    :array_5a
    .array-data 1
        0x0t
        0x62t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5b
    .array-data 1
        0x0t
        0x62t
        0x1t
        0x1t
        0x0t
        0x30t
        0x0t
        0x4t
    .end array-data

    :array_5c
    .array-data 1
        0x0t
        0x62t
        0x54t
        0x54t
        0x13t
        0x30t
        0x0t
        0x3t
    .end array-data

    :array_5d
    .array-data 1
        0x30t
        0x42t
        0x54t
        0x54t
        0x3t
        0x30t
        0x30t
        0x3t
    .end array-data

    :array_5e
    .array-data 1
        0x30t
        0x42t
        0x4t
        0x4t
        0x13t
        0x30t
        0x30t
        0x4t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1253
    invoke-direct {p0, v0, v0}, Lcom/ibm/icu/text/Bidi;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 1053
    iput-object v1, p0, Lcom/ibm/icu/text/Bidi;->dirPropsMemory:[B

    new-array v1, v0, [B

    .line 1054
    iput-object v1, p0, Lcom/ibm/icu/text/Bidi;->levelsMemory:[B

    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 1098
    iput-object v2, p0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    new-array v1, v1, [B

    .line 1099
    iput-object v1, p0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/ibm/icu/text/BidiRun;

    .line 1103
    iput-object v2, p0, Lcom/ibm/icu/text/Bidi;->runsMemory:[Lcom/ibm/icu/text/BidiRun;

    new-array v2, v0, [Lcom/ibm/icu/text/BidiRun;

    .line 1107
    new-instance v3, Lcom/ibm/icu/text/BidiRun;

    invoke-direct {v3}, Lcom/ibm/icu/text/BidiRun;-><init>()V

    aput-object v3, v2, v1

    iput-object v2, p0, Lcom/ibm/icu/text/Bidi;->simpleRuns:[Lcom/ibm/icu/text/BidiRun;

    const/4 v1, 0x0

    .line 1124
    iput-object v1, p0, Lcom/ibm/icu/text/Bidi;->customClassifier:Lcom/ibm/icu/text/BidiClassifier;

    .line 1127
    new-instance v1, Lcom/ibm/icu/text/Bidi$InsertPoints;

    invoke-direct {v1}, Lcom/ibm/icu/text/Bidi$InsertPoints;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    .line 1311
    sget-object v1, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    iput-object v1, p0, Lcom/ibm/icu/text/Bidi;->bdp:Lcom/ibm/icu/impl/UBiDiProps;

    if-lez p1, :cond_0

    .line 1315
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/Bidi;->getInitialDirPropsMemory(I)V

    .line 1316
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/Bidi;->getInitialLevelsMemory(I)V

    goto :goto_0

    .line 1318
    :cond_0
    iput-boolean v0, p0, Lcom/ibm/icu/text/Bidi;->mayAllocateText:Z

    :goto_0
    if-lez p2, :cond_1

    if-le p2, v0, :cond_2

    .line 1324
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/Bidi;->getInitialRunsMemory(I)V

    goto :goto_1

    .line 1327
    :cond_1
    iput-boolean v0, p0, Lcom/ibm/icu/text/Bidi;->mayAllocateRuns:Z

    :cond_2
    :goto_1
    return-void

    .line 1290
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    .line 5289
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/Bidi;-><init>([CI[BIII)V

    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 0

    .line 5321
    invoke-direct {p0}, Lcom/ibm/icu/text/Bidi;-><init>()V

    .line 5322
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Bidi;->setPara(Ljava/text/AttributedCharacterIterator;)V

    return-void
.end method

.method public constructor <init>([CI[BIII)V
    .locals 4

    .line 5371
    invoke-direct {p0}, Lcom/ibm/icu/text/Bidi;-><init>()V

    const/16 v0, 0x7f

    const/16 v1, 0x7e

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p6, v3, :cond_1

    if-eq p6, v1, :cond_0

    if-eq p6, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7e

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    const/4 p3, 0x0

    goto :goto_2

    .line 5397
    :cond_3
    new-array p6, p5, [B

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p5, :cond_5

    add-int v3, v1, p4

    .line 5400
    aget-byte v3, p3, v3

    if-gez v3, :cond_4

    neg-int v3, v3

    or-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    .line 5405
    :cond_4
    aput-byte v3, p6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move-object p3, p6

    :goto_2
    if-nez p2, :cond_6

    .line 5408
    array-length p4, p1

    if-ne p5, p4, :cond_6

    .line 5409
    invoke-virtual {p0, p1, v0, p3}, Lcom/ibm/icu/text/Bidi;->setPara([CB[B)V

    goto :goto_3

    .line 5411
    :cond_6
    new-array p4, p5, [C

    .line 5412
    invoke-static {p1, p2, p4, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5413
    invoke-virtual {p0, p4, v0, p3}, Lcom/ibm/icu/text/Bidi;->setPara([CB[B)V

    :goto_3
    return-void
.end method

.method static final DirFromStrong(B)B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method static DirPropFlag(B)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method static final DirPropFlagE(B)I
    .locals 1

    .line 1154
    sget-object v0, Lcom/ibm/icu/text/Bidi;->DirPropFlagE:[I

    and-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method static final DirPropFlagLR(B)I
    .locals 1

    .line 1153
    sget-object v0, Lcom/ibm/icu/text/Bidi;->DirPropFlagLR:[I

    and-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method static final DirPropFlagO(B)I
    .locals 1

    .line 1155
    sget-object v0, Lcom/ibm/icu/text/Bidi;->DirPropFlagO:[I

    and-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method private static GetAction(B)S
    .locals 0

    shr-int/lit8 p0, p0, 0x4

    int-to-short p0, p0

    return p0
.end method

.method private static GetActionProps(S)S
    .locals 0

    shr-int/lit8 p0, p0, 0x5

    int-to-short p0, p0

    return p0
.end method

.method static GetLRFromLevel(B)B
    .locals 0

    and-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    return p0
.end method

.method private static GetState(B)S
    .locals 0

    and-int/lit8 p0, p0, 0xf

    int-to-short p0, p0

    return p0
.end method

.method private static GetStateProps(S)S
    .locals 0

    and-int/lit8 p0, p0, 0x1f

    int-to-short p0, p0

    return p0
.end method

.method static IsBidiControlChar(I)Z
    .locals 2

    and-int/lit8 v0, p0, -0x4

    const/16 v1, 0x200c

    if-eq v0, v1, :cond_2

    const/16 v0, 0x202a

    if-lt p0, v0, :cond_0

    const/16 v0, 0x202e

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2066

    if-lt p0, v0, :cond_1

    const/16 v0, 0x2069

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static IsDefaultLevel(B)Z
    .locals 1

    const/16 v0, 0x7e

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static final NoOverride(B)B
    .locals 0

    and-int/lit8 p0, p0, 0x7f

    int-to-byte p0, p0

    return p0
.end method

.method private addPoint(II)V
    .locals 5

    .line 3114
    new-instance v0, Lcom/ibm/icu/text/Bidi$Point;

    invoke-direct {v0}, Lcom/ibm/icu/text/Bidi$Point;-><init>()V

    .line 3116
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget-object v1, v1, Lcom/ibm/icu/text/Bidi$InsertPoints;->points:[Lcom/ibm/icu/text/Bidi$Point;

    array-length v1, v1

    const/16 v2, 0xa

    if-nez v1, :cond_0

    .line 3118
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    new-array v3, v2, [Lcom/ibm/icu/text/Bidi$Point;

    iput-object v3, v1, Lcom/ibm/icu/text/Bidi$InsertPoints;->points:[Lcom/ibm/icu/text/Bidi$Point;

    const/16 v1, 0xa

    .line 3121
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget v2, v2, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    if-lt v2, v1, :cond_1

    .line 3122
    iget-object v2, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget-object v2, v2, Lcom/ibm/icu/text/Bidi$InsertPoints;->points:[Lcom/ibm/icu/text/Bidi$Point;

    .line 3123
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    mul-int/lit8 v4, v1, 0x2

    new-array v4, v4, [Lcom/ibm/icu/text/Bidi$Point;

    iput-object v4, v3, Lcom/ibm/icu/text/Bidi$InsertPoints;->points:[Lcom/ibm/icu/text/Bidi$Point;

    .line 3124
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget-object v3, v3, Lcom/ibm/icu/text/Bidi$InsertPoints;->points:[Lcom/ibm/icu/text/Bidi$Point;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3126
    :cond_1
    iput p1, v0, Lcom/ibm/icu/text/Bidi$Point;->pos:I

    .line 3127
    iput p2, v0, Lcom/ibm/icu/text/Bidi$Point;->flag:I

    .line 3128
    iget-object p1, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget-object p1, p1, Lcom/ibm/icu/text/Bidi$InsertPoints;->points:[Lcom/ibm/icu/text/Bidi$Point;

    iget-object p2, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget p2, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    aput-object v0, p1, p2

    .line 3129
    iget-object p1, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget p2, p1, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    return-void
.end method

.method private adjustWSLevels()V
    .locals 5

    .line 3572
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->flags:I

    sget v1, Lcom/ibm/icu/text/Bidi;->MASK_WS:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 3574
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->trailingWSStart:I

    :cond_0
    :goto_0
    if-lez v0, :cond_5

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x7

    if-lez v0, :cond_2

    .line 3577
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v3, v3, v0

    invoke-static {v3}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    sget v4, Lcom/ibm/icu/text/Bidi;->MASK_WS:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_2

    .line 3578
    iget-boolean v4, p0, Lcom/ibm/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 3579
    iget-object v2, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aput-byte v1, v2, v0

    goto :goto_1

    .line 3581
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    aput-byte v2, v1, v0

    goto :goto_1

    :cond_2
    :goto_2
    if-lez v0, :cond_0

    .line 3588
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v3, v3, v0

    invoke-static {v3}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    .line 3589
    sget v4, Lcom/ibm/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_3

    .line 3590
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    aput-byte v4, v3, v0

    goto :goto_2

    .line 3591
    :cond_3
    iget-boolean v4, p0, Lcom/ibm/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v4, :cond_4

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_4

    .line 3592
    iget-object v2, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aput-byte v1, v2, v0

    goto :goto_0

    .line 3594
    :cond_4
    sget v4, Lcom/ibm/icu/text/Bidi;->MASK_B_S:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 3595
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    aput-byte v2, v1, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method private bracketAddOpening(Lcom/ibm/icu/text/Bidi$BracketData;CI)V
    .locals 5

    .line 2113
    iget-object v0, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    iget v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    .line 2115
    iget-short v1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    iget-object v2, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 2116
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    .line 2119
    :try_start_0
    iget-object v2, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    array-length v2, v2

    mul-int/lit8 v4, v2, 0x2

    .line 2120
    new-array v4, v4, [Lcom/ibm/icu/text/Bidi$Opening;

    iput-object v4, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2124
    iget-object v4, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2122
    :catch_0
    new-instance p1, Ljava/lang/OutOfMemoryError;

    const-string p2, "Failed to allocate memory for openings"

    invoke-direct {p1, p2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2126
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    iget-short v2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 2128
    iget-object p1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    iget-short v1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    new-instance v2, Lcom/ibm/icu/text/Bidi$Opening;

    invoke-direct {v2}, Lcom/ibm/icu/text/Bidi$Opening;-><init>()V

    aput-object v2, p1, v1

    move-object v1, v2

    .line 2129
    :cond_1
    iput p3, v1, Lcom/ibm/icu/text/Bidi$Opening;->position:I

    .line 2130
    iput p2, v1, Lcom/ibm/icu/text/Bidi$Opening;->match:I

    .line 2131
    iget-byte p1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte p1, v1, Lcom/ibm/icu/text/Bidi$Opening;->contextDir:B

    .line 2132
    iget p1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextPos:I

    iput p1, v1, Lcom/ibm/icu/text/Bidi$Opening;->contextPos:I

    .line 2133
    iput-short v3, v1, Lcom/ibm/icu/text/Bidi$Opening;->flags:S

    .line 2134
    iget-short p1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    iput-short p1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    return-void
.end method

.method private bracketInit(Lcom/ibm/icu/text/Bidi$BracketData;)V
    .locals 6

    const/4 v0, 0x0

    .line 2052
    iput v0, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    .line 2053
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    new-instance v2, Lcom/ibm/icu/text/Bidi$IsoRun;

    invoke-direct {v2}, Lcom/ibm/icu/text/Bidi$IsoRun;-><init>()V

    aput-object v2, v1, v0

    .line 2054
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput-short v0, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->start:S

    .line 2055
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput-short v0, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    .line 2056
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    iput-byte v2, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->level:B

    .line 2057
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    aget-object v3, v3, v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/ibm/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte v4, v2, Lcom/ibm/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte v4, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2058
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->contextPos:I

    const/16 v1, 0x14

    new-array v1, v1, [Lcom/ibm/icu/text/Bidi$Opening;

    .line 2059
    iput-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    .line 2060
    iget v1, p0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    if-eq v1, v5, :cond_0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isNumbersSpecial:Z

    return-void
.end method

.method private bracketProcessB(Lcom/ibm/icu/text/Bidi$BracketData;B)V
    .locals 4

    const/4 v0, 0x0

    .line 2066
    iput v0, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    .line 2067
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput-short v0, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    .line 2068
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput-byte p2, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->level:B

    .line 2069
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    aget-object v3, v3, v0

    and-int/lit8 p2, p2, 0x1

    int-to-byte p2, p2

    iput-byte p2, v3, Lcom/ibm/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte p2, v2, Lcom/ibm/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte p2, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2070
    iget-object p1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    aget-object p1, p1, v0

    iput v0, p1, Lcom/ibm/icu/text/Bidi$IsoRun;->contextPos:I

    return-void
.end method

.method private bracketProcessBoundary(Lcom/ibm/icu/text/Bidi$BracketData;IBB)V
    .locals 2

    .line 2076
    iget-object v0, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    iget p1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object p1, v0, p1

    .line 2077
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v0, v0, p2

    invoke-static {v0}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    sget v1, Lcom/ibm/icu/text/Bidi;->MASK_ISO:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 2079
    :cond_0
    invoke-static {p4}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v0

    invoke-static {p3}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v1

    if-le v0, v1, :cond_1

    move p3, p4

    .line 2081
    :cond_1
    iget-short v0, p1, Lcom/ibm/icu/text/Bidi$IsoRun;->start:S

    iput-short v0, p1, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    .line 2082
    iput-byte p4, p1, Lcom/ibm/icu/text/Bidi$IsoRun;->level:B

    and-int/lit8 p3, p3, 0x1

    int-to-byte p3, p3

    .line 2083
    iput-byte p3, p1, Lcom/ibm/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte p3, p1, Lcom/ibm/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte p3, p1, Lcom/ibm/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2084
    iput p2, p1, Lcom/ibm/icu/text/Bidi$IsoRun;->contextPos:I

    return-void
.end method

.method private bracketProcessChar(Lcom/ibm/icu/text/Bidi$BracketData;I)V
    .locals 8

    .line 2242
    iget-object v0, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    iget v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    .line 2245
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v1, v1, p2

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v1, v3, :cond_8

    .line 2251
    iget-object v5, p0, Lcom/ibm/icu/text/Bidi;->text:[C

    aget-char v5, v5, p2

    .line 2252
    iget-short v6, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    sub-int/2addr v6, v4

    :goto_0
    iget-short v7, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->start:S

    if-lt v6, v7, :cond_4

    .line 2253
    iget-object v7, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    aget-object v7, v7, v6

    iget v7, v7, Lcom/ibm/icu/text/Bidi$Opening;->match:I

    if-eq v7, v5, :cond_0

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2256
    :cond_0
    invoke-direct {p0, p1, v6, p2}, Lcom/ibm/icu/text/Bidi;->bracketProcessClosing(Lcom/ibm/icu/text/Bidi$BracketData;II)B

    move-result v5

    if-ne v5, v3, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    .line 2261
    :cond_1
    iput-byte v3, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2262
    iput-byte v5, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2263
    iput p2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextPos:I

    .line 2264
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v1, v1, p2

    and-int/lit8 v2, v1, -0x80

    if-eqz v2, :cond_3

    and-int/2addr v1, v4

    int-to-byte v1, v1

    .line 2269
    iput-byte v1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2270
    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    int-to-short v1, v1

    .line 2271
    iget-short v0, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->start:S

    :goto_1
    if-ge v0, v6, :cond_2

    .line 2272
    iget-object v2, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    aget-object v2, v2, v0

    iget-short v3, v2, Lcom/ibm/icu/text/Bidi$Opening;->flags:S

    or-int/2addr v3, v1

    int-to-short v3, v3

    iput-short v3, v2, Lcom/ibm/icu/text/Bidi$Opening;->flags:S

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2274
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v1, v0, p2

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    .line 2277
    :cond_3
    iget-object p2, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    iget-object p1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    aget-object p1, p1, v6

    iget p1, p1, Lcom/ibm/icu/text/Bidi$Opening;->position:I

    aget-byte v0, p2, p1

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    return-void

    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 2284
    invoke-static {v5}, Lcom/ibm/icu/lang/UCharacter;->getBidiPairedBracket(I)I

    move-result v6

    int-to-char v6, v6

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    if-eq v6, v5, :cond_8

    const/16 v7, 0x1015

    .line 2288
    invoke-static {v5, v7}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v5

    if-ne v5, v4, :cond_8

    const/16 v5, 0x3009

    const/16 v7, 0x232a

    if-ne v6, v7, :cond_6

    .line 2293
    invoke-direct {p0, p1, v5, p2}, Lcom/ibm/icu/text/Bidi;->bracketAddOpening(Lcom/ibm/icu/text/Bidi$BracketData;CI)V

    goto :goto_4

    :cond_6
    if-ne v6, v5, :cond_7

    .line 2296
    invoke-direct {p0, p1, v7, p2}, Lcom/ibm/icu/text/Bidi;->bracketAddOpening(Lcom/ibm/icu/text/Bidi$BracketData;CI)V

    .line 2298
    :cond_7
    :goto_4
    invoke-direct {p0, p1, v6, p2}, Lcom/ibm/icu/text/Bidi;->bracketAddOpening(Lcom/ibm/icu/text/Bidi$BracketData;CI)V

    .line 2301
    :cond_8
    iget-object v5, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v5, v5, p2

    and-int/lit8 v6, v5, -0x80

    const/16 v7, 0xd

    if-eqz v6, :cond_a

    and-int/lit8 v2, v5, 0x1

    int-to-byte v2, v2

    const/16 v5, 0x8

    if-eq v1, v5, :cond_9

    const/16 v5, 0x9

    if-eq v1, v5, :cond_9

    if-eq v1, v3, :cond_9

    .line 2305
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aput-byte v2, v1, p2

    .line 2306
    :cond_9
    iput-byte v2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2307
    iput-byte v2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2308
    iput-byte v2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2309
    iput p2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextPos:I

    goto :goto_8

    :cond_a
    if-le v1, v4, :cond_12

    if-ne v1, v7, :cond_b

    goto :goto_7

    :cond_b
    const/4 v5, 0x2

    const/4 v6, 0x5

    if-ne v1, v5, :cond_f

    .line 2319
    iput-byte v5, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2320
    iget-byte v1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->lastStrong:B

    if-nez v1, :cond_d

    .line 2322
    iget-boolean v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isNumbersSpecial:Z

    if-nez v1, :cond_c

    .line 2323
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    const/16 v3, 0x17

    aput-byte v3, v1, p2

    .line 2324
    :cond_c
    iput-byte v2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2325
    iput p2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextPos:I

    const/4 v1, 0x0

    goto :goto_9

    .line 2329
    :cond_d
    iget-byte v1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->lastStrong:B

    if-ne v1, v7, :cond_e

    .line 2330
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aput-byte v6, v1, p2

    goto :goto_5

    .line 2332
    :cond_e
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    const/16 v2, 0x18

    aput-byte v2, v1, p2

    .line 2333
    :goto_5
    iput-byte v4, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2334
    iput p2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextPos:I

    goto :goto_6

    :cond_f
    if-ne v1, v6, :cond_10

    .line 2339
    iput-byte v6, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2340
    iput-byte v4, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2341
    iput p2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextPos:I

    :goto_6
    const/4 v1, 0x1

    goto :goto_9

    :cond_10
    const/16 v2, 0x11

    if-ne v1, v2, :cond_11

    .line 2347
    iget-byte v1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->lastBase:B

    if-ne v1, v3, :cond_13

    .line 2349
    iget-object v2, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aput-byte v1, v2, p2

    goto :goto_9

    .line 2353
    :cond_11
    iput-byte v1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->lastBase:B

    goto :goto_9

    .line 2312
    :cond_12
    :goto_7
    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->DirFromStrong(B)B

    move-result v2

    .line 2313
    iput-byte v1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2314
    iput-byte v1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2315
    iput-byte v2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2316
    iput p2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->contextPos:I

    :goto_8
    move v1, v2

    :cond_13
    :goto_9
    if-le v1, v4, :cond_14

    if-ne v1, v7, :cond_16

    .line 2357
    :cond_14
    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->DirFromStrong(B)B

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    int-to-short v1, v1

    .line 2358
    iget-short v2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->start:S

    :goto_a
    iget-short v3, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    if-ge v2, v3, :cond_16

    .line 2359
    iget-object v3, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/ibm/icu/text/Bidi$Opening;->position:I

    if-le p2, v3, :cond_15

    .line 2360
    iget-object v3, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    aget-object v3, v3, v2

    iget-short v4, v3, Lcom/ibm/icu/text/Bidi$Opening;->flags:S

    or-int/2addr v4, v1

    int-to-short v4, v4

    iput-short v4, v3, Lcom/ibm/icu/text/Bidi$Opening;->flags:S

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-void
.end method

.method private bracketProcessClosing(Lcom/ibm/icu/text/Bidi$BracketData;II)B
    .locals 8

    .line 2165
    iget-object v0, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    iget v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    .line 2170
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    aget-object v1, v1, p2

    .line 2171
    iget-byte v2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->level:B

    const/4 v3, 0x1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 2192
    iget-short v5, v1, Lcom/ibm/icu/text/Bidi$Opening;->flags:S

    sget-byte v6, Lcom/ibm/icu/text/Bidi;->FOUND_L:B

    and-int/2addr v5, v6

    if-gtz v5, :cond_1

    :cond_0
    if-ne v2, v3, :cond_2

    iget-short v5, v1, Lcom/ibm/icu/text/Bidi$Opening;->flags:S

    sget-byte v6, Lcom/ibm/icu/text/Bidi;->FOUND_R:B

    and-int/2addr v5, v6

    if-lez v5, :cond_2

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 2196
    :cond_2
    iget-short v5, v1, Lcom/ibm/icu/text/Bidi$Opening;->flags:S

    sget-byte v6, Lcom/ibm/icu/text/Bidi;->FOUND_L:B

    sget-byte v7, Lcom/ibm/icu/text/Bidi;->FOUND_R:B

    or-int/2addr v6, v7

    and-int/2addr v5, v6

    if-eqz v5, :cond_a

    .line 2199
    iget-short v5, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->start:S

    if-ne p2, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 2200
    :goto_0
    iget-byte v6, v1, Lcom/ibm/icu/text/Bidi$Opening;->contextDir:B

    if-eq v2, v6, :cond_4

    .line 2201
    iget-byte v2, v1, Lcom/ibm/icu/text/Bidi$Opening;->contextDir:B

    .line 2209
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    iget v7, v1, Lcom/ibm/icu/text/Bidi$Opening;->position:I

    aput-byte v2, v6, v7

    .line 2210
    iget-object v6, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aput-byte v2, v6, p3

    .line 2212
    iget v6, v1, Lcom/ibm/icu/text/Bidi$Opening;->position:I

    invoke-direct {p0, p1, p2, v6, v2}, Lcom/ibm/icu/text/Bidi;->fixN0c(Lcom/ibm/icu/text/Bidi$BracketData;IIB)V

    if-eqz v5, :cond_5

    int-to-short p2, p2

    .line 2214
    iput-short p2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    .line 2216
    :goto_2
    iget-short p2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    iget-short p3, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->start:S

    if-le p2, p3, :cond_9

    iget-object p2, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    iget-short p3, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    sub-int/2addr p3, v3

    aget-object p2, p2, p3

    iget p2, p2, Lcom/ibm/icu/text/Bidi$Opening;->position:I

    iget p3, v1, Lcom/ibm/icu/text/Bidi$Opening;->position:I

    if-ne p2, p3, :cond_9

    .line 2218
    iget-short p2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    sub-int/2addr p2, v3

    int-to-short p2, p2

    iput-short p2, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    goto :goto_2

    :cond_5
    neg-int v5, p3

    .line 2221
    iput v5, v1, Lcom/ibm/icu/text/Bidi$Opening;->match:I

    add-int/lit8 v5, p2, -0x1

    .line 2224
    :goto_3
    iget-short v6, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->start:S

    if-lt v5, v6, :cond_6

    iget-object v6, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/ibm/icu/text/Bidi$Opening;->position:I

    iget v7, v1, Lcom/ibm/icu/text/Bidi$Opening;->position:I

    if-ne v6, v7, :cond_6

    .line 2226
    iget-object v6, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    add-int/lit8 v7, v5, -0x1

    aget-object v5, v6, v5

    iput v4, v5, Lcom/ibm/icu/text/Bidi$Opening;->match:I

    move v5, v7

    goto :goto_3

    :cond_6
    add-int/2addr p2, v3

    .line 2229
    :goto_4
    iget-short v1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    if-ge p2, v1, :cond_9

    .line 2230
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    aget-object v1, v1, p2

    .line 2231
    iget v3, v1, Lcom/ibm/icu/text/Bidi$Opening;->position:I

    if-lt v3, p3, :cond_7

    goto :goto_5

    .line 2233
    :cond_7
    iget v3, v1, Lcom/ibm/icu/text/Bidi$Opening;->match:I

    if-lez v3, :cond_8

    .line 2234
    iput v4, v1, Lcom/ibm/icu/text/Bidi$Opening;->match:I

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    return v2

    :cond_a
    int-to-short p1, p2

    .line 2206
    iput-short p1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    const/16 p1, 0xa

    return p1
.end method

.method private bracketProcessLRI_RLI(Lcom/ibm/icu/text/Bidi$BracketData;B)V
    .locals 3

    .line 2089
    iget-object v0, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    iget v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    const/16 v1, 0xa

    .line 2091
    iput-byte v1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2092
    iget-short v0, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    .line 2093
    iget v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    .line 2094
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    iget v2, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 2096
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    iget p1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    new-instance v2, Lcom/ibm/icu/text/Bidi$IsoRun;

    invoke-direct {v2}, Lcom/ibm/icu/text/Bidi$IsoRun;-><init>()V

    aput-object v2, v1, p1

    move-object v1, v2

    .line 2097
    :cond_0
    iput-short v0, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    iput-short v0, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->start:S

    .line 2098
    iput-byte p2, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->level:B

    and-int/lit8 p1, p2, 0x1

    int-to-byte p1, p1

    .line 2099
    iput-byte p1, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte p1, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte p1, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->lastStrong:B

    const/4 p1, 0x0

    .line 2100
    iput p1, v1, Lcom/ibm/icu/text/Bidi$IsoRun;->contextPos:I

    return-void
.end method

.method private bracketProcessPDI(Lcom/ibm/icu/text/Bidi$BracketData;)V
    .locals 1

    .line 2106
    iget v0, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    .line 2107
    iget-object v0, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    iget p1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object p1, v0, p1

    const/16 v0, 0xa

    .line 2108
    iput-byte v0, p1, Lcom/ibm/icu/text/Bidi$IsoRun;->lastBase:B

    return-void
.end method

.method private checkExplicitLevels()B
    .locals 13

    const/4 v0, 0x0

    .line 2696
    iput v0, p0, Lcom/ibm/icu/text/Bidi;->flags:I

    .line 2697
    iput v0, p0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    .line 2700
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    aget v1, v1, v0

    .line 2701
    iget-byte v2, p0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2703
    :goto_0
    iget v6, p0, Lcom/ibm/icu/text/Bidi;->length:I

    if-ge v3, v6, :cond_a

    .line 2704
    iget-object v6, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v7, v6, v3

    .line 2705
    iget-object v8, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v8, v8, v3

    const/16 v9, 0x14

    const/4 v10, 0x7

    if-eq v8, v9, :cond_2

    const/16 v9, 0x15

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const/16 v9, 0x16

    if-ne v8, v9, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_1
    if-ne v8, v10, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 2708
    iget v9, p0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    if-le v4, v9, :cond_3

    .line 2709
    iput v4, p0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    .line 2717
    :cond_3
    :goto_2
    iget-byte v9, p0, Lcom/ibm/icu/text/Bidi;->defaultParaLevel:B

    if-eqz v9, :cond_4

    if-ne v3, v1, :cond_4

    add-int/lit8 v9, v5, 0x1

    iget v11, p0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    if-ge v9, v11, :cond_4

    .line 2719
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    aget-byte v1, v1, v9

    .line 2720
    iget-object v2, p0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    aget v2, v2, v9

    move v5, v9

    move v12, v2

    move v2, v1

    move v1, v12

    :cond_4
    and-int/lit8 v9, v7, -0x80

    and-int/lit8 v7, v7, 0x7f

    int-to-byte v7, v7

    if-lt v7, v2, :cond_5

    const/16 v11, 0x7d

    if-ge v11, v7, :cond_7

    :cond_5
    if-nez v7, :cond_9

    if-ne v8, v10, :cond_6

    goto :goto_3

    :cond_6
    or-int v7, v2, v9

    int-to-byte v7, v7

    .line 2734
    aput-byte v7, v6, v3

    move v7, v2

    :cond_7
    :goto_3
    if-eqz v9, :cond_8

    .line 2744
    iget v6, p0, Lcom/ibm/icu/text/Bidi;->flags:I

    invoke-static {v7}, Lcom/ibm/icu/text/Bidi;->DirPropFlagO(B)I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Lcom/ibm/icu/text/Bidi;->flags:I

    goto :goto_4

    .line 2747
    :cond_8
    iget v6, p0, Lcom/ibm/icu/text/Bidi;->flags:I

    invoke-static {v7}, Lcom/ibm/icu/text/Bidi;->DirPropFlagE(B)I

    move-result v7

    invoke-static {v8}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    or-int/2addr v7, v8

    or-int/2addr v6, v7

    iput v6, p0, Lcom/ibm/icu/text/Bidi;->flags:I

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2738
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of bounds at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2750
    :cond_a
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->flags:I

    sget v1, Lcom/ibm/icu/text/Bidi;->MASK_EMBEDDING:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 2751
    iget-byte v1, p0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/Bidi;->flags:I

    .line 2753
    :cond_b
    invoke-direct {p0}, Lcom/ibm/icu/text/Bidi;->directionFromFlags()B

    move-result v0

    return v0
.end method

.method private checkParaCount()V
    .locals 5

    .line 1781
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    .line 1782
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    array-length v2, v1

    if-gt v0, v2, :cond_0

    return-void

    .line 1784
    :cond_0
    array-length v2, v1

    .line 1785
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    mul-int/lit8 v0, v0, 0x2

    .line 1788
    :try_start_0
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    .line 1789
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/text/Bidi;->paras_level:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 1793
    invoke-static {v3, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1794
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    invoke-static {v1, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 1791
    :catch_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Failed to allocate memory for paras"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private directionFromFlags()B
    .locals 2

    .line 2369
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->flags:I

    sget v1, Lcom/ibm/icu/text/Bidi;->MASK_RTL:I

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    const/4 v1, 0x5

    .line 2370
    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/text/Bidi;->flags:I

    sget v1, Lcom/ibm/icu/text/Bidi;->MASK_POSSIBLE_N:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2373
    :cond_1
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->flags:I

    sget v1, Lcom/ibm/icu/text/Bidi;->MASK_LTR:I

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method private firstL_R_AL()B
    .locals 5

    const/16 v0, 0xa

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    .line 1758
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1759
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 1760
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 1761
    invoke-virtual {p0, v3}, Lcom/ibm/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v3

    int-to-byte v3, v3

    if-ne v2, v0, :cond_2

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_3
    return v2
.end method

.method private firstL_R_AL_EN_AN()B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3383
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/Bidi;->epilogue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 3384
    iget-object v2, p0, Lcom/ibm/icu/text/Bidi;->epilogue:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 3385
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 3386
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v2

    int-to-byte v2, v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    return v3

    :cond_3
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_4
    :goto_0
    return v3

    :cond_5
    const/4 v0, 0x4

    return v0
.end method

.method private fixN0c(Lcom/ibm/icu/text/Bidi$BracketData;IIB)V
    .locals 5

    .line 2140
    iget-object v0, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    iget v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 2143
    iget-short v1, v0, Lcom/ibm/icu/text/Bidi$IsoRun;->limit:S

    if-ge p2, v1, :cond_4

    .line 2144
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    aget-object v1, v1, p2

    .line 2145
    iget v2, v1, Lcom/ibm/icu/text/Bidi$Opening;->match:I

    if-ltz v2, :cond_0

    goto :goto_0

    .line 2147
    :cond_0
    iget v2, v1, Lcom/ibm/icu/text/Bidi$Opening;->contextPos:I

    if-ge p3, v2, :cond_1

    goto :goto_1

    .line 2149
    :cond_1
    iget v2, v1, Lcom/ibm/icu/text/Bidi$Opening;->position:I

    if-lt p3, v2, :cond_2

    goto :goto_0

    .line 2151
    :cond_2
    iget-byte v2, v1, Lcom/ibm/icu/text/Bidi$Opening;->contextDir:B

    if-ne p4, v2, :cond_3

    goto :goto_1

    .line 2153
    :cond_3
    iget v2, v1, Lcom/ibm/icu/text/Bidi$Opening;->position:I

    .line 2154
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aput-byte p4, v3, v2

    .line 2155
    iget v3, v1, Lcom/ibm/icu/text/Bidi$Opening;->match:I

    neg-int v3, v3

    .line 2156
    iget-object v4, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aput-byte p4, v4, v3

    const/4 v4, 0x0

    .line 2157
    iput v4, v1, Lcom/ibm/icu/text/Bidi$Opening;->match:I

    .line 2158
    invoke-direct {p0, p1, p2, v2, p4}, Lcom/ibm/icu/text/Bidi;->fixN0c(Lcom/ibm/icu/text/Bidi$BracketData;IIB)V

    .line 2159
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/ibm/icu/text/Bidi;->fixN0c(Lcom/ibm/icu/text/Bidi$BracketData;IIB)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static getBaseDirection(Ljava/lang/CharSequence;)B
    .locals 7

    const/4 v0, 0x3

    if-eqz p0, :cond_4

    .line 1725
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 1729
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1735
    invoke-static {p0, v3}, Lcom/ibm/icu/lang/UCharacter;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1736
    invoke-static {v4}, Lcom/ibm/icu/lang/UCharacter;->getDirectionality(I)B

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/16 v6, 0xd

    if-ne v4, v6, :cond_2

    goto :goto_1

    .line 1744
    :cond_2
    invoke-static {p0, v3, v5}, Lcom/ibm/icu/lang/UCharacter;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v3

    goto :goto_0

    :cond_3
    :goto_1
    return v5

    :cond_4
    :goto_2
    return v0
.end method

.method private getDirProps()V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1813
    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    .line 1817
    iget-byte v2, v0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1820
    iget v4, v0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    .line 1823
    iput v5, v0, Lcom/ibm/icu/text/Bidi;->lastArabicPos:I

    .line 1825
    iget v6, v0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x7e

    new-array v9, v8, [I

    new-array v8, v8, [B

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_3

    .line 1844
    iput v1, v0, Lcom/ibm/icu/text/Bidi;->length:I

    .line 1845
    :cond_3
    iget-byte v6, v0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    and-int/lit8 v10, v6, 0x1

    int-to-byte v10, v10

    const/16 v11, 0xa

    if-eqz v2, :cond_6

    .line 1848
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    aput-byte v10, v6, v1

    .line 1850
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->prologue:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 1851
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/Bidi;->firstL_R_AL()B

    move-result v6

    if-eq v6, v11, :cond_5

    if-nez v6, :cond_4

    .line 1853
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    aput-byte v1, v6, v1

    goto :goto_2

    .line 1855
    :cond_4
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    aput-byte v3, v6, v1

    :goto_2
    move v12, v10

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    move v12, v10

    const/4 v6, 0x1

    goto :goto_3

    .line 1861
    :cond_6
    iget-object v12, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    aput-byte v6, v12, v1

    const/4 v6, 0x0

    const/16 v12, 0xa

    :goto_3
    const/4 v11, 0x0

    const/4 v13, -0x1

    const/4 v15, 0x0

    .line 1871
    :goto_4
    iget v14, v0, Lcom/ibm/icu/text/Bidi;->originalLength:I

    const/16 v16, 0x14

    if-ge v15, v14, :cond_22

    .line 1873
    iget-object v3, v0, Lcom/ibm/icu/text/Bidi;->text:[C

    invoke-static {v3, v1, v14, v15}, Lcom/ibm/icu/text/UTF16;->charAt([CIII)I

    move-result v3

    .line 1874
    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v14

    add-int/2addr v14, v15

    add-int/lit8 v1, v14, -0x1

    .line 1877
    invoke-virtual {v0, v3}, Lcom/ibm/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v5

    int-to-byte v5, v5

    move/from16 v18, v10

    .line 1878
    iget v10, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    invoke-static {v5}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v19

    or-int v10, v10, v19

    iput v10, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    move/from16 v19, v2

    .line 1879
    iget-object v2, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aput-byte v5, v2, v1

    if-le v1, v15, :cond_8

    const/16 v2, 0x12

    .line 1881
    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    or-int v10, v10, v20

    iput v10, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    move v10, v1

    move/from16 v20, v12

    .line 1883
    :cond_7
    iget-object v12, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    const/16 v17, -0x1

    add-int/lit8 v10, v10, -0x1

    aput-byte v2, v12, v10

    if-gt v10, v15, :cond_7

    goto :goto_5

    :cond_8
    move/from16 v20, v12

    const/16 v17, -0x1

    :goto_5
    if-eqz v7, :cond_9

    .line 1886
    invoke-static {v3}, Lcom/ibm/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v11, v11, 0x1

    :cond_9
    if-nez v5, :cond_d

    const/4 v2, 0x1

    if-ne v6, v2, :cond_a

    .line 1891
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    iget v3, v0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    aput-byte v2, v1, v3

    const/4 v6, 0x0

    goto :goto_6

    :cond_a
    const/4 v1, 0x2

    if-ne v6, v1, :cond_c

    const/16 v1, 0x7d

    if-gt v13, v1, :cond_b

    .line 1898
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    invoke-static/range {v16 .. v16}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    :cond_b
    const/4 v6, 0x3

    :cond_c
    :goto_6
    move v15, v14

    move/from16 v10, v18

    move/from16 v2, v19

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v12, 0x0

    goto :goto_4

    :cond_d
    const/16 v2, 0x15

    const/16 v10, 0xd

    const/4 v12, 0x1

    if-eq v5, v12, :cond_1d

    if-ne v5, v10, :cond_e

    goto/16 :goto_b

    :cond_e
    const/16 v12, 0x13

    if-lt v5, v12, :cond_11

    if-gt v5, v2, :cond_11

    add-int/lit8 v13, v13, 0x1

    const/16 v2, 0x7d

    if-gt v13, v2, :cond_f

    .line 1925
    aput v1, v9, v13

    .line 1926
    aput-byte v6, v8, v13

    :cond_f
    if-ne v5, v12, :cond_10

    .line 1929
    iget-object v2, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aput-byte v16, v2, v1

    move v15, v14

    move/from16 v10, v18

    move/from16 v2, v19

    move/from16 v12, v20

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x2

    goto/16 :goto_4

    :cond_10
    move v15, v14

    move/from16 v10, v18

    move/from16 v2, v19

    move/from16 v12, v20

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x3

    goto/16 :goto_4

    :cond_11
    const/16 v1, 0x16

    if-ne v5, v1, :cond_15

    const/4 v1, 0x2

    if-ne v6, v1, :cond_12

    const/16 v1, 0x7d

    if-gt v13, v1, :cond_13

    .line 1941
    iget v2, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    invoke-static/range {v16 .. v16}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    goto :goto_7

    :cond_12
    const/16 v1, 0x7d

    :cond_13
    :goto_7
    if-ltz v13, :cond_1b

    if-gt v13, v1, :cond_14

    .line 1946
    aget-byte v1, v8, v13

    move v6, v1

    :cond_14
    add-int/lit8 v13, v13, -0x1

    move v15, v14

    move/from16 v10, v18

    move/from16 v2, v19

    move/from16 v12, v20

    goto/16 :goto_a

    :cond_15
    const/4 v1, 0x7

    if-ne v5, v1, :cond_1b

    .line 1952
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->originalLength:I

    if-ge v14, v1, :cond_16

    if-ne v3, v10, :cond_16

    iget-object v2, v0, Lcom/ibm/icu/text/Bidi;->text:[C

    aget-char v2, v2, v14

    const/16 v3, 0xa

    if-ne v2, v3, :cond_17

    move/from16 v12, v20

    goto :goto_9

    :cond_16
    const/16 v3, 0xa

    .line 1954
    :cond_17
    iget-object v2, v0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    iget v5, v0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    add-int/lit8 v10, v5, -0x1

    aput v14, v2, v10

    move/from16 v12, v20

    if-eqz v4, :cond_18

    const/4 v2, 0x1

    if-ne v12, v2, :cond_18

    .line 1956
    iget-object v10, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    add-int/lit8 v15, v5, -0x1

    aput-byte v2, v10, v15

    .line 1957
    :cond_18
    iget v2, v0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_19

    .line 1960
    iput v14, v0, Lcom/ibm/icu/text/Bidi;->length:I

    .line 1961
    iput v11, v0, Lcom/ibm/icu/text/Bidi;->controlCount:I

    :cond_19
    if-ge v14, v1, :cond_1c

    add-int/lit8 v5, v5, 0x1

    .line 1964
    iput v5, v0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    .line 1965
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/Bidi;->checkParaCount()V

    if-eqz v19, :cond_1a

    .line 1967
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    iget v2, v0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    aput-byte v18, v1, v2

    move/from16 v12, v18

    const/4 v6, 0x1

    goto :goto_8

    :cond_1a
    const/4 v15, 0x1

    .line 1971
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    iget v2, v0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    sub-int/2addr v2, v15

    iget-byte v5, v0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    aput-byte v5, v1, v2

    const/4 v6, 0x0

    :goto_8
    move v15, v14

    move/from16 v10, v18

    move/from16 v2, v19

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v13, -0x1

    goto/16 :goto_4

    :cond_1b
    move/from16 v12, v20

    const/16 v3, 0xa

    :cond_1c
    :goto_9
    const/4 v15, 0x1

    move v15, v14

    move/from16 v10, v18

    move/from16 v2, v19

    :goto_a
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, -0x1

    goto/16 :goto_4

    :cond_1d
    :goto_b
    const/16 v3, 0xa

    const/4 v15, 0x1

    if-ne v6, v15, :cond_1e

    .line 1907
    iget-object v2, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    iget v6, v0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    sub-int/2addr v6, v15

    aput-byte v15, v2, v6

    const/4 v6, 0x0

    goto :goto_c

    :cond_1e
    const/4 v12, 0x2

    if-ne v6, v12, :cond_20

    const/16 v12, 0x7d

    if-gt v13, v12, :cond_1f

    .line 1912
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget v12, v9, v13

    aput-byte v2, v6, v12

    .line 1913
    iget v6, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    or-int/2addr v2, v6

    iput v2, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    :cond_1f
    const/4 v6, 0x3

    :cond_20
    :goto_c
    if-ne v5, v10, :cond_21

    .line 1919
    iput v1, v0, Lcom/ibm/icu/text/Bidi;->lastArabicPos:I

    :cond_21
    move v15, v14

    move/from16 v10, v18

    move/from16 v2, v19

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_22
    move/from16 v19, v2

    const/16 v1, 0x7d

    if-le v13, v1, :cond_23

    const/4 v6, 0x2

    const/16 v13, 0x7d

    :cond_23
    :goto_d
    if-ltz v13, :cond_25

    const/4 v1, 0x2

    if-ne v6, v1, :cond_24

    .line 1989
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    invoke-static/range {v16 .. v16}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    goto :goto_e

    .line 1992
    :cond_24
    aget-byte v6, v8, v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_d

    .line 1996
    :cond_25
    :goto_e
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_27

    .line 1997
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->length:I

    iget v2, v0, Lcom/ibm/icu/text/Bidi;->originalLength:I

    if-ge v1, v2, :cond_26

    .line 1998
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    goto :goto_f

    :cond_26
    const/4 v2, 0x1

    goto :goto_f

    :cond_27
    const/4 v2, 0x1

    .line 2000
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    iget v3, v0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    sub-int/2addr v3, v2

    iget v5, v0, Lcom/ibm/icu/text/Bidi;->originalLength:I

    aput v5, v1, v3

    .line 2001
    iput v11, v0, Lcom/ibm/icu/text/Bidi;->controlCount:I

    :goto_f
    if-eqz v4, :cond_28

    if-ne v12, v2, :cond_28

    .line 2006
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    iget v3, v0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    sub-int/2addr v3, v2

    aput-byte v2, v1, v3

    :cond_28
    if-eqz v19, :cond_29

    .line 2009
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    iput-byte v1, v0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    :cond_29
    const/4 v2, 0x0

    .line 2013
    :goto_10
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    if-ge v2, v1, :cond_2a

    .line 2014
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    iget-object v3, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    aget-byte v3, v3, v2

    invoke-static {v3}, Lcom/ibm/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v3

    or-int/2addr v1, v3

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2016
    :cond_2a
    iget-boolean v1, v0, Lcom/ibm/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v1, :cond_2b

    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    .line 2017
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    :cond_2b
    return-void
.end method

.method private getDirPropsMemory(ZI)V
    .locals 6

    .line 1369
    iget-object v2, p0, Lcom/ibm/icu/text/Bidi;->dirPropsMemory:[B

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v1, "DirProps"

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object p1

    .line 1370
    check-cast p1, [B

    check-cast p1, [B

    iput-object p1, p0, Lcom/ibm/icu/text/Bidi;->dirPropsMemory:[B

    return-void
.end method

.method private getInitialDirPropsMemory(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1403
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/Bidi;->getDirPropsMemory(ZI)V

    return-void
.end method

.method private getInitialLevelsMemory(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1408
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/Bidi;->getLevelsMemory(ZI)V

    return-void
.end method

.method private getInitialRunsMemory(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1413
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/Bidi;->getRunsMemory(ZI)V

    return-void
.end method

.method private getLevelsMemory(ZI)V
    .locals 6

    .line 1380
    iget-object v2, p0, Lcom/ibm/icu/text/Bidi;->levelsMemory:[B

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v1, "Levels"

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object p1

    .line 1381
    check-cast p1, [B

    check-cast p1, [B

    iput-object p1, p0, Lcom/ibm/icu/text/Bidi;->levelsMemory:[B

    return-void
.end method

.method private getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;ZI)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1341
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ne p5, v0, :cond_0

    return-object p2

    :cond_0
    const-string v1, "Failed to allocate memory for "

    if-nez p4, :cond_2

    if-gt p5, v0, :cond_1

    return-object p2

    .line 1352
    :cond_1
    new-instance p2, Ljava/lang/OutOfMemoryError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1359
    :cond_2
    :try_start_0
    invoke-static {p3, p5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1361
    :catch_0
    new-instance p2, Ljava/lang/OutOfMemoryError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getRunsMemory(ZI)V
    .locals 6

    .line 1391
    iget-object v2, p0, Lcom/ibm/icu/text/Bidi;->runsMemory:[Lcom/ibm/icu/text/BidiRun;

    const-class v3, Lcom/ibm/icu/text/BidiRun;

    const-string v1, "Runs"

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object p1

    .line 1392
    check-cast p1, [Lcom/ibm/icu/text/BidiRun;

    check-cast p1, [Lcom/ibm/icu/text/BidiRun;

    iput-object p1, p0, Lcom/ibm/icu/text/Bidi;->runsMemory:[Lcom/ibm/icu/text/BidiRun;

    return-void
.end method

.method public static invertMap([I)[I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5235
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/text/BidiLine;->invertMap([I)[I

    move-result-object p0

    return-object p0
.end method

.method private lastL_R_AL()B
    .locals 5

    .line 3361
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-lez v0, :cond_4

    .line 3362
    iget-object v2, p0, Lcom/ibm/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointBefore(I)I

    move-result v2

    .line 3363
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 3364
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v2

    int-to-byte v2, v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    return v1

    :cond_3
    :goto_0
    return v3

    :cond_4
    return v1
.end method

.method private processPropertySeq(Lcom/ibm/icu/text/Bidi$LevState;SII)V
    .locals 11

    .line 3165
    iget-object v0, p1, Lcom/ibm/icu/text/Bidi$LevState;->impTab:[[B

    .line 3166
    iget-object v1, p1, Lcom/ibm/icu/text/Bidi$LevState;->impAct:[S

    .line 3172
    iget-short v2, p1, Lcom/ibm/icu/text/Bidi$LevState;->state:S

    .line 3173
    aget-object v3, v0, v2

    aget-byte v3, v3, p2

    .line 3174
    invoke-static {v3}, Lcom/ibm/icu/text/Bidi;->GetState(B)S

    move-result v4

    iput-short v4, p1, Lcom/ibm/icu/text/Bidi$LevState;->state:S

    .line 3175
    invoke-static {v3}, Lcom/ibm/icu/text/Bidi;->GetAction(B)S

    move-result v3

    aget-short v1, v1, v3

    .line 3176
    iget-short v3, p1, Lcom/ibm/icu/text/Bidi$LevState;->state:S

    aget-object v3, v0, v3

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    if-eqz v1, :cond_11

    const/4 v5, -0x2

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x1

    packed-switch v1, :pswitch_data_0

    .line 3341
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal ICU error in processPropertySeq"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3332
    :pswitch_0
    iget-byte p2, p1, Lcom/ibm/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr p2, v10

    int-to-byte p2, p2

    add-int/lit8 v0, p3, -0x1

    .line 3333
    :goto_0
    iget v1, p1, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    if-lt v0, v1, :cond_11

    .line 3334
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v2, v1, v0

    if-le v2, p2, :cond_0

    .line 3335
    aget-byte v2, v1, v0

    sub-int/2addr v2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3313
    :pswitch_1
    iget-byte p2, p1, Lcom/ibm/icu/text/Bidi$LevState;->runLevel:B

    add-int/lit8 v0, p3, -0x1

    .line 3314
    :goto_1
    iget v1, p1, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    if-lt v0, v1, :cond_11

    .line 3315
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v1, v1, v0

    add-int/lit8 v2, p2, 0x3

    if-ne v1, v2, :cond_2

    .line 3316
    :goto_2
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v4, v1, v0

    if-ne v4, v2, :cond_1

    add-int/lit8 v4, v0, -0x1

    .line 3317
    aget-byte v5, v1, v0

    sub-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    move v0, v4

    goto :goto_2

    .line 3319
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v1, v1, v0

    if-ne v1, p2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 3323
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v2, v1, v0

    add-int/lit8 v4, p2, 0x2

    if-ne v2, v4, :cond_3

    .line 3324
    aput-byte p2, v1, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v2, p2, 0x1

    int-to-byte v2, v2

    .line 3327
    aput-byte v2, v1, v0

    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3302
    :pswitch_2
    iget-byte p2, p1, Lcom/ibm/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr p2, v3

    int-to-byte p2, p2

    .line 3303
    iget v0, p1, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    :goto_5
    if-ge v0, p3, :cond_5

    .line 3304
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v2, v1, v0

    if-ge v2, p2, :cond_4

    .line 3305
    aput-byte p2, v1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3308
    :cond_5
    iget-object p2, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget v0, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    iput v0, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->confirmed:I

    .line 3309
    iput p3, p1, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    goto/16 :goto_a

    .line 3294
    :pswitch_3
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget v1, v0, Lcom/ibm/icu/text/Bidi$InsertPoints;->confirmed:I

    iput v1, v0, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    if-ne p2, v7, :cond_11

    .line 3296
    invoke-direct {p0, p3, v6}, Lcom/ibm/icu/text/Bidi;->addPoint(II)V

    .line 3297
    iget-object p2, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget v0, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    iput v0, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->confirmed:I

    goto/16 :goto_a

    .line 3288
    :pswitch_4
    invoke-direct {p0, p3, v10}, Lcom/ibm/icu/text/Bidi;->addPoint(II)V

    .line 3289
    invoke-direct {p0, p3, v8}, Lcom/ibm/icu/text/Bidi;->addPoint(II)V

    goto/16 :goto_a

    :pswitch_5
    add-int/lit8 p2, p3, -0x1

    :goto_6
    if-ltz p2, :cond_6

    .line 3276
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v0, v0, p2

    and-int/2addr v0, v10

    if-nez v0, :cond_6

    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    :cond_6
    if-ltz p2, :cond_7

    .line 3279
    invoke-direct {p0, p2, v6}, Lcom/ibm/icu/text/Bidi;->addPoint(II)V

    .line 3280
    iget-object p2, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget v0, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    iput v0, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->confirmed:I

    .line 3282
    :cond_7
    iput p3, p1, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    goto/16 :goto_a

    :pswitch_6
    add-int/lit8 p2, p4, -0x1

    .line 3270
    iput p2, p1, Lcom/ibm/icu/text/Bidi$LevState;->lastStrongRTL:I

    .line 3271
    iput v9, p1, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    goto/16 :goto_a

    :pswitch_7
    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    .line 3246
    iget-object p2, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte p2, p2, p3

    if-ne p2, v7, :cond_a

    iget p2, p0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    const/4 v0, 0x6

    if-eq p2, v0, :cond_a

    .line 3250
    iget p2, p1, Lcom/ibm/icu/text/Bidi$LevState;->startL2EN:I

    if-ne p2, v9, :cond_8

    add-int/lit8 p2, p4, -0x1

    .line 3252
    iput p2, p1, Lcom/ibm/icu/text/Bidi$LevState;->lastStrongRTL:I

    goto/16 :goto_a

    .line 3255
    :cond_8
    iget p2, p1, Lcom/ibm/icu/text/Bidi$LevState;->startL2EN:I

    if-ltz p2, :cond_9

    .line 3256
    iget p2, p1, Lcom/ibm/icu/text/Bidi$LevState;->startL2EN:I

    invoke-direct {p0, p2, v10}, Lcom/ibm/icu/text/Bidi;->addPoint(II)V

    .line 3257
    iput v5, p1, Lcom/ibm/icu/text/Bidi$LevState;->startL2EN:I

    .line 3260
    :cond_9
    invoke-direct {p0, p3, v10}, Lcom/ibm/icu/text/Bidi;->addPoint(II)V

    goto/16 :goto_a

    .line 3264
    :cond_a
    iget p2, p1, Lcom/ibm/icu/text/Bidi$LevState;->startL2EN:I

    if-ne p2, v9, :cond_11

    .line 3265
    iput p3, p1, Lcom/ibm/icu/text/Bidi$LevState;->startL2EN:I

    goto/16 :goto_a

    .line 3236
    :pswitch_8
    iget-object p2, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget-object p2, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->points:[Lcom/ibm/icu/text/Bidi$Point;

    array-length p2, p2

    if-lez p2, :cond_b

    .line 3238
    iget-object p2, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget v0, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->confirmed:I

    iput v0, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    .line 3239
    :cond_b
    iput v9, p1, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    .line 3240
    iput v9, p1, Lcom/ibm/icu/text/Bidi$LevState;->startL2EN:I

    add-int/lit8 p2, p4, -0x1

    .line 3241
    iput p2, p1, Lcom/ibm/icu/text/Bidi$LevState;->lastStrongRTL:I

    goto/16 :goto_a

    .line 3200
    :pswitch_9
    iget v1, p1, Lcom/ibm/icu/text/Bidi$LevState;->startL2EN:I

    if-ltz v1, :cond_c

    .line 3201
    iget v1, p1, Lcom/ibm/icu/text/Bidi$LevState;->startL2EN:I

    invoke-direct {p0, v1, v10}, Lcom/ibm/icu/text/Bidi;->addPoint(II)V

    .line 3203
    :cond_c
    iput v9, p1, Lcom/ibm/icu/text/Bidi$LevState;->startL2EN:I

    .line 3205
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget-object v1, v1, Lcom/ibm/icu/text/Bidi$InsertPoints;->points:[Lcom/ibm/icu/text/Bidi$Point;

    array-length v1, v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget v1, v1, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    iget-object v6, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget v6, v6, Lcom/ibm/icu/text/Bidi$InsertPoints;->confirmed:I

    if-gt v1, v6, :cond_d

    goto :goto_8

    .line 3221
    :cond_d
    iget v0, p1, Lcom/ibm/icu/text/Bidi$LevState;->lastStrongRTL:I

    add-int/2addr v0, v10

    :goto_7
    if-ge v0, p3, :cond_e

    .line 3223
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v2, v1, v0

    sub-int/2addr v2, v8

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3226
    :cond_e
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget v1, v0, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    iput v1, v0, Lcom/ibm/icu/text/Bidi$InsertPoints;->confirmed:I

    .line 3227
    iput v9, p1, Lcom/ibm/icu/text/Bidi$LevState;->lastStrongRTL:I

    if-ne p2, v7, :cond_11

    .line 3229
    invoke-direct {p0, p3, v10}, Lcom/ibm/icu/text/Bidi;->addPoint(II)V

    .line 3230
    iget-object p2, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget v0, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    iput v0, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->confirmed:I

    goto :goto_a

    .line 3208
    :cond_f
    :goto_8
    iput v9, p1, Lcom/ibm/icu/text/Bidi$LevState;->lastStrongRTL:I

    .line 3210
    aget-object v0, v0, v2

    aget-byte v0, v0, v4

    and-int/2addr v0, v10

    if-eqz v0, :cond_10

    .line 3211
    iget v0, p1, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    if-lez v0, :cond_10

    .line 3212
    iget v0, p1, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    goto :goto_9

    :cond_10
    move v0, p3

    :goto_9
    if-ne p2, v7, :cond_12

    .line 3215
    invoke-direct {p0, p3, v10}, Lcom/ibm/icu/text/Bidi;->addPoint(II)V

    .line 3216
    iget-object p2, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget v1, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    iput v1, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->confirmed:I

    goto :goto_b

    .line 3194
    :pswitch_a
    iget-byte p2, p1, Lcom/ibm/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr p2, v8

    int-to-byte p2, p2

    .line 3195
    iget v0, p1, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    invoke-direct {p0, v0, p3, p2}, Lcom/ibm/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    goto :goto_a

    .line 3189
    :pswitch_b
    iget-byte p2, p1, Lcom/ibm/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr p2, v10

    int-to-byte p2, p2

    .line 3190
    iget v0, p1, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    invoke-direct {p0, v0, p3, p2}, Lcom/ibm/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    goto :goto_a

    .line 3185
    :pswitch_c
    iget v0, p1, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    goto :goto_b

    .line 3181
    :pswitch_d
    iput p3, p1, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    :cond_11
    :goto_a
    move v0, p3

    :cond_12
    :goto_b
    if-nez v3, :cond_13

    if-ge v0, p3, :cond_15

    .line 3345
    :cond_13
    iget-byte p2, p1, Lcom/ibm/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr p2, v3

    int-to-byte p2, p2

    .line 3346
    iget p1, p1, Lcom/ibm/icu/text/Bidi$LevState;->runStart:I

    if-lt v0, p1, :cond_14

    :goto_c
    if-ge v0, p4, :cond_15

    .line 3348
    iget-object p1, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aput-byte p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 3351
    :cond_14
    invoke-direct {p0, v0, p4, p2}, Lcom/ibm/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static reorderLogical([B)[I
    .locals 0

    .line 5170
    invoke-static {p0}, Lcom/ibm/icu/text/BidiLine;->reorderLogical([B)[I

    move-result-object p0

    return-object p0
.end method

.method public static reorderVisual([B)[I
    .locals 0

    .line 5193
    invoke-static {p0}, Lcom/ibm/icu/text/BidiLine;->reorderVisual([B)[I

    move-result-object p0

    return-object p0
.end method

.method public static reorderVisually([BI[Ljava/lang/Object;II)V
    .locals 3

    .line 5685
    new-array v0, p4, [B

    const/4 v1, 0x0

    .line 5686
    invoke-static {p0, p1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5687
    invoke-static {v0}, Lcom/ibm/icu/text/Bidi;->reorderVisual([B)[I

    move-result-object p0

    .line 5688
    new-array p1, p4, [Ljava/lang/Object;

    .line 5689
    invoke-static {p2, p3, p1, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v1, p4, :cond_0

    add-int v0, p3, v1

    .line 5691
    aget v2, p0, v1

    aget-object v2, p1, v2

    aput-object v2, p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static requiresBidi([CII)Z
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_1

    .line 5655
    aget-char v0, p0, p1

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->getDirection(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const v2, 0xe022

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private resolveExplicitLevels()B
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2434
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    .line 2436
    iput v1, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    .line 2439
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/Bidi;->directionFromFlags()B

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    return v3

    .line 2446
    :cond_0
    iget v4, v0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    const/4 v2, 0x0

    .line 2450
    :goto_0
    iget v4, v0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    if-ge v2, v4, :cond_3

    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 2454
    :cond_1
    iget-object v4, v0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    .line 2455
    :goto_1
    iget-object v5, v0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    aget v5, v5, v2

    .line 2456
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    aget-byte v6, v6, v2

    :goto_2
    if-ge v4, v5, :cond_2

    .line 2458
    iget-object v7, v0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aput-byte v6, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    .line 2462
    :cond_4
    iget v4, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    sget v6, Lcom/ibm/icu/text/Bidi;->MASK_EXPLICIT:I

    sget v7, Lcom/ibm/icu/text/Bidi;->MASK_ISO:I

    or-int/2addr v6, v7

    and-int/2addr v4, v6

    const/16 v6, 0xd

    const/4 v7, 0x7

    const/16 v8, 0xa

    const/16 v9, 0x12

    if-nez v4, :cond_c

    .line 2466
    new-instance v2, Lcom/ibm/icu/text/Bidi$BracketData;

    invoke-direct {v2}, Lcom/ibm/icu/text/Bidi$BracketData;-><init>()V

    .line 2467
    invoke-direct {v0, v2}, Lcom/ibm/icu/text/Bidi;->bracketInit(Lcom/ibm/icu/text/Bidi$BracketData;)V

    const/4 v4, 0x0

    .line 2468
    :goto_3
    iget v5, v0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    if-ge v4, v5, :cond_b

    if-nez v4, :cond_5

    const/4 v5, 0x0

    goto :goto_4

    .line 2472
    :cond_5
    iget-object v5, v0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    add-int/lit8 v10, v4, -0x1

    aget v5, v5, v10

    .line 2473
    :goto_4
    iget-object v10, v0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    aget v10, v10, v4

    .line 2474
    iget-object v11, v0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    aget-byte v11, v11, v4

    :goto_5
    if-ge v5, v10, :cond_a

    .line 2476
    iget-object v12, v0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aput-byte v11, v12, v5

    .line 2477
    iget-object v12, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v12, v12, v5

    if-ne v12, v9, :cond_6

    goto :goto_6

    :cond_6
    if-ne v12, v7, :cond_8

    add-int/lit8 v12, v5, 0x1

    .line 2481
    iget v13, v0, Lcom/ibm/icu/text/Bidi;->length:I

    if-ge v12, v13, :cond_9

    .line 2482
    iget-object v13, v0, Lcom/ibm/icu/text/Bidi;->text:[C

    aget-char v14, v13, v5

    if-ne v14, v6, :cond_7

    aget-char v12, v13, v12

    if-ne v12, v8, :cond_7

    goto :goto_6

    .line 2484
    :cond_7
    invoke-direct {v0, v2, v11}, Lcom/ibm/icu/text/Bidi;->bracketProcessB(Lcom/ibm/icu/text/Bidi$BracketData;B)V

    goto :goto_6

    .line 2488
    :cond_8
    invoke-direct {v0, v2, v5}, Lcom/ibm/icu/text/Bidi;->bracketProcessChar(Lcom/ibm/icu/text/Bidi$BracketData;I)V

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    return v3

    :cond_c
    const/16 v3, 0x7f

    new-array v3, v3, [S

    .line 2509
    new-instance v4, Lcom/ibm/icu/text/Bidi$BracketData;

    invoke-direct {v4}, Lcom/ibm/icu/text/Bidi$BracketData;-><init>()V

    .line 2510
    invoke-direct {v0, v4}, Lcom/ibm/icu/text/Bidi;->bracketInit(Lcom/ibm/icu/text/Bidi$BracketData;)V

    int-to-short v10, v2

    aput-short v10, v3, v1

    .line 2514
    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    move v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 2516
    :goto_7
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->length:I

    if-ge v11, v1, :cond_21

    .line 2517
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v1, v1, v11

    const/16 v6, 0x7d

    const/16 v7, 0x100

    const/16 v17, 0x9

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/16 v7, 0xa

    const/16 v8, 0xd

    .line 2654
    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v1

    invoke-static {v10}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v6

    if-eq v1, v6, :cond_20

    .line 2655
    invoke-direct {v0, v4, v13, v10, v2}, Lcom/ibm/icu/text/Bidi;->bracketProcessBoundary(Lcom/ibm/icu/text/Bidi$BracketData;IBB)V

    .line 2657
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    sget v6, Lcom/ibm/icu/text/Bidi;->DirPropFlagMultiRuns:I

    or-int/2addr v1, v6

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    and-int/lit8 v6, v2, -0x80

    if-eqz v6, :cond_1f

    .line 2659
    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlagO(B)I

    move-result v6

    or-int/2addr v1, v6

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    goto/16 :goto_11

    .line 2604
    :pswitch_1
    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v1

    invoke-static {v10}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v6

    if-eq v1, v6, :cond_d

    .line 2605
    invoke-direct {v0, v4, v13, v10, v2}, Lcom/ibm/icu/text/Bidi;->bracketProcessBoundary(Lcom/ibm/icu/text/Bidi$BracketData;IBB)V

    .line 2607
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    sget v2, Lcom/ibm/icu/text/Bidi;->DirPropFlagMultiRuns:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    :cond_d
    if-lez v12, :cond_e

    add-int/lit8 v12, v12, -0x1

    .line 2613
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aput-byte v17, v1, v11

    goto :goto_9

    :cond_e
    if-lez v16, :cond_10

    .line 2616
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    .line 2619
    :goto_8
    aget-short v1, v3, v15

    if-ge v1, v7, :cond_f

    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v16, v16, -0x1

    .line 2623
    invoke-direct {v0, v4}, Lcom/ibm/icu/text/Bidi;->bracketProcessPDI(Lcom/ibm/icu/text/Bidi$BracketData;)V

    move v13, v11

    const/4 v14, 0x0

    goto :goto_9

    .line 2626
    :cond_10
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aput-byte v17, v1, v11

    .line 2627
    :goto_9
    aget-short v1, v3, v15

    and-int/lit16 v1, v1, -0x101

    int-to-byte v1, v1

    .line 2628
    iget v2, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    invoke-static {v8}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v7

    or-int/2addr v6, v7

    or-int/2addr v2, v6

    iput v2, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    .line 2630
    iget-object v2, v0, Lcom/ibm/icu/text/Bidi;->levels:[B

    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v6

    aput-byte v6, v2, v11

    move v2, v1

    :goto_a
    move v10, v2

    goto/16 :goto_c

    .line 2569
    :pswitch_2
    iget v7, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    invoke-static {v8}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v18

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v19

    or-int v18, v18, v19

    or-int v7, v7, v18

    iput v7, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    .line 2570
    iget-object v7, v0, Lcom/ibm/icu/text/Bidi;->levels:[B

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v18

    aput-byte v18, v7, v11

    .line 2571
    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v7

    invoke-static {v10}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v8

    if-eq v7, v8, :cond_11

    .line 2572
    invoke-direct {v0, v4, v13, v10, v2}, Lcom/ibm/icu/text/Bidi;->bracketProcessBoundary(Lcom/ibm/icu/text/Bidi$BracketData;IBB)V

    .line 2574
    iget v7, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    sget v8, Lcom/ibm/icu/text/Bidi;->DirPropFlagMultiRuns:I

    or-int/2addr v7, v8

    iput v7, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    :cond_11
    const/16 v7, 0x14

    if-ne v1, v7, :cond_12

    add-int/lit8 v7, v2, 0x2

    and-int/lit8 v7, v7, 0x7e

    goto :goto_b

    .line 2583
    :cond_12
    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v7

    add-int/2addr v7, v5

    or-int/2addr v7, v5

    :goto_b
    int-to-byte v7, v7

    if-gt v7, v6, :cond_14

    if-nez v12, :cond_14

    if-nez v14, :cond_14

    .line 2586
    iget v6, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    invoke-static {v1}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v1, v6

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    add-int/lit8 v1, v16, 0x1

    .line 2589
    iget v6, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    if-le v1, v6, :cond_13

    .line 2590
    iput v1, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    :cond_13
    add-int/lit8 v15, v15, 0x1

    add-int/lit16 v6, v7, 0x100

    int-to-short v6, v6

    .line 2595
    aput-short v6, v3, v15

    .line 2596
    invoke-direct {v0, v4, v7}, Lcom/ibm/icu/text/Bidi;->bracketProcessLRI_RLI(Lcom/ibm/icu/text/Bidi$BracketData;B)V

    move/from16 v16, v1

    move v10, v2

    goto/16 :goto_10

    .line 2599
    :cond_14
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aput-byte v17, v1, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 2649
    :pswitch_3
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aput-byte v10, v1, v11

    .line 2650
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    invoke-static {v9}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v1, v6

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    goto :goto_c

    .line 2551
    :pswitch_4
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    invoke-static {v9}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v1, v6

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    .line 2552
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aput-byte v10, v1, v11

    if-lez v12, :cond_15

    goto :goto_c

    :cond_15
    if-lez v14, :cond_17

    add-int/lit8 v14, v14, -0x1

    :cond_16
    :goto_c
    const/16 v7, 0xa

    const/16 v8, 0xd

    goto/16 :goto_12

    :cond_17
    if-lez v15, :cond_16

    .line 2561
    aget-short v1, v3, v15

    if-ge v1, v7, :cond_16

    add-int/lit8 v15, v15, -0x1

    .line 2564
    aget-short v1, v3, v15

    int-to-byte v1, v1

    move v2, v1

    :goto_d
    move v13, v11

    goto :goto_c

    .line 2524
    :pswitch_5
    iget v7, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    invoke-static {v9}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    .line 2525
    iget-object v7, v0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aput-byte v10, v7, v11

    const/16 v7, 0xb

    const/16 v8, 0xc

    if-eq v1, v7, :cond_19

    if-ne v1, v8, :cond_18

    goto :goto_e

    .line 2531
    :cond_18
    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v7

    add-int/2addr v7, v5

    or-int/2addr v7, v5

    goto :goto_f

    :cond_19
    :goto_e
    add-int/lit8 v7, v2, 0x2

    and-int/lit8 v7, v7, 0x7e

    :goto_f
    int-to-byte v7, v7

    if-gt v7, v6, :cond_1c

    if-nez v12, :cond_1c

    if-nez v14, :cond_1c

    if-eq v1, v8, :cond_1a

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1b

    :cond_1a
    or-int/lit8 v1, v7, -0x80

    int-to-byte v7, v1

    :cond_1b
    add-int/lit8 v15, v15, 0x1

    int-to-short v1, v7

    .line 2539
    aput-short v1, v3, v15

    :goto_10
    move v2, v7

    goto :goto_d

    :cond_1c
    if-nez v12, :cond_16

    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 2633
    :pswitch_6
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    const/4 v6, 0x7

    invoke-static {v6}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    or-int/2addr v1, v7

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    .line 2634
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->levels:[B

    invoke-virtual {v0, v11}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v6

    aput-byte v6, v1, v11

    add-int/lit8 v1, v11, 0x1

    .line 2635
    iget v6, v0, Lcom/ibm/icu/text/Bidi;->length:I

    if-ge v1, v6, :cond_16

    .line 2636
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->text:[C

    aget-char v7, v6, v11

    const/16 v8, 0xd

    if-ne v7, v8, :cond_1d

    aget-char v6, v6, v1

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1e

    goto :goto_12

    :cond_1d
    const/16 v7, 0xa

    .line 2641
    :cond_1e
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v1

    int-to-short v2, v1

    const/4 v6, 0x0

    aput-short v2, v3, v6

    .line 2643
    invoke-direct {v0, v4, v1}, Lcom/ibm/icu/text/Bidi;->bracketProcessB(Lcom/ibm/icu/text/Bidi$BracketData;B)V

    move v2, v1

    move v10, v2

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto :goto_12

    .line 2661
    :cond_1f
    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlagE(B)I

    move-result v6

    or-int/2addr v1, v6

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    .line 2664
    :cond_20
    :goto_11
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aput-byte v2, v1, v11

    .line 2665
    invoke-direct {v0, v4, v11}, Lcom/ibm/icu/text/Bidi;->bracketProcessChar(Lcom/ibm/icu/text/Bidi$BracketData;I)V

    .line 2667
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v6, v6, v11

    invoke-static {v6}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v1, v6

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    move v10, v2

    :goto_12
    add-int/lit8 v11, v11, 0x1

    const/16 v6, 0xd

    const/4 v7, 0x7

    const/16 v8, 0xa

    goto/16 :goto_7

    .line 2671
    :cond_21
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    sget v2, Lcom/ibm/icu/text/Bidi;->MASK_EMBEDDING:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_22

    .line 2672
    iget-byte v2, v0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    .line 2674
    :cond_22
    iget-boolean v1, v0, Lcom/ibm/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v1, :cond_23

    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_23

    .line 2675
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->flags:I

    .line 2678
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/Bidi;->directionFromFlags()B

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private resolveImplicitLevels(IISS)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 3406
    new-instance v3, Lcom/ibm/icu/text/Bidi$LevState;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/ibm/icu/text/Bidi$LevState;-><init>(Lcom/ibm/icu/text/Bidi$1;)V

    .line 3421
    iget v4, v0, Lcom/ibm/icu/text/Bidi;->lastArabicPos:I

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v4, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v4

    and-int/2addr v4, v7

    if-lez v4, :cond_1

    iget v4, v0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    if-eq v4, v5, :cond_0

    const/4 v8, 0x6

    if-ne v4, v8, :cond_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v8, -0x1

    .line 3425
    iput v8, v3, Lcom/ibm/icu/text/Bidi$LevState;->startL2EN:I

    .line 3426
    iput v8, v3, Lcom/ibm/icu/text/Bidi$LevState;->lastStrongRTL:I

    .line 3427
    iput v1, v3, Lcom/ibm/icu/text/Bidi$LevState;->runStart:I

    .line 3428
    iget-object v9, v0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v9, v9, v1

    iput-byte v9, v3, Lcom/ibm/icu/text/Bidi$LevState;->runLevel:B

    .line 3429
    iget-object v9, v0, Lcom/ibm/icu/text/Bidi;->impTabPair:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    iget-object v9, v9, Lcom/ibm/icu/text/Bidi$ImpTabPair;->imptab:[[[B

    iget-byte v10, v3, Lcom/ibm/icu/text/Bidi$LevState;->runLevel:B

    and-int/2addr v10, v7

    aget-object v9, v9, v10

    iput-object v9, v3, Lcom/ibm/icu/text/Bidi$LevState;->impTab:[[B

    .line 3430
    iget-object v9, v0, Lcom/ibm/icu/text/Bidi;->impTabPair:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    iget-object v9, v9, Lcom/ibm/icu/text/Bidi$ImpTabPair;->impact:[[S

    iget-byte v10, v3, Lcom/ibm/icu/text/Bidi$LevState;->runLevel:B

    and-int/2addr v10, v7

    aget-object v9, v9, v10

    iput-object v9, v3, Lcom/ibm/icu/text/Bidi$LevState;->impAct:[S

    const/4 v9, 0x4

    if-nez v1, :cond_2

    .line 3431
    iget-object v10, v0, Lcom/ibm/icu/text/Bidi;->prologue:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 3432
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/Bidi;->lastL_R_AL()B

    move-result v10

    if-eq v10, v9, :cond_2

    int-to-short v10, v10

    goto :goto_1

    :cond_2
    move/from16 v10, p3

    .line 3440
    :goto_1
    iget-object v11, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v11, v11, v1

    const/16 v12, 0x16

    if-ne v11, v12, :cond_3

    .line 3441
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->isolates:[Lcom/ibm/icu/text/Bidi$Isolate;

    iget v10, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    aget-object v6, v6, v10

    iget v6, v6, Lcom/ibm/icu/text/Bidi$Isolate;->startON:I

    iput v6, v3, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    .line 3442
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->isolates:[Lcom/ibm/icu/text/Bidi$Isolate;

    iget v10, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    aget-object v6, v6, v10

    iget v6, v6, Lcom/ibm/icu/text/Bidi$Isolate;->start1:I

    .line 3443
    iget-object v10, v0, Lcom/ibm/icu/text/Bidi;->isolates:[Lcom/ibm/icu/text/Bidi$Isolate;

    iget v11, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    aget-object v10, v10, v11

    iget-short v10, v10, Lcom/ibm/icu/text/Bidi$Isolate;->stateImp:S

    .line 3444
    iget-object v11, v0, Lcom/ibm/icu/text/Bidi;->isolates:[Lcom/ibm/icu/text/Bidi$Isolate;

    iget v12, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    aget-object v11, v11, v12

    iget-short v11, v11, Lcom/ibm/icu/text/Bidi$Isolate;->state:S

    iput-short v11, v3, Lcom/ibm/icu/text/Bidi$LevState;->state:S

    .line 3445
    iget v11, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    sub-int/2addr v11, v7

    iput v11, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    goto :goto_3

    .line 3447
    :cond_3
    iput v8, v3, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    .line 3449
    iget-object v11, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v11, v11, v1

    const/16 v12, 0x11

    if-ne v11, v12, :cond_4

    add-int/lit8 v11, v10, 0x1

    int-to-short v11, v11

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    .line 3453
    :goto_2
    iput-short v6, v3, Lcom/ibm/icu/text/Bidi$LevState;->state:S

    .line 3454
    invoke-direct {v0, v3, v10, v1, v1}, Lcom/ibm/icu/text/Bidi;->processPropertySeq(Lcom/ibm/icu/text/Bidi$LevState;SII)V

    move v6, v1

    move v10, v11

    :goto_3
    move v11, v1

    move v13, v11

    const/4 v12, -0x1

    const/4 v14, 0x1

    :goto_4
    const/16 v15, 0x15

    const/16 v5, 0x14

    if-gt v11, v2, :cond_15

    if-lt v11, v2, :cond_7

    add-int/lit8 v16, v2, -0x1

    move/from16 v7, v16

    :goto_5
    if-le v7, v1, :cond_5

    .line 3462
    iget-object v9, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v9, v9, v7

    .line 3463
    invoke-static {v9}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    sget v16, Lcom/ibm/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int v9, v9, v16

    if-eqz v9, :cond_5

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 3465
    :cond_5
    iget-object v9, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v7, v9, v7

    if-eq v7, v5, :cond_15

    if-ne v7, v15, :cond_6

    goto/16 :goto_e

    :cond_6
    move/from16 v5, p4

    goto :goto_a

    .line 3471
    :cond_7
    iget-object v5, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v5, v5, v11

    const/4 v7, 0x7

    if-ne v5, v7, :cond_8

    .line 3473
    iput v8, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    :cond_8
    if-eqz v4, :cond_e

    const/16 v7, 0xd

    if-ne v5, v7, :cond_9

    const/4 v5, 0x1

    goto :goto_9

    :cond_9
    const/4 v9, 0x2

    if-ne v5, v9, :cond_e

    if-gt v12, v11, :cond_d

    add-int/lit8 v9, v11, 0x1

    move v12, v9

    :goto_6
    if-ge v12, v2, :cond_c

    .line 3485
    iget-object v9, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v9, v9, v12

    if-eqz v9, :cond_b

    const/4 v14, 0x1

    if-eq v9, v14, :cond_b

    if-ne v9, v7, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    int-to-short v14, v9

    goto :goto_8

    :cond_c
    move v12, v2

    const/4 v14, 0x1

    :cond_d
    :goto_8
    if-ne v14, v7, :cond_e

    const/4 v5, 0x5

    .line 3498
    :cond_e
    :goto_9
    sget-object v7, Lcom/ibm/icu/text/Bidi;->groupProp:[S

    aget-short v5, v7, v5

    .line 3501
    :goto_a
    sget-object v7, Lcom/ibm/icu/text/Bidi;->impTabProps:[[S

    aget-object v9, v7, v10

    aget-short v5, v9, v5

    .line 3502
    invoke-static {v5}, Lcom/ibm/icu/text/Bidi;->GetStateProps(S)S

    move-result v9

    .line 3503
    invoke-static {v5}, Lcom/ibm/icu/text/Bidi;->GetActionProps(S)S

    move-result v5

    if-ne v11, v2, :cond_f

    if-nez v5, :cond_f

    const/4 v5, 0x1

    :cond_f
    if-eqz v5, :cond_14

    .line 3509
    aget-object v7, v7, v10

    const/16 v10, 0xf

    aget-short v7, v7, v10

    const/4 v10, 0x1

    if-eq v5, v10, :cond_13

    const/4 v10, 0x2

    if-eq v5, v10, :cond_12

    const/4 v10, 0x3

    if-eq v5, v10, :cond_11

    const/4 v10, 0x4

    if-ne v5, v10, :cond_10

    .line 3524
    invoke-direct {v0, v3, v7, v6, v13}, Lcom/ibm/icu/text/Bidi;->processPropertySeq(Lcom/ibm/icu/text/Bidi$LevState;SII)V

    move v6, v13

    goto :goto_b

    .line 3529
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal ICU error in resolveImplicitLevels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    const/4 v10, 0x4

    .line 3519
    invoke-direct {v0, v3, v7, v6, v13}, Lcom/ibm/icu/text/Bidi;->processPropertySeq(Lcom/ibm/icu/text/Bidi$LevState;SII)V

    .line 3520
    invoke-direct {v0, v3, v10, v13, v11}, Lcom/ibm/icu/text/Bidi;->processPropertySeq(Lcom/ibm/icu/text/Bidi$LevState;SII)V

    goto :goto_c

    :cond_12
    :goto_b
    move v13, v11

    goto :goto_d

    .line 3512
    :cond_13
    invoke-direct {v0, v3, v7, v6, v11}, Lcom/ibm/icu/text/Bidi;->processPropertySeq(Lcom/ibm/icu/text/Bidi$LevState;SII)V

    :goto_c
    move v6, v11

    :cond_14
    :goto_d
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    const/4 v5, 0x5

    const/4 v7, 0x1

    const/4 v9, 0x4

    goto/16 :goto_4

    .line 3535
    :cond_15
    :goto_e
    iget v4, v0, Lcom/ibm/icu/text/Bidi;->length:I

    if-ne v2, v4, :cond_16

    iget-object v4, v0, Lcom/ibm/icu/text/Bidi;->epilogue:Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 3536
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/Bidi;->firstL_R_AL_EN_AN()B

    move-result v4

    const/4 v7, 0x4

    if-eq v4, v7, :cond_16

    int-to-short v4, v4

    goto :goto_f

    :cond_16
    move/from16 v4, p4

    :goto_f
    add-int/lit8 v7, v2, -0x1

    :goto_10
    if-le v7, v1, :cond_17

    .line 3544
    iget-object v8, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v8, v8, v7

    .line 3545
    invoke-static {v8}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    sget v9, Lcom/ibm/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_17

    add-int/lit8 v7, v7, -0x1

    goto :goto_10

    .line 3547
    :cond_17
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v1, v1, v7

    if-eq v1, v5, :cond_18

    if-ne v1, v15, :cond_1a

    .line 3548
    :cond_18
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->length:I

    if-ge v2, v1, :cond_1a

    .line 3549
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    .line 3550
    iget-object v2, v0, Lcom/ibm/icu/text/Bidi;->isolates:[Lcom/ibm/icu/text/Bidi$Isolate;

    aget-object v4, v2, v1

    if-nez v4, :cond_19

    .line 3551
    new-instance v4, Lcom/ibm/icu/text/Bidi$Isolate;

    invoke-direct {v4}, Lcom/ibm/icu/text/Bidi$Isolate;-><init>()V

    aput-object v4, v2, v1

    .line 3552
    :cond_19
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->isolates:[Lcom/ibm/icu/text/Bidi$Isolate;

    iget v2, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    aget-object v1, v1, v2

    iput-short v10, v1, Lcom/ibm/icu/text/Bidi$Isolate;->stateImp:S

    .line 3553
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->isolates:[Lcom/ibm/icu/text/Bidi$Isolate;

    iget v2, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    aget-object v1, v1, v2

    iget-short v2, v3, Lcom/ibm/icu/text/Bidi$LevState;->state:S

    iput-short v2, v1, Lcom/ibm/icu/text/Bidi$Isolate;->state:S

    .line 3554
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->isolates:[Lcom/ibm/icu/text/Bidi$Isolate;

    iget v2, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    aget-object v1, v1, v2

    iput v6, v1, Lcom/ibm/icu/text/Bidi$Isolate;->start1:I

    .line 3555
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->isolates:[Lcom/ibm/icu/text/Bidi$Isolate;

    iget v2, v0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    aget-object v1, v1, v2

    iget v2, v3, Lcom/ibm/icu/text/Bidi$LevState;->startON:I

    iput v2, v1, Lcom/ibm/icu/text/Bidi$Isolate;->startON:I

    goto :goto_11

    .line 3558
    :cond_1a
    invoke-direct {v0, v3, v4, v2, v2}, Lcom/ibm/icu/text/Bidi;->processPropertySeq(Lcom/ibm/icu/text/Bidi$LevState;SII)V

    :goto_11
    return-void
.end method

.method private setLevelsOutsideIsolates(IIB)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_4

    .line 3137
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v1, v1, p1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    if-nez v0, :cond_1

    .line 3141
    iget-object v2, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aput-byte p3, v2, p1

    :cond_1
    const/16 v2, 0x14

    if-eq v1, v2, :cond_2

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setParaSuccess()V
    .locals 1

    const/4 v0, 0x0

    .line 3677
    iput-object v0, p0, Lcom/ibm/icu/text/Bidi;->prologue:Ljava/lang/String;

    .line 3678
    iput-object v0, p0, Lcom/ibm/icu/text/Bidi;->epilogue:Ljava/lang/String;

    .line 3679
    iput-object p0, p0, Lcom/ibm/icu/text/Bidi;->paraBidi:Lcom/ibm/icu/text/Bidi;

    return-void
.end method

.method public static writeReverse(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 5807
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 5808
    invoke-static {p0, p1}, Lcom/ibm/icu/text/BidiWriter;->writeReverse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    .line 5804
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method Bidi_Abs(I)I
    .locals 0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    :goto_0
    return p1
.end method

.method Bidi_Min(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method GetParaLevelAt(I)B
    .locals 4

    .line 2024
    iget-byte v0, p0, Lcom/ibm/icu/text/Bidi;->defaultParaLevel:B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ge p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 2027
    :goto_0
    iget v2, p0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    if-ge v1, v2, :cond_2

    .line 2028
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    aget v3, v3, v1

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v1, v2, :cond_3

    add-int/lit8 v1, v2, -0x1

    .line 2032
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    aget-byte p1, p1, v1

    return p1

    .line 2025
    :cond_4
    :goto_2
    iget-byte p1, p0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    return p1
.end method

.method public baseIsLeftToRight()Z
    .locals 1

    .line 5499
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->getParaLevel()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public countParagraphs()I
    .locals 1

    .line 4575
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4576
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    return v0
.end method

.method public countRuns()I
    .locals 1

    .line 4878
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4879
    invoke-static {p0}, Lcom/ibm/icu/text/BidiLine;->getRuns(Lcom/ibm/icu/text/Bidi;)V

    .line 4880
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->runCount:I

    return v0
.end method

.method public createLineBidi(II)Lcom/ibm/icu/text/Bidi;
    .locals 0

    .line 5436
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/Bidi;->setLine(II)Lcom/ibm/icu/text/Bidi;

    move-result-object p1

    return-object p1
.end method

.method public getBaseLevel()I
    .locals 1

    .line 5514
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->getParaLevel()B

    move-result v0

    return v0
.end method

.method public getCustomClassifier()Lcom/ibm/icu/text/BidiClassifier;
    .locals 1

    .line 4706
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->customClassifier:Lcom/ibm/icu/text/BidiClassifier;

    return-object v0
.end method

.method public getCustomizedClass(I)I
    .locals 2

    .line 4726
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->customClassifier:Lcom/ibm/icu/text/BidiClassifier;

    const/16 v1, 0x17

    if-eqz v0, :cond_0

    .line 4727
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/BidiClassifier;->classify(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4728
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->bdp:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UBiDiProps;->getClass(I)I

    move-result v0

    :cond_1
    if-lt v0, v1, :cond_2

    const/16 v0, 0xa

    :cond_2
    return v0
.end method

.method getDirPropsMemory(I)V
    .locals 1

    .line 1375
    iget-boolean v0, p0, Lcom/ibm/icu/text/Bidi;->mayAllocateText:Z

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/Bidi;->getDirPropsMemory(ZI)V

    return-void
.end method

.method public getDirection()B
    .locals 1

    .line 4402
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4403
    iget-byte v0, p0, Lcom/ibm/icu/text/Bidi;->direction:B

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 4456
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4457
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->originalLength:I

    return v0
.end method

.method public getLevelAt(I)B
    .locals 2

    .line 4803
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4804
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->length:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    .line 4805
    invoke-static {p0, p1}, Lcom/ibm/icu/text/BidiLine;->getLevelAt(Lcom/ibm/icu/text/Bidi;I)B

    move-result p1

    return p1
.end method

.method public getLevels()[B
    .locals 1

    .line 4823
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4824
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->length:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 4827
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/text/BidiLine;->getLevels(Lcom/ibm/icu/text/Bidi;)[B

    move-result-object v0

    return-object v0
.end method

.method getLevelsMemory(I)V
    .locals 1

    .line 1386
    iget-boolean v0, p0, Lcom/ibm/icu/text/Bidi;->mayAllocateText:Z

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/Bidi;->getLevelsMemory(ZI)V

    return-void
.end method

.method public getLogicalIndex(I)I
    .locals 2

    .line 5044
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5045
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->resultLength:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    .line 5047
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget v0, v0, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/text/Bidi;->controlCount:I

    if-nez v0, :cond_1

    .line 5048
    iget-byte v0, p0, Lcom/ibm/icu/text/Bidi;->direction:B

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5052
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->length:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    return v0

    .line 5055
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/text/BidiLine;->getRuns(Lcom/ibm/icu/text/Bidi;)V

    .line 5056
    invoke-static {p0, p1}, Lcom/ibm/icu/text/BidiLine;->getLogicalIndex(Lcom/ibm/icu/text/Bidi;I)I

    move-result p1

    return p1
.end method

.method public getLogicalMap()[I
    .locals 1

    .line 5101
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->countRuns()I

    .line 5102
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->length:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 5105
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/text/BidiLine;->getLogicalMap(Lcom/ibm/icu/text/Bidi;)[I

    move-result-object v0

    return-object v0
.end method

.method public getLogicalRun(I)Lcom/ibm/icu/text/BidiRun;
    .locals 2

    .line 4857
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4858
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->length:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    .line 4859
    invoke-static {p0, p1}, Lcom/ibm/icu/text/BidiLine;->getLogicalRun(Lcom/ibm/icu/text/Bidi;I)Lcom/ibm/icu/text/BidiRun;

    move-result-object p1

    return-object p1
.end method

.method getLogicalToVisualRunsMap()V
    .locals 8

    .line 5537
    iget-boolean v0, p0, Lcom/ibm/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    if-eqz v0, :cond_0

    return-void

    .line 5540
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->countRuns()I

    move-result v0

    .line 5541
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->logicalToVisualRunsMap:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    if-ge v1, v0, :cond_2

    .line 5543
    :cond_1
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ibm/icu/text/Bidi;->logicalToVisualRunsMap:[I

    .line 5546
    :cond_2
    new-array v1, v0, [J

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 5548
    iget-object v4, p0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/ibm/icu/text/BidiRun;->start:I

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5550
    :cond_3
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    :goto_1
    if-ge v2, v0, :cond_4

    .line 5552
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget-wide v4, v1, v2

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v5, v4

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 5554
    iput-boolean v0, p0, Lcom/ibm/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    return-void
.end method

.method public getParaLevel()B
    .locals 1

    .line 4560
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4561
    iget-byte v0, p0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    return v0
.end method

.method public getParagraph(I)Lcom/ibm/icu/text/BidiRun;
    .locals 3

    .line 4646
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4647
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->paraBidi:Lcom/ibm/icu/text/Bidi;

    .line 4648
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->length:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    .line 4650
    :goto_0
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    aget v1, v1, v2

    if-lt p1, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4652
    :cond_0
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/Bidi;->getParagraphByIndex(I)Lcom/ibm/icu/text/BidiRun;

    move-result-object p1

    return-object p1
.end method

.method public getParagraphByIndex(I)Lcom/ibm/icu/text/BidiRun;
    .locals 3

    .line 4603
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4604
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    .line 4606
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->paraBidi:Lcom/ibm/icu/text/Bidi;

    if-nez p1, :cond_0

    goto :goto_0

    .line 4611
    :cond_0
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    .line 4613
    :goto_0
    new-instance v2, Lcom/ibm/icu/text/BidiRun;

    invoke-direct {v2}, Lcom/ibm/icu/text/BidiRun;-><init>()V

    .line 4614
    iput v1, v2, Lcom/ibm/icu/text/BidiRun;->start:I

    .line 4615
    iget-object v0, v0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    aget p1, v0, p1

    iput p1, v2, Lcom/ibm/icu/text/BidiRun;->limit:I

    .line 4616
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result p1

    iput-byte p1, v2, Lcom/ibm/icu/text/BidiRun;->level:B

    return-object v2
.end method

.method public getParagraphIndex(I)I
    .locals 3

    .line 4674
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4675
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->paraBidi:Lcom/ibm/icu/text/Bidi;

    .line 4676
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->length:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    .line 4678
    :goto_0
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    aget v1, v1, v2

    if-lt p1, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getProcessedLength()I
    .locals 1

    .line 4501
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4502
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->length:I

    return v0
.end method

.method public getReorderingMode()I
    .locals 1

    .line 1669
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    return v0
.end method

.method public getReorderingOptions()I
    .locals 1

    .line 1705
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    return v0
.end method

.method public getResultLength()I
    .locals 1

    .line 4535
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4536
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->resultLength:I

    return v0
.end method

.method public getRunCount()I
    .locals 1

    .line 5529
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->countRuns()I

    move-result v0

    return v0
.end method

.method public getRunLevel(I)I
    .locals 2

    .line 5572
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5573
    invoke-static {p0}, Lcom/ibm/icu/text/BidiLine;->getRuns(Lcom/ibm/icu/text/Bidi;)V

    .line 5574
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->runCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    .line 5575
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    .line 5576
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget p1, v1, p1

    aget-object p1, v0, p1

    iget-byte p1, p1, Lcom/ibm/icu/text/BidiRun;->level:B

    return p1
.end method

.method public getRunLimit(I)I
    .locals 3

    .line 5619
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5620
    invoke-static {p0}, Lcom/ibm/icu/text/BidiLine;->getRuns(Lcom/ibm/icu/text/Bidi;)V

    .line 5621
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->runCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    .line 5622
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    .line 5623
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget p1, v0, p1

    .line 5624
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    if-nez p1, :cond_0

    aget-object v0, v0, p1

    iget v0, v0, Lcom/ibm/icu/text/BidiRun;->limit:I

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    iget v0, v0, Lcom/ibm/icu/text/BidiRun;->limit:I

    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/ibm/icu/text/BidiRun;->limit:I

    sub-int/2addr v0, v1

    .line 5626
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object p1, v1, p1

    iget p1, p1, Lcom/ibm/icu/text/BidiRun;->start:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getRunStart(I)I
    .locals 2

    .line 5595
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5596
    invoke-static {p0}, Lcom/ibm/icu/text/BidiLine;->getRuns(Lcom/ibm/icu/text/Bidi;)V

    .line 5597
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->runCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    .line 5598
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    .line 5599
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget p1, v1, p1

    aget-object p1, v0, p1

    iget p1, p1, Lcom/ibm/icu/text/BidiRun;->start:I

    return p1
.end method

.method getRunsMemory(I)V
    .locals 1

    .line 1397
    iget-boolean v0, p0, Lcom/ibm/icu/text/Bidi;->mayAllocateRuns:Z

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/Bidi;->getRunsMemory(ZI)V

    return-void
.end method

.method public getText()[C
    .locals 1

    .line 4440
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4441
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->text:[C

    return-object v0
.end method

.method public getTextAsString()Ljava/lang/String;
    .locals 2

    .line 4421
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4422
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/Bidi;->text:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getVisualIndex(I)I
    .locals 2

    .line 4999
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5000
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->length:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    .line 5001
    invoke-static {p0, p1}, Lcom/ibm/icu/text/BidiLine;->getVisualIndex(Lcom/ibm/icu/text/Bidi;I)I

    move-result p1

    return p1
.end method

.method public getVisualMap()[I
    .locals 1

    .line 5143
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->countRuns()I

    .line 5144
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->resultLength:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 5147
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/text/BidiLine;->getVisualMap(Lcom/ibm/icu/text/Bidi;)[I

    move-result-object v0

    return-object v0
.end method

.method public getVisualRun(I)Lcom/ibm/icu/text/BidiRun;
    .locals 2

    .line 4949
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4950
    invoke-static {p0}, Lcom/ibm/icu/text/BidiLine;->getRuns(Lcom/ibm/icu/text/Bidi;)V

    .line 4951
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->runCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    .line 4952
    invoke-static {p0, p1}, Lcom/ibm/icu/text/BidiLine;->getVisualRun(Lcom/ibm/icu/text/Bidi;I)Lcom/ibm/icu/text/BidiRun;

    move-result-object p1

    return-object p1
.end method

.method public isInverse()Z
    .locals 1

    .line 1486
    iget-boolean v0, p0, Lcom/ibm/icu/text/Bidi;->isInverse:Z

    return v0
.end method

.method public isLeftToRight()Z
    .locals 2

    .line 5468
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->getDirection()B

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMixed()Z
    .locals 1

    .line 5452
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->isLeftToRight()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->isRightToLeft()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOrderParagraphsLTR()Z
    .locals 1

    .line 4381
    iget-boolean v0, p0, Lcom/ibm/icu/text/Bidi;->orderParagraphsLTR:Z

    return v0
.end method

.method public isRightToLeft()Z
    .locals 2

    .line 5484
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->getDirection()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public orderParagraphsLTR(Z)V
    .locals 0

    .line 4368
    iput-boolean p1, p0, Lcom/ibm/icu/text/Bidi;->orderParagraphsLTR:Z

    return-void
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3672
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/ibm/icu/text/Bidi;->prologue:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 3673
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    iput-object p2, p0, Lcom/ibm/icu/text/Bidi;->epilogue:Ljava/lang/String;

    return-void
.end method

.method public setCustomClassifier(Lcom/ibm/icu/text/BidiClassifier;)V
    .locals 0

    .line 4693
    iput-object p1, p0, Lcom/ibm/icu/text/Bidi;->customClassifier:Lcom/ibm/icu/text/BidiClassifier;

    return-void
.end method

.method public setInverse(Z)V
    .locals 0

    .line 1463
    iput-boolean p1, p0, Lcom/ibm/icu/text/Bidi;->isInverse:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1464
    :goto_0
    iput p1, p0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    return-void
.end method

.method public setLine(II)Lcom/ibm/icu/text/Bidi;
    .locals 2

    .line 4776
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidPara()V

    const/4 v0, 0x0

    .line 4777
    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    .line 4778
    iget v1, p0, Lcom/ibm/icu/text/Bidi;->length:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    .line 4779
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Bidi;->getParagraphIndex(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/Bidi;->getParagraphIndex(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4783
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/BidiLine;->setLine(Lcom/ibm/icu/text/Bidi;II)Lcom/ibm/icu/text/Bidi;

    move-result-object p1

    return-object p1

    .line 4781
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setPara(Ljava/lang/String;B[B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [C

    .line 3923
    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/Bidi;->setPara([CB[B)V

    goto :goto_0

    .line 3925
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/Bidi;->setPara([CB[B)V

    :goto_0
    return-void
.end method

.method public setPara(Ljava/text/AttributedCharacterIterator;)V
    .locals 9

    .line 4309
    sget-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/16 v0, 0x7e

    goto :goto_0

    .line 4313
    :cond_0
    sget-object v1, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    const/4 v1, 0x0

    .line 4318
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v2

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v3

    sub-int/2addr v2, v3

    .line 4319
    new-array v3, v2, [B

    .line 4320
    new-array v4, v2, [C

    .line 4322
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const v8, 0xffff

    if-eq v5, v8, :cond_4

    .line 4324
    aput-char v5, v4, v7

    .line 4325
    sget-object v5, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    invoke-interface {p1, v5}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 4327
    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    if-gez v5, :cond_2

    rsub-int/lit8 v1, v5, 0x0

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    .line 4332
    aput-byte v1, v3, v7

    goto :goto_2

    .line 4335
    :cond_2
    aput-byte v5, v3, v7

    :goto_2
    move-object v1, v3

    .line 4338
    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4342
    :cond_4
    sget-object v3, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/font/NumericShaper;

    if-eqz p1, :cond_5

    .line 4344
    invoke-virtual {p1, v4, v6, v2}, Ljava/awt/font/NumericShaper;->shape([CII)V

    .line 4346
    :cond_5
    invoke-virtual {p0, v4, v0, v1}, Lcom/ibm/icu/text/Bidi;->setPara([CB[B)V

    return-void
.end method

.method public setPara([CB[B)V
    .locals 7

    const/16 v0, 0x7e

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 4009
    invoke-virtual {p0, p2, v1, v0}, Lcom/ibm/icu/text/Bidi;->verifyRange(III)V

    :cond_0
    if-nez p1, :cond_1

    new-array p1, v1, [C

    .line 4016
    :cond_1
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 4017
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/Bidi;->setParaRunsOnly([CB)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 4022
    iput-object v0, p0, Lcom/ibm/icu/text/Bidi;->paraBidi:Lcom/ibm/icu/text/Bidi;

    .line 4023
    iput-object p1, p0, Lcom/ibm/icu/text/Bidi;->text:[C

    .line 4024
    array-length p1, p1

    iput p1, p0, Lcom/ibm/icu/text/Bidi;->resultLength:I

    iput p1, p0, Lcom/ibm/icu/text/Bidi;->originalLength:I

    iput p1, p0, Lcom/ibm/icu/text/Bidi;->length:I

    .line 4025
    iput-byte p2, p0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    and-int/lit8 p1, p2, 0x1

    int-to-byte p1, p1

    .line 4026
    iput-byte p1, p0, Lcom/ibm/icu/text/Bidi;->direction:B

    const/4 p1, 0x1

    .line 4027
    iput p1, p0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    new-array v0, v1, [B

    .line 4032
    iput-object v0, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    new-array v0, v1, [B

    .line 4033
    iput-object v0, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    new-array v0, v1, [Lcom/ibm/icu/text/BidiRun;

    .line 4034
    iput-object v0, p0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    .line 4035
    iput-boolean v1, p0, Lcom/ibm/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    .line 4036
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iput v1, v0, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    .line 4037
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iput v1, v0, Lcom/ibm/icu/text/Bidi$InsertPoints;->confirmed:I

    .line 4042
    invoke-static {p2}, Lcom/ibm/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, p2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-byte v0, p0, Lcom/ibm/icu/text/Bidi;->defaultParaLevel:B

    .line 4044
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->length:I

    if-nez v0, :cond_5

    .line 4050
    invoke-static {p2}, Lcom/ibm/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 4051
    iget-byte p3, p0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    and-int/2addr p1, p3

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    .line 4052
    iput-byte v1, p0, Lcom/ibm/icu/text/Bidi;->defaultParaLevel:B

    .line 4054
    :cond_4
    invoke-static {p2}, Lcom/ibm/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/Bidi;->flags:I

    .line 4055
    iput v1, p0, Lcom/ibm/icu/text/Bidi;->runCount:I

    .line 4056
    iput v1, p0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    .line 4057
    invoke-direct {p0}, Lcom/ibm/icu/text/Bidi;->setParaSuccess()V

    return-void

    :cond_5
    const/4 p2, -0x1

    .line 4061
    iput p2, p0, Lcom/ibm/icu/text/Bidi;->runCount:I

    .line 4068
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/Bidi;->getDirPropsMemory(I)V

    .line 4069
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->dirPropsMemory:[B

    iput-object v0, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    .line 4070
    invoke-direct {p0}, Lcom/ibm/icu/text/Bidi;->getDirProps()V

    .line 4072
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->length:I

    iput v0, p0, Lcom/ibm/icu/text/Bidi;->trailingWSStart:I

    if-nez p3, :cond_6

    .line 4077
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/Bidi;->getLevelsMemory(I)V

    .line 4078
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->levelsMemory:[B

    iput-object v0, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    .line 4079
    invoke-direct {p0}, Lcom/ibm/icu/text/Bidi;->resolveExplicitLevels()B

    move-result v0

    iput-byte v0, p0, Lcom/ibm/icu/text/Bidi;->direction:B

    goto :goto_1

    .line 4082
    :cond_6
    iput-object p3, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    .line 4083
    invoke-direct {p0}, Lcom/ibm/icu/text/Bidi;->checkExplicitLevels()B

    move-result v0

    iput-byte v0, p0, Lcom/ibm/icu/text/Bidi;->direction:B

    .line 4087
    :goto_1
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    if-lez v0, :cond_8

    .line 4088
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->isolates:[Lcom/ibm/icu/text/Bidi$Isolate;

    if-eqz v3, :cond_7

    array-length v3, v3

    if-ge v3, v0, :cond_8

    :cond_7
    add-int/2addr v0, v2

    .line 4089
    new-array v0, v0, [Lcom/ibm/icu/text/Bidi$Isolate;

    iput-object v0, p0, Lcom/ibm/icu/text/Bidi;->isolates:[Lcom/ibm/icu/text/Bidi$Isolate;

    .line 4091
    :cond_8
    iput p2, p0, Lcom/ibm/icu/text/Bidi;->isolateCount:I

    .line 4097
    iget-byte p2, p0, Lcom/ibm/icu/text/Bidi;->direction:B

    const/4 v0, 0x7

    if-eqz p2, :cond_16

    if-eq p2, p1, :cond_15

    .line 4110
    iget p2, p0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 4135
    :pswitch_0
    iget p2, p0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_9

    .line 4136
    sget-object p2, Lcom/ibm/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Lcom/ibm/icu/text/Bidi;->impTabPair:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4138
    :cond_9
    sget-object p2, Lcom/ibm/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Lcom/ibm/icu/text/Bidi;->impTabPair:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4128
    :pswitch_1
    iget p2, p0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_a

    .line 4129
    sget-object p2, Lcom/ibm/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Lcom/ibm/icu/text/Bidi;->impTabPair:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4131
    :cond_a
    sget-object p2, Lcom/ibm/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Lcom/ibm/icu/text/Bidi;->impTabPair:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4125
    :pswitch_2
    sget-object p2, Lcom/ibm/icu/text/Bidi;->impTab_INVERSE_NUMBERS_AS_L:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Lcom/ibm/icu/text/Bidi;->impTabPair:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4122
    :pswitch_3
    new-instance p1, Ljava/lang/InternalError;

    const-string p2, "Internal ICU error in setPara"

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4118
    :pswitch_4
    sget-object p2, Lcom/ibm/icu/text/Bidi;->impTab_GROUP_NUMBERS_WITH_R:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Lcom/ibm/icu/text/Bidi;->impTabPair:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4115
    :pswitch_5
    sget-object p2, Lcom/ibm/icu/text/Bidi;->impTab_NUMBERS_SPECIAL:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Lcom/ibm/icu/text/Bidi;->impTabPair:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4112
    :pswitch_6
    sget-object p2, Lcom/ibm/icu/text/Bidi;->impTab_DEFAULT:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Lcom/ibm/icu/text/Bidi;->impTabPair:Lcom/ibm/icu/text/Bidi$ImpTabPair;

    :goto_2
    if-nez p3, :cond_b

    .line 4153
    iget p2, p0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    if-gt p2, p1, :cond_b

    iget p2, p0, Lcom/ibm/icu/text/Bidi;->flags:I

    sget p3, Lcom/ibm/icu/text/Bidi;->DirPropFlagMultiRuns:I

    and-int/2addr p2, p3

    if-nez p2, :cond_b

    .line 4155
    iget p2, p0, Lcom/ibm/icu/text/Bidi;->length:I

    .line 4156
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result p3

    invoke-static {p3}, Lcom/ibm/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result p3

    int-to-short p3, p3

    iget v2, p0, Lcom/ibm/icu/text/Bidi;->length:I

    sub-int/2addr v2, p1

    .line 4157
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v2

    int-to-short v2, v2

    .line 4155
    invoke-direct {p0, v1, p2, p3, v2}, Lcom/ibm/icu/text/Bidi;->resolveImplicitLevels(IISS)V

    goto/16 :goto_a

    .line 4165
    :cond_b
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result p2

    .line 4166
    iget-object p3, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte p3, p3, v1

    if-ge p2, p3, :cond_c

    .line 4168
    invoke-static {p3}, Lcom/ibm/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result p2

    goto :goto_3

    .line 4170
    :cond_c
    invoke-static {p2}, Lcom/ibm/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result p2

    :goto_3
    int-to-short p2, p2

    const/4 v2, 0x0

    :goto_4
    if-lez v2, :cond_d

    .line 4179
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v4, v2, -0x1

    aget-byte v3, v3, v4

    if-ne v3, v0, :cond_d

    .line 4181
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result p2

    invoke-static {p2}, Lcom/ibm/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result p2

    int-to-short p2, p2

    :cond_d
    move v3, v2

    :cond_e
    :goto_5
    add-int/2addr v3, p1

    .line 4187
    iget v4, p0, Lcom/ibm/icu/text/Bidi;->length:I

    if-ge v3, v4, :cond_f

    iget-object v4, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v4, v4, v3

    if-eq v4, p3, :cond_e

    iget-object v4, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v4, v4, v3

    .line 4189
    invoke-static {v4}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    sget v5, Lcom/ibm/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    goto :goto_5

    .line 4192
    :cond_f
    iget v4, p0, Lcom/ibm/icu/text/Bidi;->length:I

    if-ge v3, v4, :cond_10

    .line 4193
    iget-object v4, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    aget-byte v4, v4, v3

    goto :goto_6

    :cond_10
    add-int/lit8 v4, v4, -0x1

    .line 4195
    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v4

    .line 4199
    :goto_6
    invoke-static {p3}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v5

    invoke-static {v4}, Lcom/ibm/icu/text/Bidi;->NoOverride(B)B

    move-result v6

    if-ge v5, v6, :cond_11

    .line 4200
    invoke-static {v4}, Lcom/ibm/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v5

    goto :goto_7

    .line 4202
    :cond_11
    invoke-static {p3}, Lcom/ibm/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v5

    :goto_7
    int-to-short v5, v5

    and-int/lit8 p3, p3, -0x80

    if-nez p3, :cond_12

    .line 4208
    invoke-direct {p0, v2, v3, p2, v5}, Lcom/ibm/icu/text/Bidi;->resolveImplicitLevels(IISS)V

    goto :goto_9

    .line 4212
    :cond_12
    :goto_8
    iget-object p2, p0, Lcom/ibm/icu/text/Bidi;->levels:[B

    add-int/lit8 p3, v2, 0x1

    aget-byte v6, p2, v2

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, p2, v2

    if-lt p3, v3, :cond_14

    .line 4215
    :goto_9
    iget p2, p0, Lcom/ibm/icu/text/Bidi;->length:I

    if-lt v3, p2, :cond_13

    .line 4219
    :goto_a
    invoke-direct {p0}, Lcom/ibm/icu/text/Bidi;->adjustWSLevels()V

    goto :goto_b

    :cond_13
    move v2, v3

    move p3, v4

    move p2, v5

    goto :goto_4

    :cond_14
    move v2, p3

    goto :goto_8

    .line 4104
    :cond_15
    iput v1, p0, Lcom/ibm/icu/text/Bidi;->trailingWSStart:I

    goto :goto_b

    .line 4100
    :cond_16
    iput v1, p0, Lcom/ibm/icu/text/Bidi;->trailingWSStart:I

    .line 4226
    :goto_b
    iget-byte p2, p0, Lcom/ibm/icu/text/Bidi;->defaultParaLevel:B

    if-lez p2, :cond_1e

    iget p2, p0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_1e

    iget p2, p0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_17

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1e

    :cond_17
    const/4 p2, 0x0

    .line 4233
    :goto_c
    iget p3, p0, Lcom/ibm/icu/text/Bidi;->paraCount:I

    if-ge p2, p3, :cond_1e

    .line 4234
    iget-object p3, p0, Lcom/ibm/icu/text/Bidi;->paras_limit:[I

    aget v2, p3, p2

    sub-int/2addr v2, p1

    .line 4235
    iget-object v3, p0, Lcom/ibm/icu/text/Bidi;->paras_level:[B

    aget-byte v3, v3, p2

    if-nez v3, :cond_18

    goto :goto_10

    :cond_18
    if-nez p2, :cond_19

    const/4 p3, 0x0

    goto :goto_d

    :cond_19
    add-int/lit8 v3, p2, -0x1

    .line 4238
    aget p3, p3, v3

    :goto_d
    move v3, v2

    :goto_e
    if-lt v3, p3, :cond_1d

    .line 4240
    iget-object v4, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte v4, v4, v3

    if-nez v4, :cond_1b

    if-ge v3, v2, :cond_1a

    .line 4243
    :goto_f
    iget-object p3, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte p3, p3, v2

    if-ne p3, v0, :cond_1a

    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    :cond_1a
    const/4 p3, 0x4

    .line 4247
    invoke-direct {p0, v2, p3}, Lcom/ibm/icu/text/Bidi;->addPoint(II)V

    goto :goto_10

    .line 4250
    :cond_1b
    invoke-static {v4}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    sget v5, Lcom/ibm/icu/text/Bidi;->MASK_R_AL:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_1c

    goto :goto_10

    :cond_1c
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    :cond_1d
    :goto_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 4257
    :cond_1e
    iget p1, p0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1f

    .line 4258
    iget p1, p0, Lcom/ibm/icu/text/Bidi;->resultLength:I

    iget p2, p0, Lcom/ibm/icu/text/Bidi;->controlCount:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/text/Bidi;->resultLength:I

    goto :goto_11

    .line 4260
    :cond_1f
    iget p1, p0, Lcom/ibm/icu/text/Bidi;->resultLength:I

    iget-object p2, p0, Lcom/ibm/icu/text/Bidi;->insertPoints:Lcom/ibm/icu/text/Bidi$InsertPoints;

    iget p2, p2, Lcom/ibm/icu/text/Bidi$InsertPoints;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/text/Bidi;->resultLength:I

    .line 4262
    :goto_11
    invoke-direct {p0}, Lcom/ibm/icu/text/Bidi;->setParaSuccess()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setParaRunsOnly([CB)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 3702
    iput v3, v0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    .line 3703
    array-length v4, v1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 3705
    invoke-virtual {v0, v1, v2, v6}, Lcom/ibm/icu/text/Bidi;->setPara([CB[B)V

    .line 3706
    iput v5, v0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    return-void

    .line 3710
    :cond_0
    iget v7, v0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v8, v7, 0x1

    const/4 v9, 0x2

    if-lez v8, :cond_1

    and-int/lit8 v8, v7, -0x2

    or-int/2addr v8, v9

    .line 3713
    iput v8, v0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    :cond_1
    const/4 v8, 0x1

    and-int/2addr v2, v8

    int-to-byte v2, v2

    .line 3716
    invoke-virtual {v0, v1, v2, v6}, Lcom/ibm/icu/text/Bidi;->setPara([CB[B)V

    .line 3720
    iget v10, v0, Lcom/ibm/icu/text/Bidi;->length:I

    new-array v10, v10, [B

    .line 3721
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/Bidi;->getLevels()[B

    move-result-object v11

    iget v12, v0, Lcom/ibm/icu/text/Bidi;->length:I

    invoke-static {v11, v3, v10, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3722
    iget v11, v0, Lcom/ibm/icu/text/Bidi;->trailingWSStart:I

    .line 3730
    invoke-virtual {v0, v9}, Lcom/ibm/icu/text/Bidi;->writeReordered(I)Ljava/lang/String;

    move-result-object v12

    .line 3731
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/Bidi;->getVisualMap()[I

    move-result-object v13

    .line 3732
    iput v7, v0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    .line 3733
    iget v7, v0, Lcom/ibm/icu/text/Bidi;->length:I

    .line 3734
    iget-byte v14, v0, Lcom/ibm/icu/text/Bidi;->direction:B

    const/4 v15, 0x5

    .line 3736
    iput v15, v0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    xor-int/2addr v2, v8

    int-to-byte v2, v2

    .line 3738
    invoke-virtual {v0, v12, v2, v6}, Lcom/ibm/icu/text/Bidi;->setPara(Ljava/lang/String;B[B)V

    .line 3739
    invoke-static/range {p0 .. p0}, Lcom/ibm/icu/text/BidiLine;->getRuns(Lcom/ibm/icu/text/Bidi;)V

    .line 3742
    iget v2, v0, Lcom/ibm/icu/text/Bidi;->runCount:I

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v6, v2, :cond_6

    .line 3745
    iget-object v5, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v5, v5, v6

    iget v5, v5, Lcom/ibm/icu/text/BidiRun;->limit:I

    sub-int/2addr v5, v15

    if-ge v5, v9, :cond_3

    :cond_2
    move/from16 v18, v11

    goto :goto_2

    .line 3749
    :cond_3
    iget-object v9, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/ibm/icu/text/BidiRun;->start:I

    add-int/lit8 v16, v9, 0x1

    move/from16 v3, v16

    :goto_1
    add-int v8, v9, v5

    if-ge v3, v8, :cond_2

    .line 3751
    aget v8, v13, v3

    add-int/lit8 v17, v3, -0x1

    .line 3752
    aget v17, v13, v17

    move/from16 p2, v9

    sub-int v9, v8, v17

    .line 3753
    invoke-virtual {v0, v9}, Lcom/ibm/icu/text/Bidi;->Bidi_Abs(I)I

    move-result v9

    move/from16 v18, v11

    const/4 v11, 0x1

    if-ne v9, v11, :cond_4

    aget-byte v8, v10, v8

    aget-byte v9, v10, v17

    if-eq v8, v9, :cond_5

    :cond_4
    add-int/lit8 v12, v12, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move/from16 v9, p2

    move/from16 v11, v18

    goto :goto_1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v15, v5

    move/from16 v11, v18

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    goto :goto_0

    :cond_6
    move/from16 v18, v11

    if-lez v12, :cond_9

    add-int v3, v2, v12

    .line 3759
    invoke-virtual {v0, v3}, Lcom/ibm/icu/text/Bidi;->getRunsMemory(I)V

    .line 3760
    iget v3, v0, Lcom/ibm/icu/text/Bidi;->runCount:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_7

    .line 3762
    iget-object v3, v0, Lcom/ibm/icu/text/Bidi;->runsMemory:[Lcom/ibm/icu/text/BidiRun;

    iget-object v5, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v3, v6

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 3764
    iget-object v5, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    iget-object v8, v0, Lcom/ibm/icu/text/Bidi;->runsMemory:[Lcom/ibm/icu/text/BidiRun;

    invoke-static {v5, v6, v8, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3766
    :goto_3
    iget-object v3, v0, Lcom/ibm/icu/text/Bidi;->runsMemory:[Lcom/ibm/icu/text/BidiRun;

    iput-object v3, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    .line 3767
    iget v3, v0, Lcom/ibm/icu/text/Bidi;->runCount:I

    add-int/2addr v3, v12

    iput v3, v0, Lcom/ibm/icu/text/Bidi;->runCount:I

    move v3, v2

    .line 3768
    :goto_4
    iget v5, v0, Lcom/ibm/icu/text/Bidi;->runCount:I

    if-ge v3, v5, :cond_9

    .line 3769
    iget-object v5, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v6, v5, v3

    if-nez v6, :cond_8

    .line 3770
    new-instance v6, Lcom/ibm/icu/text/BidiRun;

    const/4 v8, 0x0

    invoke-direct {v6, v8, v8, v8}, Lcom/ibm/icu/text/BidiRun;-><init>(IIB)V

    aput-object v6, v5, v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_5
    if-ltz v2, :cond_12

    add-int v3, v2, v12

    if-nez v2, :cond_a

    .line 3778
    iget-object v5, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Lcom/ibm/icu/text/BidiRun;->limit:I

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    iget-object v5, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/ibm/icu/text/BidiRun;->limit:I

    iget-object v8, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    add-int/lit8 v9, v2, -0x1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/ibm/icu/text/BidiRun;->limit:I

    sub-int/2addr v5, v8

    .line 3780
    :goto_6
    iget-object v8, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/ibm/icu/text/BidiRun;->start:I

    .line 3781
    iget-object v9, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v9, v9, v2

    iget-byte v9, v9, Lcom/ibm/icu/text/BidiRun;->level:B

    const/4 v11, 0x1

    and-int/2addr v9, v11

    const/4 v11, 0x2

    if-ge v5, v11, :cond_c

    if-lez v12, :cond_b

    .line 3784
    iget-object v5, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v11, v5, v3

    aget-object v5, v5, v2

    invoke-virtual {v11, v5}, Lcom/ibm/icu/text/BidiRun;->copyFrom(Lcom/ibm/icu/text/BidiRun;)V

    .line 3786
    :cond_b
    aget v5, v13, v8

    .line 3787
    iget-object v8, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v8, v8, v3

    iput v5, v8, Lcom/ibm/icu/text/BidiRun;->start:I

    .line 3788
    iget-object v8, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v3, v8, v3

    aget-byte v5, v10, v5

    xor-int/2addr v5, v9

    int-to-byte v5, v5

    iput-byte v5, v3, Lcom/ibm/icu/text/BidiRun;->level:B

    goto/16 :goto_b

    :cond_c
    if-lez v9, :cond_d

    add-int/2addr v5, v8

    const/4 v15, 0x1

    sub-int/2addr v5, v15

    const/16 v16, 0x1

    goto :goto_7

    :cond_d
    const/4 v15, 0x1

    add-int/2addr v5, v8

    sub-int/2addr v5, v15

    const/16 v16, -0x1

    move/from16 v21, v8

    move v8, v5

    move/from16 v5, v21

    :goto_7
    move/from16 v17, v12

    move v12, v8

    :goto_8
    if-eq v8, v5, :cond_10

    .line 3801
    aget v6, v13, v8

    add-int v19, v8, v16

    .line 3802
    aget v20, v13, v19

    sub-int v11, v6, v20

    .line 3803
    invoke-virtual {v0, v11}, Lcom/ibm/icu/text/Bidi;->Bidi_Abs(I)I

    move-result v11

    if-ne v11, v15, :cond_f

    aget-byte v11, v10, v6

    aget-byte v15, v10, v20

    if-eq v11, v15, :cond_e

    goto :goto_9

    :cond_e
    const/4 v15, -0x1

    goto :goto_a

    .line 3804
    :cond_f
    :goto_9
    aget v11, v13, v12

    invoke-virtual {v0, v11, v6}, Lcom/ibm/icu/text/Bidi;->Bidi_Min(II)I

    move-result v6

    .line 3805
    iget-object v11, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v11, v11, v3

    iput v6, v11, Lcom/ibm/icu/text/BidiRun;->start:I

    .line 3806
    iget-object v11, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v11, v11, v3

    aget-byte v6, v10, v6

    xor-int/2addr v6, v9

    int-to-byte v6, v6

    iput-byte v6, v11, Lcom/ibm/icu/text/BidiRun;->level:B

    .line 3807
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v11, v6, v3

    aget-object v6, v6, v2

    iget v6, v6, Lcom/ibm/icu/text/BidiRun;->limit:I

    iput v6, v11, Lcom/ibm/icu/text/BidiRun;->limit:I

    .line 3808
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v6, v6, v2

    iget v11, v6, Lcom/ibm/icu/text/BidiRun;->limit:I

    sub-int/2addr v8, v12

    invoke-virtual {v0, v8}, Lcom/ibm/icu/text/Bidi;->Bidi_Abs(I)I

    move-result v8

    const/4 v12, 0x1

    add-int/2addr v8, v12

    sub-int/2addr v11, v8

    iput v11, v6, Lcom/ibm/icu/text/BidiRun;->limit:I

    .line 3809
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/ibm/icu/text/BidiRun;->insertRemove:I

    and-int/lit8 v6, v6, 0xa

    .line 3810
    iget-object v8, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v8, v8, v3

    iput v6, v8, Lcom/ibm/icu/text/BidiRun;->insertRemove:I

    .line 3811
    iget-object v8, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v8, v8, v2

    iget v11, v8, Lcom/ibm/icu/text/BidiRun;->insertRemove:I

    const/4 v15, -0x1

    xor-int/2addr v6, v15

    and-int/2addr v6, v11

    iput v6, v8, Lcom/ibm/icu/text/BidiRun;->insertRemove:I

    add-int/lit8 v17, v17, -0x1

    add-int/lit8 v3, v3, -0x1

    move/from16 v12, v19

    :goto_a
    move/from16 v8, v19

    const/4 v6, 0x0

    const/4 v15, 0x1

    goto :goto_8

    :cond_10
    if-lez v17, :cond_11

    .line 3818
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v8, v6, v3

    aget-object v6, v6, v2

    invoke-virtual {v8, v6}, Lcom/ibm/icu/text/BidiRun;->copyFrom(Lcom/ibm/icu/text/BidiRun;)V

    .line 3820
    :cond_11
    aget v6, v13, v12

    aget v5, v13, v5

    invoke-virtual {v0, v6, v5}, Lcom/ibm/icu/text/Bidi;->Bidi_Min(II)I

    move-result v5

    .line 3821
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v6, v6, v3

    iput v5, v6, Lcom/ibm/icu/text/BidiRun;->start:I

    .line 3822
    iget-object v6, v0, Lcom/ibm/icu/text/Bidi;->runs:[Lcom/ibm/icu/text/BidiRun;

    aget-object v3, v6, v3

    aget-byte v5, v10, v5

    xor-int/2addr v5, v9

    int-to-byte v5, v5

    iput-byte v5, v3, Lcom/ibm/icu/text/BidiRun;->level:B

    move/from16 v12, v17

    :goto_b
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_5

    .line 3827
    :cond_12
    iget-byte v2, v0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v0, Lcom/ibm/icu/text/Bidi;->paraLevel:B

    .line 3830
    iput-object v1, v0, Lcom/ibm/icu/text/Bidi;->text:[C

    .line 3831
    iput v7, v0, Lcom/ibm/icu/text/Bidi;->length:I

    .line 3832
    iput v4, v0, Lcom/ibm/icu/text/Bidi;->originalLength:I

    .line 3833
    iput-byte v14, v0, Lcom/ibm/icu/text/Bidi;->direction:B

    .line 3834
    iput-object v10, v0, Lcom/ibm/icu/text/Bidi;->levels:[B

    move/from16 v1, v18

    .line 3835
    iput v1, v0, Lcom/ibm/icu/text/Bidi;->trailingWSStart:I

    .line 3836
    iget v1, v0, Lcom/ibm/icu/text/Bidi;->runCount:I

    if-le v1, v3, :cond_13

    const/4 v1, 0x2

    .line 3837
    iput-byte v1, v0, Lcom/ibm/icu/text/Bidi;->direction:B

    :cond_13
    const/4 v1, 0x3

    .line 3840
    iput v1, v0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    return-void
.end method

.method public setReorderingMode(I)V
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 1655
    :cond_0
    iput p1, p0, Lcom/ibm/icu/text/Bidi;->reorderingMode:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1656
    :goto_0
    iput-boolean p1, p0, Lcom/ibm/icu/text/Bidi;->isInverse:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public setReorderingOptions(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, -0x2

    .line 1690
    iput p1, p0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    goto :goto_0

    .line 1692
    :cond_0
    iput p1, p0, Lcom/ibm/icu/text/Bidi;->reorderingOptions:I

    :goto_0
    return-void
.end method

.method testDirPropFlagAt(II)Z
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->dirProps:[B

    aget-byte p2, v0, p2

    invoke-static {p2}, Lcom/ibm/icu/text/Bidi;->DirPropFlag(B)I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method verifyRange(III)V
    .locals 3

    if-lt p1, p2, :cond_0

    if-ge p1, p3, :cond_0

    return-void

    .line 1233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of range "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method verifyValidPara()V
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->paraBidi:Lcom/ibm/icu/text/Bidi;

    if-ne p0, v0, :cond_0

    return-void

    .line 1213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method verifyValidParaOrLine()V
    .locals 2

    .line 1219
    iget-object v0, p0, Lcom/ibm/icu/text/Bidi;->paraBidi:Lcom/ibm/icu/text/Bidi;

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 1225
    iget-object v1, v0, Lcom/ibm/icu/text/Bidi;->paraBidi:Lcom/ibm/icu/text/Bidi;

    if-ne v0, v1, :cond_1

    return-void

    .line 1226
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public writeReordered(I)Ljava/lang/String;
    .locals 1

    .line 5755
    invoke-virtual {p0}, Lcom/ibm/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5756
    iget v0, p0, Lcom/ibm/icu/text/Bidi;->length:I

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 5760
    :cond_0
    invoke-static {p0, p1}, Lcom/ibm/icu/text/BidiWriter;->writeReordered(Lcom/ibm/icu/text/Bidi;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
