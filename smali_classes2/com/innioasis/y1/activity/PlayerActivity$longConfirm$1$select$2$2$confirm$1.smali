.class final Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2;->confirm()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerActivity.kt\ncom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,229:1\n1851#2,2:230\n*S KotlinDebug\n*F\n+ 1 PlayerActivity.kt\ncom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1\n*L\n173#1:230,2\n*E\n"
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/PlayerActivity;


# direct methods
.method public static synthetic $r8$lambda$htmWDbm5x6drdtuUs2fETCCfz7s(Lcom/innioasis/y1/activity/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1;->invoke$lambda-1(Lcom/innioasis/y1/activity/PlayerActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/y1/activity/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-1(Lcom/innioasis/y1/activity/PlayerActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hd"

    .line 181
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/PlayerActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;->lvAudiobooks:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getAdapter$p(Lcom/innioasis/y1/activity/PlayerActivity;)Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/MainAdapter;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 183
    invoke-static {p0}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getAdapter$p(Lcom/innioasis/y1/activity/PlayerActivity;)Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->notifyDataSetChanged()V

    .line 184
    invoke-static {p0}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getAdapter$p(Lcom/innioasis/y1/activity/PlayerActivity;)Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PlayerActivity;->showNone()V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 13

    .line 161
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "playerDelete"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    iget-object v2, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-static {v2}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getAdapter$p(Lcom/innioasis/y1/activity/PlayerActivity;)Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/innioasis/music/adapter/MainAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getAdapter$p(Lcom/innioasis/y1/activity/PlayerActivity;)Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 163
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 164
    iget-object v5, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-static {v5}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getAdapter$p(Lcom/innioasis/y1/activity/PlayerActivity;)Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v2}, Lcom/innioasis/music/adapter/MainAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 165
    iget-object v2, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-static {v2}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getTitle$p(Lcom/innioasis/y1/activity/PlayerActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "singer"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByArtistSync$default(Lcom/innioasis/y1/database/Y1Repository;Ljava/lang/String;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 168
    :cond_0
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v2

    .line 169
    new-instance v12, Lcom/innioasis/music/data/Album;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    const-string v7, ""

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/innioasis/music/data/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v5, 0x0

    move-object v7, v2

    move-object v8, v12

    move-object v12, v5

    .line 168
    invoke-static/range {v7 .. v12}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByAlbumSync$default(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/music/data/Album;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    :goto_1
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v2, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/database/Y1Repository;->startDeleteSongs()V

    .line 173
    check-cast v4, Ljava/lang/Iterable;

    .line 230
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/innioasis/y1/database/Song;

    .line 174
    sget-object v5, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v5}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/innioasis/y1/database/Y1Repository;->deleteSong(Lcom/innioasis/y1/database/Song;)V

    goto :goto_2

    .line 176
    :cond_1
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/database/Y1Repository;->endDeleteSongs()V

    goto/16 :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getAdapter$p(Lcom/innioasis/y1/activity/PlayerActivity;)Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->removeItems()V

    .line 179
    iget-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getAdapter$p(Lcom/innioasis/y1/activity/PlayerActivity;)Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    iget-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    new-instance v1, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$2$2$confirm$1$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/activity/PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/PlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
