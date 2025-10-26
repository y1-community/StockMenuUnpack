.class public final enum Lcom/ibm/icu/util/CodePointTrie$Type;
.super Ljava/lang/Enum;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/CodePointTrie$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/CodePointTrie$Type;

.field public static final enum FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

.field public static final enum SMALL:Lcom/ibm/icu/util/CodePointTrie$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lcom/ibm/icu/util/CodePointTrie$Type;

    const-string v1, "FAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/CodePointTrie$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    .line 55
    new-instance v1, Lcom/ibm/icu/util/CodePointTrie$Type;

    const-string v3, "SMALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/CodePointTrie$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/CodePointTrie$Type;->SMALL:Lcom/ibm/icu/util/CodePointTrie$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/util/CodePointTrie$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 40
    sput-object v3, Lcom/ibm/icu/util/CodePointTrie$Type;->$VALUES:[Lcom/ibm/icu/util/CodePointTrie$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/CodePointTrie$Type;
    .locals 1

    .line 40
    const-class v0, Lcom/ibm/icu/util/CodePointTrie$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/CodePointTrie$Type;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/CodePointTrie$Type;
    .locals 1

    .line 40
    sget-object v0, Lcom/ibm/icu/util/CodePointTrie$Type;->$VALUES:[Lcom/ibm/icu/util/CodePointTrie$Type;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/CodePointTrie$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/CodePointTrie$Type;

    return-object v0
.end method
