.class Lnet/sf/jazzlib/ZipFile$ZipEntryEnumeration;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/jazzlib/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZipEntryEnumeration"
.end annotation


# instance fields
.field private final elements:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p1, p0, Lnet/sf/jazzlib/ZipFile$ZipEntryEnumeration;->elements:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 482
    iget-object v0, p0, Lnet/sf/jazzlib/ZipFile$ZipEntryEnumeration;->elements:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 491
    iget-object v0, p0, Lnet/sf/jazzlib/ZipFile$ZipEntryEnumeration;->elements:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/jazzlib/ZipEntry;

    invoke-virtual {v0}, Lnet/sf/jazzlib/ZipEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
