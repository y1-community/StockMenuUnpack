.class public final Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;
.super Ljava/lang/Object;
.source "BookMarkDialog.kt"

# interfaces
.implements Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->showMenu()V
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
        "com/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1",
        "Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;",
        "select",
        "",
        "selectIndex",
        "",
        "item",
        "Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;",
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
.field final synthetic this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->access$getList$p(Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return p2

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->access$getIndex$p(Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;)I

    move-result p1

    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->access$getList$p(Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    return p2

    .line 189
    :cond_2
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->access$getCallback$p(Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;)Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->access$getList$p(Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    invoke-static {v1}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->access$getIndex$p(Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    invoke-interface {p1, v0, p2}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$Callback;->deleteBookMark(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;Z)V

    goto :goto_0

    .line 171
    :cond_3
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->access$getList$p(Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return p2

    .line 174
    :cond_4
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->access$getIndex$p(Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;)I

    move-result p1

    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->access$getList$p(Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_5

    return p2

    .line 177
    :cond_5
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    invoke-static {p1}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->access$getCallback$p(Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;)Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->access$getList$p(Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;

    invoke-static {v1}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;->access$getIndex$p(Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/innioasis/y1_eBook/ui/dialog/BookMarkDialog$Callback;->deleteBookMark(Lcom/innioasis/y1_eBook/data/database/entities/EBookmark;Z)V

    :goto_0
    return p2
.end method
