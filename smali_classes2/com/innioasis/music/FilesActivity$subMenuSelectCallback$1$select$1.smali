.class final Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FilesActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;->select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
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
.field final synthetic $selectIndex:I

.field final synthetic this$0:Lcom/innioasis/music/FilesActivity;


# direct methods
.method public static synthetic $r8$lambda$lW5oRWNSDOSD4qRxh-YTvPRZPek(ILcom/innioasis/music/FilesActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1;->invoke$lambda-0(ILcom/innioasis/music/FilesActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/FilesActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1;->this$0:Lcom/innioasis/music/FilesActivity;

    iput p2, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1;->$selectIndex:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(ILcom/innioasis/music/FilesActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 152
    invoke-static {p1}, Lcom/innioasis/music/FilesActivity;->access$getAdapter$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/adapter/FileListAdapter;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, p1

    :cond_0
    check-cast p0, Lcom/innioasis/music/adapter/MyBaseAdapter;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/innioasis/music/adapter/MyBaseAdapter;->allSelect$default(Lcom/innioasis/music/adapter/MyBaseAdapter;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1;->this$0:Lcom/innioasis/music/FilesActivity;

    iget v1, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1;->$selectIndex:I

    new-instance v2, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1$$ExternalSyntheticLambda0;-><init>(ILcom/innioasis/music/FilesActivity;)V

    invoke-virtual {v0, v2}, Lcom/innioasis/music/FilesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {v0}, Lcom/innioasis/music/FilesActivity;->access$isMultiSelect$p(Lcom/innioasis/music/FilesActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {v0}, Lcom/innioasis/music/FilesActivity;->access$getHandler$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/FilesActivity$handler$1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/innioasis/music/FilesActivity$handler$1;->sendEmptyMessage(I)Z

    const-wide/16 v0, 0x1f4

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 159
    iget-object v2, p0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1$select$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {v2}, Lcom/innioasis/music/FilesActivity;->access$getHandler$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/FilesActivity$handler$1;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/innioasis/music/FilesActivity$handler$1;->sendEmptyMessage(I)Z

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method
