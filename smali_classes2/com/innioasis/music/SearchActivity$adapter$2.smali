.class final Lcom/innioasis/music/SearchActivity$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/SearchActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/innioasis/music/SearchActivity$MyAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00060\u0001R\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/innioasis/music/SearchActivity$MyAdapter;",
        "Lcom/innioasis/music/SearchActivity;",
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
.field final synthetic this$0:Lcom/innioasis/music/SearchActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/SearchActivity$adapter$2;->this$0:Lcom/innioasis/music/SearchActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/innioasis/music/SearchActivity$MyAdapter;
    .locals 3

    .line 54
    new-instance v0, Lcom/innioasis/music/SearchActivity$MyAdapter;

    iget-object v1, p0, Lcom/innioasis/music/SearchActivity$adapter$2;->this$0:Lcom/innioasis/music/SearchActivity;

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/innioasis/music/SearchActivity$MyAdapter;-><init>(Lcom/innioasis/music/SearchActivity;Landroid/app/Activity;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity$adapter$2;->invoke()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    return-object v0
.end method
