.class public Lcom/innioasis/fm/FMRecorder;
.super Ljava/lang/Object;
.source "FMRecorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;
    }
.end annotation


# static fields
.field public static final ERROR_PLAYER_INTERNAL:I = 0x4

.field public static final ERROR_RECORDER_INTERNAL:I = 0x3

.field public static final ERROR_SDCARD_INSUFFICIENT_SPACE:I = 0x1

.field public static final ERROR_SDCARD_NOT_PRESENT:I = 0x0

.field public static final ERROR_SDCARD_WRITE_FAILED:I = 0x2

.field private static final FM_RECORD_FOLDER:Ljava/lang/String; = "Recording files"

.field public static final LOW_SPACE_THRESHOLD:J = 0x80000L

.field public static final RECORDING_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final RECORDING_FILE_PREFIX:Ljava/lang/String; = "FM"

.field private static final RECORDING_FILE_SOURCE:Ljava/lang/String; = "FM Recordings"

.field private static final RECORDING_FILE_TYPE:Ljava/lang/String; = "audio/mp3"

.field public static final STATE_IDLE:I = 0x5

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_PLAYBACK:I = 0x7

.field public static final STATE_RECORDING:I = 0x6

.field private static final TAG:Ljava/lang/String; = "FmRx/Recorder"


# instance fields
.field private mDeleteUponSDInsertion:Z

.field public mInternalState:I

.field private mIsRecordingFileSaved:Z

.field private mOldFilePath:Ljava/lang/String;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRecordFile:Ljava/io/File;

.field private mRecordStartTime:J

.field private mRecordTime:J

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mStateListener:Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/innioasis/fm/FMRecorder;->mDeleteUponSDInsertion:Z

    const/4 v1, 0x5

    .line 102
    iput v1, p0, Lcom/innioasis/fm/FMRecorder;->mInternalState:I

    const-wide/16 v1, 0x0

    .line 104
    iput-wide v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordTime:J

    .line 106
    iput-wide v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordStartTime:J

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mOldFilePath:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 113
    iput-boolean v0, p0, Lcom/innioasis/fm/FMRecorder;->mIsRecordingFileSaved:Z

    .line 115
    iput-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mStateListener:Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;

    .line 117
    iput-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 119
    iput-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    return-void
.end method

.method private addCurrentRecordingToDb(Landroid/content/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ">> addCurrentRecordingToDb"

    .line 609
    invoke-static {v2, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    iget-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 614
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 615
    iget-object v3, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 616
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 618
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    .line 619
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    .line 620
    invoke-virtual {p0}, Lcom/innioasis/fm/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v8

    .line 621
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Recording files"

    .line 622
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 626
    new-instance v6, Landroid/content/ContentValues;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 627
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "is_music"

    invoke-virtual {v6, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "title"

    .line 628
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v7, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_data"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x3e8

    .line 631
    div-long/2addr v1, v7

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date_added"

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 632
    div-long/2addr v3, v7

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date_modified"

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mime_type"

    const-string v2, "audio/mp3"

    .line 633
    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "artist"

    .line 634
    invoke-virtual {v6, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album"

    const-string v2, "FM Recordings"

    .line 635
    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-wide v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 638
    invoke-direct {p0, p1, v6}, Lcom/innioasis/fm/FMRecorder;->addToMediaDB(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    return-void

    .line 643
    :cond_1
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FMRecorder;->getPlaylistId(Landroid/content/Context;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 646
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FMRecorder;->createPlaylist(Landroid/content/Context;)I

    move-result v3

    .line 649
    :cond_2
    invoke-direct {p0, p1, v3, v1}, Lcom/innioasis/fm/FMRecorder;->addToPlaylist(Landroid/content/Context;II)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 652
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x0

    invoke-static {p1, v1, v0, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void

    :cond_3
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "<< addCurrentRecordingToDb: file does not exists"

    .line 611
    invoke-static {v0, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addToMediaDB(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "cv"
        }
    .end annotation

    .line 683
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v7, 0x0

    aput-object v3, v2, v7

    new-array v4, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const-string v3, "_data=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 688
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existing items update recording id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data=?"

    new-array v4, v6, [Ljava/lang/String;

    iget-object v5, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v2, p2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "addToMediaDB: insert data"

    new-array v3, v7, [Ljava/lang/Object;

    .line 696
    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v2, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 699
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, p1

    .line 703
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 705
    throw p1

    :cond_2
    :goto_1
    return v1
.end method

.method private addToPlaylist(Landroid/content/Context;II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "playlistId",
            "recordingId"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    int-to-long v0, p2

    const-string p2, "external"

    .line 714
    invoke-static {p2, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p2

    .line 715
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v8, "audio_id"

    aput-object v8, v4, v1

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    const/4 v7, 0x0

    const-string v5, "audio_id=?"

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 718
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "new item already in playlists.members table"

    new-array p2, v1, [Ljava/lang/Object;

    .line 723
    invoke-static {p1, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "<< addCurrentRecordingToMediaDB"

    new-array p2, v1, [Ljava/lang/Object;

    .line 724
    invoke-static {p1, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 730
    throw p1

    :cond_2
    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "addCurrentRecordingToMediaDB: query members"

    .line 732
    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 737
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 739
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 741
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "play_order"

    .line 742
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "addCurrentRecordingToMediaDB: insert to members"

    new-array v1, v1, [Ljava/lang/Object;

    .line 744
    invoke-static {p3, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 748
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 750
    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method private createPlaylist(Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 672
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "name"

    const-string v2, "FM Recordings"

    .line 673
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "addToPlaylist: insert playlist"

    .line 674
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 676
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private getPlaylistId(Landroid/content/Context;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 656
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p1, "external"

    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v6, 0x0

    aput-object v3, v2, v6

    new-array v4, p1, [Ljava/lang/String;

    const-string p1, "FM Recordings"

    aput-object p1, v4, v6

    const-string v3, "name=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 660
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 665
    throw v0

    :cond_1
    :goto_0
    return v0
.end method

.method private isHaveAvailableStorage(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storagePath"
        }
    .end annotation

    .line 566
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    int-to-long v1, p1

    .line 568
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1

    int-to-long v3, p1

    mul-long v5, v1, v3

    .line 570
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SD card free blocks="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", blocksize="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v1, 0x80000

    cmp-long p1, v5, v1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setError(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/innioasis/fm/FMRecorder;->mStateListener:Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_1

    .line 587
    invoke-interface {v0, p1}, Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;->onRecorderError(I)V

    :cond_1
    return-void
.end method

.method private setState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 597
    iput p1, p0, Lcom/innioasis/fm/FMRecorder;->mInternalState:I

    .line 598
    iget-object v0, p0, Lcom/innioasis/fm/FMRecorder;->mStateListener:Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_0

    .line 599
    invoke-interface {v0, p1}, Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;->onRecorderStateChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public discardRecording()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ">> discardRecording"

    .line 400
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    iget v1, p0, Lcom/innioasis/fm/FMRecorder;->mInternalState:I

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_0

    .line 403
    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 404
    iget-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 405
    iput-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    if-ne v3, v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 408
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 409
    iget-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 410
    iput-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 413
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lcom/innioasis/fm/FMRecorder;->mIsRecordingFileSaved:Z

    if-nez v3, :cond_3

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 414
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v1, "delete %s"

    invoke-static {v1, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    iget-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "discardRecording: deletion failed! will try deleting it again when card is inserted back"

    .line 419
    invoke-static {v4, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    iget-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mOldFilePath:Ljava/lang/String;

    .line 421
    iput-boolean v3, p0, Lcom/innioasis/fm/FMRecorder;->mDeleteUponSDInsertion:Z

    .line 423
    :cond_2
    iput-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    const-wide/16 v1, 0x0

    .line 424
    iput-wide v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordStartTime:J

    .line 425
    iput-wide v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordTime:J

    :cond_3
    const/4 v1, 0x5

    .line 427
    invoke-direct {p0, v1}, Lcom/innioasis/fm/FMRecorder;->setState(I)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<< discardRecording"

    .line 428
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getRecordingName()Ljava/lang/String;
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/innioasis/fm/FMRecorder;->mInternalState:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mp"
        }
    .end annotation

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, ">> MediaPlayer.onCompletion"

    .line 471
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 474
    iget-object v0, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    :cond_0
    const/4 v0, 0x5

    .line 477
    invoke-direct {p0, v0}, Lcom/innioasis/fm/FMRecorder;->setState(I)V

    .line 478
    iget-object v0, p0, Lcom/innioasis/fm/FMRecorder;->mStateListener:Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_1

    .line 479
    invoke-interface {v0}, Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;->onPlayRecordFileComplete()V

    :cond_1
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "<< MediaPlayer.onCompletion"

    .line 481
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mr",
            "what",
            "extra"
        }
    .end annotation

    .line 512
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaRecorder.onError: what="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", extra="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 513
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    .line 514
    iget-object p1, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V

    .line 515
    iget-object p1, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    const/4 p1, 0x0

    .line 516
    iput-object p1, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 517
    iget p1, p0, Lcom/innioasis/fm/FMRecorder;->mInternalState:I

    const/4 p2, 0x6

    if-ne p2, p1, :cond_0

    const/4 p1, 0x5

    .line 518
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FMRecorder;->setState(I)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "what",
            "extra"
        }
    .end annotation

    .line 493
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaPlayer.onError: what="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", extra="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x64

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    .line 495
    :goto_0
    invoke-direct {p0, p2}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    .line 496
    iget-object p1, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 497
    iput-object p1, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    const/4 p1, 0x7

    .line 498
    iget p2, p0, Lcom/innioasis/fm/FMRecorder;->mInternalState:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x5

    .line 499
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FMRecorder;->setState(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onSDInserted()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ">> onSDInserted"

    .line 526
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    iget-boolean v1, p0, Lcom/innioasis/fm/FMRecorder;->mDeleteUponSDInsertion:Z

    if-eqz v1, :cond_0

    .line 530
    iput-boolean v0, p0, Lcom/innioasis/fm/FMRecorder;->mDeleteUponSDInsertion:Z

    .line 532
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mOldFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSDInserted: delete old recording file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 535
    iput-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 536
    iput-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mOldFilePath:Ljava/lang/String;

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<< onSDInserted"

    .line 538
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public recordTime()J
    .locals 4

    .line 320
    iget v0, p0, Lcom/innioasis/fm/FMRecorder;->mInternalState:I

    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecordStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/innioasis/fm/FMRecorder;->mRecordTime:J

    .line 323
    :cond_0
    iget-wide v0, p0, Lcom/innioasis/fm/FMRecorder;->mRecordTime:J

    return-wide v0
.end method

.method public registerRecorderStateListener(Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lcom/innioasis/fm/FMRecorder;->mStateListener:Lcom/innioasis/fm/FMRecorder$OnRecorderStateChangedListener;

    return-void
.end method

.method public resetRecorder()V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 547
    iput-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 551
    iput-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 553
    :cond_1
    iput-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    const-wide/16 v0, 0x0

    .line 554
    iput-wide v0, p0, Lcom/innioasis/fm/FMRecorder;->mRecordStartTime:J

    .line 555
    iput-wide v0, p0, Lcom/innioasis/fm/FMRecorder;->mRecordTime:J

    const/4 v0, 0x5

    .line 556
    iput v0, p0, Lcom/innioasis/fm/FMRecorder;->mInternalState:I

    return-void
.end method

.method public saveRecording(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "newName"
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> saveRecording("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "<< saveRecording: recording file is null!"

    .line 362
    invoke-static {p2, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 366
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "<< saveRecording: parent recording file is null!"

    .line 369
    invoke-static {p2, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p2, :cond_4

    .line 374
    invoke-virtual {p0}, Lcom/innioasis/fm/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 375
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".mp3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A file with the same new name will be deleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "can\'t delete the file already exits"

    .line 379
    invoke-static {v4, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_4

    .line 383
    iget-object v3, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "can\'t rename file"

    .line 384
    invoke-static {v4, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    :cond_4
    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lcom/innioasis/fm/FMRecorder;->mIsRecordingFileSaved:Z

    .line 391
    invoke-direct {p0, p1}, Lcom/innioasis/fm/FMRecorder;->addCurrentRecordingToDb(Landroid/content/Context;)V

    .line 392
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<< saveRecording("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    sget-object p1, Lcom/innioasis/y1/Y1Application;->y1Repository:Lcom/innioasis/y1/database/Y1Repository;

    iget-object p2, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/database/Y1Repository;->insertSong(Ljava/io/File;)V

    return-void
.end method

.method public startPlayback()V
    .locals 5

    const-string v0, "Exception while trying to playback recording file: "

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ">> startPlayback"

    .line 259
    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    if-nez v2, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "no file to playback!"

    .line 261
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 265
    :cond_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x4

    .line 267
    :try_start_0
    iget-object v4, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayer.setDataSource("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 270
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 271
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    const-string v2, "MediaPlayer.prepare()"

    new-array v4, v1, [Ljava/lang/Object;

    .line 272
    invoke-static {v2, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x7

    .line 291
    invoke-direct {p0, v0}, Lcom/innioasis/fm/FMRecorder;->setState(I)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "<< startPlayback"

    .line 292
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v2

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    invoke-direct {p0, v3}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    return-void

    :catch_1
    move-exception v2

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-direct {p0, v3}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    return-void

    :catch_2
    move-exception v2

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    invoke-direct {p0, v3}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    return-void

    :catch_3
    move-exception v2

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    invoke-direct {p0, v3}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    return-void
.end method

.method public startRecording()V
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ">> startRecording"

    .line 130
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    .line 131
    iput-wide v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordTime:J

    .line 133
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SD card is not ready!!"

    .line 135
    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0, v0}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    return-void

    :cond_0
    const-string v1, "/storage/sdcard0"

    .line 142
    invoke-direct {p0, v1}, Lcom/innioasis/fm/FMRecorder;->isHaveAvailableStorage(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 143
    invoke-direct {p0, v3}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SD card does not have sufficient space!!"

    .line 144
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 149
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "external storage dir = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    new-instance v1, Ljava/io/File;

    const-string v4, "Recording files"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "A FILE with name \"FM Recording\" already exists!!"

    .line 154
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-direct {p0, v4}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    return-void

    .line 157
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_3

    .line 160
    invoke-direct {p0, v4}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    return-void

    .line 165
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 166
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 167
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "yyyyMMdd_HHmmss"

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 168
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FM"

    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp3"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 174
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "createNewFile success"

    new-array v2, v0, [Ljava/lang/Object;

    .line 175
    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :cond_4
    const/4 v1, 0x3

    .line 185
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new record file is:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const-string v2, "startRecording: create new media record instance"

    new-array v5, v0, [Ljava/lang/Object;

    .line 188
    invoke-static {v2, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 192
    const-class v2, Landroid/media/MediaRecorder$AudioSource;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 193
    iget-object v5, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 194
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 195
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 197
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const v3, 0xac44

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 199
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const v3, 0x1f400

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 201
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 202
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/innioasis/fm/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecordStartTime:J

    .line 205
    iget-object v2, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 206
    iput-boolean v0, p0, Lcom/innioasis/fm/FMRecorder;->mIsRecordingFileSaved:Z

    const-string v2, "startRecording: start"

    new-array v3, v0, [Ljava/lang/Object;

    .line 207
    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x6

    .line 230
    invoke-direct {p0, v1}, Lcom/innioasis/fm/FMRecorder;->setState(I)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<< startRecording"

    .line 231
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 225
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 226
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    .line 221
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 222
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    return-void

    :catch_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "RuntimeException while start recording"

    .line 217
    invoke-static {v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-direct {p0, v1}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    return-void

    :catch_3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "IOException while starting recording!"

    .line 213
    invoke-static {v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-direct {p0, v1}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    return-void

    :catch_4
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "IllegalStateException while starting recording!"

    .line 209
    invoke-static {v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-direct {p0, v1}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    return-void

    :catch_5
    move-exception v1

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while createTempFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    invoke-direct {p0, v4}, Lcom/innioasis/fm/FMRecorder;->setError(I)V

    return-void
.end method

.method public stopPlayback()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ">> stopPlayback"

    .line 299
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x5

    if-eqz v1, :cond_1

    const/4 v3, 0x7

    iget v4, p0, Lcom/innioasis/fm/FMRecorder;->mInternalState:I

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 308
    iget-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    .line 309
    iput-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 310
    invoke-direct {p0, v2}, Lcom/innioasis/fm/FMRecorder;->setState(I)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<< stopPlayback"

    .line 311
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stopPlayback called in wrong state!!"

    .line 301
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-direct {p0, v2}, Lcom/innioasis/fm/FMRecorder;->setState(I)V

    return-void
.end method

.method public stopRecording()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ">> stopRecording"

    .line 239
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget v1, p0, Lcom/innioasis/fm/FMRecorder;->mInternalState:I

    const/4 v2, 0x6

    if-eq v2, v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stopRecording() called in wrong state!!"

    .line 241
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 245
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/innioasis/fm/FMRecorder;->mRecordStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecordTime:J

    .line 246
    iget-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "stopRecording: stop"

    .line 247
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "stopRecording: release"

    .line 249
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 250
    iput-object v1, p0, Lcom/innioasis/fm/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x5

    .line 251
    invoke-direct {p0, v1}, Lcom/innioasis/fm/FMRecorder;->setState(I)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<< stopRecording"

    .line 252
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
