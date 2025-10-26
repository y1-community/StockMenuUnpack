.class public final Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;
.super Ljava/lang/Object;
.source "PlayListActivity.kt"

# interfaces
.implements Lcom/innioasis/music/util/SubMenuDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/PlayListActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/music/PlayListActivity$subMenuSelectCallback$1",
        "Lcom/innioasis/music/util/SubMenuDialog$Callback;",
        "select",
        "",
        "selectIndex",
        "",
        "item",
        "Lcom/innioasis/music/adapter/SubmenuAdapter$Item;",
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
.field final synthetic this$0:Lcom/innioasis/music/PlayListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/PlayListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/PlayListActivity;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
    .locals 2

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->getString()Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/PlayListActivity;

    const v0, 0x7f1101a2

    invoke-virtual {p2, v0}, Lcom/innioasis/music/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 74
    iget-object p1, p0, Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/PlayListActivity;

    invoke-static {p1}, Lcom/innioasis/music/PlayListActivity;->access$sortBySongName(Lcom/innioasis/music/PlayListActivity;)V

    return v0

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/PlayListActivity;

    const v1, 0x7f1101a1

    invoke-virtual {p2, v1}, Lcom/innioasis/music/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 79
    iget-object p1, p0, Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/PlayListActivity;

    invoke-static {p1}, Lcom/innioasis/music/PlayListActivity;->access$sortByFileName(Lcom/innioasis/music/PlayListActivity;)V

    return v0

    .line 83
    :cond_1
    iget-object p2, p0, Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/PlayListActivity;

    const v1, 0x7f11012a

    invoke-virtual {p2, v1}, Lcom/innioasis/music/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/PlayListActivity;

    invoke-virtual {p1, v0}, Lcom/innioasis/music/PlayListActivity;->startSelect(Z)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object p2, p0, Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/PlayListActivity;

    const v0, 0x7f110028

    invoke-virtual {p2, v0}, Lcom/innioasis/music/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/PlayListActivity;

    invoke-virtual {p1, v1}, Lcom/innioasis/music/PlayListActivity;->startSelect(Z)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object p2, p0, Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/PlayListActivity;

    const v0, 0x7f110168

    invoke-virtual {p2, v0}, Lcom/innioasis/music/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;->this$0:Lcom/innioasis/music/PlayListActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/PlayListActivity;->delete()V

    :cond_4
    :goto_0
    return v1
.end method
