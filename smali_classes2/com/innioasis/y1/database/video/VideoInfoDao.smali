.class public interface abstract Lcom/innioasis/y1/database/video/VideoInfoDao;
.super Ljava/lang/Object;
.source "VideoInfoDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u000e\u0008g\u0018\u00002\u00020\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\'J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\nH\'J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0011H\'J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0014H\'J\u000e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0014H\'J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0014H\'J\u000e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0014H\'J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0014H\'J\u001b\u0010\u0019\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\nH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\'J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\'J\u0019\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0016\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00142\u0006\u0010\u001f\u001a\u00020\u0011H\'J\u0019\u0010 \u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\""
    }
    d2 = {
        "Lcom/innioasis/y1/database/video/VideoInfoDao;",
        "",
        "delete",
        "",
        "video",
        "Lcom/innioasis/y1/database/video/VideoInfo;",
        "(Lcom/innioasis/y1/database/video/VideoInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteByAddTime",
        "",
        "addTime",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteByAddTimeSync",
        "deleteById",
        "videoId",
        "deleteByPath",
        "filePath",
        "",
        "deleteSync",
        "getAllVideos",
        "",
        "getAllVideosOrderByAddedTime",
        "getAllVideosOrderByAddedTimeDesc",
        "getAllVideosOrderByName",
        "getAllVideosOrderByNameDesc",
        "getVideoById",
        "getVideoByPath",
        "getVideoByPathSync",
        "insert",
        "insertSync",
        "searchByKeyword",
        "keyword",
        "update",
        "updateSync",
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
.method public abstract delete(Lcom/innioasis/y1/database/video/VideoInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract deleteByAddTime(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract deleteByAddTimeSync(J)I
.end method

.method public abstract deleteById(J)I
.end method

.method public abstract deleteByPath(Ljava/lang/String;)I
.end method

.method public abstract deleteSync(Lcom/innioasis/y1/database/video/VideoInfo;)V
.end method

.method public abstract getAllVideos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllVideosOrderByAddedTime()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllVideosOrderByAddedTimeDesc()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllVideosOrderByName()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllVideosOrderByNameDesc()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getVideoByPath(Ljava/lang/String;)Lcom/innioasis/y1/database/video/VideoInfo;
.end method

.method public abstract getVideoByPathSync(Ljava/lang/String;)Lcom/innioasis/y1/database/video/VideoInfo;
.end method

.method public abstract insert(Lcom/innioasis/y1/database/video/VideoInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract insertSync(Lcom/innioasis/y1/database/video/VideoInfo;)J
.end method

.method public abstract searchByKeyword(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcom/innioasis/y1/database/video/VideoInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/database/video/VideoInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract updateSync(Lcom/innioasis/y1/database/video/VideoInfo;)V
.end method
