.class public final Lcom/innioasis/y1/database/Y1DatabaseKt$MIGRATION_2_3$1;
.super Landroidx/room/migration/Migration;
.source "Y1Database.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/database/Y1DatabaseKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/innioasis/y1/database/Y1DatabaseKt$MIGRATION_2_3$1",
        "Landroidx/room/migration/Migration;",
        "migrate",
        "",
        "database",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
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


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 48
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\n            CREATE TABLE IF NOT EXISTS `video_info` (\n                `video_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n                `file_name` TEXT NOT NULL,\n                `file_path` TEXT NOT NULL UNIQUE,\n                `created_time` INTEGER NOT NULL,\n                `pinyin_name` TEXT,\n                `added_time` INTEGER NOT NULL\n            )\n        "

    .line 51
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n            CREATE TABLE IF NOT EXISTS `video_playlist` (\n                `playlist_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n                `playlist_name` TEXT NOT NULL,\n                `created_time` INTEGER NOT NULL\n            )\n        "

    .line 63
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "\n            CREATE TABLE IF NOT EXISTS `playlist_video` (\n                `playlist_id` INTEGER NOT NULL,\n                `video_id` INTEGER NOT NULL,\n                `order_index` INTEGER NOT NULL DEFAULT 0,\n                PRIMARY KEY (`playlist_id`, `video_id`),\n                FOREIGN KEY (`playlist_id`) REFERENCES `video_playlist`(`playlist_id`) ON DELETE CASCADE,\n                FOREIGN KEY (`video_id`) REFERENCES `video_info`(`video_id`) ON DELETE CASCADE\n            )\n        "

    .line 72
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_playlist_video_video_id` ON `playlist_video` (`video_id`)"

    .line 84
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
