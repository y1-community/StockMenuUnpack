.class public final enum Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;
.super Ljava/lang/Enum;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum DIRECT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum LOCALE_DEFAULT_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum LOCALE_ONLY:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

.field public static final enum LOCALE_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1141
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const-string v1, "LOCALE_DEFAULT_ROOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    .line 1154
    new-instance v1, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const-string v3, "LOCALE_ROOT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    .line 1165
    new-instance v3, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const-string v5, "LOCALE_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ONLY:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    .line 1172
    new-instance v5, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const-string v7, "DIRECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 1133
    sput-object v7, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->$VALUES:[Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;
    .locals 1

    .line 1133
    const-class v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;
    .locals 1

    .line 1133
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->$VALUES:[Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    return-object v0
.end method
