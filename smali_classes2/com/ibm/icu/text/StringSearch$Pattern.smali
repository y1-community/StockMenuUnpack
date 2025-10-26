.class final Lcom/ibm/icu/text/StringSearch$Pattern;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/StringSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pattern"
.end annotation


# instance fields
.field CELength_:I

.field CE_:[I

.field PCELength_:I

.field PCE_:[J

.field text_:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1615
    iput v0, p0, Lcom/ibm/icu/text/StringSearch$Pattern;->PCELength_:I

    .line 1620
    iput v0, p0, Lcom/ibm/icu/text/StringSearch$Pattern;->CELength_:I

    .line 1630
    iput-object p1, p0, Lcom/ibm/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    return-void
.end method
