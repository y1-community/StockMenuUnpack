.class final Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;
.super Ljava/lang/Object;
.source "MeasureUnit.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MeasureUnitProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x364588070e86861eL


# instance fields
.field private subType:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2056
    iput-object p1, p0, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    .line 2057
    iput-object p2, p0, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2086
    iget-object v0, p0, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2074
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 2075
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    .line 2076
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    .line 2078
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v0

    if-lez v0, :cond_0

    .line 2080
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2081
    invoke-interface {p1, v1, v2, v0}, Ljava/io/ObjectInput;->read([BII)I

    :cond_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2066
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 2067
    iget-object v1, p0, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 2068
    iget-object v1, p0, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 2069
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

    return-void
.end method
