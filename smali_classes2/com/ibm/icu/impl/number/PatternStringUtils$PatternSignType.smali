.class public final enum Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;
.super Ljava/lang/Enum;
.source "PatternStringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/PatternStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PatternSignType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

.field public static final enum NEG:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

.field public static final enum POS:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

.field public static final enum POS_SIGN:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

.field public static final VALUES:[Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    const-string v1, "POS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    .line 23
    new-instance v1, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    const-string v3, "POS_SIGN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS_SIGN:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    .line 25
    new-instance v3, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    const-string v5, "NEG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 19
    sput-object v5, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->$VALUES:[Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    .line 27
    invoke-static {}, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->values()[Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->VALUES:[Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;
    .locals 1

    .line 19
    const-class v0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;
    .locals 1

    .line 19
    sget-object v0, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->$VALUES:[Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    return-object v0
.end method
