.class final enum Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;
.super Ljava/lang/Enum;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SpecialType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum CODEPOINTS:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum PRIVATE_USE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum REORDER_CODE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum RG_KEY_VALUE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum SCRIPT_CODE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

.field public static final enum SUBDIVISION_CODE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;


# instance fields
.field handler:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 92
    new-instance v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v1, Lcom/ibm/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;-><init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V

    const-string v3, "CODEPOINTS"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->CODEPOINTS:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 93
    new-instance v1, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v3, Lcom/ibm/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;

    invoke-direct {v3, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;-><init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V

    const-string v5, "REORDER_CODE"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v3}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->REORDER_CODE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 94
    new-instance v3, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v5, Lcom/ibm/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;

    invoke-direct {v5, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;-><init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V

    const-string v7, "RG_KEY_VALUE"

    const/4 v8, 0x2

    invoke-direct {v3, v7, v8, v5}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v3, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->RG_KEY_VALUE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 95
    new-instance v5, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v7, Lcom/ibm/icu/impl/locale/KeyTypeData$ScriptCodeTypeHandler;

    invoke-direct {v7, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$ScriptCodeTypeHandler;-><init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V

    const-string v9, "SCRIPT_CODE"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v5, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->SCRIPT_CODE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 96
    new-instance v7, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v9, Lcom/ibm/icu/impl/locale/KeyTypeData$SubdivisionKeyValueTypeHandler;

    invoke-direct {v9, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$SubdivisionKeyValueTypeHandler;-><init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V

    const-string v11, "SUBDIVISION_CODE"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v7, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->SUBDIVISION_CODE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    .line 97
    new-instance v9, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    new-instance v11, Lcom/ibm/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;

    invoke-direct {v11, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;-><init>(Lcom/ibm/icu/impl/locale/KeyTypeData$1;)V

    const-string v2, "PRIVATE_USE"

    const/4 v13, 0x5

    invoke-direct {v9, v2, v13, v11}, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;-><init>(Ljava/lang/String;ILcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V

    sput-object v9, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->PRIVATE_USE:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    aput-object v0, v2, v4

    aput-object v1, v2, v6

    aput-object v3, v2, v8

    aput-object v5, v2, v10

    aput-object v7, v2, v12

    aput-object v9, v2, v13

    .line 91
    sput-object v2, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->$VALUES:[Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput-object p3, p0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->handler:Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;
    .locals 1

    .line 91
    const-class v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;
    .locals 1

    .line 91
    sget-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->$VALUES:[Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/locale/KeyTypeData$SpecialType;

    return-object v0
.end method
