.class public Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;
.super Ljava/lang/Object;
.source "RelativeDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/RelativeDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URelativeString"
.end annotation


# instance fields
.field public offset:I

.field public string:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    .line 41
    iput-object p2, p0, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    .line 45
    iput-object p2, p0, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    return-void
.end method
