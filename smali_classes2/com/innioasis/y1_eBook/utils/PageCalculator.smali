.class public final Lcom/innioasis/y1_eBook/utils/PageCalculator;
.super Ljava/lang/Object;
.source "PageCalculator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/utils/PageCalculator;",
        "",
        "paint",
        "Landroid/text/TextPaint;",
        "viewWidth",
        "",
        "viewHeight",
        "(Landroid/text/TextPaint;II)V",
        "calculatePages",
        "",
        "",
        "file",
        "Ljava/io/File;",
        "encoding",
        "",
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
.field private final paint:Landroid/text/TextPaint;

.field private final viewHeight:I

.field private final viewWidth:I


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;II)V
    .locals 1

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/innioasis/y1_eBook/utils/PageCalculator;->paint:Landroid/text/TextPaint;

    .line 14
    iput p2, p0, Lcom/innioasis/y1_eBook/utils/PageCalculator;->viewWidth:I

    .line 15
    iput p3, p0, Lcom/innioasis/y1_eBook/utils/PageCalculator;->viewHeight:I

    return-void
.end method

.method public static synthetic calculatePages$default(Lcom/innioasis/y1_eBook/utils/PageCalculator;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "UTF-8"

    .line 17
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1_eBook/utils/PageCalculator;->calculatePages(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final calculatePages(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "file"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "encoding"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 21
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/io/RandomAccessFile;

    .line 22
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 23
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 24
    invoke-static/range {p2 .. p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    .line 27
    iget v5, v1, Lcom/innioasis/y1_eBook/utils/PageCalculator;->viewHeight:I

    const-wide/16 v6, 0x0

    .line 30
    :goto_0
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v8

    int-to-long v8, v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_1

    .line 31
    move-object v8, v0

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v8}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v8

    .line 32
    new-instance v15, Landroid/text/StaticLayout;

    .line 33
    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    .line 35
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->length()I

    move-result v12

    .line 36
    iget-object v13, v1, Lcom/innioasis/y1_eBook/utils/PageCalculator;->paint:Landroid/text/TextPaint;

    .line 37
    iget v14, v1, Lcom/innioasis/y1_eBook/utils/PageCalculator;->viewWidth:I

    .line 38
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v16, 0x3f99999a    # 1.2f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v15

    move-object/from16 p1, v15

    move-object v15, v8

    .line 32
    invoke-direct/range {v9 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v9, p1

    .line 46
    invoke-virtual {v9, v8}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v8

    sub-int/2addr v5, v8

    if-gez v5, :cond_0

    .line 49
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget v5, v1, Lcom/innioasis/y1_eBook/utils/PageCalculator;->viewHeight:I

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 21
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1
.end method
