.class public final enum Lcom/ibm/icu/impl/StaticUnicodeSets$Key;
.super Ljava/lang/Enum;
.source "StaticUnicodeSets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/StaticUnicodeSets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/StaticUnicodeSets$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum APOSTROPHE_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum COMMA:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum DEFAULT_IGNORABLES:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum DIGITS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum DIGITS_OR_ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum DIGITS_OR_STRICT_ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum DOLLAR_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum EMPTY:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum INFINITY_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum MINUS_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum OTHER_GROUPING_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum PERCENT_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum PERIOD:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum PERMILLE_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum PLUS_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum POUND_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum RUPEE_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum STRICT_ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum STRICT_COMMA:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum STRICT_IGNORABLES:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum STRICT_PERIOD:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum WON_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

.field public static final enum YEN_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 25
    new-instance v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->EMPTY:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 27
    new-instance v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v3, "DEFAULT_IGNORABLES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DEFAULT_IGNORABLES:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 28
    new-instance v3, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v5, "STRICT_IGNORABLES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_IGNORABLES:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 36
    new-instance v5, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v7, "COMMA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->COMMA:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 37
    new-instance v7, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v9, "PERIOD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->PERIOD:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 38
    new-instance v9, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v11, "STRICT_COMMA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_COMMA:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 39
    new-instance v11, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v13, "STRICT_PERIOD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_PERIOD:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 40
    new-instance v13, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v15, "APOSTROPHE_SIGN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->APOSTROPHE_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 41
    new-instance v15, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v14, "OTHER_GROUPING_SEPARATORS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->OTHER_GROUPING_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 42
    new-instance v14, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v12, "ALL_SEPARATORS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 43
    new-instance v12, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v10, "STRICT_ALL_SEPARATORS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->STRICT_ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 47
    new-instance v10, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v8, "MINUS_SIGN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->MINUS_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 48
    new-instance v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v6, "PLUS_SIGN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->PLUS_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 49
    new-instance v6, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v4, "PERCENT_SIGN"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->PERCENT_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 50
    new-instance v4, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v2, "PERMILLE_SIGN"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->PERMILLE_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 51
    new-instance v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v6, "INFINITY_SIGN"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->INFINITY_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 54
    new-instance v6, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v4, "DOLLAR_SIGN"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DOLLAR_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 55
    new-instance v4, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v2, "POUND_SIGN"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->POUND_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 56
    new-instance v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v6, "RUPEE_SIGN"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->RUPEE_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 57
    new-instance v6, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v4, "YEN_SIGN"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->YEN_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 58
    new-instance v4, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v2, "WON_SIGN"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->WON_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 61
    new-instance v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v6, "DIGITS"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DIGITS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 64
    new-instance v6, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v4, "DIGITS_OR_ALL_SEPARATORS"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DIGITS_OR_ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    .line 65
    new-instance v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const-string v4, "DIGITS_OR_STRICT_ALL_SEPARATORS"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->DIGITS_OR_STRICT_ALL_SEPARATORS:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const/16 v4, 0x18

    new-array v4, v4, [Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v2, v4, v0

    .line 24
    sput-object v4, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->$VALUES:[Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/StaticUnicodeSets$Key;
    .locals 1

    .line 24
    const-class v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/StaticUnicodeSets$Key;
    .locals 1

    .line 24
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->$VALUES:[Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    return-object v0
.end method
