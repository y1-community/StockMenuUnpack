.class public final Lcom/innioasis/y1_eBook/data/database/entities/Book;
.super Ljava/lang/Object;
.source "Book.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0014\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001-BA\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001fJ\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0008H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003JO\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020\u0003H\u00d6\u0001J\t\u0010,\u001a\u00020\u0005H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u000b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014R\u001e\u0010\t\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000e\"\u0004\u0008\u001a\u0010\u0017R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u000e\u00a8\u0006."
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/data/database/entities/Book;",
        "",
        "id",
        "",
        "name",
        "",
        "path",
        "lastReadTime",
        "",
        "progress",
        "totalLength",
        "offset",
        "(ILjava/lang/String;Ljava/lang/String;JIII)V",
        "getId",
        "()I",
        "getLastReadTime",
        "()J",
        "setLastReadTime",
        "(J)V",
        "getName",
        "()Ljava/lang/String;",
        "getOffset",
        "setOffset",
        "(I)V",
        "getPath",
        "getProgress",
        "setProgress",
        "getTotalLength",
        "calculateProgress",
        "",
        "checkType",
        "Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "Type",
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
.field private final id:I

.field private lastReadTime:J

.field private final name:Ljava/lang/String;

.field private offset:I

.field private final path:Ljava/lang/String;

.field private progress:I

.field private final totalLength:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JIII)V
    .locals 1

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->id:I

    .line 14
    iput-object p2, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->name:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->path:Ljava/lang/String;

    .line 19
    iput-wide p4, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->lastReadTime:J

    .line 21
    iput p6, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->progress:I

    .line 23
    iput p7, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->totalLength:I

    .line 25
    iput p8, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->offset:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;JIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    move/from16 v10, p8

    :goto_1
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    .line 11
    invoke-direct/range {v2 .. v10}, Lcom/innioasis/y1_eBook/data/database/entities/Book;-><init>(ILjava/lang/String;Ljava/lang/String;JIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1_eBook/data/database/entities/Book;ILjava/lang/String;Ljava/lang/String;JIIIILjava/lang/Object;)Lcom/innioasis/y1_eBook/data/database/entities/Book;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->id:I

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->path:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->lastReadTime:J

    goto :goto_3

    :cond_3
    move-wide v4, p4

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->progress:I

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->totalLength:I

    goto :goto_5

    :cond_5
    move/from16 v7, p7

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->offset:I

    goto :goto_6

    :cond_6
    move/from16 v8, p8

    :goto_6
    move p1, v1

    move-object p2, v2

    move-object p3, v3

    move-wide p4, v4

    move p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/innioasis/y1_eBook/data/database/entities/Book;->copy(ILjava/lang/String;Ljava/lang/String;JIII)Lcom/innioasis/y1_eBook/data/database/entities/Book;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final calculateProgress()D
    .locals 7

    .line 51
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ba1\u7b97\u8fdb\u5ea6   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->progress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   \u504f\u79fb\u2014>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->totalLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 53
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6587\u4ef6\u5927\u5c0f   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 54
    iget v3, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->progress:I

    int-to-double v3, v3

    iget v5, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->totalLength:I

    int-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const/16 v5, 0x64

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final checkType()Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->name:Ljava/lang/String;

    const-string v1, "."

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "mobi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->MOBI:Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    goto :goto_1

    :sswitch_1
    const-string v1, "epub"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->EPUB:Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    goto :goto_1

    :sswitch_2
    const-string v1, "docx"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 34
    :cond_2
    sget-object v0, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->DOCX:Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    goto :goto_1

    :sswitch_3
    const-string v1, "txt"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 30
    :cond_3
    sget-object v0, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->TXT:Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    goto :goto_1

    :sswitch_4
    const-string v1, "pdf"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 32
    :cond_4
    sget-object v0, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->PDF:Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    goto :goto_1

    :sswitch_5
    const-string v1, "fb2"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 35
    :cond_5
    sget-object v0, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->FB2:Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    goto :goto_1

    .line 36
    :goto_0
    sget-object v0, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->TXT:Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x18af6 -> :sswitch_5
        0x1b0f2 -> :sswitch_4
        0x1c270 -> :sswitch_3
        0x2f2240 -> :sswitch_2
        0x2f9c78 -> :sswitch_1
        0x333969 -> :sswitch_0
    .end sparse-switch
.end method

.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->id:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->lastReadTime:J

    return-wide v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->progress:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->totalLength:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->offset:I

    return v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;JIII)Lcom/innioasis/y1_eBook/data/database/entities/Book;
    .locals 10

    const-string v0, "name"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    move-object v1, v0

    move v2, p1

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/innioasis/y1_eBook/data/database/entities/Book;-><init>(ILjava/lang/String;Ljava/lang/String;JIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1_eBook/data/database/entities/Book;

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->id:I

    iget v3, p1, Lcom/innioasis/y1_eBook/data/database/entities/Book;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1_eBook/data/database/entities/Book;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1_eBook/data/database/entities/Book;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->lastReadTime:J

    iget-wide v5, p1, Lcom/innioasis/y1_eBook/data/database/entities/Book;->lastReadTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->progress:I

    iget v3, p1, Lcom/innioasis/y1_eBook/data/database/entities/Book;->progress:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->totalLength:I

    iget v3, p1, Lcom/innioasis/y1_eBook/data/database/entities/Book;->totalLength:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->offset:I

    iget p1, p1, Lcom/innioasis/y1_eBook/data/database/entities/Book;->offset:I

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->id:I

    return v0
.end method

.method public final getLastReadTime()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->lastReadTime:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOffset()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->offset:I

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgress()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->progress:I

    return v0
.end method

.method public final getTotalLength()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->totalLength:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->lastReadTime:J

    invoke-static {v1, v2}, Lcom/innioasis/y1/database/Bookmark$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->progress:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->totalLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setLastReadTime(J)V
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->lastReadTime:J

    return-void
.end method

.method public final setOffset(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->offset:I

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->progress:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Book(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastReadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->lastReadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->totalLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/data/database/entities/Book;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
