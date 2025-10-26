.class public final enum Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;
.super Ljava/lang/Enum;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FavorSubtag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

.field public static final enum LANGUAGE:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

.field public static final enum SCRIPT:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 100
    new-instance v0, Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    const-string v1, "LANGUAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;->LANGUAGE:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    .line 106
    new-instance v1, Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    const-string v3, "SCRIPT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;->SCRIPT:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 93
    sput-object v3, Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;->$VALUES:[Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;
    .locals 1

    .line 93
    const-class v0, Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;
    .locals 1

    .line 93
    sget-object v0, Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;->$VALUES:[Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    return-object v0
.end method
