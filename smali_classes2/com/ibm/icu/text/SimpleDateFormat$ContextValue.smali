.class final enum Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;
.super Ljava/lang/Enum;
.source "SimpleDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SimpleDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum UNKNOWN:Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 968
    new-instance v0, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;->UNKNOWN:Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    .line 969
    new-instance v1, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    const-string v3, "CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    .line 970
    new-instance v3, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    const-string v5, "CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    .line 971
    new-instance v5, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    const-string v7, "CAPITALIZATION_FOR_UI_LIST_OR_MENU"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    .line 972
    new-instance v7, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    const-string v9, "CAPITALIZATION_FOR_STANDALONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 966
    sput-object v9, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;->$VALUES:[Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 967
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;
    .locals 1

    .line 966
    const-class v0, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;
    .locals 1

    .line 966
    sget-object v0, Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;->$VALUES:[Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/SimpleDateFormat$ContextValue;

    return-object v0
.end method
