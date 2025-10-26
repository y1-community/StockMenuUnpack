.class public final enum Lcom/ibm/icu/text/TimeZoneFormat$Style;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/TimeZoneFormat$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;


# instance fields
.field final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 90
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v1, "GENERIC_LOCATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 96
    new-instance v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v4, "GENERIC_LONG"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 102
    new-instance v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v6, "GENERIC_SHORT"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 108
    new-instance v6, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v8, "SPECIFIC_LONG"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 114
    new-instance v8, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v11, "SPECIFIC_SHORT"

    const/16 v12, 0x10

    invoke-direct {v8, v11, v7, v12}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 120
    new-instance v11, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v13, "LOCALIZED_GMT"

    const/4 v14, 0x5

    const/16 v15, 0x20

    invoke-direct {v11, v13, v14, v15}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 126
    new-instance v13, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v15, "LOCALIZED_GMT_SHORT"

    const/4 v14, 0x6

    const/16 v7, 0x40

    invoke-direct {v13, v15, v14, v7}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 133
    new-instance v7, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v15, "ISO_BASIC_SHORT"

    const/4 v14, 0x7

    const/16 v9, 0x80

    invoke-direct {v7, v15, v14, v9}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 140
    new-instance v15, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v14, "ISO_BASIC_LOCAL_SHORT"

    const/16 v5, 0x100

    invoke-direct {v15, v14, v10, v5}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 147
    new-instance v14, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v10, "ISO_BASIC_FIXED"

    const/16 v3, 0x9

    invoke-direct {v14, v10, v3, v9}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 154
    new-instance v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v3, "ISO_BASIC_LOCAL_FIXED"

    const/16 v2, 0xa

    invoke-direct {v10, v3, v2, v5}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 161
    new-instance v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v2, "ISO_BASIC_FULL"

    const/16 v12, 0xb

    invoke-direct {v3, v2, v12, v9}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 168
    new-instance v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v12, "ISO_BASIC_LOCAL_FULL"

    const/16 v9, 0xc

    invoke-direct {v2, v12, v9, v5}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 175
    new-instance v12, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v9, "ISO_EXTENDED_FIXED"

    const/16 v5, 0xd

    move-object/from16 v16, v2

    const/16 v2, 0x80

    invoke-direct {v12, v9, v5, v2}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 182
    new-instance v9, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v5, "ISO_EXTENDED_LOCAL_FIXED"

    const/16 v2, 0xe

    move-object/from16 v17, v12

    const/16 v12, 0x100

    invoke-direct {v9, v5, v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 189
    new-instance v5, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v2, "ISO_EXTENDED_FULL"

    const/16 v12, 0xf

    move-object/from16 v19, v9

    const/16 v9, 0x80

    invoke-direct {v5, v2, v12, v9}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 196
    new-instance v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v9, "ISO_EXTENDED_LOCAL_FULL"

    move-object/from16 v18, v5

    const/16 v5, 0x100

    const/16 v12, 0x10

    invoke-direct {v2, v9, v12, v5}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 201
    new-instance v5, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v9, "ZONE_ID"

    const/16 v12, 0x11

    move-object/from16 v20, v2

    const/16 v2, 0x200

    invoke-direct {v5, v9, v12, v2}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 206
    new-instance v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v9, "ZONE_ID_SHORT"

    const/16 v12, 0x12

    move-object/from16 v21, v5

    const/16 v5, 0x400

    invoke-direct {v2, v9, v12, v5}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 211
    new-instance v5, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string v9, "EXEMPLAR_LOCATION"

    const/16 v12, 0x13

    move-object/from16 v22, v2

    const/16 v2, 0x800

    invoke-direct {v5, v9, v12, v2}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ibm/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const/16 v2, 0x14

    new-array v2, v2, [Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const/4 v9, 0x0

    aput-object v0, v2, v9

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v11, v2, v0

    const/4 v0, 0x6

    aput-object v13, v2, v0

    const/4 v0, 0x7

    aput-object v7, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v10, v2, v0

    const/16 v0, 0xb

    aput-object v3, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    aput-object v5, v2, v12

    .line 84
    sput-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 216
    iput p3, p0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat$Style;
    .locals 1

    .line 84
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/TimeZoneFormat$Style;
    .locals 1

    .line 84
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/TimeZoneFormat$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/TimeZoneFormat$Style;

    return-object v0
.end method
