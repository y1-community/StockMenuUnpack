.class final Lcom/ibm/icu/text/ListFormatter$StaticHandler;
.super Ljava/lang/Object;
.source "ListFormatter.java"

# interfaces
.implements Lcom/ibm/icu/text/ListFormatter$PatternHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StaticHandler"
.end annotation


# instance fields
.field private final endPattern:Ljava/lang/String;

.field private final twoPattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p1, p0, Lcom/ibm/icu/text/ListFormatter$StaticHandler;->twoPattern:Ljava/lang/String;

    .line 453
    iput-object p2, p0, Lcom/ibm/icu/text/ListFormatter$StaticHandler;->endPattern:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEndPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 460
    iget-object p1, p0, Lcom/ibm/icu/text/ListFormatter$StaticHandler;->endPattern:Ljava/lang/String;

    return-object p1
.end method

.method public getTwoPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 457
    iget-object p1, p0, Lcom/ibm/icu/text/ListFormatter$StaticHandler;->twoPattern:Ljava/lang/String;

    return-object p1
.end method
