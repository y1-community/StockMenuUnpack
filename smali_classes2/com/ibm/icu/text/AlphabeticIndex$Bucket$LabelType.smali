.class public final enum Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;
.super Ljava/lang/Enum;
.source "AlphabeticIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/AlphabeticIndex$Bucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum INFLOW:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum NORMAL:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum OVERFLOW:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum UNDERFLOW:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 913
    new-instance v0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    .line 918
    new-instance v1, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    const-string v3, "UNDERFLOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->UNDERFLOW:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    .line 923
    new-instance v3, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    const-string v5, "INFLOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    .line 928
    new-instance v5, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    const-string v7, "OVERFLOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->OVERFLOW:Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 908
    sput-object v7, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->$VALUES:[Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 908
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 1

    .line 908
    const-class v0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 1

    .line 908
    sget-object v0, Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->$VALUES:[Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object v0
.end method
