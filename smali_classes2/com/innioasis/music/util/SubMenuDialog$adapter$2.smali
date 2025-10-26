.class final Lcom/innioasis/music/util/SubMenuDialog$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SubMenuDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/innioasis/music/adapter/SubmenuAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/innioasis/music/adapter/SubmenuAdapter;",
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
.field final synthetic this$0:Lcom/innioasis/music/util/SubMenuDialog;


# direct methods
.method constructor <init>(Lcom/innioasis/music/util/SubMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/util/SubMenuDialog$adapter$2;->this$0:Lcom/innioasis/music/util/SubMenuDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/innioasis/music/adapter/SubmenuAdapter;
    .locals 3

    .line 34
    new-instance v0, Lcom/innioasis/music/adapter/SubmenuAdapter;

    iget-object v1, p0, Lcom/innioasis/music/util/SubMenuDialog$adapter$2;->this$0:Lcom/innioasis/music/util/SubMenuDialog;

    invoke-virtual {v1}, Lcom/innioasis/music/util/SubMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/innioasis/music/util/SubMenuDialog$adapter$2;->this$0:Lcom/innioasis/music/util/SubMenuDialog;

    invoke-virtual {v2}, Lcom/innioasis/music/util/SubMenuDialog;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/innioasis/music/adapter/SubmenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/innioasis/music/util/SubMenuDialog$adapter$2;->invoke()Lcom/innioasis/music/adapter/SubmenuAdapter;

    move-result-object v0

    return-object v0
.end method
