.class final enum Lcom/ibm/icu/impl/Trie2$ValueWidth;
.super Ljava/lang/Enum;
.source "Trie2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ValueWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/Trie2$ValueWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/Trie2$ValueWidth;

.field public static final enum BITS_16:Lcom/ibm/icu/impl/Trie2$ValueWidth;

.field public static final enum BITS_32:Lcom/ibm/icu/impl/Trie2$ValueWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 620
    new-instance v0, Lcom/ibm/icu/impl/Trie2$ValueWidth;

    const-string v1, "BITS_16"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/Trie2$ValueWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/Trie2$ValueWidth;->BITS_16:Lcom/ibm/icu/impl/Trie2$ValueWidth;

    .line 621
    new-instance v1, Lcom/ibm/icu/impl/Trie2$ValueWidth;

    const-string v3, "BITS_32"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/Trie2$ValueWidth;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/Trie2$ValueWidth;->BITS_32:Lcom/ibm/icu/impl/Trie2$ValueWidth;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/impl/Trie2$ValueWidth;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 619
    sput-object v3, Lcom/ibm/icu/impl/Trie2$ValueWidth;->$VALUES:[Lcom/ibm/icu/impl/Trie2$ValueWidth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 619
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/Trie2$ValueWidth;
    .locals 1

    .line 619
    const-class v0, Lcom/ibm/icu/impl/Trie2$ValueWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/Trie2$ValueWidth;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/Trie2$ValueWidth;
    .locals 1

    .line 619
    sget-object v0, Lcom/ibm/icu/impl/Trie2$ValueWidth;->$VALUES:[Lcom/ibm/icu/impl/Trie2$ValueWidth;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/Trie2$ValueWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/Trie2$ValueWidth;

    return-object v0
.end method
