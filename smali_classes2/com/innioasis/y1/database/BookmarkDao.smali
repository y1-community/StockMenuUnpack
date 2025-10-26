.class public interface abstract Lcom/innioasis/y1/database/BookmarkDao;
.super Ljava/lang/Object;
.source "BookmarkDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\'J!\u0010\u0008\u001a\u00020\u00032\u0012\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\t\"\u00020\u0005H\'\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/innioasis/y1/database/BookmarkDao;",
        "",
        "delete",
        "",
        "bookmark",
        "Lcom/innioasis/y1/database/Bookmark;",
        "getBookmarksSync",
        "",
        "insert",
        "",
        "([Lcom/innioasis/y1/database/Bookmark;)V",
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


# virtual methods
.method public abstract delete(Lcom/innioasis/y1/database/Bookmark;)V
.end method

.method public abstract getBookmarksSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Bookmark;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract insert([Lcom/innioasis/y1/database/Bookmark;)V
.end method
