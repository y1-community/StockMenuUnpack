.class public final enum Lcom/ibm/icu/util/GenderInfo$Gender;
.super Ljava/lang/Enum;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/GenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/GenderInfo$Gender;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/GenderInfo$Gender;

.field public static final enum FEMALE:Lcom/ibm/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MALE:Lcom/ibm/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum OTHER:Lcom/ibm/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 45
    new-instance v0, Lcom/ibm/icu/util/GenderInfo$Gender;

    const-string v1, "MALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/GenderInfo$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/GenderInfo$Gender;->MALE:Lcom/ibm/icu/util/GenderInfo$Gender;

    .line 51
    new-instance v1, Lcom/ibm/icu/util/GenderInfo$Gender;

    const-string v3, "FEMALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/GenderInfo$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/GenderInfo$Gender;->FEMALE:Lcom/ibm/icu/util/GenderInfo$Gender;

    .line 57
    new-instance v3, Lcom/ibm/icu/util/GenderInfo$Gender;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/util/GenderInfo$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/util/GenderInfo$Gender;->OTHER:Lcom/ibm/icu/util/GenderInfo$Gender;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/util/GenderInfo$Gender;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 39
    sput-object v5, Lcom/ibm/icu/util/GenderInfo$Gender;->$VALUES:[Lcom/ibm/icu/util/GenderInfo$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/GenderInfo$Gender;
    .locals 1

    .line 39
    const-class v0, Lcom/ibm/icu/util/GenderInfo$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/GenderInfo$Gender;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/GenderInfo$Gender;
    .locals 1

    .line 39
    sget-object v0, Lcom/ibm/icu/util/GenderInfo$Gender;->$VALUES:[Lcom/ibm/icu/util/GenderInfo$Gender;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/GenderInfo$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/GenderInfo$Gender;

    return-object v0
.end method
