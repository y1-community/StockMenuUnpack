.class Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPUString"
.end annotation


# instance fields
.field fCharOrStrTableIndex:I

.field fStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    iput-object p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1064
    iput p1, p0, Lcom/ibm/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fCharOrStrTableIndex:I

    return-void
.end method
