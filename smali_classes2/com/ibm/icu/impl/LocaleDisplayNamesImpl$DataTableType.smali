.class public final enum Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;
.super Ljava/lang/Enum;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataTableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;

.field public static final enum LANG:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;

.field public static final enum REGION:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 699
    new-instance v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    const-string v1, "LANG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;->LANG:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    new-instance v1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    const-string v3, "REGION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;->REGION:Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 698
    sput-object v3, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;->$VALUES:[Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 698
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;
    .locals 1

    .line 698
    const-class v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;
    .locals 1

    .line 698
    sget-object v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;->$VALUES:[Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    return-object v0
.end method
