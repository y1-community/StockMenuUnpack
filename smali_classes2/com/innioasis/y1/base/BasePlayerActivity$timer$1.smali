.class public final Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;
.super Landroid/os/CountDownTimer;
.source "BasePlayerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/base/BasePlayerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/innioasis/y1/base/BasePlayerActivity$timer$1",
        "Landroid/os/CountDownTimer;",
        "onFinish",
        "",
        "onTick",
        "millisUntilFinished",
        "",
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


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/base/BasePlayerActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 4

    iput-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    const-wide/16 v0, 0xbb8

    const-wide/16 v2, 0x3e8

    .line 108
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 111
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->llVolume:Landroid/widget/LinearLayout;

    const-string v2, "vb.llVolume"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 112
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->llPrograss:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "vb.llPrograss"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    .line 113
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object v1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$timer$1;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->abPoint:Lcom/innioasis/y1/utils/ProgressMaskView;

    const-string v2, "vb.abPoint"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
