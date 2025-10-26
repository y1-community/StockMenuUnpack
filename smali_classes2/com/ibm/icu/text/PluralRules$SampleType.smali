.class public final enum Lcom/ibm/icu/text/PluralRules$SampleType;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SampleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/PluralRules$SampleType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/PluralRules$SampleType;

.field public static final enum DECIMAL:Lcom/ibm/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1130
    new-instance v0, Lcom/ibm/icu/text/PluralRules$SampleType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    .line 1136
    new-instance v1, Lcom/ibm/icu/text/PluralRules$SampleType;

    const-string v3, "DECIMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/PluralRules$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/PluralRules$SampleType;->DECIMAL:Lcom/ibm/icu/text/PluralRules$SampleType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/text/PluralRules$SampleType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 1124
    sput-object v3, Lcom/ibm/icu/text/PluralRules$SampleType;->$VALUES:[Lcom/ibm/icu/text/PluralRules$SampleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$SampleType;
    .locals 1

    .line 1124
    const-class v0, Lcom/ibm/icu/text/PluralRules$SampleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/PluralRules$SampleType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/PluralRules$SampleType;
    .locals 1

    .line 1124
    sget-object v0, Lcom/ibm/icu/text/PluralRules$SampleType;->$VALUES:[Lcom/ibm/icu/text/PluralRules$SampleType;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/PluralRules$SampleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/PluralRules$SampleType;

    return-object v0
.end method
