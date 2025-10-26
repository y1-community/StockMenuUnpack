.class public final Lcom/innioasis/y1/activity/EqActivity$EqData;
.super Ljava/lang/Object;
.source "EqActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/activity/EqActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EqData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/EqActivity$EqData;",
        "",
        "icon",
        "",
        "str",
        "",
        "eqParameter",
        "Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;",
        "(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V",
        "getEqParameter",
        "()Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;",
        "getIcon",
        "()I",
        "getStr",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
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
.field private final eqParameter:Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

.field private final icon:I

.field private final str:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V
    .locals 1

    const-string v0, "str"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eqParameter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput p1, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->icon:I

    iput-object p2, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->str:Ljava/lang/String;

    iput-object p3, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->eqParameter:Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    return-void
.end method

.method public static synthetic copy$default(Lcom/innioasis/y1/activity/EqActivity$EqData;ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;ILjava/lang/Object;)Lcom/innioasis/y1/activity/EqActivity$EqData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->icon:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->str:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->eqParameter:Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/innioasis/y1/activity/EqActivity$EqData;->copy(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)Lcom/innioasis/y1/activity/EqActivity$EqData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->icon:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->str:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->eqParameter:Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)Lcom/innioasis/y1/activity/EqActivity$EqData;
    .locals 1

    const-string v0, "str"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eqParameter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/innioasis/y1/activity/EqActivity$EqData;

    invoke-direct {v0, p1, p2, p3}, Lcom/innioasis/y1/activity/EqActivity$EqData;-><init>(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/innioasis/y1/activity/EqActivity$EqData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/innioasis/y1/activity/EqActivity$EqData;

    iget v1, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->icon:I

    iget v3, p1, Lcom/innioasis/y1/activity/EqActivity$EqData;->icon:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->str:Ljava/lang/String;

    iget-object v3, p1, Lcom/innioasis/y1/activity/EqActivity$EqData;->str:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->eqParameter:Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    iget-object p1, p1, Lcom/innioasis/y1/activity/EqActivity$EqData;->eqParameter:Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEqParameter()Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->eqParameter:Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    return-object v0
.end method

.method public final getIcon()I
    .locals 1

    .line 395
    iget v0, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->icon:I

    return v0
.end method

.method public final getStr()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->str:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->icon:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->eqParameter:Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EqData(icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", str="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eqParameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/innioasis/y1/activity/EqActivity$EqData;->eqParameter:Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
