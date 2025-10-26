.class public final enum Lcom/ibm/icu/lang/UScript$ScriptUsage;
.super Ljava/lang/Enum;
.source "UScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/lang/UScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScriptUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/lang/UScript$ScriptUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/lang/UScript$ScriptUsage;

.field public static final enum ASPIRATIONAL:Lcom/ibm/icu/lang/UScript$ScriptUsage;

.field public static final enum EXCLUDED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

.field public static final enum LIMITED_USE:Lcom/ibm/icu/lang/UScript$ScriptUsage;

.field public static final enum NOT_ENCODED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

.field public static final enum RECOMMENDED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

.field public static final enum UNKNOWN:Lcom/ibm/icu/lang/UScript$ScriptUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1558
    new-instance v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    const-string v1, "NOT_ENCODED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;->NOT_ENCODED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    .line 1563
    new-instance v1, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/lang/UScript$ScriptUsage;->UNKNOWN:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    .line 1568
    new-instance v3, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    const-string v5, "EXCLUDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/lang/UScript$ScriptUsage;->EXCLUDED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    .line 1573
    new-instance v5, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    const-string v7, "LIMITED_USE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/lang/UScript$ScriptUsage;->LIMITED_USE:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    .line 1578
    new-instance v7, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    const-string v9, "ASPIRATIONAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/lang/UScript$ScriptUsage;->ASPIRATIONAL:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    .line 1583
    new-instance v9, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    const-string v11, "RECOMMENDED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/lang/UScript$ScriptUsage;->RECOMMENDED:Lcom/ibm/icu/lang/UScript$ScriptUsage;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/ibm/icu/lang/UScript$ScriptUsage;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 1553
    sput-object v11, Lcom/ibm/icu/lang/UScript$ScriptUsage;->$VALUES:[Lcom/ibm/icu/lang/UScript$ScriptUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1553
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/lang/UScript$ScriptUsage;
    .locals 1

    .line 1553
    const-class v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/lang/UScript$ScriptUsage;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/lang/UScript$ScriptUsage;
    .locals 1

    .line 1553
    sget-object v0, Lcom/ibm/icu/lang/UScript$ScriptUsage;->$VALUES:[Lcom/ibm/icu/lang/UScript$ScriptUsage;

    invoke-virtual {v0}, [Lcom/ibm/icu/lang/UScript$ScriptUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/lang/UScript$ScriptUsage;

    return-object v0
.end method
