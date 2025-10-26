.class final Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PlaylistsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/PlaylistsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/innioasis/y1/utils/InputMethodDialog;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/innioasis/y1/utils/InputMethodDialog;",
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
.field final synthetic this$0:Lcom/innioasis/music/PlaylistsActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/PlaylistsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/innioasis/y1/utils/InputMethodDialog;
    .locals 7

    .line 75
    new-instance v6, Lcom/innioasis/y1/utils/InputMethodDialog;

    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    new-instance v0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1;

    iget-object v2, p0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2;->this$0:Lcom/innioasis/music/PlaylistsActivity;

    invoke-direct {v0, v2}, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2$1;-><init>(Lcom/innioasis/music/PlaylistsActivity;)V

    move-object v2, v0

    check-cast v2, Lcom/innioasis/y1/utils/InputMethodDialog$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/utils/InputMethodDialog;-><init>(Landroid/app/Activity;Lcom/innioasis/y1/utils/InputMethodDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0xff

    .line 128
    invoke-virtual {v6, v0}, Lcom/innioasis/y1/utils/InputMethodDialog;->setCharMaxCount(I)V

    return-object v6
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2;->invoke()Lcom/innioasis/y1/utils/InputMethodDialog;

    move-result-object v0

    return-object v0
.end method
