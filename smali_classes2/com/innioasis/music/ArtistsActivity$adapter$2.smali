.class final Lcom/innioasis/music/ArtistsActivity$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ArtistsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/ArtistsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/innioasis/music/adapter/MainAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/innioasis/music/adapter/MainAdapter;",
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
.field final synthetic this$0:Lcom/innioasis/music/ArtistsActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/ArtistsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/ArtistsActivity$adapter$2;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/innioasis/music/adapter/MainAdapter;
    .locals 3

    .line 43
    new-instance v0, Lcom/innioasis/music/adapter/MainAdapter;

    iget-object v1, p0, Lcom/innioasis/music/ArtistsActivity$adapter$2;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/ArtistsActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/innioasis/music/adapter/MainAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/innioasis/music/ArtistsActivity$adapter$2;->invoke()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v0

    return-object v0
.end method
