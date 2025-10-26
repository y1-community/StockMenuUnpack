.class public final enum Lcom/ibm/icu/util/CodePointTrie$ValueWidth;
.super Ljava/lang/Enum;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/CodePointTrie$ValueWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

.field public static final enum BITS_16:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

.field public static final enum BITS_32:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

.field public static final enum BITS_8:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 73
    new-instance v0, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    const-string v1, "BITS_16"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_16:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    .line 79
    new-instance v1, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    const-string v3, "BITS_32"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_32:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    .line 86
    new-instance v3, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    const-string v5, "BITS_8"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_8:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 66
    sput-object v5, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->$VALUES:[Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/CodePointTrie$ValueWidth;
    .locals 1

    .line 66
    const-class v0, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/CodePointTrie$ValueWidth;
    .locals 1

    .line 66
    sget-object v0, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->$VALUES:[Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    return-object v0
.end method
