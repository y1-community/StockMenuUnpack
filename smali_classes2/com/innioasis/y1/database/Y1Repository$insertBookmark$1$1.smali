.class final Lcom/innioasis/y1/database/Y1Repository$insertBookmark$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Y1Repository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/database/Y1Repository;->insertBookmark$lambda-3(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Bookmark;)V
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
.field final synthetic $bookmark:Lcom/innioasis/y1/database/Bookmark;

.field final synthetic this$0:Lcom/innioasis/y1/database/Y1Repository;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Bookmark;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/database/Y1Repository$insertBookmark$1$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    iput-object p2, p0, Lcom/innioasis/y1/database/Y1Repository$insertBookmark$1$1;->$bookmark:Lcom/innioasis/y1/database/Bookmark;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/innioasis/y1/database/Y1Repository$insertBookmark$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/innioasis/y1/database/Y1Repository$insertBookmark$1$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-static {v0}, Lcom/innioasis/y1/database/Y1Repository;->access$getBookmarkDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/BookmarkDao;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/innioasis/y1/database/Bookmark;

    iget-object v2, p0, Lcom/innioasis/y1/database/Y1Repository$insertBookmark$1$1;->$bookmark:Lcom/innioasis/y1/database/Bookmark;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/innioasis/y1/database/BookmarkDao;->insert([Lcom/innioasis/y1/database/Bookmark;)V

    return-void
.end method
