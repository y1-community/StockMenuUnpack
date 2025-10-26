.class Lcom/innioasis/y1/database/BookmarkDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "BookmarkDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/database/BookmarkDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/innioasis/y1/database/Bookmark;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/database/BookmarkDao_Impl;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/database/BookmarkDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/innioasis/y1/database/BookmarkDao_Impl$2;->this$0:Lcom/innioasis/y1/database/BookmarkDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1/database/Bookmark;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 62
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Bookmark;->getId()Ljava/util/UUID;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 63
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p2}, Lcom/innioasis/y1/database/Bookmark;->getId()Ljava/util/UUID;

    move-result-object p2

    invoke-static {p2}, Landroidx/room/util/UUIDUtil;->convertUUIDToByte(Ljava/util/UUID;)[B

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 54
    check-cast p2, Lcom/innioasis/y1/database/Bookmark;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/database/BookmarkDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/innioasis/y1/database/Bookmark;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `Bookmark` WHERE `id` = ?"

    return-object v0
.end method
