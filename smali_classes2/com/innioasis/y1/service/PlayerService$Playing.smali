.class public final enum Lcom/innioasis/y1/service/PlayerService$Playing;
.super Ljava/lang/Enum;
.source "PlayerService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Playing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/innioasis/y1/service/PlayerService$Playing;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/innioasis/y1/service/PlayerService$Playing;",
        "",
        "(Ljava/lang/String;I)V",
        "FM",
        "Music",
        "Audiobook",
        "None",
        "app_frGeneralRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/innioasis/y1/service/PlayerService$Playing;

.field public static final enum Audiobook:Lcom/innioasis/y1/service/PlayerService$Playing;

.field public static final enum FM:Lcom/innioasis/y1/service/PlayerService$Playing;

.field public static final enum Music:Lcom/innioasis/y1/service/PlayerService$Playing;

.field public static final enum None:Lcom/innioasis/y1/service/PlayerService$Playing;


# direct methods
.method private static final synthetic $values()[Lcom/innioasis/y1/service/PlayerService$Playing;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/innioasis/y1/service/PlayerService$Playing;

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->Music:Lcom/innioasis/y1/service/PlayerService$Playing;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->Audiobook:Lcom/innioasis/y1/service/PlayerService$Playing;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Lcom/innioasis/y1/service/PlayerService$Playing;

    const-string v1, "FM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/service/PlayerService$Playing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    new-instance v0, Lcom/innioasis/y1/service/PlayerService$Playing;

    const-string v1, "Music"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/service/PlayerService$Playing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/service/PlayerService$Playing;->Music:Lcom/innioasis/y1/service/PlayerService$Playing;

    new-instance v0, Lcom/innioasis/y1/service/PlayerService$Playing;

    const-string v1, "Audiobook"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/service/PlayerService$Playing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/service/PlayerService$Playing;->Audiobook:Lcom/innioasis/y1/service/PlayerService$Playing;

    new-instance v0, Lcom/innioasis/y1/service/PlayerService$Playing;

    const-string v1, "None"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/innioasis/y1/service/PlayerService$Playing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-static {}, Lcom/innioasis/y1/service/PlayerService$Playing;->$values()[Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v0

    sput-object v0, Lcom/innioasis/y1/service/PlayerService$Playing;->$VALUES:[Lcom/innioasis/y1/service/PlayerService$Playing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/innioasis/y1/service/PlayerService$Playing;
    .locals 1

    const-class v0, Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/service/PlayerService$Playing;

    return-object p0
.end method

.method public static values()[Lcom/innioasis/y1/service/PlayerService$Playing;
    .locals 1

    sget-object v0, Lcom/innioasis/y1/service/PlayerService$Playing;->$VALUES:[Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/innioasis/y1/service/PlayerService$Playing;

    return-object v0
.end method
