.class public final Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1;
.super Ljava/lang/Object;
.source "PlaylistsActivity.kt"

# interfaces
.implements Lcom/innioasis/y1/utils/InputMethodDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2;->invoke()Lcom/innioasis/y1/utils/InputMethodDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0016\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1",
        "Lcom/innioasis/y1/utils/InputMethodDialog$Callback;",
        "onBack",
        "",
        "onInit",
        "valueLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
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
.field final synthetic this$0:Lcom/innioasis/music/PlaylistsActivity;


# direct methods
.method public static synthetic $r8$lambda$Xa07Zi5agdhlLAxZhFz9Wo-d-9E(Lcom/innioasis/music/PlaylistsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1;->onInit$lambda-2(Lcom/innioasis/music/PlaylistsActivity;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/PlaylistsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onInit$lambda-2(Lcom/innioasis/music/PlaylistsActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 124
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/music/PlaylistsActivity;->changeSelectedOptionText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 12

    .line 78
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-static {v0}, Lcom/innioasis/music/PlaylistsActivity;->access$getAdapter(Lcom/innioasis/music/PlaylistsActivity;)Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getSelectItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/database/Playlist;

    if-eqz v0, :cond_4

    .line 79
    iget-object v1, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    .line 80
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Playlist;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/innioasis/music/PlaylistsActivity;->access$removeFirstAndTailBlank(Lcom/innioasis/music/PlaylistsActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/database/Playlist;->setName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Playlist;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 82
    invoke-static {v1}, Lcom/innioasis/music/PlaylistsActivity;->access$getOldName$p(Lcom/innioasis/music/PlaylistsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/innioasis/music/PlaylistsActivity;->changeSelectedOptionText(Ljava/lang/String;)V

    .line 83
    invoke-static {v1, v4}, Lcom/innioasis/music/PlaylistsActivity;->access$setAllowChangePlaylistName$p(Lcom/innioasis/music/PlaylistsActivity;Z)V

    .line 85
    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f11015f

    .line 86
    invoke-virtual {v1, v2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 84
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Playlist;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/innioasis/music/PlaylistsActivity;->access$existDuplicatePlaylistNameCount(Lcom/innioasis/music/PlaylistsActivity;Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x2

    if-lt v2, v5, :cond_2

    .line 91
    invoke-static {v1}, Lcom/innioasis/music/PlaylistsActivity;->access$getOldName$p(Lcom/innioasis/music/PlaylistsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/innioasis/music/PlaylistsActivity;->changeSelectedOptionText(Ljava/lang/String;)V

    .line 92
    invoke-static {v1, v4}, Lcom/innioasis/music/PlaylistsActivity;->access$setAllowChangePlaylistName$p(Lcom/innioasis/music/PlaylistsActivity;Z)V

    .line 94
    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f11015e

    .line 95
    invoke-virtual {v1, v2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 93
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 99
    :cond_2
    invoke-static {v1}, Lcom/innioasis/music/PlaylistsActivity;->access$getOldName$p(Lcom/innioasis/music/PlaylistsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Playlist;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Playlist;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 100
    new-instance v2, Lcom/innioasis/y1/utils/DialogUtil;

    move-object v5, v1

    check-cast v5, Landroid/app/Activity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v3, 0x7f1101af

    .line 101
    invoke-virtual {v1, v3}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "getString(R.string.sure_to_rename)"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v3, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1$onBack$1$1$1;

    invoke-direct {v3, v0, v1}, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1$onBack$1$1$1;-><init>(Lcom/innioasis/y1/database/Playlist;Lcom/innioasis/music/PlaylistsActivity;)V

    move-object v7, v3

    check-cast v7, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    const-string v6, ""

    .line 101
    invoke-static/range {v4 .. v11}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    :cond_4
    :goto_2
    return-void
.end method

.method public onInit(Landroidx/lifecycle/MutableLiveData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "valueLiveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-static {v0, p1}, Lcom/innioasis/music/PlaylistsActivity;->access$setValueLiveData$p(Lcom/innioasis/music/PlaylistsActivity;Landroidx/lifecycle/MutableLiveData;)V

    .line 123
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/music/PlaylistsActivity;)V

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
