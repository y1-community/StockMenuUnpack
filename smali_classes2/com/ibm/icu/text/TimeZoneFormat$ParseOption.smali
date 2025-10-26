.class public final enum Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParseOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

.field public static final enum ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

.field public static final enum TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 317
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    const-string v1, "ALL_STYLES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    .line 325
    new-instance v1, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    const-string v3, "TZ_DATABASE_ABBREVIATIONS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 310
    sput-object v3, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 310
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;
    .locals 1

    .line 310
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;
    .locals 1

    .line 310
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    return-object v0
.end method
