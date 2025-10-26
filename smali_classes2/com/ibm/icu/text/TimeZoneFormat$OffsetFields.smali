.class final enum Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OffsetFields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

.field public static final enum H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

.field public static final enum HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

.field public static final enum HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1708
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    const-string v1, "H"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    new-instance v1, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    const-string v3, "HM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    new-instance v3, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    const-string v5, "HMS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1707
    sput-object v5, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1707
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;
    .locals 1

    .line 1707
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;
    .locals 1

    .line 1707
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    return-object v0
.end method
