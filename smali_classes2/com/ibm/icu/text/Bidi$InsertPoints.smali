.class Lcom/ibm/icu/text/Bidi$InsertPoints;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsertPoints"
.end annotation


# instance fields
.field confirmed:I

.field points:[Lcom/ibm/icu/text/Bidi$Point;

.field size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/ibm/icu/text/Bidi$Point;

    .line 527
    iput-object v0, p0, Lcom/ibm/icu/text/Bidi$InsertPoints;->points:[Lcom/ibm/icu/text/Bidi$Point;

    return-void
.end method
