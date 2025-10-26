.class public final enum Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;
.super Ljava/lang/Enum;
.source "ValidIdentifiers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ValidIdentifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Datasubtype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum deprecated:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum macroregion:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum private_use:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum regular:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum reserved:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum special:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum unknown:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 44
    new-instance v0, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v1, "deprecated"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;->deprecated:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    .line 45
    new-instance v1, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v3, "private_use"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;->private_use:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    .line 46
    new-instance v3, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v5, "regular"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;->regular:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    .line 47
    new-instance v5, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v7, "special"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;->special:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    .line 48
    new-instance v7, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v9, "unknown"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;->unknown:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    .line 49
    new-instance v9, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v11, "macroregion"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;->macroregion:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    .line 50
    new-instance v11, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    const-string v13, "reserved"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;->reserved:Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 43
    sput-object v13, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;->$VALUES:[Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;
    .locals 1

    .line 43
    const-class v0, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;
    .locals 1

    .line 43
    sget-object v0, Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;->$VALUES:[Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/ValidIdentifiers$Datasubtype;

    return-object v0
.end method
