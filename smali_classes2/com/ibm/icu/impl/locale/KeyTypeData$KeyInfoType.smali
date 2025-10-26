.class final enum Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;
.super Ljava/lang/Enum;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "KeyInfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

.field public static final enum deprecated:Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

.field public static final enum valueType:Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 413
    new-instance v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

    const-string v1, "deprecated"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;->deprecated:Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

    new-instance v1, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

    const-string v3, "valueType"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;->valueType:Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;->$VALUES:[Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 413
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;
    .locals 1

    .line 413
    const-class v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;
    .locals 1

    .line 413
    sget-object v0, Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;->$VALUES:[Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/locale/KeyTypeData$KeyInfoType;

    return-object v0
.end method
