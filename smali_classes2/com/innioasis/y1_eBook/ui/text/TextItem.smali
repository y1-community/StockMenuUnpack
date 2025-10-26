.class public final Lcom/innioasis/y1_eBook/ui/text/TextItem;
.super Ljava/lang/Object;
.source "TextItem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/text/TextItem;",
        "",
        "content",
        "",
        "startIndex",
        "",
        "endIndex",
        "(Ljava/lang/String;II)V",
        "getContent",
        "()Ljava/lang/String;",
        "getEndIndex",
        "()I",
        "getStartIndex",
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
.field private final content:Ljava/lang/String;

.field private final endIndex:I

.field private final startIndex:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1_eBook/ui/text/TextItem;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/text/TextItem;->content:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/innioasis/y1_eBook/ui/text/TextItem;->startIndex:I

    .line 6
    iput p3, p0, Lcom/innioasis/y1_eBook/ui/text/TextItem;->endIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/innioasis/y1_eBook/ui/text/TextItem;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndIndex()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextItem;->endIndex:I

    return v0
.end method

.method public final getStartIndex()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/innioasis/y1_eBook/ui/text/TextItem;->startIndex:I

    return v0
.end method
