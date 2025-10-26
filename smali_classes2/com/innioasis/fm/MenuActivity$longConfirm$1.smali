.class public final Lcom/innioasis/fm/MenuActivity$longConfirm$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "MenuActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/fm/MenuActivity;->longConfirm()V
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
        "com/innioasis/fm/MenuActivity$longConfirm$1",
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
.field final synthetic $str:F

.field final synthetic this$0:Lcom/innioasis/fm/MenuActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/fm/MenuActivity;F)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/fm/MenuActivity$longConfirm$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    iput p2, p0, Lcom/innioasis/fm/MenuActivity$longConfirm$1;->$str:F

    .line 328
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/innioasis/fm/MenuActivity$longConfirm$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-static {v0}, Lcom/innioasis/fm/MenuActivity;->access$getState$p(Lcom/innioasis/fm/MenuActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 331
    sget-object v0, Lcom/innioasis/fm/util/FmOther;->INSTANCE:Lcom/innioasis/fm/util/FmOther;

    iget v1, p0, Lcom/innioasis/fm/MenuActivity$longConfirm$1;->$str:F

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/util/FmOther;->removeSearchFrequency(F)Ljava/util/List;

    goto :goto_0

    .line 333
    :cond_0
    sget-object v0, Lcom/innioasis/fm/util/FmOther;->INSTANCE:Lcom/innioasis/fm/util/FmOther;

    iget v1, p0, Lcom/innioasis/fm/MenuActivity$longConfirm$1;->$str:F

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/util/FmOther;->removeCurrentFrequency(F)Ljava/util/List;

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/innioasis/fm/MenuActivity$longConfirm$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-static {v0}, Lcom/innioasis/fm/MenuActivity;->access$getFrequencyAdapter(Lcom/innioasis/fm/MenuActivity;)Lcom/innioasis/fm/MenuActivity$frequencyAdapter$2$1;

    move-result-object v0

    sget-object v1, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v1}, Lcom/innioasis/fm/util/FMSharedPreferences;->getCurrentRegionalFrequency()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/MenuActivity$frequencyAdapter$2$1;->setList(Ljava/util/Collection;)V

    .line 337
    iget-object v0, p0, Lcom/innioasis/fm/MenuActivity$longConfirm$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-static {v0}, Lcom/innioasis/fm/MenuActivity;->access$getFrequencyAdapter(Lcom/innioasis/fm/MenuActivity;)Lcom/innioasis/fm/MenuActivity$frequencyAdapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/fm/MenuActivity$frequencyAdapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/innioasis/fm/MenuActivity$longConfirm$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {v0}, Lcom/innioasis/fm/MenuActivity;->showNone()V

    goto :goto_1

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/innioasis/fm/MenuActivity$longConfirm$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {v0}, Lcom/innioasis/fm/MenuActivity;->getMark()I

    move-result v0

    iget-object v1, p0, Lcom/innioasis/fm/MenuActivity$longConfirm$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-static {v1}, Lcom/innioasis/fm/MenuActivity;->access$getFrequencyAdapter(Lcom/innioasis/fm/MenuActivity;)Lcom/innioasis/fm/MenuActivity$frequencyAdapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/fm/MenuActivity$frequencyAdapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 341
    iget-object v0, p0, Lcom/innioasis/fm/MenuActivity$longConfirm$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/innioasis/fm/MenuActivity;->setMark(I)V

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/innioasis/fm/MenuActivity$longConfirm$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {v0}, Lcom/innioasis/fm/MenuActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mediatek/fm/databinding/ActivityMenuBinding;

    iget-object v0, v0, Lcom/mediatek/fm/databinding/ActivityMenuBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/innioasis/fm/MenuActivity$longConfirm$1;->this$0:Lcom/innioasis/fm/MenuActivity;

    invoke-virtual {v1}, Lcom/innioasis/fm/MenuActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_1
    return-void
.end method
