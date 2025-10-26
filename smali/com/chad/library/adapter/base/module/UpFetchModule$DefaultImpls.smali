.class public final Lcom/chad/library/adapter/base/module/UpFetchModule$DefaultImpls;
.super Ljava/lang/Object;
.source "UpFetchModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter/base/module/UpFetchModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static addUpFetchModule(Lcom/chad/library/adapter/base/module/UpFetchModule;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseUpFetchModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/module/UpFetchModule;",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)",
            "Lcom/chad/library/adapter/base/module/BaseUpFetchModule;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "baseQuickAdapter"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    return-object p0
.end method
