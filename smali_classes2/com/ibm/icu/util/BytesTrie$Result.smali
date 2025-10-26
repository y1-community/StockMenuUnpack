.class public final enum Lcom/ibm/icu/util/BytesTrie$Result;
.super Ljava/lang/Enum;
.source "BytesTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/BytesTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/BytesTrie$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/BytesTrie$Result;

.field public static final enum FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

.field public static final enum INTERMEDIATE_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

.field public static final enum NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

.field public static final enum NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 186
    new-instance v0, Lcom/ibm/icu/util/BytesTrie$Result;

    const-string v1, "NO_MATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    .line 193
    new-instance v1, Lcom/ibm/icu/util/BytesTrie$Result;

    const-string v3, "NO_VALUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    .line 201
    new-instance v3, Lcom/ibm/icu/util/BytesTrie$Result;

    const-string v5, "FINAL_VALUE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    .line 209
    new-instance v5, Lcom/ibm/icu/util/BytesTrie$Result;

    const-string v7, "INTERMEDIATE_VALUE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ibm/icu/util/BytesTrie$Result;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 178
    sput-object v7, Lcom/ibm/icu/util/BytesTrie$Result;->$VALUES:[Lcom/ibm/icu/util/BytesTrie$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 1

    .line 178
    const-class v0, Lcom/ibm/icu/util/BytesTrie$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 1

    .line 178
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->$VALUES:[Lcom/ibm/icu/util/BytesTrie$Result;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/BytesTrie$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/BytesTrie$Result;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie$Result;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasValue()Z
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie$Result;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matches()Z
    .locals 1

    .line 220
    sget-object v0, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
