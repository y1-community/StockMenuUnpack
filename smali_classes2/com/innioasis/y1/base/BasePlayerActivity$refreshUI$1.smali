.class final Lcom/innioasis/y1/base/BasePlayerActivity$refreshUI$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BasePlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/base/BasePlayerActivity;->refreshUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/base/BasePlayerActivity;


# direct methods
.method public static synthetic $r8$lambda$42-YiXQyYB76ETiY_OVoQi_KNNQ(Lcom/innioasis/y1/base/BasePlayerActivity;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/innioasis/y1/base/BasePlayerActivity$refreshUI$1;->invoke$lambda-0(Lcom/innioasis/y1/base/BasePlayerActivity;Ljava/lang/String;J)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$refreshUI$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/innioasis/y1/base/BasePlayerActivity;Ljava/lang/String;J)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$durationHHMM"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p0, p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->tvPlayAll:Landroid/widget/TextView;

    const-string v0, "99:59:59"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "00:00"

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    sget-object p0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waste "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity$refreshUI$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 97
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 98
    :cond_0
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/innioasis/y1/service/PlayerService;->getPlayerIsPrepared()Z

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    .line 99
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/innioasis/y1/service/PlayerService;->getDuration()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    .line 100
    :goto_1
    invoke-static {v2, v3}, Lcom/innioasis/y1/utils/TimeUtils;->time(J)Ljava/lang/String;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/innioasis/y1/base/BasePlayerActivity$refreshUI$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    new-instance v4, Lcom/innioasis/y1/base/BasePlayerActivity$refreshUI$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v2, v0, v1}, Lcom/innioasis/y1/base/BasePlayerActivity$refreshUI$1$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/base/BasePlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
