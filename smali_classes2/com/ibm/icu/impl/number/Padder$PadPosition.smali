.class public final enum Lcom/ibm/icu/impl/number/Padder$PadPosition;
.super Ljava/lang/Enum;
.source "Padder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/Padder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PadPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/number/Padder$PadPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/number/Padder$PadPosition;

.field public static final enum AFTER_PREFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

.field public static final enum AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

.field public static final enum BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

.field public static final enum BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 11
    new-instance v0, Lcom/ibm/icu/impl/number/Padder$PadPosition;

    const-string v1, "BEFORE_PREFIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/number/Padder$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    new-instance v1, Lcom/ibm/icu/impl/number/Padder$PadPosition;

    const-string v3, "AFTER_PREFIX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/number/Padder$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    new-instance v3, Lcom/ibm/icu/impl/number/Padder$PadPosition;

    const-string v5, "BEFORE_SUFFIX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/number/Padder$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    new-instance v5, Lcom/ibm/icu/impl/number/Padder$PadPosition;

    const-string v7, "AFTER_SUFFIX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/impl/number/Padder$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ibm/icu/impl/number/Padder$PadPosition;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 10
    sput-object v7, Lcom/ibm/icu/impl/number/Padder$PadPosition;->$VALUES:[Lcom/ibm/icu/impl/number/Padder$PadPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOld(I)Lcom/ibm/icu/impl/number/Padder$PadPosition;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 22
    sget-object p0, Lcom/ibm/icu/impl/number/Padder$PadPosition;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    return-object p0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to map "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_1
    sget-object p0, Lcom/ibm/icu/impl/number/Padder$PadPosition;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    return-object p0

    .line 18
    :cond_2
    sget-object p0, Lcom/ibm/icu/impl/number/Padder$PadPosition;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    return-object p0

    .line 16
    :cond_3
    sget-object p0, Lcom/ibm/icu/impl/number/Padder$PadPosition;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Padder$PadPosition;
    .locals 1

    .line 10
    const-class v0, Lcom/ibm/icu/impl/number/Padder$PadPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/number/Padder$PadPosition;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/number/Padder$PadPosition;
    .locals 1

    .line 10
    sget-object v0, Lcom/ibm/icu/impl/number/Padder$PadPosition;->$VALUES:[Lcom/ibm/icu/impl/number/Padder$PadPosition;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/number/Padder$PadPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/number/Padder$PadPosition;

    return-object v0
.end method


# virtual methods
.method public toOld()I
    .locals 3

    .line 29
    sget-object v0, Lcom/ibm/icu/impl/number/Padder$1;->$SwitchMap$com$ibm$icu$impl$number$Padder$PadPosition:[I

    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/Padder$PadPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
