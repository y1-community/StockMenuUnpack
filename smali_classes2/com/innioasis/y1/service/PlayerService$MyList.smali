.class public final Lcom/innioasis/y1/service/PlayerService$MyList;
.super Ljava/lang/Object;
.source "PlayerService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyList"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0013\u0008\u0086\u0004\u0018\u00002\u00020\u0001BW\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u000c\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\"\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000fR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011R\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000f\"\u0004\u0008\u0018\u0010\u0014R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/innioasis/y1/service/PlayerService$MyList;",
        "",
        "musicList",
        "",
        "Lcom/innioasis/y1/database/Song;",
        "musicIndex",
        "",
        "audiobookList",
        "audiobookIndex",
        "startTime",
        "",
        "playing",
        "bookmarkIndex",
        "(Lcom/innioasis/y1/service/PlayerService;Ljava/util/List;ILjava/util/List;IJII)V",
        "getAudiobookIndex",
        "()I",
        "getAudiobookList",
        "()Ljava/util/List;",
        "getBookmarkIndex",
        "setBookmarkIndex",
        "(I)V",
        "getMusicIndex",
        "getMusicList",
        "getPlaying",
        "setPlaying",
        "getStartTime",
        "()J",
        "setStartTime",
        "(J)V",
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


# instance fields
.field private final audiobookIndex:I

.field private final audiobookList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end field

.field private bookmarkIndex:I

.field private final musicIndex:I

.field private final musicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end field

.field private playing:I

.field private startTime:J

.field final synthetic this$0:Lcom/innioasis/y1/service/PlayerService;


# direct methods
.method public constructor <init>(Lcom/innioasis/y1/service/PlayerService;Ljava/util/List;ILjava/util/List;IJII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;IJII)V"
        }
    .end annotation

    const-string v0, "musicList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audiobookList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iput-object p1, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->this$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->musicList:Ljava/util/List;

    .line 224
    iput p3, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->musicIndex:I

    .line 225
    iput-object p4, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->audiobookList:Ljava/util/List;

    .line 226
    iput p5, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->audiobookIndex:I

    .line 227
    iput-wide p6, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->startTime:J

    .line 228
    iput p8, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->playing:I

    .line 229
    iput p9, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->bookmarkIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/innioasis/y1/service/PlayerService;Ljava/util/List;ILjava/util/List;IJIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p10, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v3, p10, 0x4

    if-eqz v3, :cond_2

    .line 225
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p10, 0x8

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, p5

    :goto_3
    and-int/lit8 v4, p10, 0x10

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x0

    goto :goto_4

    :cond_4
    move-wide v4, p6

    :goto_4
    and-int/lit8 v6, p10, 0x20

    const/4 v7, -0x1

    if-eqz v6, :cond_5

    const/4 v6, -0x1

    goto :goto_5

    :cond_5
    move/from16 v6, p8

    :goto_5
    and-int/lit8 v8, p10, 0x40

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v7, p9

    :goto_6
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move p5, v1

    move-object p6, v3

    move/from16 p7, v2

    move-wide/from16 p8, v4

    move/from16 p10, v6

    move/from16 p11, v7

    .line 222
    invoke-direct/range {p2 .. p11}, Lcom/innioasis/y1/service/PlayerService$MyList;-><init>(Lcom/innioasis/y1/service/PlayerService;Ljava/util/List;ILjava/util/List;IJII)V

    return-void
.end method


# virtual methods
.method public final getAudiobookIndex()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->audiobookIndex:I

    return v0
.end method

.method public final getAudiobookList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->audiobookList:Ljava/util/List;

    return-object v0
.end method

.method public final getBookmarkIndex()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->bookmarkIndex:I

    return v0
.end method

.method public final getMusicIndex()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->musicIndex:I

    return v0
.end method

.method public final getMusicList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->musicList:Ljava/util/List;

    return-object v0
.end method

.method public final getPlaying()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->playing:I

    return v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 227
    iget-wide v0, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->startTime:J

    return-wide v0
.end method

.method public final setBookmarkIndex(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->bookmarkIndex:I

    return-void
.end method

.method public final setPlaying(I)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->playing:I

    return-void
.end method

.method public final setStartTime(J)V
    .locals 0

    .line 227
    iput-wide p1, p0, Lcom/innioasis/y1/service/PlayerService$MyList;->startTime:J

    return-void
.end method
