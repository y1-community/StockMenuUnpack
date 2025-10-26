.class public final enum Lcom/ibm/icu/text/Normalizer2$Mode;
.super Ljava/lang/Enum;
.source "Normalizer2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Normalizer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/Normalizer2$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/Normalizer2$Mode;

.field public static final enum COMPOSE:Lcom/ibm/icu/text/Normalizer2$Mode;

.field public static final enum COMPOSE_CONTIGUOUS:Lcom/ibm/icu/text/Normalizer2$Mode;

.field public static final enum DECOMPOSE:Lcom/ibm/icu/text/Normalizer2$Mode;

.field public static final enum FCD:Lcom/ibm/icu/text/Normalizer2$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 80
    new-instance v0, Lcom/ibm/icu/text/Normalizer2$Mode;

    const-string v1, "COMPOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer2$Mode;->COMPOSE:Lcom/ibm/icu/text/Normalizer2$Mode;

    .line 89
    new-instance v1, Lcom/ibm/icu/text/Normalizer2$Mode;

    const-string v3, "DECOMPOSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/Normalizer2$Mode;->DECOMPOSE:Lcom/ibm/icu/text/Normalizer2$Mode;

    .line 102
    new-instance v3, Lcom/ibm/icu/text/Normalizer2$Mode;

    const-string v5, "FCD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/Normalizer2$Mode;->FCD:Lcom/ibm/icu/text/Normalizer2$Mode;

    .line 112
    new-instance v5, Lcom/ibm/icu/text/Normalizer2$Mode;

    const-string v7, "COMPOSE_CONTIGUOUS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/text/Normalizer2$Mode;->COMPOSE_CONTIGUOUS:Lcom/ibm/icu/text/Normalizer2$Mode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ibm/icu/text/Normalizer2$Mode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 71
    sput-object v7, Lcom/ibm/icu/text/Normalizer2$Mode;->$VALUES:[Lcom/ibm/icu/text/Normalizer2$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/Normalizer2$Mode;
    .locals 1

    .line 71
    const-class v0, Lcom/ibm/icu/text/Normalizer2$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/Normalizer2$Mode;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/Normalizer2$Mode;
    .locals 1

    .line 71
    sget-object v0, Lcom/ibm/icu/text/Normalizer2$Mode;->$VALUES:[Lcom/ibm/icu/text/Normalizer2$Mode;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/Normalizer2$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/Normalizer2$Mode;

    return-object v0
.end method
