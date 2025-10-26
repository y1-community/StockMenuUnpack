.class public final enum Lcom/ibm/icu/impl/number/Modifier$Signum;
.super Ljava/lang/Enum;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Signum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/number/Modifier$Signum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/number/Modifier$Signum;

.field static final COUNT:I

.field public static final enum NEG:Lcom/ibm/icu/impl/number/Modifier$Signum;

.field public static final enum NEG_ZERO:Lcom/ibm/icu/impl/number/Modifier$Signum;

.field public static final enum POS:Lcom/ibm/icu/impl/number/Modifier$Signum;

.field public static final enum POS_ZERO:Lcom/ibm/icu/impl/number/Modifier$Signum;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 21
    new-instance v0, Lcom/ibm/icu/impl/number/Modifier$Signum;

    const-string v1, "NEG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/number/Modifier$Signum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Modifier$Signum;->NEG:Lcom/ibm/icu/impl/number/Modifier$Signum;

    .line 22
    new-instance v1, Lcom/ibm/icu/impl/number/Modifier$Signum;

    const-string v3, "NEG_ZERO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/number/Modifier$Signum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/number/Modifier$Signum;->NEG_ZERO:Lcom/ibm/icu/impl/number/Modifier$Signum;

    .line 23
    new-instance v3, Lcom/ibm/icu/impl/number/Modifier$Signum;

    const-string v5, "POS_ZERO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/number/Modifier$Signum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/number/Modifier$Signum;->POS_ZERO:Lcom/ibm/icu/impl/number/Modifier$Signum;

    .line 24
    new-instance v5, Lcom/ibm/icu/impl/number/Modifier$Signum;

    const-string v7, "POS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/impl/number/Modifier$Signum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/impl/number/Modifier$Signum;->POS:Lcom/ibm/icu/impl/number/Modifier$Signum;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ibm/icu/impl/number/Modifier$Signum;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 20
    sput-object v7, Lcom/ibm/icu/impl/number/Modifier$Signum;->$VALUES:[Lcom/ibm/icu/impl/number/Modifier$Signum;

    .line 26
    invoke-static {}, Lcom/ibm/icu/impl/number/Modifier$Signum;->values()[Lcom/ibm/icu/impl/number/Modifier$Signum;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/ibm/icu/impl/number/Modifier$Signum;->COUNT:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Modifier$Signum;
    .locals 1

    .line 20
    const-class v0, Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/number/Modifier$Signum;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/number/Modifier$Signum;
    .locals 1

    .line 20
    sget-object v0, Lcom/ibm/icu/impl/number/Modifier$Signum;->$VALUES:[Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/number/Modifier$Signum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/number/Modifier$Signum;

    return-object v0
.end method
