.class final enum Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;
.super Ljava/lang/Enum;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DTPGflags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

.field public static final enum FIX_FRACTIONAL_SECONDS:Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

.field public static final enum SKELETON_USES_CAP_J:Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2137
    new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    const-string v1, "FIX_FRACTIONAL_SECONDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    .line 2138
    new-instance v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    const-string v3, "SKELETON_USES_CAP_J"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2136
    sput-object v3, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;->$VALUES:[Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;
    .locals 1

    .line 2136
    const-class v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;
    .locals 1

    .line 2136
    sget-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;->$VALUES:[Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/DateTimePatternGenerator$DTPGflags;

    return-object v0
.end method
