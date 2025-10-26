.class final Lcom/ibm/icu/impl/ICUBinary$PackageDataFile;
.super Lcom/ibm/icu/impl/ICUBinary$DataFile;
.source "ICUBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageDataFile"
.end annotation


# instance fields
.field private final pkgBytes:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUBinary$DataFile;-><init>(Ljava/lang/String;)V

    .line 267
    iput-object p2, p0, Lcom/ibm/icu/impl/ICUBinary$PackageDataFile;->pkgBytes:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUBinary$PackageDataFile;->pkgBytes:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->addBaseNamesInFolder(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUBinary$PackageDataFile;->pkgBytes:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->getData(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
