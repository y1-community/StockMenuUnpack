.class public final Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;
.super Ljava/lang/Object;
.source "EbookSpUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1_eBook/utils/EbookSpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Theme"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003JE\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;",
        "",
        "id",
        "",
        "textColor",
        "textColorStr",
        "",
        "backgroundColor",
        "backgroundColorStr",
        "icon",
        "(IILjava/lang/String;ILjava/lang/String;I)V",
        "getBackgroundColor",
        "()I",
        "getBackgroundColorStr",
        "()Ljava/lang/String;",
        "getIcon",
        "getId",
        "getTextColor",
        "getTextColorStr",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final backgroundColor:I

.field private final backgroundColorStr:Ljava/lang/String;

.field private final icon:I

.field private final id:I

.field private final textColor:I

.field private final textColorStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;I)V
    .locals 1

    const-string v0, "textColorStr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundColorStr"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->id:I

    .line 55
    iput p2, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColor:I

    .line 56
    iput-object p3, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColorStr:Ljava/lang/String;

    .line 57
    iput p4, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColor:I

    .line 58
    iput-object p5, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColorStr:Ljava/lang/String;

    .line 59
    iput p6, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->icon:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;IILjava/lang/String;ILjava/lang/String;IILjava/lang/Object;)Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->id:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColor:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColorStr:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColor:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColorStr:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->icon:I

    :cond_5
    move v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->copy(IILjava/lang/String;ILjava/lang/String;I)Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->id:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColor:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColorStr:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColor:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColorStr:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->icon:I

    return v0
.end method

.method public final copy(IILjava/lang/String;ILjava/lang/String;I)Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;
    .locals 8

    const-string v0, "textColorStr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundColorStr"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;-><init>(IILjava/lang/String;ILjava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    iget v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->id:I

    iget v3, p1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColor:I

    iget v3, p1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColor:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColorStr:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColorStr:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColor:I

    iget v3, p1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColor:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColorStr:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColorStr:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->icon:I

    iget p1, p1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->icon:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getBackgroundColor()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColor:I

    return v0
.end method

.method public final getBackgroundColorStr()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColorStr:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->icon:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->id:I

    return v0
.end method

.method public final getTextColor()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColor:I

    return v0
.end method

.method public final getTextColorStr()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColorStr:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColorStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColorStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->icon:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Theme(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textColorStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->textColorStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColorStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->backgroundColorStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
