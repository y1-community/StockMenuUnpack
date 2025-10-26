.class public final Lcom/innioasis/y1_eBook/ui/main/MainActivity$showMenu$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/ui/main/MainActivity;->showMenu()V
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
        "com/innioasis/y1_eBook/ui/main/MainActivity$showMenu$1",
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
.field final synthetic this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/ui/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;)Z
    .locals 7

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    new-instance v6, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;

    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/ui/main/MainActivity;->access$getAdapter(Lcom/innioasis/y1_eBook/ui/main/MainActivity;)Lcom/innioasis/y1_eBook/ui/main/MainActivity$adapter$2$1;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/ui/main/MainActivity;->getMark()I

    move-result v1

    iget-object v2, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    invoke-static {v2}, Lcom/innioasis/y1_eBook/ui/main/MainActivity;->access$getFixedSum$p(Lcom/innioasis/y1_eBook/ui/main/MainActivity;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/innioasis/y1_eBook/ui/main/MainActivity$adapter$2$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;-><init>(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p1, v6}, Lcom/innioasis/y1_eBook/ui/main/MainActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    goto :goto_0

    .line 330
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    new-instance v6, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;

    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    invoke-static {v0}, Lcom/innioasis/y1_eBook/ui/main/MainActivity;->access$getAdapter(Lcom/innioasis/y1_eBook/ui/main/MainActivity;)Lcom/innioasis/y1_eBook/ui/main/MainActivity$adapter$2$1;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/ui/main/MainActivity;->getMark()I

    move-result v1

    iget-object v2, p0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$showMenu$1;->this$0:Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    invoke-static {v2}, Lcom/innioasis/y1_eBook/ui/main/MainActivity;->access$getFixedSum$p(Lcom/innioasis/y1_eBook/ui/main/MainActivity;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/innioasis/y1_eBook/ui/main/MainActivity$adapter$2$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1_eBook/ui/main/MainIntent$DeleteBook;-><init>(Lcom/innioasis/y1_eBook/data/database/entities/Book;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/innioasis/y1_eBook/base/BaseIntent;

    invoke-virtual {p1, v6}, Lcom/innioasis/y1_eBook/ui/main/MainActivity;->send(Lcom/innioasis/y1_eBook/base/BaseIntent;)V

    :goto_0
    return p2
.end method
