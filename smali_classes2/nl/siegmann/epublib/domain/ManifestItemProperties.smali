.class public final enum Lnl/siegmann/epublib/domain/ManifestItemProperties;
.super Ljava/lang/Enum;
.source "ManifestItemProperties.java"

# interfaces
.implements Lnl/siegmann/epublib/domain/ManifestProperties;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnl/siegmann/epublib/domain/ManifestItemProperties;",
        ">;",
        "Lnl/siegmann/epublib/domain/ManifestProperties;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnl/siegmann/epublib/domain/ManifestItemProperties;

.field public static final enum COVER_IMAGE:Lnl/siegmann/epublib/domain/ManifestItemProperties;

.field public static final enum MATHML:Lnl/siegmann/epublib/domain/ManifestItemProperties;

.field public static final enum NAV:Lnl/siegmann/epublib/domain/ManifestItemProperties;

.field public static final enum REMOTE_RESOURCES:Lnl/siegmann/epublib/domain/ManifestItemProperties;

.field public static final enum SCRIPTED:Lnl/siegmann/epublib/domain/ManifestItemProperties;

.field public static final enum SVG:Lnl/siegmann/epublib/domain/ManifestItemProperties;

.field public static final enum SWITCH:Lnl/siegmann/epublib/domain/ManifestItemProperties;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lnl/siegmann/epublib/domain/ManifestItemProperties;

    const-string v1, "COVER_IMAGE"

    const/4 v2, 0x0

    const-string v3, "cover-image"

    invoke-direct {v0, v1, v2, v3}, Lnl/siegmann/epublib/domain/ManifestItemProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnl/siegmann/epublib/domain/ManifestItemProperties;->COVER_IMAGE:Lnl/siegmann/epublib/domain/ManifestItemProperties;

    .line 5
    new-instance v1, Lnl/siegmann/epublib/domain/ManifestItemProperties;

    const-string v3, "MATHML"

    const/4 v4, 0x1

    const-string v5, "mathml"

    invoke-direct {v1, v3, v4, v5}, Lnl/siegmann/epublib/domain/ManifestItemProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnl/siegmann/epublib/domain/ManifestItemProperties;->MATHML:Lnl/siegmann/epublib/domain/ManifestItemProperties;

    .line 6
    new-instance v3, Lnl/siegmann/epublib/domain/ManifestItemProperties;

    const-string v5, "NAV"

    const/4 v6, 0x2

    const-string v7, "nav"

    invoke-direct {v3, v5, v6, v7}, Lnl/siegmann/epublib/domain/ManifestItemProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lnl/siegmann/epublib/domain/ManifestItemProperties;->NAV:Lnl/siegmann/epublib/domain/ManifestItemProperties;

    .line 7
    new-instance v5, Lnl/siegmann/epublib/domain/ManifestItemProperties;

    const-string v7, "REMOTE_RESOURCES"

    const/4 v8, 0x3

    const-string v9, "remote-resources"

    invoke-direct {v5, v7, v8, v9}, Lnl/siegmann/epublib/domain/ManifestItemProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lnl/siegmann/epublib/domain/ManifestItemProperties;->REMOTE_RESOURCES:Lnl/siegmann/epublib/domain/ManifestItemProperties;

    .line 8
    new-instance v7, Lnl/siegmann/epublib/domain/ManifestItemProperties;

    const-string v9, "SCRIPTED"

    const/4 v10, 0x4

    const-string v11, "scripted"

    invoke-direct {v7, v9, v10, v11}, Lnl/siegmann/epublib/domain/ManifestItemProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lnl/siegmann/epublib/domain/ManifestItemProperties;->SCRIPTED:Lnl/siegmann/epublib/domain/ManifestItemProperties;

    .line 9
    new-instance v9, Lnl/siegmann/epublib/domain/ManifestItemProperties;

    const-string v11, "SVG"

    const/4 v12, 0x5

    const-string v13, "svg"

    invoke-direct {v9, v11, v12, v13}, Lnl/siegmann/epublib/domain/ManifestItemProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lnl/siegmann/epublib/domain/ManifestItemProperties;->SVG:Lnl/siegmann/epublib/domain/ManifestItemProperties;

    .line 10
    new-instance v11, Lnl/siegmann/epublib/domain/ManifestItemProperties;

    const-string v13, "SWITCH"

    const/4 v14, 0x6

    const-string v15, "switch"

    invoke-direct {v11, v13, v14, v15}, Lnl/siegmann/epublib/domain/ManifestItemProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lnl/siegmann/epublib/domain/ManifestItemProperties;->SWITCH:Lnl/siegmann/epublib/domain/ManifestItemProperties;

    const/4 v13, 0x7

    new-array v13, v13, [Lnl/siegmann/epublib/domain/ManifestItemProperties;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 3
    sput-object v13, Lnl/siegmann/epublib/domain/ManifestItemProperties;->$VALUES:[Lnl/siegmann/epublib/domain/ManifestItemProperties;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lnl/siegmann/epublib/domain/ManifestItemProperties;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnl/siegmann/epublib/domain/ManifestItemProperties;
    .locals 1

    .line 3
    const-class v0, Lnl/siegmann/epublib/domain/ManifestItemProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnl/siegmann/epublib/domain/ManifestItemProperties;

    return-object p0
.end method

.method public static values()[Lnl/siegmann/epublib/domain/ManifestItemProperties;
    .locals 1

    .line 3
    sget-object v0, Lnl/siegmann/epublib/domain/ManifestItemProperties;->$VALUES:[Lnl/siegmann/epublib/domain/ManifestItemProperties;

    invoke-virtual {v0}, [Lnl/siegmann/epublib/domain/ManifestItemProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnl/siegmann/epublib/domain/ManifestItemProperties;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lnl/siegmann/epublib/domain/ManifestItemProperties;->name:Ljava/lang/String;

    return-object v0
.end method
