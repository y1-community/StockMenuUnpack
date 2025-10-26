.class final Lcom/innioasis/y1/utils/EqUtils$equalizer2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EqUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/utils/EqUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/media/audiofx/Equalizer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/media/audiofx/Equalizer;",
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
.field public static final INSTANCE:Lcom/innioasis/y1/utils/EqUtils$equalizer2$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1/utils/EqUtils$equalizer2$2;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/EqUtils$equalizer2$2;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/EqUtils$equalizer2$2;->INSTANCE:Lcom/innioasis/y1/utils/EqUtils$equalizer2$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/media/audiofx/Equalizer;
    .locals 3

    .line 13
    new-instance v0, Landroid/media/audiofx/Equalizer;

    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService;->getPlayer2()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/EqUtils$equalizer2$2;->invoke()Landroid/media/audiofx/Equalizer;

    move-result-object v0

    return-object v0
.end method
