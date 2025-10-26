.class final Lcom/innioasis/y1/service/PlayerService$random$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/service/PlayerService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Random;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/Random;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/innioasis/y1/service/PlayerService$random$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1/service/PlayerService$random$2;

    invoke-direct {v0}, Lcom/innioasis/y1/service/PlayerService$random$2;-><init>()V

    sput-object v0, Lcom/innioasis/y1/service/PlayerService$random$2;->INSTANCE:Lcom/innioasis/y1/service/PlayerService$random$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 946
    invoke-virtual {p0}, Lcom/innioasis/y1/service/PlayerService$random$2;->invoke()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Random;
    .locals 3

    .line 947
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 948
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 949
    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    return-object v0
.end method
