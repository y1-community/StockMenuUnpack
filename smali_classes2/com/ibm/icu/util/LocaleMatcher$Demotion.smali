.class public final enum Lcom/ibm/icu/util/LocaleMatcher$Demotion;
.super Ljava/lang/Enum;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Demotion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/LocaleMatcher$Demotion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/LocaleMatcher$Demotion;

.field public static final enum NONE:Lcom/ibm/icu/util/LocaleMatcher$Demotion;

.field public static final enum REGION:Lcom/ibm/icu/util/LocaleMatcher$Demotion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 122
    new-instance v0, Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/LocaleMatcher$Demotion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/LocaleMatcher$Demotion;->NONE:Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    .line 149
    new-instance v1, Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    const-string v3, "REGION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/LocaleMatcher$Demotion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/LocaleMatcher$Demotion;->REGION:Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 116
    sput-object v3, Lcom/ibm/icu/util/LocaleMatcher$Demotion;->$VALUES:[Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/LocaleMatcher$Demotion;
    .locals 1

    .line 116
    const-class v0, Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/LocaleMatcher$Demotion;
    .locals 1

    .line 116
    sget-object v0, Lcom/ibm/icu/util/LocaleMatcher$Demotion;->$VALUES:[Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/LocaleMatcher$Demotion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    return-object v0
.end method
