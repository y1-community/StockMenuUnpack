.class public final Lcom/innioasis/fm/FMMainActivity$startSearch$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "FMMainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/FMMainActivity;->startSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/innioasis/fm/FMMainActivity$startSearch$1",
        "Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;",
        "cancel",
        "",
        "confirm",
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
.field final synthetic this$0:Lcom/innioasis/fm/FMMainActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/fm/FMMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/fm/FMMainActivity$startSearch$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    .line 598
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$startSearch$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v1

    invoke-static {v0, v1}, Lcom/innioasis/fm/FMMainActivity;->access$setPlayFrequency(Lcom/innioasis/fm/FMMainActivity;F)V

    .line 607
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$startSearch$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-static {v0}, Lcom/innioasis/fm/FMMainActivity;->access$getFmRadioService$p(Lcom/innioasis/fm/FMMainActivity;)Lcom/innioasis/fm/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getLastTimeFrequency()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FmRadioService;->powerUpAsync(F)V

    :cond_0
    return-void
.end method

.method public confirm()V
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$startSearch$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {v0}, Lcom/innioasis/fm/FMMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;

    iget-object v0, v0, Lcom/mediatek/fm/databinding/ActivityFmmainBinding;->tuneFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$startSearch$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/innioasis/fm/FMMainActivity;->scrollRuler$default(Lcom/innioasis/fm/FMMainActivity;FILjava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lcom/innioasis/fm/FMMainActivity$startSearch$1;->this$0:Lcom/innioasis/fm/FMMainActivity;

    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getMinFrequency()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/FMMainActivity;->allSearch(F)V

    return-void
.end method
