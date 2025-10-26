.class final enum Lcom/ibm/icu/util/StringTrieBuilder$State;
.super Ljava/lang/Enum;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/StringTrieBuilder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/StringTrieBuilder$State;

.field public static final enum ADDING:Lcom/ibm/icu/util/StringTrieBuilder$State;

.field public static final enum BUILDING_FAST:Lcom/ibm/icu/util/StringTrieBuilder$State;

.field public static final enum BUILDING_SMALL:Lcom/ibm/icu/util/StringTrieBuilder$State;

.field public static final enum BUILT:Lcom/ibm/icu/util/StringTrieBuilder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 877
    new-instance v0, Lcom/ibm/icu/util/StringTrieBuilder$State;

    const-string v1, "ADDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/StringTrieBuilder$State;->ADDING:Lcom/ibm/icu/util/StringTrieBuilder$State;

    new-instance v1, Lcom/ibm/icu/util/StringTrieBuilder$State;

    const-string v3, "BUILDING_FAST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Lcom/ibm/icu/util/StringTrieBuilder$State;

    new-instance v3, Lcom/ibm/icu/util/StringTrieBuilder$State;

    const-string v5, "BUILDING_SMALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Lcom/ibm/icu/util/StringTrieBuilder$State;

    new-instance v5, Lcom/ibm/icu/util/StringTrieBuilder$State;

    const-string v7, "BUILT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/util/StringTrieBuilder$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/util/StringTrieBuilder$State;->BUILT:Lcom/ibm/icu/util/StringTrieBuilder$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ibm/icu/util/StringTrieBuilder$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 876
    sput-object v7, Lcom/ibm/icu/util/StringTrieBuilder$State;->$VALUES:[Lcom/ibm/icu/util/StringTrieBuilder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 876
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/StringTrieBuilder$State;
    .locals 1

    .line 876
    const-class v0, Lcom/ibm/icu/util/StringTrieBuilder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/StringTrieBuilder$State;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/StringTrieBuilder$State;
    .locals 1

    .line 876
    sget-object v0, Lcom/ibm/icu/util/StringTrieBuilder$State;->$VALUES:[Lcom/ibm/icu/util/StringTrieBuilder$State;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/StringTrieBuilder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/StringTrieBuilder$State;

    return-object v0
.end method
