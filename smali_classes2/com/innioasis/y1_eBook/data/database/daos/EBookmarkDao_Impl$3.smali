.class Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$3;
.super Landroidx/room/SharedSQLiteStatement;
.source "EBookmarkDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;


# direct methods
.method constructor <init>(Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 74
    iput-object p1, p0, Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl$3;->this$0:Lcom/innioasis/y1_eBook/data/database/daos/EBookmarkDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM ebook_mark WHERE id = ?"

    return-object v0
.end method
