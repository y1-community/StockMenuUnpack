.class public final enum Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;
.super Ljava/lang/Enum;
.source "DecimalFormatProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/DecimalFormatProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParseMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

.field public static final enum JAVA_COMPATIBILITY:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

.field public static final enum LENIENT:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

.field public static final enum STRICT:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    const-string v1, "LENIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 63
    new-instance v1, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    const-string v3, "STRICT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 70
    new-instance v3, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    const-string v5, "JAVA_COMPATIBILITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->JAVA_COMPATIBILITY:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 33
    sput-object v5, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->$VALUES:[Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;
    .locals 1

    .line 33
    const-class v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;
    .locals 1

    .line 33
    sget-object v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->$VALUES:[Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    return-object v0
.end method
