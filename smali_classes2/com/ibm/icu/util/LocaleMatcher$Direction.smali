.class public final enum Lcom/ibm/icu/util/LocaleMatcher$Direction;
.super Ljava/lang/Enum;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/LocaleMatcher$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/LocaleMatcher$Direction;

.field public static final enum ONLY_TWO_WAY:Lcom/ibm/icu/util/LocaleMatcher$Direction;

.field public static final enum WITH_ONE_WAY:Lcom/ibm/icu/util/LocaleMatcher$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 175
    new-instance v0, Lcom/ibm/icu/util/LocaleMatcher$Direction;

    const-string v1, "WITH_ONE_WAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/LocaleMatcher$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/LocaleMatcher$Direction;->WITH_ONE_WAY:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    .line 182
    new-instance v1, Lcom/ibm/icu/util/LocaleMatcher$Direction;

    const-string v3, "ONLY_TWO_WAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/LocaleMatcher$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/LocaleMatcher$Direction;->ONLY_TWO_WAY:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/util/LocaleMatcher$Direction;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 169
    sput-object v3, Lcom/ibm/icu/util/LocaleMatcher$Direction;->$VALUES:[Lcom/ibm/icu/util/LocaleMatcher$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/LocaleMatcher$Direction;
    .locals 1

    .line 169
    const-class v0, Lcom/ibm/icu/util/LocaleMatcher$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/LocaleMatcher$Direction;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/LocaleMatcher$Direction;
    .locals 1

    .line 169
    sget-object v0, Lcom/ibm/icu/util/LocaleMatcher$Direction;->$VALUES:[Lcom/ibm/icu/util/LocaleMatcher$Direction;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/LocaleMatcher$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/LocaleMatcher$Direction;

    return-object v0
.end method
