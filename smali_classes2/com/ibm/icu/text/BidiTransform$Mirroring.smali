.class public final enum Lcom/ibm/icu/text/BidiTransform$Mirroring;
.super Ljava/lang/Enum;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/BidiTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mirroring"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/BidiTransform$Mirroring;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/BidiTransform$Mirroring;

.field public static final enum OFF:Lcom/ibm/icu/text/BidiTransform$Mirroring;

.field public static final enum ON:Lcom/ibm/icu/text/BidiTransform$Mirroring;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 89
    new-instance v0, Lcom/ibm/icu/text/BidiTransform$Mirroring;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/BidiTransform$Mirroring;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/BidiTransform$Mirroring;->OFF:Lcom/ibm/icu/text/BidiTransform$Mirroring;

    .line 99
    new-instance v1, Lcom/ibm/icu/text/BidiTransform$Mirroring;

    const-string v3, "ON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/BidiTransform$Mirroring;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/BidiTransform$Mirroring;->ON:Lcom/ibm/icu/text/BidiTransform$Mirroring;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/text/BidiTransform$Mirroring;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 82
    sput-object v3, Lcom/ibm/icu/text/BidiTransform$Mirroring;->$VALUES:[Lcom/ibm/icu/text/BidiTransform$Mirroring;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/BidiTransform$Mirroring;
    .locals 1

    .line 82
    const-class v0, Lcom/ibm/icu/text/BidiTransform$Mirroring;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/BidiTransform$Mirroring;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/BidiTransform$Mirroring;
    .locals 1

    .line 82
    sget-object v0, Lcom/ibm/icu/text/BidiTransform$Mirroring;->$VALUES:[Lcom/ibm/icu/text/BidiTransform$Mirroring;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/BidiTransform$Mirroring;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/BidiTransform$Mirroring;

    return-object v0
.end method
