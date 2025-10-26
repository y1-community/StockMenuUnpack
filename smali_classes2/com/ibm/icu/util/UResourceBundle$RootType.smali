.class final enum Lcom/ibm/icu/util/UResourceBundle$RootType;
.super Ljava/lang/Enum;
.source "UResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/UResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RootType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/UResourceBundle$RootType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/UResourceBundle$RootType;

.field public static final enum ICU:Lcom/ibm/icu/util/UResourceBundle$RootType;

.field public static final enum JAVA:Lcom/ibm/icu/util/UResourceBundle$RootType;

.field public static final enum MISSING:Lcom/ibm/icu/util/UResourceBundle$RootType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 324
    new-instance v0, Lcom/ibm/icu/util/UResourceBundle$RootType;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/UResourceBundle$RootType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/UResourceBundle$RootType;->MISSING:Lcom/ibm/icu/util/UResourceBundle$RootType;

    new-instance v1, Lcom/ibm/icu/util/UResourceBundle$RootType;

    const-string v3, "ICU"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/UResourceBundle$RootType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/UResourceBundle$RootType;->ICU:Lcom/ibm/icu/util/UResourceBundle$RootType;

    new-instance v3, Lcom/ibm/icu/util/UResourceBundle$RootType;

    const-string v5, "JAVA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/util/UResourceBundle$RootType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/util/UResourceBundle$RootType;->JAVA:Lcom/ibm/icu/util/UResourceBundle$RootType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/util/UResourceBundle$RootType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/ibm/icu/util/UResourceBundle$RootType;->$VALUES:[Lcom/ibm/icu/util/UResourceBundle$RootType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle$RootType;
    .locals 1

    .line 324
    const-class v0, Lcom/ibm/icu/util/UResourceBundle$RootType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/UResourceBundle$RootType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/UResourceBundle$RootType;
    .locals 1

    .line 324
    sget-object v0, Lcom/ibm/icu/util/UResourceBundle$RootType;->$VALUES:[Lcom/ibm/icu/util/UResourceBundle$RootType;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/UResourceBundle$RootType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/UResourceBundle$RootType;

    return-object v0
.end method
