.class final Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2$confirm$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AllAudiobooksActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2;->confirm()V
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;


# direct methods
.method public static synthetic $r8$lambda$Un6yEHoPbB-wEh0slmHbljUQK_s(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2$confirm$1;->invoke$lambda-0(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hd"

    .line 161
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;->lvAudiobooks:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getAudioAdapter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Lcom/innioasis/y1/adapter/AudiobookAdapter;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 163
    invoke-static {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getAudioAdapter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Lcom/innioasis/y1/adapter/AudiobookAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->notifyDataSetChanged()V

    .line 164
    invoke-static {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getAudioAdapter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Lcom/innioasis/y1/adapter/AudiobookAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_3

    .line 165
    invoke-static {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getKind$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "singer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getKind$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "album"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->showNone()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 166
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->setResult(I)V

    .line 167
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2$confirm$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 153
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->startDeleteSongs()V

    .line 154
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getAudioAdapter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Lcom/innioasis/y1/adapter/AudiobookAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 155
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v2

    iget-object v3, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-static {v3}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getAudioAdapter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Lcom/innioasis/y1/adapter/AudiobookAdapter;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/database/Song;

    invoke-virtual {v2, v1}, Lcom/innioasis/y1/database/Y1Repository;->deleteSong(Lcom/innioasis/y1/database/Song;)V

    goto :goto_0

    .line 157
    :cond_0
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->endDeleteSongs()V

    .line 158
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getAudioAdapter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Lcom/innioasis/y1/adapter/AudiobookAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->removeItems()V

    .line 159
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->access$getAudioAdapter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Lcom/innioasis/y1/adapter/AudiobookAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    new-instance v1, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2$confirm$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1$select$2$2$confirm$1$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
