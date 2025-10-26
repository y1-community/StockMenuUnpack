.class public final Lcom/innioasis/y1_eBook/utils/TxtPager;
.super Ljava/lang/Object;
.source "TxtPager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/utils/TxtPager$PageInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTxtPager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TxtPager.kt\ncom/innioasis/y1_eBook/utils/TxtPager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,127:1\n1#2:128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000eB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0005R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/utils/TxtPager;",
        "",
        "filePath",
        "",
        "linesPerPage",
        "",
        "charsPerLine",
        "(Ljava/lang/String;II)V",
        "text",
        "getPageByStartOffset",
        "Lcom/innioasis/y1_eBook/utils/TxtPager$PageInfo;",
        "startOffset",
        "getPageInfo",
        "targetPage",
        "PageInfo",
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
.field private final charsPerLine:I

.field private final linesPerPage:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p2, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->linesPerPage:I

    .line 12
    iput p3, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->charsPerLine:I

    .line 15
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p3, 0x1

    invoke-static {p2, p1, p3, p1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPageByStartOffset(I)Lcom/innioasis/y1_eBook/utils/TxtPager$PageInfo;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    .line 73
    iget-object v2, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 80
    :goto_1
    iget-object v6, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    iget v6, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->linesPerPage:I

    if-ge v4, v6, :cond_3

    .line 81
    iget-object v6, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->text:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 82
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    add-int/2addr v5, v0

    .line 85
    iget v6, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->charsPerLine:I

    if-ne v5, v6, :cond_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    :cond_3
    new-instance v0, Lcom/innioasis/y1_eBook/utils/TxtPager$PageInfo;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/innioasis/y1_eBook/utils/TxtPager$PageInfo;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 73
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u65e0\u6548\u7684\u8d77\u59cb\u504f\u79fb\u91cf"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final getPageInfo(I)Lcom/innioasis/y1_eBook/utils/TxtPager$PageInfo;
    .locals 10

    .line 30
    iget v0, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->charsPerLine:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->linesPerPage:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 37
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    .line 38
    iget-object v8, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->text:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_1

    add-int/2addr v6, v1

    .line 40
    iget v8, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->charsPerLine:I

    if-ne v6, v8, :cond_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    .line 46
    :cond_2
    iget v8, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->linesPerPage:I

    if-ne v7, v8, :cond_4

    if-ne v4, p1, :cond_3

    add-int/2addr v3, v1

    .line 48
    iget-object p1, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v3, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    .line 49
    new-instance v0, Lcom/innioasis/y1_eBook/utils/TxtPager$PageInfo;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->text:Ljava/lang/String;

    invoke-virtual {v1, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v5, p1}, Lcom/innioasis/y1_eBook/utils/TxtPager$PageInfo;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v3, 0x1

    const/4 v7, 0x0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-ne v4, p1, :cond_6

    .line 59
    new-instance p1, Lcom/innioasis/y1_eBook/utils/TxtPager$PageInfo;

    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/TxtPager;->text:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v5, v0}, Lcom/innioasis/y1_eBook/utils/TxtPager$PageInfo;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 62
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9875\u7801\u8d85\u51fa\u8303\u56f4\uff0c\u6700\u5927\u9875\u7801\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u53c2\u6570\u5fc5\u987b\u5927\u4e8e0"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
