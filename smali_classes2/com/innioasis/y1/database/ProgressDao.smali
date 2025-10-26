.class public interface abstract Lcom/innioasis/y1/database/ProgressDao;
.super Ljava/lang/Object;
.source "ProgressDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\'J!\u0010\t\u001a\u00020\u00032\u0012\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\n\"\u00020\u0005H\'\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/innioasis/y1/database/ProgressDao;",
        "",
        "delete",
        "",
        "progress",
        "Lcom/innioasis/y1/database/Progress;",
        "findProgressBySongId",
        "songId",
        "",
        "insert",
        "",
        "([Lcom/innioasis/y1/database/Progress;)V",
        "update",
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
.method public abstract delete(Lcom/innioasis/y1/database/Progress;)V
.end method

.method public abstract findProgressBySongId(Ljava/lang/String;)Lcom/innioasis/y1/database/Progress;
.end method

.method public varargs abstract insert([Lcom/innioasis/y1/database/Progress;)V
.end method

.method public abstract update(Lcom/innioasis/y1/database/Progress;)V
.end method
